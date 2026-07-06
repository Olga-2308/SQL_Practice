SELECT m.staffer AS male_staffer,
       f.staffer AS female_staffer
FROM MaleStaff m, FemaleStaff f
WHERE ABS(m.age - f.age) < 5
ORDER BY male_staffer ASC, female_staffer ASC;