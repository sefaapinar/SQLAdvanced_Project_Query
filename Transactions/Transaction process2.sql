SELECT * FROM ITEMS

BEGIN TRAN
UPDATE ITEMS SET UNITPRICE = 55 WHERE ID =3

SELECT * FROM ITEMS_LOG WHERE ID = 3

ROLLBACK