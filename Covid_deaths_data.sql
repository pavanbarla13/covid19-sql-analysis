USE covid_project;
select * from covid_deaths_data;
show tables;
select population from covid_deaths_data;
select count(*) from covid_deaths_data;

ALTER TABLE covid_deaths_data
CHANGE `ï»¿location`
location TEXT;

-- Select data that we are going to be suing
select location,
date,
total_cases,
new_cases,
population,
total_deaths
from covid_deaths_data
order by 1,2;

-- Looking at Total cases vs Total deaths
-- Show likelihood of dying if you contract covid in your country
select location,
date,
total_cases,
total_deaths,
(total_deaths/total_cases)*100 as percentage_population
from covid_deaths_data 
where location like '%states%'
order by 1,2;

-- Looking at Total cases vs population
select location,
date,
population,
total_cases,
(total_cases/population)*100 as death_percentage
from covid_deaths_data 
where location like '%states%'
order by 1,2;

-- Lokking at countries with highest infection rate compared to population
select location,
population,
max(total_cases) as Highestinfectioncount,
(total_cases/population)*100 as percentagePopulationInfected
from covid_deaths_data 
group by location,population,percentagePopulationInfected
order by percentagePopulationInfected desc;

-- Showing countries with highest death count per population
select location, 
max(total_deaths) as TotalDeathCounts
from covid_deaths_data
group by location
order by TotalDeathCounts desc;

-- Top 10 worst countries 
with infection_rate as(
select location,
max(total_cases/population)*100 as infection_percentage
from covid_deaths_data
group by location
)
select location,
infection_percentage from infection_rate
order by infection_percentage desc
limit 10;

-- Monthly global trend
select year(date) as year,
month(date) as month,
sum(new_cases) as total_cases
from covid_deaths_data
group by year(date),month(date)
order by year,month;

-- Find peak global day
select date,
sum(new_cases) as global_cases
from covid_deaths_data
group by date
order by global_cases desc
limit 1;

-- Comapare yesterday vs today cases
select location,
date,
lag(new_cases) over (partition by location order by date) as pervious_date_cases
from covid_deaths_data;

-- Highest spike growth by country
with growth_data as(
select location,
((new_cases-lag(new_cases) over (partition by location order by date))/nullif(lag(new_cases)over(partition by location order by date),0))*100
as growth_percentage from covid_deaths_data
)
select location,
max(growth_percentage) as highest_spike
from growth_data
where growth_percentage is not null
group by location
order by highest_spike desc;

-- Rank countries by infection rate
with infection_rate as(
select location,
max(total_cases/population)*100 as infection_percentage
from covid_deaths_data
group by location
)
select location,
infection_percentage,
rank() over (order by infection_percentage desc) as rank_position
from infection_rate;
