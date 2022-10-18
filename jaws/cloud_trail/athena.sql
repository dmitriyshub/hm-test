
#Tip 6:entry that shows who opened port 22 to the world, here is a general query that is often useful to run.
#This query might help identify the action:

SELECT useridentity.userName, eventtime, eventsource, eventname, requestparameters
FROM cloudtrail_logs_monitoring7771
WHERE eventsource = 'ec2.amazonaws.com' AND eventname LIKE '%Security%'

SELECT DISTINCT useridentity.userName, eventName, eventSource FROM cloudtrail_logs_monitoring####
WHERE from_iso8601_timestamp(eventtime) > date_add('day', -1, now()) ORDER BY eventSource;

SELECT DISTINCT useridentity.userName, eventName, sourceipaddress, useragent, eventSource FROM cloudtrail_logs_monitoring7771
WHERE from_iso8601_timestamp(eventtime) > date_add('day', -1, now()) ORDER BY eventSource;