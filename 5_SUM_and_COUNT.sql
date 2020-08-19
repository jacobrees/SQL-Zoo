SELECT SUM(population)
FROM world

SELECT DISTINCT(continent) 
FROM world

SELECT SUM(GDP)
FROM world WHERE continent = 'Africa'

SELECT COUNT(name) FROM world
WHERE area > 1000000

SELECT SUM(population) FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

SELECT continent, COUNT(name) FROM world x 
WHERE name IN (SELECT name FROM world y WHERE y.continent = x.continent) GROUP BY continent

SELECT continent, COUNT(name) FROM world x 
WHERE name IN (SELECT name FROM world y WHERE y.continent = x.continent AND population >= 10000000) GROUP BY continent

SELECT continent FROM world x 
WHERE 100000000 < (SELECT SUM(population) FROM world y WHERE y.continent = x.continent) GROUP BY continent