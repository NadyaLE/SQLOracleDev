Лабораторная работа 2:

1) 
SELECT  name_product, company FROM PRODUCT, CUSTOMERS, CUSTOMS
WHERE PRODUCT.id_product = (SELECT id_product FROM PRODUCT WHERE NAME_PRODUCT = 'Краска белила цинковые')
AND customs.id_product = product.id_product
AND customers.id_customer = customs.id_customer
2) 
SELECT SUM(BALANCE_BEGINNING_MONTH), SUM(BALANCE_END_MONTH), SUM(MONTHLY_TURNOVER)
FROM STOCK_ACCOUNTING;
3) 
SELECT name_product, BALANCE_END_MONTH FROM STOCK_ACCOUNTING, PRODUCT
WHERE STOCK_ACCOUNTING.BALANCE_END_MONTH < 1000
AND stock_accounting.id_product = product.id_product;
4)
SELECT company, name_product, BALANCE_BEGINNING_MONTH FROM STOCK_ACCOUNTING, CUSTOMERS, CUSTOMS, product
WHERE STOCK_ACCOUNTING.BALANCE_BEGINNING_MONTH > 55 and STOCK_ACCOUNTING.BALANCE_BEGINNING_MONTH < 790
AND customers.id_customer = customs.id_customer
AND STOCK_ACCOUNTING.id_product = customs.id_product
AND STOCK_ACCOUNTING.id_product = product.id_product;
5)
SELECT company, phone, name_product, price FROM CUSTOMERS, PRODUCT, CUSTOMS, STOCK_ACCOUNTING
WHERE Product.id_product  = (SELECT id_product FROM STOCK_ACCOUNTING WHERE price = (SELECT min(price) from STOCK_ACCOUNTING))
AND STOCK_ACCOUNTING.id_product = Product.id_product
AND CUSTOMS.id_product = Product.id_product
AND CUSTOMERS.id_customer = Customs.id_customer
AND CUSTOMS.id_custom < 2;
6) UPDATE "STOCK_ACCOUNTING"
SET "ID_STOCK" = 4 WHERE "ID_STOCK" = 1;