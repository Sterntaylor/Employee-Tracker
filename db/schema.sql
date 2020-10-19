DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS job_role;
DROP TABLE IF EXISTS employee;

CREATE TABLE department (
    id INTEGER PRIMARY KEY,
    dpt_name VARCHAR(30) NOT NULL,
    description text
);
CREATE TABLE job_role (
    id INTEGER PRIMARY KEY,
    job_title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id VARCHAR(10) NOT NULL
);
CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id VARCHAR(10) NOT NULL,
    manager_id INTEGER
);