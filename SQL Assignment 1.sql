CREATE DATABASE if not exists assignment;
USE assignment;
CREATE table if not exists authors (authorid int, name varchar (30));
SHOW TABLES;
INSERT INTO authors (authorid, name)
		values (1, 'J K Rowling'),
		       (2, 'Thomas Hardy'),
		       (3, 'Oscar Wilde'),
		       (4, 'Sidney Sheldon'),
		       (5, 'Alistair Maclean'),
		       (6, 'Jane Autsen'),
               (7,'Chetan Bhagat'),
               (8,'Amrita Pritam'),
               (9,'Ruskin Bond'),
               (10,'Rabindranath Tagore');
               
               UPDATE authors SET name = 'Alastair McNeal' where authorid=5;
               
               CREATE table if not exists Books (bookid int, title varchar (100), authorid int);
               SHOW tables;
               INSERT INTO Books (bookid, title, authorid)
               values (1,'Harry Potter and the Philosophers Stone',1),
		              (2,'Harry Potter and the Chamber of Secrets',1),
		              (3,'Harry Potter and the Half-Blood Prince',1),
		              (4,'Harry Potter and the Goblet of Fire',1),
		              (5,'Night Without End',5),
		              (6,'Fear is the Key',5),
		              (7,'Where Eagles Dare',5),
		              (8,'Sense and Sensibility',6),
		              (9,'Pride and Prejudice',6),
		              (10,'Emma',6),
					  (11,'Random Book',22);
                      
                      DELETE FROM Books where bookid=11;
                      
                      ALTER TABLE books RENAME TO Favbooks;
                      ALTER TABLE authors RENAME TO Favauthors;
                      
                      USE assignment;
                      CREATE TABLE if not exists products (product_id int auto_increment primary KEY, 
                                                          product_name varchar (70) NOT NULL unique,
                                                          description varchar (100),
                                                          supplier_id int);
                                                          
                                                          desc products;
                                                          
                       INSERT into products (product_id, product_name,description,supplier_id)
                                   values (10, 'Sunsilk', 'Shampoo', 1),
                                          (20, 'Rasgulla','Sweet', 2),
                                          (30, 'Paneer', 'Milkproduct',3),
                                          (40, 'Goodday', 'Biscuit',4),
                                          (50, 'Lassi', 'Sweetmilk',5);
                                          
                       CREATE TABLE if not exists supplier (supplier_id int auto_increment primary KEY, 
                                                          supplier_name varchar (30),
                                                          location varchar (40));
                                                          
                           ALTER TABLE supplier RENAME TO suppliers;                               
                                                          
                       INSERT INTO suppliers (supplier_id, supplier_name, location) 
                                   values    (1,'John', 'Goa'),
											 (2,'James','Pondicherry'),
                                             (3,'Bond', 'Orissa'),
                                             (4,'Tina', 'Mumbai'),
                                             (5,'Nita','Gujrat');
                                             
                       DROP TABLE stock;
                       
                       CREATE TABLE if not exists stock (stock_id int auto_increment PRIMARY KEY,
                                                        product_id int,
                                                        balance_stock int);
                       INSERT INTO stock (stock_id,product_id,balance_stock)
                                           values (100,10,20),
											(200,20,40),
                                            (300,30,60),
                                            (400,40,80),
                                            (500,50,100);
                                            
                                            SHOW tables;
                                            
                                            ALTER TABLE products add foreign key (supplier_id)
                                            references suppliers (supplier_id) 
                                            ON DELETE CASCADE;
                                            
                                            desc products;
                                            
                                            ALTER TABLE stock add foreign key (product_id)
                                            references products (product_id) 
                                            ON DELETE CASCADE;
                                            
                                            desc stock;
                                            
      ALTER TABLE suppliers MODIFY supplier_name VARCHAR (30) UNIQUE NOT NULL;
      
      desc	suppliers;
      USE assignment;
      DROP TABLE employee;
      create table if not exists employee (empid integer, fname varchar(30), lname varchar(30), salary decimal(10,2));
      
      insert into employee (empid, fname, lname, salary)
      values(100,'Jon','Hamm',2000),
            (200,'Tom','Cruise',3000),
            (300,'Hugh','Laurie',7500),
            (400,'Tom','Hanks',750),    
            (500,'Johnny','Depp',1300),
            (600,'Hugh','Grant',850),
            (700,'Ben','Affleck',75),
            (800,'George','Clooney',10000),
            (900,'Henry',Null, 3000),
            (1000,'Gregory','House',3500),
            (1100,'Jean','Hackman',2700);
            
            select* FROM employee;
            
            ALTER TABLE employee ADD COLUMN deptno int after empid;
            SELECT * FROM employee;
            
			UPDATE employee SET deptno=20 WHERE (empid%2=0);
            UPDATE employee SET deptno=30 WHERE (empid%3=0);
            UPDATE employee SET deptno=40 WHERE (empid%4=0);
            UPDATE employee SET deptno=50 WHERE (empid%5=0);
            UPDATE employee SET deptno=10 WHERE deptno is NULL;
            
            SELECT* FROM employee;
		    CREATE INDEX eidx
           USING HASH
           ON employee(empid);
           DESC employee;
           SHOW INDEX FROM employee;
            
           					

      
      

                                            
                                            
				
                                                        
                                                        
                       
                                          
                                          
                                   
					
                       
                                                                                          
													
                      

               