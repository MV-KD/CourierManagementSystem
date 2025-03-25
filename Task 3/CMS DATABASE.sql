--DATABASE CREATION

create database CMS;

--user table

create table Users(UserID int primary key  , Name varchar(255),Email varchar(255) unique, Password varchar(255),ContactNumber varchar(20),Address Text);

insert into Users values (1,'virat','virat@gmail.com','pass1111','9711223344','7 lion street, madurai');
insert into Users values (2,'dhoni','dhoni@gmail.com','pass2222','9766778899','17 king street, trichy');
insert into Users values (3,'vijay','vijay@gmail.com','pass3333','9944556677','1 temple street, trichy');
insert into Users values (4,'karthi','karthi@gmail.com','pass4444','9876543210','21 mg road, chennai');
insert into Users values (5,'surya','surya@gmail.com','pass5555','9001122334','5 anna nagar, coimbatore');
insert into Users values (6,'meena','meena@gmail.com','pass6666','9888777665','10 park avenue, salem');
insert into Users values (7,'anbu','anbu@gmail.com','pass7777','8765432109','34 gandhi street, madurai');
insert into Users values (8,'selvi','selvi@gmail.com','pass8888','7654321098','48 periyar nagar, chennai');
insert into Users values (9,'dinesh','dinesh@gmail.com','pass9999','9988776655','76 kamarajar road, erode');
insert into Users values (10,'vetri','vetri@gmail.com','pass1010','8899776655','12 rajaji street, thanjavur');
insert into Users values (11,'prakash','prakash@gmail.com','pass1112','9090887766','15 gandhi road, coimbatore');
insert into Users values (12,'revathi','revathi@gmail.com','pass1212','9877665544','9 nehru nagar, madurai');
insert into Users values (13,'babu','babu@gmail.com','pass1313','8988776655','21 gandhi nagar, chennai');
insert into Users values (14,'geetha','geetha@gmail.com','pass1414','8877665544','15 rajaji street, madurai');
insert into Users values (15,'lakshmi','lakshmi@gmail.com','pass1515','8766554433','5 temple street, thanjavur');
insert into Users values (16,'nandhini','nandhini@gmail.com','pass1616','7655443322','19 lake road, madurai');
insert into Users values (17,'ramesh','ramesh@gmail.com','pass1717','6544332211','23 rajaji street, thanjavur');
insert into Users values (18,'deepak','deepak@gmail.com','pass1818','5433221100','55 market street, madurai');
insert into Users values (19,'arun','arun@gmail.com','pass1919','4322110099','18 lake road, coimbatore');
insert into Users values (20,'kavitha','kavitha@gmail.com','pass2020','3211009988','9 bus stand road, dindigul');



select *from Users;

--Courier table

create table Courier ( CourierID int primary key , SenderName varchar(255),SenderAddress text , ReceiverName varchar(255),ReceiverAddress text , 
Weight decimal(5,2),Status varchar(50),TrackingNumber varchar(20) unique, DeliveryDate date); 
truncate table Courier
insert into Courier values (1,'virat','7 lion street, madurai','arun','24 lake road, chennai',3.2,'delivered','TRK001','2025-02-10');
insert into Courier values (2,'dhoni','17 king street, trichy','geetha','15 rajaji street, madurai',2.8,'pending','TRK002','2025-03-15');
insert into Courier values (3,'vijay','1 temple street, trichy','babu','10 kamarajar road, salem',4.1,'transported','TRK003','2025-03-18');
insert into Courier values (4,'karthi','21 mg road, chennai','lakshmi','5 temple street, thanjavur',2.3,'delivered','TRK004','2025-02-25');
insert into Courier values (5,'surya','5 anna nagar, coimbatore','nandhini','19 lake road, madurai',3.6,'shipped','TRK005','2025-04-02');
insert into Courier values (6,'meena','10 park avenue, salem','venkat','11 anna nagar, erode',5.2,'delivered','TRK006','2025-01-22');
insert into Courier values (7,'anbu','34 gandhi street, madurai','ramesh','23 rajaji street, thanjavur',1.9,'transported','TRK007','2025-02-05');
insert into Courier values (8,'selvi','48 periyar nagar, chennai','deepak','55 market street, madurai',2.7,'shipped','TRK008','2025-03-27');
insert into Courier values (9,'dinesh','76 kamarajar road, erode','arun','18 lake road, coimbatore',4.3,'delivered','TRK009','2025-02-14');
insert into Courier values (10,'vetri','12 rajaji street, thanjavur','kavitha','9 bus stand road, dindigul',2.5,'pending','TRK010','2025-03-12');
insert into Courier values (11,'prakash','15 gandhi road,coimbatore','nandhini','22 lake view street,chennai',3.8,'delivered','TRK011','2025-03-25');
insert into Courier values (12,'revathi','9 nehru nagar,madurai','arun','30 anna salai,trichy',4.2,'out for delivery','TRK012','2025-03-25');
insert into Courier values (13,'virat','25 mg road, chennai','dinesh','10 anna nagar, trichy',2.8,'delivered','TRK013','2025-03-24');  
insert into Courier values (14,'selvi','5 temple street, madurai','babu','21 gandhi nagar, chennai',3.2,'in transit','TRK014','2025-03-25');  
insert into Courier values (15,'vijay','33 anna street, coimbatore','geetha','14 nehru road, madurai',3.9,'shipped','TRK015','2025-04-01');  
insert into Courier values (16,'meena','19 lake road, erode','lakshmi','5 kamarajar street, thanjavur',4.1,'delivered','TRK016','2025-02-20');  
insert into Courier values (17,'karthi','2 nehru nagar, trichy','ramesh','45 gandhi street, dindigul',2.6,'transported','TRK017','2025-03-08');  
insert into Courier values (18,'anbu','55 market street, madurai','prakash','10 anna nagar, coimbatore',3.4,'pending','TRK018','2025-03-18');  
insert into Courier values (19,'surya','12 lake road, salem','deepak','34 rajaji street, chennai',4.0,'out for delivery','TRK019','2025-03-22');  
insert into Courier values (20,'revathi','9 nehru nagar, madurai','vetri','5 gandhi nagar, trichy',2.9,'delivered','TRK020','2025-03-28');  

