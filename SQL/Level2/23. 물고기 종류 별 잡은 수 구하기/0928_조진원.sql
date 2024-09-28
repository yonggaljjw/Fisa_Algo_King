SELECT COUNT(*) AS FISH_COUNT, N.FISH_NAME
FROM FISH_INFO F, FISH_NAME_INFO N
WHERE F.FISH_TYPE = N.FISH_TYPE
GROUP BY 2
ORDER BY 1 DESC;