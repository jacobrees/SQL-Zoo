SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

SELECT yr, subject FROM nobel
 Where winner = 'Albert Einstein'

SELECT winner FROM nobel
 WHERE subject = 'Peace' AND yr >= 2000

SELECT yr, subject, winner FROM nobel
 WHERE yr BETWEEN 1980 AND 1989 AND subject = 'Literature'

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Barack Obama',
                  'Jimmy Carter')

SELECT winner FROM nobel
 WHERE winner LIKE 'John%'

SELECT * FROM nobel
 WHERE (subject = 'Physics' AND yr = '1980') OR (subject = 'Chemistry' AND yr = '1984')

SELECT * FROM nobel
 WHERE yr = '1980' AND subject <> 'Chemistry' AND subject <> 'Medicine'

SELECT * FROM nobel
 WHERE (subject = 'Medicine' AND yr < 1910) OR (subject = 'Literature'  AND yr >= 2004)

SELECT * FROM nobel
 WHERE winner = 'PETER GRÜNBERG'

SELECT * FROM nobel
 WHERE winner = 'EUGENE O\'NEILL'

SELECT winner, yr, subject FROM nobel
 WHERE winner LIKE 'Sir%' ORDER BY yr DESC;
SELECT yr, subject, winner FROM nobel
 WHERE winner LIKE 'Sir%' ORDER BY winner;

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner;