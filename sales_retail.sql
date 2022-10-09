DROP DATABASE IF EXISTS sales_retail;

CREATE DATABASE sales_retail;

USE sales_retail;

SET names utf8;

/* James */
CREATE TABLE `items`
  (
     `items_id`         VARCHAR(20) NOT NULL,
     `item_name`        VARCHAR(200) NOT NULL,
     `item_category` VARCHAR(30) NOT NULL,
     `item_price`       VARCHAR(20) NOT NULL,
     PRIMARY KEY (`items_id`)
  );

/* James */
INSERT INTO `items`
VALUES      ('001','PS5 Console','Console','€500'),
			('002','Call of Duty: Vanguard','PS5 Game','€79.99'),
            ('003','DEATHLOOP','PS5 Game','€69.99'),
            ('004','FIFA 22','PS5 Game','€69.99'),
            ('005','Demons Souls','PS5 Game','€59.99'),
            ('006','A Plague Tale: Innocence','PS5 Game','€29.99'),
            ('007','Hades','PS5 Game','€19.99'),
            ('100','Xbox One Console','Console','€500'),
            ('101','Forza Horizon 5','Xbox One Game','€69.99'),
            ('102','Far Cry 6','Xbox One Game','€59.99'),
            ('103','Call of Duty: Vanguard','Xbox One Game','€79.99'),
            ('104','Minecraft','Xbox One Game','€19.99'),
            ('105','Fifa 22','Xbox One Game','€69.99'),
            ('106','Grand Theft auto the trilogy','Xbox One Game','€49.99'),
            ('107','Battlefield 2042','Xbox One Game','€99.99'),
            ('301','Nintendo Switch Console','Console','€300'),
            ('302','Animal Crossing','Nintendo Switch Game','€59.99'),
            ('303','Overcooked! 2','Nintendo Switch Game','€8.99'),
            ('304','Minecraft','Nintendo Switch Game','€29.99'),
            ('305','Mario Kart 8 Deluxe','Nintendo Switch Game','€59.99'),
            ('306','Super Smash Bros Ultimate','Nintendo Switch Game','€59.99'),
            ('307','Hollow Knight','Nintendo Switch Game','€15.00'),
            ('401','Minecraft','PC Game','€29.99'),
            ('402','Counter-Strike: Global Offensive','PC Game','€19.99'),
            ('403','Fall Guys: Ultimate Knock Out','PC Game','€15'),
            ('404','Sekiro: Shadows Die Twice','PC Game','€59.99'),
            ('405','Overwatch','PC Game','€20'),
            ('406','Monster Hunter: World','PC Game','€39.99');
            

CREATE TABLE `employee`
  (
     `employee_id`     VARCHAR(20) NOT NULL,
     `employee_name`   VARCHAR(200) NOT NULL,
     `employee_gender` VARCHAR(30) NOT NULL,
     `employee_age`    VARCHAR(30) NOT NULL,
     `location`        VARCHAR(20) NOT NULL,
     PRIMARY KEY (`employee_id`)
  );

/* James */
INSERT INTO `employee`
VALUES      ('101-21','Luke Alford','Male','26','Cork'),
			('204-26','Ruben Contreras','Male','19','Galway'),
			('116-32','Annie Terrell','Female','32','Dublin'),
			('461-09','Maureen Mckenna','Female','23','Cork'),
			('105-23','Kiara Howells','Female','22','Galway'),
			('235-97','Kieren Battle','Male','20','Dublin'),
			('432-71','Debbie Alford','Female','21','Cork'),
			('237-12','Tyron Roberts','Male','26','Dublin'),
			('472-31','Lorraine Molina','Female','29','Galway'),
			('010-09','Ty Robson','Male','18','Galway'),
			('211-56','Ellenor Hirst','Female','37','Dublin'),
			('223-54','Neil Wardle','Male','28','Cork'),
			('334-82','Alana Justice','Female','25','Galway'),
			('138-27','Ben Roche','Male','23','Dublin');

/* Emma */
CREATE TABLE `customer`
  (
     `customer_id`      VARCHAR(20) NOT NULL,
     `customer_name`    VARCHAR(200) NOT NULL,
     `customer_address` VARCHAR(30) NOT NULL,
     `phoneNumber`      VARCHAR(30) NOT NULL,
     PRIMARY KEY (`customer_id`)
  );

