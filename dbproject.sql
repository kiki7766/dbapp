/**************************************************************************
*Assumptions were made beforehand. For example,if a person need a specific*
*Setting fixes,the developers are the ones in charges of any issues with***
*the customers. Any other type of corrections or working plataform about***
*the applications, this is only a base for a idea of creating database*****
*Please calm down and hope you enjoy this explanation of the project.******
***************************************************************************
***************************************************************************
**********This database has the memory of 1TB, my assumption***************
********Is that only 100,000 customers can participate in the db***********
***************************************************************************
***********************By Peggy E Gonzalez Ojeda***************************
************************PLEASE PROCEED************************************/

CREATE TABLE Accounts(login VARCHAR(25) PRIMARY KEY, cart INT, Setting VARCHAR(30), Notifications VARCHAR(20));

CREATE TABLE Developers(AccManage VARCHAR(100) PRIMARY KEY,CustomerAcc1 VARCHAR (100), CustomerAcc2 VARCHAR(100), CustomerAcc3 VARCHAR(100), CustomerAcc4 VARCHAR(100), CustomerAcc5 VARCHAR(100), CustomerAcc6 VARCHAR (100), CustomerAcc7 VARCHAR (100), CustomerAcc8 VARCHAR(100), CustomerAcc9 VARCHAR(100), CustomerAcc10 VARCHAR(100), WebMobManage VARCHAR(500), StockSupplierPayIssues VARCHAR(500));

CREATE TABLE Stock(Product VARCHAR(25), StockNotification VARCHAR(30), Price float PRIMARY KEY);   

CREATE TABLE Suppliers(SupplierProd VARCHAR(25), Price FLOAT PRIMARY KEY);

CREATE TABLE WebApp(AccountLog VARCHAR(25) PRIMARY KEY,ProductView Varchar(20), NotificationPurchase VARCHAR(20), ProdStock VARCHAR(20), ProdShipTime DATE, Price Float);

CREATE TABLE MobApp(AccountLog VARCHAR(15) PRIMARY KEY ,Plataform VARCHAR(10),ProductView Varchar(20), NotificationPurchase VARCHAR(20), ProdStock VARCHAR(20), ProdShipTime DATE, Price Float);

CREATE TABLE Payment(VerifyPurchase VARCHAR(25), NotificationPayment VARCHAR(15) PRIMARY KEY);

CREATE TABLE Wishlist(InterestProd VARCHAR(25), AccLog VARCHAR(15) PRIMARY KEY);
/*
***************************INSERT IN ACCOUNTS*************************
*/

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('kiki', 4, 'Update Profile', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('pan', 1, 'Update Shipping Address', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('plala', 5, 'N/A', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('wehapom', 4, 'Help Desk', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('mercury101', 0, 'Update Profile', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('awfull', 12, 'Payment Changes', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('chris', 1 'Update Profile', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('tsk', 6, 'Update Profile', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('ham', 1, 'Suggestions', 0);


INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('hero', 6, 'Update Profile', 2);

INSERT INTO Accounts(login, cart, Setting, Notifications) Values ('hamburger', 0, 'Settings', 10);


##------------------At least insert 10 in customer-------------------##
INSERT INTO Wishlist(interestprod, acclog) Values ('VR-Glasses', 'kiki');
INSERT INTO Wishlist(interestprod, acclog) Values ('PS4', 'pan');
INSERT INTO Wishlist(interestprod, acclog) Values ('Xbox One', 'deathside');
INSERT INTO Wishlist(interestprod, acclog) Values ('GTA9', 'greatfriend');
INSERT INTO Wishlist(interestprod, acclog) Values ('KH-10', 'marina');
INSERT INTO Wishlist(interestprod, acclog) Values ('Mario Cart', 'Bobby');
INSERT INTO Wishlist(interestprod, acclog) Values ('Just Dance 2024', 'dancer101');
INSERT INTO Wishlist(interestprod, acclog) Values ('controller for PS4', 'poli');
INSERT INTO Wishlist(interestprod, acclog) Values ('HellBoy', 'tsk');
INSERT INTO Wishlist(interestprod, acclog) Values ('2024', 'hamburger');

-----------------RANDOM INSERT,ALTER, UPDATE, DROP, DELETE--------------


INSERT INTO Developers (accmanage, CustomerAcc1, CustomerAcc2, CustomerAcc3, CustomerAcc4, CustomerAcc5, CustomerAcc6, CustomerAcc7, CustomerAcc8, CustomerAcc9, CustomerAcc10, webmobmanage, StockSupplierPayIssues) Values ('all access system','awfull','kiki','wehapom','mercury101','deathside','hamburger','tsk','marina','poli','Bobby', 'bug fixes', 'Product and Stock');

INSERT INTO MobApp(AccountLog, ProductView, NotificationPurchase, ProdShipTime, Price) VALUES('awfull','Consoles','Confirmation Pay', '2017-01-01',10);

INSERT INTO MobApp(AccountLog, ProductView, NotificationPurchase, ProdShipTime, Price) VALUES('mercury101','Offers','Non-Paid', '2017-07-09',9);

INSERT INTO WebApp(AccountLog, ProductView, NotificationPurchase, ProdShipTime, Price) VALUES('wehapom','Video-Game','Half-Paid', '2017-10-09',100);

INSERT INTO WebApp(AccountLog, ProductView, NotificationPurchase, ProdShipTime, Price) VALUES('kiki','VR-Glases','Complete Pay', '2016-12-12',1);

--Le VIEW----------------------------------------------------

CREATE VIEW SetUpAcc AS SELECT webapp.ProductView, mobapp.price FROM WebApp, MobApp WHERE webapp.Accountlog = mobapp.accountlog;


--------------Le ALTER---------------------------------------------
ALTER TABLE Accounts ADD Subscribe VARCHAR(25);

ALTER TABLE Accounts DROP COLUMN Subscribe;
------------------Le Update----------------------------------
UPDATE Accounts SET login = 'olaf' where login ='kiki';

UPDATE Accounts SET subscribe = 'niconicoli@pikachu.io' where login = 'wehapom';

------------------------------SELECT----------------------------------

SELECT * FROM Accounts;

SELECT * FROM Accounts WHERE cart < 7;

SELECT interestprod FROM Wishlist WHERE acclog = 'kiki';

SELECT DISTINCT acclog FROM Accounts WHERE Setting = 'Update Profile';

--------------------Le index-----------------------------------------

CREATE INDEX index_head ON Developers (AccManage,CustomerAcc1, CustomerAcc2, CustomerAcc3, CustomerAcc4, CustomerAcc5, CustomerAcc6, CustomerAcc7, CustomerAcc8, CustomerAcc9, CustomerAcc10, WebMobManage, StockSupplierPayIssues);


------------Let's drop ALL :)------------------------------
DROP VIEW setupp;

DROP INDEX index_head;

DROP TABLE Accounts, Customers, Payment, Developers, mobapp, stock, webapp, suppliers;



