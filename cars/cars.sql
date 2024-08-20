CREATE TABLE cars (
    id SERIAL PRIMARY KEY,
    make TEXT,
    model TEXT,
    price FLOAT
);

INSERT INTO cars (make, model, price) VALUES
('Nissan', 'Altima', 23000),
('Nissan', 'Maxima', 27000),
('Ford', 'Festiva', 13000);
