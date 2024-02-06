DROP DATABASE IF EXISTS diagram;
CREATE DATABASE diagram ;

USE diagram;
DROP TABLE IF EXISTS cars;
CREATE TABLE diagram.cars ( ID INT AUTO_INCREMENT primary key,
                           VIN VARCHAR(20),
                           Manufacture VARCHAR (20),
                           Model VARCHAR (20),
                           Year INT,
                           Color VARCHAR (10));
                           
 DROP TABLE IF EXISTS customer;                          
CREATE TABLE diagram.customer ( ID INT AUTO_INCREMENT primary key,
                               CustomerID INT ,
                               Name VARCHAR (20),
                               PhoneNumber VARCHAR(20),
                               Email VARCHAR(20),
                               Addres VARCHAR(30),
                               City VARCHAR (20),
                               State VARCHAR (20),
                               Country VARCHAR (20),
                               ZipCode VARCHAR (10));
                               
DROP TABLE IF EXISTS salespersons;                               
CREATE TABLE diagram.salespersons (ID INT AUTO_INCREMENT primary  key,
								   Staff_ID INT ,
                                   Name VARCHAR (20),
                                   Store VARCHAR (20));
DROP TABLE IF EXISTS invoices;                                   
CREATE TABLE diagram.invoices (ID INT AUTO_INCREMENT primary key,
                               InvoiceNumber INT ,
                               Date DATE,
                               Car INT,
                               Customer INT,
                               Salespersons INT ,
                               FOREIGN KEY (Car) REFERENCES cars(id),
                               FOREIGN KEY (Customer) REFERENCES customer(id),
                               FOREIGN KEY (Salespersons) REFERENCES salespersons(id));
                               
SELECT * FROM diagram.invoices;

INSERT INTO  diagram.cars (VIN, Manufacture, Model, Year, Color)
						  values ("3K096I98581DHSNUP", "Volkswagen","Tiguan",2019,"Blue"),
                                 ("ZM8G7BEUQZ97IH46V","Peugeot","Rifter","2019","Red"),
                                 ("RKXVNNIHLVVZOUB4M", "Ford","Fusion","2018","	White"),
                                 ("HKNDGS7CU31E9Z7JW","	Toyota","RAV4","2018","Silver"),
                                 ("DAM41UDN3CHU2WVF6","Volvo","V60","2019","Gray");
							
INSERT INTO  diagram.cars (VIN, Manufacture, Model, Year, Color)
                      values ("DAM41UDN3CHU2WVF6" ,"Volvo","V60 Cross Country","2019","Gray");
  
 ALTER TABLE diagram.customer ADD COLUMN Contry VARCHAR (20);
 
  
INSERT INTO diagram.customer (CustomerID, Name, PhoneNumber, Email, Addres, City, State, Country, ZipCode)
                       values ("10001", "Pablo Picasso","+34 636 17 63 82", "-","Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045"),
                               ("20001", "Abraham Lincoln","+1 305 907 7086","-", "120 SW 8th St","Miami","Florida","United States","33130"),
                               ("30001","Napoléon Bonaparte","+33 1 79 75 40 00","-","40 Rue du Colisée","Paris","	Île-de-France","France","75008");
                               
                               
INSERT INTO  diagram.salespersons (Staff_ID, Name, Store)
                           values ("00001","Petey Cruiser","Madrid"),
                                  ("00002","Anna Sthesia","Barcelona"),
                                  ("00003","Paul Molive","Berlin"),
                                  ("00004", "Gail Forcewind","Paris"),
                                  ("00005","Paige Turner","	Mimia"),
                                  ("00006","Bob Frapples","Mexico City"),
                                  ("00007","Walter Melon","Amsterdam"),
                                  ("00008","Shonda Leer","São Paulo");
                                  
INSERT INTO diagram.invoices ( InvoiceNumber , Date , Car, Customer, Salespersons)
                        values ( "852399038", "2018-08-22","1","1","3"),
                               ("731166526","2018-12-31","3","3","5"),
                               ("271135104","2019-01-22","2","2","7");
		
                           

                           
                           