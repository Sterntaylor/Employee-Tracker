
INSERT INTO job_role (job_title, salary, department_id)
VALUES
    ('Creator', '70000', 'SCI'),
    ('Tester', '35000', 'SCI'),
    ('Debugger', '75000', 'MATH'),
    ('Polish', '72500', 'MATH'),
    ('Marketer', '70000', 'BRD'),
    ('Feedback', '35000', 'BRD');

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
    ('Taylor', 'Stern', 'SCI', '1'),
    ('Bunba', 'Stern', 'BRD', '2'),
    ('Marcella', 'Bunba', 'MATH', '3');

INSERT INTO department (dpt_name, description)
VALUES
   ('Science', 'This department is in charge of handling new developments we make in the scientific community'),
   ('Math', 'This department is in charge of handling any mathematical problems'),
   ('Branding', 'This department is in charge of creating a strong brand behind the products our company creates.');