alter table Courier add EmployeeID int

update Courier set EmployeeID = 1 where CourierID = 1;
update Courier set EmployeeID = 2 where CourierID = 2;
update Courier set EmployeeID = 4 where CourierID = 3;
update Courier set EmployeeID = 7 where CourierID = 4;
update Courier set EmployeeID = 9 where CourierID = 5;
update Courier set EmployeeID = 5 where CourierID = 6;
update Courier set EmployeeID = 10 where CourierID = 7;
update Courier set EmployeeID = 3 where CourierID = 8;
update Courier set EmployeeID = 6 where CourierID = 9;
update Courier set EmployeeID = 8 where CourierID = 10;
update Courier set EmployeeID = 1 where CourierID = 11;
update Courier set EmployeeID = 2 where CourierID = 12;
update Courier set EmployeeID = 4 where CourierID = 13;
update Courier set EmployeeID = 7 where CourierID = 14;
update Courier set EmployeeID = 9 where CourierID = 15;
update Courier set EmployeeID = 5 where CourierID = 16;
update Courier set EmployeeID = 10 where CourierID = 17;
update Courier set EmployeeID = 3 where CourierID = 18;
update Courier set EmployeeID = 6 where CourierID = 19;
update Courier set EmployeeID = 8 where CourierID = 20;

alter table Courier add PickupDate date;
update Courier set PickupDate = '2025-02-05' where CourierID = 1;
update Courier set PickupDate = '2025-03-10' where CourierID = 2;
update Courier set PickupDate = '2025-03-14' where CourierID = 3;
update Courier set PickupDate = '2025-02-20' where CourierID = 4;
update Courier set PickupDate = '2025-03-29' where CourierID = 5;
update Courier set PickupDate = '2025-01-18' where CourierID = 6;
update Courier set PickupDate = '2025-02-01' where CourierID = 7;
update Courier set PickupDate = '2025-03-23' where CourierID = 8;
update Courier set PickupDate = '2025-02-10' where CourierID = 9;
update Courier set PickupDate = '2025-03-08' where CourierID = 10;
update Courier set PickupDate = '2025-03-21' where CourierID = 11;
update Courier set PickupDate = '2025-03-21' where CourierID = 12;
update Courier set PickupDate = '2025-03-20' where CourierID = 13;
update Courier set PickupDate = '2025-03-22' where CourierID = 14;
update Courier set PickupDate = '2025-03-27' where CourierID = 15;
update Courier set PickupDate = '2025-02-15' where CourierID = 16;
update Courier set PickupDate = '2025-03-04' where CourierID = 17;
update Courier set PickupDate = '2025-03-14' where CourierID = 18;
update Courier set PickupDate = '2025-03-18' where CourierID = 19;
update Courier set PickupDate = '2025-03-24' where CourierID = 20;

alter table Courier add DeliveryTime int;
update Courier 
set DeliveryTime = case 
    when Status = 'delivered' then datediff(hour, PickupDate, DeliveryDate) 
    else null 
end;

select *from Courier

--courier services

create table CourierServices (  ServiceID int primary key , ServiceName varchar(100),Cost decimal(8,2));

insert into CourierServices values (1,'local',100.00);
insert into CourierServices values (2,'domestic standard',250.00);
insert into CourierServices values (3,'domestic express',400.00);
insert into CourierServices values (4,'same-day delivery',500.00);
insert into CourierServices values (5,'overnight delivery',600.00);
insert into CourierServices values (6,'international economy',1200.00);
insert into CourierServices values (7,'international express',2500.00);
insert into CourierServices values (8,'bulk shipping',1500.00);
insert into CourierServices values (9,'fragile items',800.00);
insert into CourierServices values (10,'temperature-controlled',1800.00);

select *from CourierServices;

