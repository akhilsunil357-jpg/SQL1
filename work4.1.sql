use mashup;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100),
    fees_paid DECIMAL(10,2),
    status VARCHAR(10)
);

INSERT INTO students (id, name, course, fees_paid, status) VALUES
(1, 'Akhil ', 'Python Programming', 15000.00, 'Active'),
(2, 'Rahul Kumar', 'Java Development', 18000.00, 'Active'),
(3, 'Sneha R', 'Data Science', 20000.00, 'Inactive'),
(4, 'Anjali M', 'Web Development', 12000.00, 'Active'),
(5, 'Vishnu P', 'Machine Learning', 22000.00, 'Inactive'),
(6, 'Meera N', 'Digital Marketing', 10000.00, 'Active');