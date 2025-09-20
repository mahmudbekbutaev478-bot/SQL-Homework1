✅ Puzzle 1: Finding Distinct Values

Условие: уникальные пары (col1, col2), где (a, b) и (b, a) считаются одинаковыми.

📌 Способ 1: DISTINCT с CASE (нормализация порядка)

SELECT DISTINCT 
       CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
       CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
FROM InputTbl;


📌 Способ 2: GROUP BY с LEAST/GREATEST через CASE

SELECT MIN(col1) AS col1, MAX(col2) AS col2
FROM (
    SELECT CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
           CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
    FROM InputTbl
) t
GROUP BY col1, col2;


Результат:

| col1 | col2 |
|------|------|
| a    | b    |
| c    | d    |
| m    | n    |

✅ Puzzle 2: Removing Rows with All Zeroes
SELECT *
FROM TestMultipleZero
WHERE NOT (ISNULL(A,0) = 0 
       AND ISNULL(B,0) = 0
       AND ISNULL(C,0) = 0
       AND ISNULL(D,0) = 0);


📌 Убирает строку, где все значения = 0.

✅ Puzzle 3: Find those with odd ids
SELECT *
FROM section1
WHERE id % 2 = 1;

✅ Puzzle 4: Person with the smallest id
SELECT TOP 1 *
FROM section1
ORDER BY id ASC;

✅ Puzzle 5: Person with the highest id
SELECT TOP 1 *
FROM section1
ORDER BY id DESC;

✅ Puzzle 6: People whose name starts with b

⚠️ В SQL Server LIKE по умолчанию регистр нечувствителен (B = b).

SELECT *
FROM section1
WHERE name LIKE 'B%';

✅ Puzzle 7: Rows with literal underscore _

В SQL Server _ — это один символ (wildcard), поэтому для поиска именно символа _ нужно использовать ESCAPE.

SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';


Результат:

| Code   |
|--------|
| X_456  |
| X_ABC  |
