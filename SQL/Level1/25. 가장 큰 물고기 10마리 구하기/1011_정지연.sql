SELECT  ID, LENGTH
FROM FISH_INFO 
WHERE LENGTH IS NOT NULL
ORDER BY LENGTH DESC, ID
LIMIT 10