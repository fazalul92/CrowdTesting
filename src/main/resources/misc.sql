/*
 * A select query involving required fields
 */
select ua.uid, u.gid, u.group_type, ua.testcase_count,time_to_sec(ua.timetaken)/60,
  ua.difficulty, ua.enjoyment, ua.boredom, ua.confidence, ua.anxiety
from users u, userdata_admin ua
where ua.timetaken is not null and u.id = ua.uid;

/*
 * Insert into userdata_admin the the counts of test cases
 */
insert into userdata_admin(uid, testcase_count)
select t.uid, count(t.uid) from testcases t, users u 
where u.id > 381 and u.completion_code is not null and u.id = t.uid 
group by u.id;

/*
 * Update the userdata_admin from postsurvey_responses
 */
update userdata_admin 
inner join postsurvey_responses on userdata_admin.uid = postsurvey_responses.user_id
set userdata_admin.anxiety = postsurvey_responses.description
where postsurvey_responses.question_id = 7 and uid > 381;

/*
 * Update the userdata_admin from postsurvey_responses, converting string to int
 */
update userdata_admin 
inner join postsurvey_responses on userdata_admin.uid = postsurvey_responses.user_id
set userdata_admin.difficulty = (
   case postsurvey_responses.description 
    when 'Easy' then 1
    when 'Very easy' then 2
    when 'Medium' then 3
    when 'High' then 4
    when 'Very high' then 5
   end 
  )
where postsurvey_responses.question_id = 2 and uid > 381;

/*
 * Providing bonus
 */
update userdata_admin set bonus_amt_cents = 300 where testcase_count >= 9 and uid > 381;

update userdata_admin set bonus_amt_cents = 200 where testcase_count = 8 and uid > 381;

update userdata_admin set bonus_amt_cents = 150 where testcase_count in (5, 6, 7) and uid > 381;

update userdata_admin set bonus_amt_cents = 100 where testcase_count = 4 and uid > 381;

update userdata_admin set bonus_amt_cents = 50 where testcase_count = 3 and uid > 381;

/*
 * Update missing DISC personality column in the users table
 */
update crowd_testing.users u, crowd_testing.personality_data p
set u.personality =  
  case when p.normD is null or p.normI is null or p.normS is null or p.normC is null then null
       when p.normD >= p.normI and p.normD >= p.normS and p.normD >= p.normC then 'D'
       when p.normI >= p.normS and p.normI >= p.normC then 'I'
       when p.normS >= p.normC then 'S'
       else 'C'
  end
where u.id = p.uid;

select u.id, u.personality,
  case when p.normD is null or p.normI is null or p.normS is null or p.normC is null then null
       when p.normD >= p.normI and p.normD >= p.normS and p.normD >= p.normC then 'D'
       when p.normI >= p.normS and p.normI >= p.normC then 'I'
       when p.normS >= p.normC then 'S'
       else 'C'
  end as normDISC
from crowd_testing.users as u, crowd_testing.personality_data as p
where u.id = p.uid order by uid;

/*
* Count how many correct answers a user gave to attention check questions
*/
select gr1.user_id, gr1.choice_no, gr2.choice_no, gr3.choice_no, gr4.choice_no
from generic_responses gr1
inner join users as u on gr1.user_id = u.id
inner join generic_responses as gr2 on gr1.user_id = gr2.user_id
inner join generic_responses as gr3 on gr1.user_id = gr3.user_id
inner join generic_responses as gr4 on gr1.user_id = gr4.user_id
where u.completion_code is not null
  and gr1.generic_name = 'discgeneric1' and gr2.generic_name = 'discgeneric2' 
  and gr3.generic_name = 'discgeneric3' and gr4.generic_name = 'discgeneric4';
  
select count(*)
from generic_responses gr1
inner join users as u on gr1.user_id = u.id
inner join generic_responses as gr2 on gr1.user_id = gr2.user_id
inner join generic_responses as gr3 on gr1.user_id = gr3.user_id
inner join generic_responses as gr4 on gr1.user_id = gr4.user_id
where u.completion_code is not null
  and gr1.generic_name = 'discgeneric1' and gr1.choice_no = 2
  and gr2.generic_name = 'discgeneric2' and gr2.choice_no = 1
  and gr3.generic_name = 'discgeneric3' and gr3.choice_no = 2
  and gr4.generic_name = 'discgeneric4' and gr4.choice_no = 1;
  
/*
 * Select requirement counts grouped by DISC type
 */  
select t.uid, 1 as type, count(t.id)
from testcases t, usergroups2 g
where (t.uid = g.uid1 or t.uid = g.uid2 or t.uid = g.uid3 or t.uid = g.uid4) 
  and g.filled = 4 
  and g.upersona1 = 'DI' and g.upersona2 = 'DI' and g.upersona3 = 'DI' and g.upersona4 = 'DI'
group by t.uid
union
select t.uid, 2 as type, count(t.id)
from testcases t, usergroups2 g
where (t.uid = g.uid1 or t.uid = g.uid2 or t.uid = g.uid3 or t.uid = g.uid4) 
  and g.filled = 4 
  and g.upersona1 = 'SC' and g.upersona2 = 'SC' and g.upersona3 = 'SC' and g.upersona4 = 'SC'
