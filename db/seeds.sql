INSERT INTO department (name)
VALUES ("Engineering"),
       ("Finance"),
       ("Legal"),
       ("Sales"),
       ("Human Reasources");

INSERT INTO role (title, department_id)
VALUES ("CEO", 2),
       ("Lead Account Manager", 2),
       ("VP Engineering", 1),
       ("Software Manager", 1),
       ("Lead Software Engineer", 1),
       ("VP Sales", 4),
       ("VP HR", 5),
       ("VP Legal", 3);

INSERT INTO employee (first_name, last_name,role_id,manager_id)
VALUES ("John", "Smith", 1, NULL),
       ("Mary","Jane", 2, 1),
       ("Kim","Jones", 3, 1),
       ("James","Bob", 4, 3),
       ("George","Washington", 5, 4),
       ("Thomas", "Jefferson", 6, 1),
       ("Abraham", "Lincoln", 7, 1);
    --   ("Barck","Obama" 8, 1);