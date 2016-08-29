/*
 * A select query involving required fields
 */
select ua.uid, u.gid, u.group_type, ua.testcase_count,time_to_sec(ua.timetaken)/60,
  ua.difficulty, ua.enjoyment, ua.boredom, ua.confidence, ua.anxiety
from users u, userdata_admin ua
where ua.timetaken is not null and u.id = ua.uid;

/*
 * Update the userdata_admin from postsurvey_responses
 */
update userdata_admin 
inner join postsurvey_responses on userdata_admin.uid = postsurvey_responses.user_id
set userdata_admin.anxiety = postsurvey_responses.description
where postsurvey_responses.question_id = 7;

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
where postsurvey_responses.question_id = 2;