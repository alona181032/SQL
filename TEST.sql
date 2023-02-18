/* У вас SQL база с таблицами:
1) Users (userid, age);
2) Purchases (purchaseid, userid, itemid, date);
3) Items (itemid, price).
 
Напишите SQL запросы для расчета следующих метрик:
 
А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно?
- пользователи в возрастном диапазоне от 26 до 35 лет включительно?
Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая?
В) какой товар обеспечивает дает наибольший вклад в выручку за последний год?
Г) топ-3 товаров по выручке и их доля в общей выручке за любой год.
Будет здорово, если Ваше решение оформлено в виде работающего кода и основательно протестировано на придуманных данных (код для наполнения данными тоже приложите).*/


CREATE TABLE Users
(
    userid INT NOT NULL AUTO_INCREMENT,
    age    INT,
    PRIMARY KEY (userid)
);

INSERT INTO Users (age)
VALUES (18),
       (32),
       (26),
       (16),
       (45),
       (12),
       (56),
       (24),
       (66),
       (34);

INSERT INTO Users (age)
VALUES (19),
       (33),
       (27),
       (20),
       (15),
       (11),
       (46),
       (23),
       (67),
       (37),
       (49),
       (35),
       (26),
       (20),
       (14),
       (31),
       (48),
       (22),
       (37),
       (34);

CREATE TABLE Purchases
(
    purchaseid INT NOT NULL AUTO_INCREMENT,
    userid     INT,
    itemid     INT,
    `date`     DATE,
    PRIMARY KEY (purchaseid),
    FOREIGN KEY (userid) REFERENCES Users (userid) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (itemid) REFERENCES Items (itemid) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Purchases (userid, itemid, `date`)
VALUES (9, 5, "2017-06-25"),
       (2, 2, "2017-06-28"),
       (3, 13, "2017-06-30"),
       (4, 4, "2017-06-20"),
       (6, 1, "2017-06-22"),
       (6, 36, "2017-07-29"),
       (7, 7, "2017-07-20"),
       (5, 8, "2017-07-19"),
       (9, 9, "2017-07-10"),
       (9, 39, "2017-08-25"),
       (21, 2, "2017-08-28"),
       (3, 3, "2017-08-30"),
       (22, 4, "2017-08-20"),
       (6, 1, "2017-09-22"),
       (7, 6, "2017-09-29"),
       (1, 7, "2017-09-20"),
       (5, 8, "2017-09-19"),
       (30, 29, "2017-10-10"),
       (6, 1, "2017-10-22"),
       (7, 6, "2017-11-29");

INSERT INTO Purchases (userid, itemid, `date`)
VALUES (1, 7, "2017-12-20"),
       (5, 28, "2017-12-19"),
       (30, 9, "2017-12-10"),
       (17, 10, "2017-12-15"),
       (11, 1, "2018-01-25"),
       (12, 32, "2018-01-28"),
       (3, 13, "2018-02-28"),
       (14, 17, "2018-02-20"),
       (1, 15, "2018-03-22"),
       (11, 16, "2018-04-29"),
       (17, 17, "2018-05-20"),
       (18, 28, "2018-05-19"),
       (2, 19, "2018-06-10"),
       (11, 31, "2018-06-25"),
       (12, 12, "2018-07-28"),
       (3, 13, "2018-07-30"),
       (14, 34, "2018-10-20"),
       (15, 15, "2018-10-22"),
       (11, 16, "2018-11-29"),
       (17, 17, "2018-11-20");

INSERT INTO Purchases (userid, itemid, `date`)
VALUES (18, 18, "2018-12-19"),
       (2, 19, "2018-12-10"),
       (20, 20, "2018-12-15"),
       (21, 21, "2019-01-25"),
       (29, 22, "2019-01-28"),
       (23, 23, "2019-02-28"),
       (24, 40, "2019-02-20"),
       (25, 25, "2019-02-22"),
       (30, 35, "2019-02-27"),
       (1, 27, "2019-03-20"),
       (21, 31, "2019-03-25"),
       (9, 22, "2019-04-28"),
       (2, 23, "2019-05-30"),
       (24, 40, "2019-06-20"),
       (25, 25, "2019-07-22"),
       (30, 35, "2019-08-29"),
       (1, 27, "2019-09-20"),
       (28, 28, "2019-10-19"),
       (29, 29, "2019-11-10"),
       (7, 30, "2019-12-15");

INSERT INTO Purchases (userid, itemid, `date`)
VALUES (30, 1, "2020-07-25"),
       (2, 2, "2020-07-28"),
       (3, 3, "2020-06-30"),
       (4, 23, "2020-12-20"),
       (11, 5, "2020-10-22"),
       (9, 6, "2020-10-29"),
       (7, 7, "2020-09-20"),
       (8, 8, "2020-09-19"),
       (9, 9, "2020-08-10"),
       (10, 10, "2020-07-15"),
       (11, 19, "2021-06-25"),
       (12, 22, "2021-05-28"),
       (25, 13, "2021-06-30"),
       (14, 40, "2021-06-20"),
       (15, 35, "2021-06-22"),
       (16, 16, "2021-04-29"),
       (26, 17, "2021-06-20"),
       (18, 18, "2021-09-19"),
       (19, 37, "2021-09-10"),
       (30, 20, "2021-09-15");

INSERT INTO Purchases (userid, itemid, `date`)
VALUES (21, 21, "2022-03-25"),
       (22, 22, "2022-08-28"),
       (23, 33, "2022-08-30"),
       (24, 24, "2022-02-20"),
       (25, 25, "2022-02-22"),
       (29, 22, "2022-01-29"),
       (27, 27, "2022-01-20"),
       (28, 8, "2022-01-19"),
       (26, 29, "2022-05-10"),
       (30, 15, "2022-09-15"),
       (2, 26, "2023-01-29"),
       (27, 27, "2023-01-20"),
       (28, 38, "2023-01-19"),
       (12, 40, "2023-02-10"),
       (30, 30, "2023-02-15");

CREATE TABLE Items
(
    itemid    INT NOT NULL AUTO_INCREMENT,
    item_name varchar(50),
    price     INT,
    PRIMARY KEY (itemid)
);

INSERT INTO Items (item_name, price)
VALUES ("Xiaomi Poco X3 Pro", 90),
       ("Samsung Galaxy A53", 205),
       ("Xiaomi Redmi 9A", 150),
       ("Xiaomi Redmi Note 11", 345),
       ("Samsung Galaxy A33", 300),
       ("Samsung Galaxy Flip4", 350),
       ("Samsung Galaxy S22", 400),
       ("POCO X4 Pro", 200),
       ("Samsung Galaxy A22", 250),
       ("Samsung Galaxy A52", 280);

INSERT INTO Items (item_name, price)
VALUES ("Xiaomi Mi 11 Lite", 200),
       ("Xiaomi Poco X4 Pro", 130),
       ("Xiaomi Poco X3", 140),
       ("Motorola Edge 20 Lite", 180),
       ("Motorola Edge 21", 230),
       ("Nokia 5324", 100),
       ("Nokia 5325", 110),
       ("Xiaomi Poco X", 125),
       ("iPhone 7", 305),
       ("iPhone 7 Pro", 350);

INSERT INTO Items (item_name, price)
VALUES ("Nokia 5367", 140),
       ("Samsung Galaxy S29", 300),
       ("iPhone 10", 600),
       ("Samsung Galaxy A72", 400),
       ("iPhone 11", 800),
       ("Xiaomi Mi 12", 210),
       ("Motorola Edge 25", 280),
       ("Xiaomi Poco X4", 185),
       ("iPhone 9", 500),
       ("iPhone 8", 450);

INSERT INTO Items (item_name, price)
VALUES ("Meizu Mi 12 ", 250),
       ("Huawei 3 Pro", 230),
       ("Meizu X3", 140),
       ("Motorola Edge 21 Lite", 180),
       ("Motorola Edge 22", 250),
       ("Nokia N5", 100),
       ("Nokia H3", 110),
       ("Xiaomi Poco X6", 125),
       ("iPhone 10 Pro ", 655),
       ("iPhone 11 Pro", 850);


-- А) какую сумму в среднем в месяц тратит:
-- - пользователи в возрастном диапазоне от 18 до 25 лет включительно?


