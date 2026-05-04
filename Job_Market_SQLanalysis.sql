use jobs;
select *
from job_market;

# TOTAL JOBS 
select count(*) as total_jobs 
from job_market;
 
# UNIQUE JOB ROLES
select count(distinct job_title) as unique_roles 
from job_market;

#JOBS PER LOCATION
select location, count(*) as job_count
from job_market
group by location 
order by job_count desc;

# SALARY ANALYSIS 
# average salary by job role 
select job_title,avg(salary) as avg_salary 
from job_market
group by job_title 
order by avg_salary desc;

# Highest paying jobs 
select job_title, salary, company
from job_market 
order by salary desc 
limit 10;

#Salary by experience level
select experience_required, round(avg(salary),2) as avg_salary
from job_market
group by experience_required
order by avg_salary
desc;

#SKILL DEMAND ANALYSIS
# most common skill set 
select skills, count(*) as demand 
from job_market 
group by skills 
order by demand desc 
limit 10 ;

# LOCATION INSIGHTS 
# Top hiring cities 
select location, count(*) as total_jobs 
from job_market 
group by location
order by total_jobs  desc 
limit 10;

# highest paying location
select location, round(avg(salary),2) as avg_salary 
from job_market
group by location 
order by avg_salary desc
;

# COMPANY ANALYSIS 
# top hiring companies 
select company, count(*) as job_count
from job_market
group by company 
order by job_count
desc limit 10;

# highest paying companies 
select company,  round(avg(salary),2) as avg_salary 
from job_market
group by company 
order by avg_salary
desc limit 10;

#TIME BASED ANALYSIS
#jobs posted over time 
select posting_date, count(*) as jobs_posted
from job_market
group by posting_date
order by posting_date;

