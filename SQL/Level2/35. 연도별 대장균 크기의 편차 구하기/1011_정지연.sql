-- SELECT 절에 MAX() 함수를 사용하면 오류가 생기는 케이스

SELECT SUB.YEAR AS YEAR, 
        MAX_SIZE - E1.SIZE_OF_COLONY AS YEAR_DEV, 
        ID
FROM ECOLI_DATA E1,
    (SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX(SIZE_OF_COLONY) AS MAX_SIZE
     FROM ECOLI_DATA
     GROUP BY 1) SUB
WHERE YEAR(E1.DIFFERENTIATION_DATE) = SUB.YEAR
ORDER BY 1, 2