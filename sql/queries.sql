CREATE DATABASE device_monitoring;
USE device_monitoring;
CREATE TABLE device_info (
    Device_ID VARCHAR(10) PRIMARY KEY,
    Device_Type VARCHAR(50),
    Location VARCHAR(50),
    Install_Date DATE,
    Status VARCHAR(20)
);
CREATE TABLE device_health (
    Timestamp DATETIME,
    Device_ID VARCHAR(10),
    CPU_Usage FLOAT,
    Memory_Usage FLOAT,
    Uptime INT,
    Temperature FLOAT
);
CREATE TABLE incident_logs (
    Incident_ID VARCHAR(10),
    Device_ID VARCHAR(10),
    Issue_Type VARCHAR(50),
    Severity VARCHAR(20),
    Start_Time DATETIME,
    End_Time DATETIME,
    Downtime_Hours FLOAT
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_device_info.csv'
INTO TABLE device_info
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from device_info limit 3;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_device_health_logs.csv'
INTO TABLE device_health
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from device_health limit 3;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_incident_logs.csv'
INTO TABLE incident_logs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from incident_logs limit 4;
SELECT * FROM device_info;
SELECT * FROM device_health;
SELECT *  FROM incident_logs;
SELECT count(distinct Device_ID) FROM device_info;
select Device_Type, count(*) as count
from device_info
group by Device_Type;
select Device_ID, avg(CPU_Usage) as cpu_average
from device_health
group by Device_ID
order by cpu_average asc;
SELECT Device_ID, max(Temperature) as max_temp
FROM device_health
group by Device_ID
order by max_temp desc;
select d.Device_Type, round(avg(h.Temperature)) as CPU_AVERAGE_TEMP
from device_health as h
join device_info as d
on h.Device_ID=d.Device_ID
group by d.Device_Type;
SELECT Issue_Type, sum(Downtime_hours) as Total_Downtime
FROM incident_logs
group by Issue_Type;
SELECT d.Location, COUNT(*) AS Total_Incidents
FROM incident_logs as i
JOIN device_info as d
ON i.Device_ID = d.Device_ID
GROUP BY d.Location
ORDER BY Total_Incidents DESC;
select Device_ID, count(*) as Critical_Count
from incident_logs
where Severity='Critical'
group by Device_ID
order by Critical_Count desc;
