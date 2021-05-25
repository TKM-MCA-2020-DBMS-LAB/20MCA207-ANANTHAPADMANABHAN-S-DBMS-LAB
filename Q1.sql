(i)	create the database.

	mysql> create database DBMSLAB;
Query OK, 1 row affected (0.00 sec)
	mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| dbmslab            |
| mysql              |
| performance_schema |
| test               |
+--------------------+
5 rows in set (0.00 sec)

(ii)	select the current database.

	mysql> use DBMSLAB;
         Database changed


(iii)Create the following tables.
a.	employee (emp_no,emp_name,DOB, address, doj, mobile_no, dept_no, salary).
	mysql> create table employee(emp_no int(20) NOT NULL PRIMARY KEY,emp_name varchar(20) NOT NULL,DOB date NOT NULL,address varchar(20) NOT NULL,DOJ date NOT NULL,mob_no int(20) NOT NULL,dept_no int(20) DEFAULT NULL,salary int(20) NOT NULL);
        Query OK, 0 rows affected (0.00 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_no   | int(20)     | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| DOB      | date        | NO   |     | NULL    |       |
| address  | varchar(20) | NO   |     | NULL    |       |
| DOJ      | date        | NO   |     | NULL    |       |
| mob_no   | int(20)     | NO   |     | NULL    |       |
| dept_no  | int(20)     | YES  |     | NULL    |       |
| salary   | int(20)     | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

b.	department (dept_no, dept_name, location).

	mysql> create table department(dept_no int(20) NOT NULL,dept_name varchar(20) NOT NULL,location varchar(20) NOT NULL);
        Query OK, 0 rows affected (0.00 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_no   | int(20)     | NO   |     | NULL    |       |
| dept_name | varchar(20) | NO   |     | NULL    |       |
| location  | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


(iv)	Include necessary constraints.


(v)	List all the tables in the current database.
	mysql> show tables;
+-------------------+
| Tables_in_dbmslab |
+-------------------+
| department        |
| employee          |
+-------------------+
2 rows in set (0.00 sec)


(vi)	Display the structure of the employee table.

	
mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_no   | int(20)     | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| DOB      | date        | NO   |     | NULL    |       |
| address  | varchar(20) | NO   |     | NULL    |       |
| DOJ      | date        | NO   |     | NULL    |       |
| mob_no   | int(20)     | NO   |     | NULL    |       |
| dept_no  | int(20)     | YES  |     | NULL    |       |
| salary   | int(20)     | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)




(vii)	Add a new column Designation to the employee table.

	mysql> alter table employee add designation varchar(20);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| emp_no      | int(20)     | NO   | PRI | NULL    |       |
| emp_name    | varchar(20) | NO   |     | NULL    |       |
| DOB         | date        | NO   |     | NULL    |       |
| address     | varchar(20) | NO   |     | NULL    |       |
| DOJ         | date        | NO   |     | NULL    |       |
| mob_no      | int(20)     | NO   |     | NULL    |       |
| dept_no     | int(20)     | YES  |     | NULL    |       |
| salary      | int(20)     | NO   |     | NULL    |       |
| designation | varchar(20) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
9 rows in set (0.00 sec)


(viii)	Drop the column location from Dept table.
	mysql> alter table department drop column location;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_no   | int(20)     | NO   |     | NULL    |       |
| dept_name | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)


(ix)	Drop the tables.

	mysql> drop table department;
             Query OK, 0 rows affected (0.00 sec)

	mysql> drop table employee;
Query OK, 0 rows affected (0.00 sec)



(x)	Delete the database.

	mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| dbmslab            |
| mysql              |
| performance_schema |
| test               |
+--------------------+
5 rows in set (0.00 sec)

mysql> drop database dbmslab;
Query OK, 0 rows affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| test               |
+--------------------+
4 rows in set (0.00 sec)
