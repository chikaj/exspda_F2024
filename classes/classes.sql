CREATE TABLE classes (
    id SERIAL PRIMARY KEY,
    code INTEGER,
    title TEXT,
    instructor TEXT,
    semester CHAR(1),
    year INTEGER,
    enrollment INTEGER
);

INSERT INTO classes (code, title, instructor, semester, year, enrollment) VALUES
(3426, 'Advanced GIS', 'Chow', 'F', 2024, 36),
(4412, 'Digital Image Processing', 'Currit', 'S', 2024, 14);
