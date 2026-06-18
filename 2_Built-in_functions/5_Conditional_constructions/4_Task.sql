SELECT name, surname,
    CASE 
        WHEN email NOT LIKE '%midtown.com' THEN 'Incorrect'
        WHEN CHAR_LENGTH(LEFT(email, LOCATE('@', email) - 1)) < 2 THEN 'Incorrect'
        WHEN LEFT(email, 1) IN ('1', '2', '3', '4', '5', '6', '7', '8', '9') THEN 'Incorrect'
        ELSE 'Correct'
    END AS email_status
FROM Students
ORDER BY name ASC;