/* Emma */
INSERT INTO `customer`
VALUES      ('01','Carl Norris','carlflournoy@gmail.com','0834752639'),
			('02','Emma Caroll','emma0444@gmail.com','0853742839'),		
			('03','Joshua Finley','joshyboy@gmail.com','0891273266'),
            ('04','Alexa Simons','alexaalexa@gmail.com','0857298833'),
            ('05','Paul Donnely','pauldonnely@gmail.com','0891922315'),
            ('06','Sarah Cummings','cummings098@gmail.com','0853739244'),
            ('07','Jade Tornel','jadetornel@gmail.com','0834734429'),
            ('08','Perrie Sams','samsperrie@gmail.com','0858882341'),
            ('10','Emma Thorns','emma1997@gmail.com','0851239040'),
            ('11','James Donovan','donovan76@gmail.com','0873284394'),
            ('12','Catalin Benza','catabenza09@gmail.com','0892341856'),
            ('13','Sarah Dobrea','dobreasarah01@gmail.com','0852834501'),
            ('14','David Dobrea','daviddobrea98@gmail.com','0851020043'),
            ('15','Gabriel Ross','gibby05@gmail.com','0872034518');

/* Emma */
CREATE TABLE `dates`
  (
     `date_id` VARCHAR(20) NOT NULL,
     `date`    VARCHAR(200) NOT NULL,
     `month`   VARCHAR(30) NOT NULL,
     `year`    VARCHAR(30) NOT NULL,
     PRIMARY KEY (`date_id`)
  );

/* Emma */
INSERT INTO `dates`
VALUES      ('053-334','04','06','2021'),
			('222-435','24','11','2021'),
            ('245-245','03','08','2021'),
            ('260-875','07','07','2021'),
            ('693-055','29','01','2021'),
            ('602-445','15','09','2021'),
            ('220-643','11','10','2021'),
            ('091-496','19','11','2021'),
            ('530-243','24','05','2021'),
            ('679-025','08','11','2021'),
            ('000-536','08','03','2021'),
            ('246-743','09','11','2021'),
            ('999-264','19','02','2021'),
            ('235-235','22','07','2021'),
			('001-234','28','04','2021');

CREATE TABLE `stores`
  (
     `store_id`     VARCHAR(20) NOT NULL,
     `store_name`   VARCHAR(200) NOT NULL,
     `city`         VARCHAR(30) NOT NULL,
     `manager_name` VARCHAR(30) NOT NULL,
     PRIMARY KEY (`store_id`)
  );

/* James */
INSERT INTO `stores`
VALUES      ('1','Game Depot Dublin','Dublin','Annie Terrell'),
			('2','Game Depot Cork','Cork','Neil Wardle'),
			('3','Game Depot Galway','Galway','Lorraine Molina');

/* Emma */
CREATE TABLE `sales`
  (
     `saleID`     VARCHAR(20) NOT NULL,
     `sale_total`  VARCHAR(200) NOT NULL,
     `quantity`    VARCHAR(30) NOT NULL,
     `itemID`     VARCHAR(30) NOT NULL,
     `storeID`    VARCHAR(20) NOT NULL,
     `employeeID` VARCHAR(20) NOT NULL,
     `dateID`     VARCHAR(20) NOT NULL,
     `customerID` VARCHAR(20) NOT NULL,
     FOREIGN KEY(itemID) REFERENCES items(items_id),
	 FOREIGN KEY(storeID) REFERENCES stores (store_id),
     FOREIGN KEY(employeeID) REFERENCES employee (employee_id),
     FOREIGN KEY(dateID) REFERENCES dates (date_id),
     FOREIGN KEY(customerID) REFERENCES customer (customer_id)
  );

/* Emma */
INSERT INTO `sales`
VALUES      ('1','€550','1','004','1','235-97','693-055','06'),
			('2','€39.98','2','007','1','116-32','679-025','01'),
            ('3','€49.99','1','106','2','461-09','001-234','11'),
            ('4','€550','1','001','3','204-26','000-536','08'),
            ('5','€29.99','1','401','2','101-21','530-243','15'),
            ('6','€49.99','1','106','1','235-97','999-264','13'),
            ('7','€550','1','001','3','334-82','999-264','05'),
            ('8','€600','2','301','1','211-56','693-055','03'),
            ('9','€69.99','1','101','3','105-23','530-243','07'),
            ('10','€59.99','1','102','2','101-21','001-234','02'),
            ('11','€550','1','001','2','432-71','000-536','14'),
            ('12','€1,100','2','001,004','1','211-56','693-055','13'),
            ('13','€69.99','1','101','1','235-97','679-025','06'),
			('14','€300','1','301','3','105-23','001-234','12'),
            ('15','€17.98','2','303','3','334-82','105-23','01');