SELECT EXTRACT(MONTH FROM date) AS MONTH, AVG(PRICE)
FROM USERS AS U
    JOIN PURCHASES AS P
ON U.USERID = P.USERID
    JOIN ITEMS AS I ON P.ITEMID = I.ITEMID
WHERE AGE BETWEEN 18 AND 25
GROUP BY MONTH;

-- пользователи в возрастном диапазоне от 26 до 35 лет включительно?

SELECT EXTRACT(MONTH FROM date) AS MONTH, AVG(PRICE)
FROM USERS AS U
    JOIN PURCHASES AS P
ON U.USERID = P.USERID
    JOIN ITEMS AS I ON P.ITEMID = I.ITEMID
WHERE AGE BETWEEN 26 AND 35
GROUP BY MONTH;

-- Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая?

SELECT EXTRACT(MONTH FROM date) AS MONTH, SUM(PRICE) as PRICE
FROM USERS AS U
    JOIN PURCHASES AS P
ON U.USERID = P.USERID
    JOIN ITEMS AS I ON P.ITEMID = I.ITEMID
WHERE AGE >= 35
GROUP BY month
ORDER BY PRICE DESC
    LIMIT 1;

-- В) какой товар обеспечивает дает наибольший вклад в выручку за последний год?

SELECT U.USERID, I.ITEMID, ITEM_NAME, SUM(PRICE) AS PRICE, EXTRACT(YEAR FROM DATE) AS YEAR
FROM USERS AS U
    JOIN PURCHASES AS P
ON U.USERID = P.USERID
    JOIN ITEMS AS I ON P.ITEMID = I.ITEMID
GROUP BY I.ITEMID, YEAR
ORDER BY YEAR DESC, PRICE DESC


-- Г) топ-3 товаров по выручке и их доля в общей выручке за любой год.

SELECT item_name,
       sum(i.price) as pricesum,
       (100 / (SELECT sum(items.price) FROM items) * sum(i.price)) as percentage
FROM USERS AS U
         JOIN PURCHASES AS P ON U.USERID = P.USERID
         JOIN ITEMS AS I ON P.ITEMID = I.ITEMID
GROUP BY i.itemid
ORDER BY pricesum DESC limit 3

  
  