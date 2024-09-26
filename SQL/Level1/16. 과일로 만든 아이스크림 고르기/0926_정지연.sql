SELECT F.FLAVOR AS FALVOR
FROM FIRST_HALF F, ICECREAM_INFO I
WHERE F.FLAVOR = I.FLAVOR AND F.TOTAL_ORDER >= 3000 AND I.INGREDIENT_TYPE = 'fruit_based'
ORDER BY F.TOTAL_ORDER DESC;

/** 또다른 풀이
SELECT FLAVOR
FROM FIRST_HALF
WHERE FLAVOR IN (SELECT FLAVOR
                FROM ICECREAM_INFO
                WHERE INGREDIENT_TYPE = 'fruit_based')
AND TOTAL_ORDER > 3000
ORDER BY TOTAL_ORDER DESC;
 **/