group by t.uid
union
select t.uid, 3 as type, count(t.id)
from testcases t, usergroups2 g
where (t.uid = g.uid1 or t.uid = g.uid2 or t.uid = g.uid3 or t.uid = g.uid4) 
  and g.filled = 4 
  and g.upersona1 = 'D' and g.upersona2 = 'I' and g.upersona3 = 'S' and g.upersona4 = 'C'
group by t.uid;

/*
 * Select requirement counts based on solo vs groups
 */
select t.uid, g.type, count(t.id)
from testcases t, usergroups2 g
where (t.uid = g.uid1 or t.uid = g.uid2 or t.uid = g.uid3 or t.uid = g.uid4) 
  /*and g.type = 1 */
  and g.upersona1 is null and g.filled >= 3
group by t.uid;

/*
 * Percieved difficulty: Solo vs Groups
 */
select pos.user_id, g.type,
  case when pos.description = 'Very easy' then 1
     when pos.description = 'Easy' then 2
       when pos.description = 'Medium' then 3
       when pos.description = 'High' then 4
       when pos.description = 'Very high' then 5
       else -1
  end as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  /*and g.type = 1 */
  and g.upersona1 is null and g.filled >= 3 and pos.question_id = 2;
/*
 * Percieved difficulty: DISC based
 */
select pos.user_id, g.type,
  case when pos.description = 'Very easy' then 1
     when pos.description = 'Easy' then 2
       when pos.description = 'Medium' then 3
       when pos.description = 'High' then 4
       when pos.description = 'Very high' then 5
       else -1
  end as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  /*and g.type = 1 */
  and g.upersona1 is null and g.filled >= 3 and pos.question_id = 2;

select pos.user_id, 1 as type,
  case when pos.description = 'Very easy' then 1
     when pos.description = 'Easy' then 2
       when pos.description = 'Medium' then 3
       when pos.description = 'High' then 4
       when pos.description = 'Very high' then 5
       else -1
  end as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  and g.filled = 4 and pos.question_id = 2
  and g.upersona1 = 'DI' and g.upersona2 = 'DI' and g.upersona3 = 'DI' and g.upersona4 = 'DI'
group by pos.user_id
union
select pos.user_id, 2 as type,
  case when pos.description = 'Very easy' then 1
     when pos.description = 'Easy' then 2
       when pos.description = 'Medium' then 3
       when pos.description = 'High' then 4
       when pos.description = 'Very high' then 5
       else -1
  end as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  and g.filled = 4 and pos.question_id = 2
  and g.upersona1 = 'SC' and g.upersona2 = 'SC' and g.upersona3 = 'SC' and g.upersona4 = 'SC'
group by pos.user_id
union
select pos.user_id, 3 as type,
  case when pos.description = 'Very easy' then 1
     when pos.description = 'Easy' then 2
       when pos.description = 'Medium' then 3
       when pos.description = 'High' then 4
       when pos.description = 'Very high' then 5
       else -1
  end as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  and g.filled = 4 and pos.question_id = 2
  and g.upersona1 = 'D' and g.upersona2 = 'I' and g.upersona3 = 'S' and g.upersona4 = 'C'
group by pos.user_id;  
  
/*
 * Achievement emotions: Solo vs Groups 
 * (change question_id appropriately based on data in postsurvey_questions table)
 */
select pos.user_id, g.type, pos.description as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  /*and g.type = 1 */
  and g.upersona1 is null and g.filled >= 3 and pos.question_id = 7;
  
/*
 * Achievement emotions: DISC based 
 * (change question_id appropriately based on data in postsurvey_questions table)
 */
select pos.user_id, 1 as type, pos.description as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  and g.filled = 4 and pos.question_id = 4
  and g.upersona1 = 'DI' and g.upersona2 = 'DI' and g.upersona3 = 'DI' and g.upersona4 = 'DI'
group by pos.user_id
union
select pos.user_id, 2 as type, pos.description as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  and g.filled = 4 and pos.question_id = 4
  and g.upersona1 = 'SC' and g.upersona2 = 'SC' and g.upersona3 = 'SC' and g.upersona4 = 'SC'
group by pos.user_id
union
select pos.user_id, 3 as type, pos.description as response
from postsurvey_responses pos, usergroups2 g
where (pos.user_id = g.uid1 or pos.user_id = g.uid2 or pos.user_id = g.uid3 or pos.user_id = g.uid4) 
  and g.filled = 4 and pos.question_id = 4
  and g.upersona1 = 'D' and g.upersona2 = 'I' and g.upersona3 = 'S' and g.upersona4 = 'C'
group by pos.user_id;

/*
 * Randomly selecting requirements for rating.
 * The not in (...) list is to exclude those used in rubric calibration.
 */
select t.*
from users u, usergroups2 g, userdata_admin a, testcases t
where (u.id = g.uid1 or u.id = g.uid2 or u.id = g.uid3) and u.id = a.uid and u.id = t.uid
  and a.bonus_amt_cents >= 0
  and u.completion_code is not null
  and g.upersona1 is null and g.filled >= 3 and g.type = 1
  and t.id not in (33,39,92,273,288,307,377,488,570,601,637,752,797,879,1127,1229,1415,1424,1502,1521,1598,1627,1697,1830,1898)
order by rand();
  