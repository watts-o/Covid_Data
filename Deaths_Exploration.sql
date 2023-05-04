select location, MAX(Total_Deaths) as total_death_count
from Covid_Deaths
where continent is not null
Group by location
order by total_death_count desc;
