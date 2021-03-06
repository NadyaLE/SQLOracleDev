Лабораторная работа №3
1)
DECLARE
    v_name_prod  product.name_product%TYPE;
    v_balance_end  STOCK_ACCOUNTING.BALANCE_END_MONTH%TYPE;
    
CURSOR cur_company 
IS
    SELECT  name_product, BALANCE_END_MONTH
    FROM STOCK_ACCOUNTING, PRODUCT
    WHERE STOCK_ACCOUNTING.BALANCE_END_MONTH < 1000
    AND stock_accounting.id_product = product.id_product;
BEGIN 
    OPEN cur_company;
    LOOP
        FETCH cur_company INTO v_name_prod, v_balance_end;
        EXIT WHEN cur_company%NOTFOUND;
        DBMS_OUTPUT.put_line('RESULT: ' ||v_name_prod||' '|| v_balance_end);
    END LOOP;
    CLOSE cur_company;
END;
2)
DECLARE
    v_name_prod  product.name_product%TYPE;
    v_balance_end  STOCK_ACCOUNTING.BALANCE_END_MONTH%TYPE;
    
CURSOR cur_company (num_balance int)
IS
    SELECT  name_product, BALANCE_END_MONTH
    FROM STOCK_ACCOUNTING, PRODUCT
    WHERE STOCK_ACCOUNTING.BALANCE_END_MONTH < num_balance
    AND stock_accounting.id_product = product.id_product;
BEGIN 
    OPEN cur_company(100);
    LOOP
        FETCH cur_company INTO v_name_prod, v_balance_end;
        EXIT WHEN cur_company%NOTFOUND;
        DBMS_OUTPUT.put_line('RESULT: ' ||v_name_prod||' '|| v_balance_end);
    END LOOP;
    CLOSE cur_company;
END;
3)
CREATE TABLE "AUDIT"
("USER_NAME" VARCHAR2(50), "TIME" DATE);

CREATE OR REPLACE
TRIGGER ADT
AFTER INSERT OR DELETE OR UPDATE
ON STOCK_ACCOUNTING
FOR EACH ROW
DECLARE
BEGIN
INSERT INTO "AUDIT"("USER_NAME",
"TIME") VALUES (USER, SYSDATE);
END ADT;
UPDATE "STOCK_ACCOUNTING"
SET "ID_STOCK" = 1 WHERE "ID_STOCK" = 4;
4)
CREATE SEQUENCE AVTO START WITH 20 INCREMENT BY 1;
CREATE OR REPLACE
TRIGGER IDENT
BEFORE INSERT ON PRODUCT
FOR EACH ROW
DECLARE
BEGIN
SELECT AVTO.NEXTVAL
INTO :NEW.id_product
FROM DUAL ;
END IDENT;

CREATE SEQUENCE AVTO2 START WITH 6 INCREMENT BY 1;
CREATE OR REPLACE
TRIGGER IDENT2
BEFORE INSERT ON CUSTOMERS
FOR EACH ROW
DECLARE
BEGIN
SELECT AVTO2.NEXTVAL
INTO :NEW.id_customer
FROM DUAL;
END IDENT2;

CREATE SEQUENCE AVTO3 START WITH 20 INCREMENT BY 1;
CREATE OR REPLACE
TRIGGER IDENT3
BEFORE INSERT ON STOCK_ACCOUNTING
FOR EACH ROW
DECLARE
BEGIN
SELECT AVTO3.NEXTVAL
INTO :NEW.id_product
FROM DUAL;
END IDENT3;
