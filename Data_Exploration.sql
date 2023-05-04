-- Highest Death Count from each country
select location, MAX(Total_Deaths) as total_death_count
from Covid_Deaths
where continent is not null
Group by location
order by total_death_count desc;

-- Highest Death Count from each continent
select continent, MAX(Total_Deaths) as total_death_count
from Covid_Deaths
where continent is not null
Group by continent
order by total_death_count desc;

-- Total Death Percentage Globally
select SUM(New_cases) as total_cases, SUM(new_deaths) as total_deaths, (SUM(new_deaths)/SUM(New_cases))*100 as Global_Death_Percentage
from Covid_Deaths
where continent is not null
-- group by the_date
order by 1,2;

-- Total Population vs Vaccinations
select dea.continent, dea.location, dea.the_date, dea.population, vac.new_vaccinations, vac.new_tests
from Covid_deaths dea
join covid_vaccinations vac
	on dea.location=vac.location
    and dea.the_date=vac.the_date
where dea.continent is not null
order by vac.new_vaccinations desc;

-- New Vaccinations In Canada
select location, new_vaccinations from Covid_Vaccinations
where location = 'Canada'
order by new_vaccinations desc;