--Employee table

create table EmployeeTable (EmployeeID int primary key , Name varchar(255),Email varchar(255) unique,ContactNumber varchar(20),Role varchar(50), Salary decimal(10,2));

insert into EmployeeTable values (1,'arun','arun@gmail.com','8765432101','delivery executive',25000.00);
insert into EmployeeTable values (2,'balaji','balaji@gmail.com','9988776654','courier handler',22000.00);
insert into EmployeeTable values (3,'chitra','chitra@gmail.com','9876543212','customer support',20000.00);
insert into EmployeeTable values (4,'dinesh','dinesh@gmail.com','9123456780','delivery executive',26000.00);
insert into EmployeeTable values (5,'eswar','eswar@gmail.com','9786543213','warehouse manager',30000.00);
insert into EmployeeTable values (6,'fathima','fathima@gmail.com','9654321876','customer support',21000.00);
insert into EmployeeTable values (7,'ganesh','ganesh@gmail.com','9123567892','courier handler',23000.00);
insert into EmployeeTable values (8,'hema','hema@gmail.com','8877665543','logistics manager',35000.00);
insert into EmployeeTable values (9,'ilango','ilango@gmail.com','9234567890','delivery executive',25500.00);
insert into EmployeeTable values (10,'jana','jana@gmail.com','9345678901','warehouse assistant',24000.00);
insert into EmployeeTable values (11,'johnson','johnson@gmail.com','9390678901','courier handler',22000.00);



select *from EmployeeTable;

--LOcation table

create table Location( LocationID int primary key, LocationName varchar(100), Address Text);

insert into Location values (1,'madurai hub','7 lion street, madurai');
insert into Location values (2,'trichy branch','17 king street, trichy');
insert into Location values (3,'chennai main center','21 mg road, chennai');
insert into Location values (4,'coimbatore warehouse','5 anna nagar, coimbatore');
insert into Location values (5,'salem dispatch unit','10 park avenue, salem');
insert into Location values (6,'vellore sorting center','2 vikasa road, vellore');
insert into Location values (7,'cuddalore distribution','4 mainroad, cuddalore');
insert into Location values (8,'erode parcel station','76 kamarajar road, erode');
insert into Location values (9,'thanjavur logistics','12 rajaji street, thanjavur');
insert into Location values (10,'kanchipuram transit','19 temple road, kanchipuram');
insert into Location values (11,'madurai parcel station','9 nehru nagar, madurai');
insert into Location values (12,'trichy express center','30 anna salai, trichy');
insert into Location values (13,'salem fast dispatch','11 anna nagar, erode');
insert into Location values (14,'thanajvur express depot','23 rajaji street, thanjavur');
insert into Location values (15,'madurai quick logistics','55 market street, madurai');
insert into Location values (16,'coimbatore rapid transport','18 lake road, coimbatore');
insert into Location values (17,'chennai express facility','22 lake view street, chennai');
insert into Location values (18,'madurai fast shipment','5 temple street, madurai');
insert into Location values (19,'dindigul regional hub','9 bus stand road, dindigul');
insert into Location values (20,'trichy local warehouse','10 anna nagar, trichy');

select *from Location ;

--payment table
 create table Payment( PaymentID int primary key , CourierID int ,LocationID int , Amount decimal(10,2),PaymentDate date, 
 constraint FK_CID foreign key (CourierID) references Courier (CourierID)on delete cascade ,constraint FK_LID foreign key (LocationID) references Location(LocationID)on delete set null);

insert into Payment values (1, 1, 1, 250.50, '2025-02-10');
insert into Payment values (2, 2, 2, 180.75, '2025-03-15');
insert into Payment values (3, 3, 3, 300.25, '2025-03-18');
insert into Payment values (4, 4, 4, 220.40, '2025-02-25');
insert into Payment values (5, 5, 5, 275.90, '2025-04-02');
insert into Payment values (6, 6, 6, 315.60, '2025-01-22');
insert into Payment values (7, 7, 7, 150.30, '2025-02-05');
insert into Payment values (8, 8, 8, 195.80, '2025-03-27');
insert into Payment values (9, 9, 9, 320.50, '2025-02-14');
insert into Payment values (10, 10, 10, 210.25, '2025-03-12');
insert into Payment values (11, 11, 11, 275.75, '2025-03-25');
insert into Payment values (12, 12, 12, 295.60, '2025-03-25');
insert into Payment values (13, 13, 13, 185.90, '2025-03-24');
insert into Payment values (14, 14, 14, 260.40, '2025-03-25');
insert into Payment values (15, 1, 15, 255.30, '2025-02-11');
insert into Payment values (16, 2, 16, 185.70, '2025-03-16');
insert into Payment values (17, 3, 17, 310.80, '2025-03-19');
insert into Payment values (18, 4, 18, 225.50, '2025-02-26');
insert into Payment values (19, 5, 19, 270.90, '2025-04-03');
insert into Payment values (20, 6, 20, 325.40, '2025-01-23');

select *from Payment;




