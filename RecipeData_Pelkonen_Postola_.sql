INSERT INTO USER VALUES
(301, 'MasterChef', 'masterchef@email.com', '2017-02-12 10:12:35'),
(302, 'FoodLover', NULL, '2017-01-03 18:12:05'),
(303, 'Garlic82', 'garlic82@email.com', '2017-04-20 20:18:22'),
(304, 'Mary_Poppins', NULL, '2017-02-01 14:35:12'),
(305, 'ParsonBrown', 'parson.brown@email.com', '2017-03-10 08:24:50'),
(306, 'Pizzafan', 'pizzaislife@email.com', '2017-05-20 12:20:04'),
(307, 'Baker95', 'baker95@email.com', '2017-03-17 17:23:12');

insert into RECIPE values
(101, 301, 'Lemon garlic shrimp pasta with tomatos', 4, 40, 5, '2018-10-12', '20:13:35'),
(102, 304, 'Green bean casserole', NULL, 60, 4, '2018-05-20', '14:25:20'),
(103, 307, 'Chocolate chip cookies', 10, 70, 5, '2019-02-14', '15:02:12'),
(104, 307, 'New York cheese cake', 10, 120, NULL, '2019-12-20', '08:12:18'),
(105, 306, 'Pizza Margerita', 4, 50, 3, NULL, NULL),
(106, 305, 'Mojito', 2, NULL, 3, '2017-05-30', '17:45:12'),
(107, 301, 'Creamy herb chicken with mint', 4, 75, 2, NULL, NULL);

insert into INGREDIENT values
(201, 'Shrimp', 1),
(202, 'Beef', 0),
(203, 'Chicken', 1),
(204, 'Wheat flour', 3),
(205, 'Mint', 2),
(206, 'Pasta', 1),
(207, 'Cream cheese', 2),
(208, 'Green bean', 1),
(209, 'Tomato', 2),
(210, 'Sugar', 3);

insert into RECIPE_INGREDIENT values
(101, 201),
(101, 209),
(102, 208),
(103, 204),
(103, 210),
(104, 204),
(104, 207),
(104, 210),
(105, 204),
(105, 209),
(106, 205),
(106, 210),
(107, 203),
(107, 205),
(107, 207);

INSERT INTO CATEGORY VALUES
(1, 'Snacks & Starters', 0),
(2, 'Salads', 0),
(3, 'Main Courses', 4),
(4, 'Desserts', 2),
(5, 'Drinks', 1),
(6, 'Pastas', 1),
(7, 'Vegan', 1);

INSERT INTO CATEGORY_RECIPE VALUES
(3, 101),
(3, 102),
(3, 105),
(3, 107),
(4, 103),
(4, 104),
(5, 106),
(6, 101),
(7, 102);


