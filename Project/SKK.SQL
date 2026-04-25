-- =========================
-- 1. CREATE TABLE
-- =========================
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    class VARCHAR(10),
    score INT
);

-- =========================
-- 2. INSERT SAMPLE DATA
-- =========================
INSERT INTO students (student_id, name, class, score) VALUES
(1, 'Ada', 'A', 85),
(2, 'John', 'B', 70),
(3, 'Mary', 'A', 90),
(4, 'Peter', 'B', 60),
(5, 'Jane', 'A', 75);

-- =========================
-- 3. AGGREGATE QUERIES
-- =========================

-- Task 1: Count students in each class
SELECT class, COUNT(*) AS total_students
FROM students
GROUP BY class;

-- Task 2: Average score per class
SELECT class, AVG(score) AS average_score
FROM students
GROUP BY class;

-- Task 3: Classes with average score above 75
SELECT class, AVG(score) AS average_score
FROM students
GROUP BY class
HAVING AVG(score) > 75;

-- Task 4: Sort classes by highest average score
SELECT class, AVG(score) AS average_score
FROM students
GROUP BY class
ORDER BY average_score DESC;

-- =========================
-- 4. EXTENSION EXERCISES
-- =========================

-- 1. Highest score in each class
SELECT class, MAX(score) AS highest_score
FROM students
GROUP BY class;

-- 2. Count students scoring above 80 in each class
SELECT class, COUNT(*) AS high_scorers
FROM students
WHERE score > 80
GROUP BY class;

-- 3. Classes with more than 2 students
SELECT class, COUNT(*) AS total_students
FROM students
GROUP BY class
HAVING COUNT(*) > 2;

-- 4. Total score per class sorted descending
SELECT class, SUM(score) AS total_score
FROM students
GROUP BY class
ORDER BY total_score DESC;