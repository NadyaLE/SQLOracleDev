Лабораторная работа №1:

create table Customers(
    id_customer number(4) primary key,
    Company VARCHAR2(30),
    Phone VARCHAR2(10)
    ); 

create table Product
(   id_product number(4),
    name_product VARCHAR2(60),
    PRIMARY KEY(id_product)
);

create table Customs
(   id_custom number(4),    
    id_customer number(4),
    id_product number(4),
    Order_date date,
    Number_of_products number,
    FOREIGN KEY(id_customer)REFERENCES Customers(id_customer),
    FOREIGN KEY(id_product)REFERENCES Stock_accounting(id_product)
    );
    
  create table Stock_accounting
(   id_stock number(4),
    id_product number(4),
    balance_beginning_month number,
    balance_end_month number,
    monthly_turnover number,
    price int,
    PRIMARY KEY(id_product),
    FOREIGN KEY(id_product)REFERENCES Product(id_product)
);

INSERT INTO Customers
VALUES (1,'New City',89536598745);
INSERT INTO Customers 
VALUES (2,'Old school',89536598787);
INSERT INTO Customers 
VALUES (3,'XYZ',89534893457);
INSERT INTO Customers
VALUES (4,'GALAXY',89552393401);
INSERT INTO Customers 
VALUES (5,'RobyJClark',88005553535);
INSERT INTO Customers
VALUES (6,'SpaceX',89035430204);
INSERT INTO Customers
VALUES (7,'NUMERIC',89081305678);

 INSERT INTO Customs
VALUES (2,1,2, TO_DATE('3.10.2018','DD.MM.YYYY'), 50);
 INSERT INTO Customs
VALUES (2,1,8, TO_DATE('4.10.2018','DD.MM.YYYY'), 20);
 INSERT INTO Customs
VALUES (1,2,18, TO_DATE('15.07.2019','DD.MM.YYYY'), 500);
  INSERT INTO Customs
VALUES (2,3,9, TO_DATE('23.04.2020','DD.MM.YYYY'), 44);
   INSERT INTO Customs
VALUES (2,3,7, TO_DATE('14.01.2020','DD.MM.YYYY'), 260);
  INSERT INTO Customs
VALUES (1,4,16, TO_DATE('14.01.2020','DD.MM.YYYY'), 650);
  INSERT INTO Customs
VALUES (1,5,8, TO_DATE('14.01.2020','DD.MM.YYYY'), 60);
 INSERT INTO Customs
VALUES (1,6,3, TO_DATE('14.01.2020','DD.MM.YYYY'), 20);
 INSERT INTO Customs
VALUES (1,7,3, TO_DATE('14.01.2020','DD.MM.YYYY'), 20);

INSERT INTO Stock_accounting
VALUES (1, 1, 19, 39, 100, 150);
INSERT INTO Stock_accounting
VALUES (1, 2, 15, 5, 210, 65);
INSERT INTO Stock_accounting
VALUES (1, 3, 5, 65, 40, 60);
INSERT INTO Stock_accounting
VALUES (2, 4, 30, 10, 270, 300);
INSERT INTO Stock_accounting
VALUES (2, 5, 23, 7, 50, 130);
INSERT INTO Stock_accounting
VALUES (2, 6, 12, 25, 70, 200);
INSERT INTO Stock_accounting
VALUES (2, 7, 3, 6, 140, 799);
INSERT INTO Stock_accounting
VALUES (2, 8, 41, 17, 230, 190);
INSERT INTO Stock_accounting
VALUES (2, 9, 56, 35, 122, 584);
INSERT INTO Stock_accounting
VALUES (2, 10, 180, 123, 457, 170);
INSERT INTO Stock_accounting
VALUES (3, 11, 230, 110, 1174, 234);
INSERT INTO Stock_accounting
VALUES (3, 12, 30, 90, 974, 63);
INSERT INTO Stock_accounting
VALUES (3, 13, 421, 258, 1074, 210);
INSERT INTO Stock_accounting
VALUES (3, 14, 673, 381, 1420, 509);
INSERT INTO Stock_accounting
VALUES (3, 15, 741, 810, 1001, 364);
INSERT INTO Stock_accounting
VALUES (3, 16, 20, 10, 1200, 636);
INSERT INTO Stock_accounting
VALUES (4, 17, 290, 136, 893, 700);
INSERT INTO Stock_accounting
VALUES (4, 18, 58, 189, 1333, 145);
INSERT INTO Stock_accounting
VALUES (4, 19, 8, 91, 439, 245);
INSERT INTO Stock_accounting
VALUES (4, 20, 588, 1184, 1867, 420);


    
INSERT INTO Product
VALUES (1,'Грунтовка');
INSERT INTO Product
VALUES (2,'Стекловата');
INSERT INTO Product
VALUES (3,'Черепица');
INSERT INTO Product
VALUES (4,'Дверная фурнитура');
INSERT INTO Product
VALUES (5,'Розетки');
INSERT INTO Product
VALUES (6,'Веревки');
INSERT INTO Product
VALUES (7,'Стремянки приставные');
INSERT INTO Product
VALUES (8,'Краска белила цинковые');
INSERT INTO Product
VALUES (9,'Молотки');
INSERT INTO Product
VALUES (10,'Рулетки');
INSERT INTO Product
VALUES (11,'Замки дверные');
INSERT INTO Product
VALUES (12,'Шпингалеты');
INSERT INTO Product
VALUES (13,'Петли дверные');
INSERT INTO Product
VALUES (14,'Ручки для дверей');
INSERT INTO Product
VALUES (15,'Ящик для метизов');
INSERT INTO Product
VALUES (16,'Органайзер Master 5');
INSERT INTO Product
VALUES (17,'Топоры');
INSERT INTO Product
VALUES (18,'Горелка газовая');
INSERT INTO Product
VALUES (19,'Лампа паяльная');
INSERT INTO Product
VALUES (20,'Отвертки');


