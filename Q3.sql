mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| dbmslab            |
| demo               |
| mysql              |
| performance_schema |
| test               |
+--------------------+
6 rows in set (0.00 sec)

mysql> use dbmslab;
Database changed

mysql> show tables;
+-------------------+
| Tables_in_dbmslab |
+-------------------+
| department        |
| employee          |
+-------------------+
2 rows in set (0.00 sec)

mysql> select * from department;
+---------+-----------+-------------+
| dept_no | dept_name | location    |
+---------+-----------+-------------+
|     101 | Kiran     | Mayyanad    |
|     102 | Abhinand  | Punaloor    |
|     103 | Azhar     | Kannanaloor |
|     104 | Nandu     | Navaikulam  |
|     105 | Abi       | Paripally   |
+---------+-----------+-------------+
5 rows in set (0.01 sec)

mysql>  create table department1(dept_no int(20) NOT NULL,dept_name varchar(20) NOT NULL,location varchar(20) NOT NULL);
Query OK, 0 rows affected (0.01 sec)

mysql> desc department1;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_no   | int(20)     | NO   |     | NULL    |       |
| dept_name | varchar(20) | NO   |     | NULL    |       |
| location  | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into department values(101,"Mathematics","Mayyanad");
Query OK, 1 row affected (0.00 sec)

mysql> insert into department1 values(101,"Mathematics","Mayyanad");
Query OK, 1 row affected (0.00 sec)

mysql> insert into department1 values(101,"Physics","Kanallooor");
Query OK, 1 row affected (0.00 sec)

mysql> insert into department1 values(101,"Chemistry","Kottiyam");
Query OK, 1 row affected (0.00 sec)

mysql> insert into department1 values(101,"Commerce","Paripally");
Query OK, 1 row affected (0.00 sec)

mysql> select from deartment1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from deartment1' at line 1
mysql> select * from department1;
+---------+-------------+------------+
| dept_no | dept_name   | location   |
+---------+-------------+------------+
|     101 | Mathematics | Mayyanad   |
|     101 | Physics     | Kanallooor |
|     101 | Chemistry   | Kottiyam   |
|     101 | Commerce    | Paripally  |
+---------+-------------+------------+
4 rows in set (0.00 sec)

mysql> select * from employee;
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
| emp_no | emp_name | DOB        | address        | DOJ        | mob_no    | dept_no | salary | designation |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
|      1 | Sadhu    | 1999-11-01 | white house    | 2020-10-10 | 978888888 |     101 |  15000 | writer      |
|      2 | Ameen    | 1999-04-30 |  red house     | 2020-03-30 | 828539870 |     102 |  25000 | typist      |
|      4 | Sugunan  | 1999-01-27 | doubt house    | 2020-10-01 | 987456321 |     104 |  42000 | tester      |
|      5 | Aswin    | 1999-02-28 | ratheesh house | 2020-11-10 | 987656436 |     105 |  62000 | coder       |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
4 rows in set (0.00 sec)

mysql> create view Manager as select emp_no,emp_name,dept_name, salary,location from employee, department1;
Query OK, 0 rows affected (0.00 sec)

mysql> select  distinct e.emp_name from employee e ,Manager m where e.salary >m.salary;
+----------+
| emp_name |
+----------+
| Ameen    |
| Sugunan  |
| Aswin    |
+----------+
3 rows in set (0.00 sec)
mysql> update Manager set salary = 1.1 * salary where location ="first floor";
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from Manager;
+--------+----------+-------------+--------+------------+
| emp_no | emp_name | dept_name   | salary | location   |
+--------+----------+-------------+--------+------------+
|      1 | Sadhu    | Mathematics |  15000 | Mayyanad   |
|      2 | Ameen    | Mathematics |  25000 | Mayyanad   |
|      4 | Sugunan  | Mathematics |  42000 | Mayyanad   |
|      5 | Aswin    | Mathematics |  62000 | Mayyanad   |
|      1 | Sadhu    | Physics     |  15000 | Kanallooor |
|      2 | Ameen    | Physics     |  25000 | Kanallooor |
|      4 | Sugunan  | Physics     |  42000 | Kanallooor |
|      5 | Aswin    | Physics     |  62000 | Kanallooor |
|      1 | Sadhu    | Chemistry   |  15000 | Kottiyam   |
|      2 | Ameen    | Chemistry   |  25000 | Kottiyam   |
|      4 | Sugunan  | Chemistry   |  42000 | Kottiyam   |
|      5 | Aswin    | Chemistry   |  62000 | Kottiyam   |
|      1 | Sadhu    | Commerce    |  15000 | Paripally  |
|      2 | Ameen    | Commerce    |  25000 | Paripally  |
|      4 | Sugunan  | Commerce    |  42000 | Paripally  |
|      5 | Aswin    | Commerce    |  62000 | Paripally  |
+--------+----------+-------------+--------+------------+
16 rows in set (0.00 sec)

mysql> drop view Manager;
Query OK, 0 rows affected (0.00 sec)

mysql> create table deptsalary as select dept_no , 0 as totalsalary from department;
Query OK, 6 rows affected (0.00 sec)
Records: 6  Duplicates: 0  Warnings: 0
mysql> select * from deptsalary;
+---------+-------------+
| dept_no | totalsalary |
+---------+-------------+
|     101 |           0 |
|     102 |           0 |
|     103 |           0 |
|     104 |           0 |
|     105 |           0 |
|     101 |           0 |
+---------+-------------+
6 rows in set (0.00 sec)
mysql> delimiter //
mysql> create procedure updatesalaryy (IN Param2 int)
    -> begin
    -> update deptsalary
    -> set totalsalary= (select sum(salary)from employee  where dept_no=Param2)
    -> where dept_no =param2;
    -> end; //
Query OK, 0 rows affected (0.00 sec)
mysql>  delimiter ;
mysql> call updatesalaryy(101);
Query OK, 2 rows affected (0.00 sec)

mysql> call updatesalaryy(102);
Query OK, 1 row affected (0.00 sec)
mysql> select * from deptsalary;
+---------+-------------+
| dept_no | totalsalary |
+---------+-------------+
|     101 |       15000 |
|     102 |       25000 |
|     103 |           0 |
|     104 |           0 |
|     105 |           0 |
|     101 |       15000 |
+---------+-------------+
6 rows in set (0.00 sec)

mysql> show procedure status;
+---------+---------------+-----------+----------------+---------------------+---------------------+---------------+---------+----------------------+----------------------+--------------------+
| Db      | Name          | Type      | Definer        | Modified            | Created             | Security_type | Comment | character_set_client | collation_connection | Database Collation |
+---------+---------------+-----------+----------------+---------------------+---------------------+---------------+---------+----------------------+----------------------+--------------------+
| dbmslab | updatesalaryy | PROCEDURE | root@localhost | 2021-06-08 10:29:46 | 2021-06-08 10:29:46 | DEFINER       |         | latin1               | latin1_swedish_ci    | latin1_swedish_ci  |
+---------+---------------+-----------+----------------+---------------------+---------------------+---------------+---------+----------------------+----------------------+--------------------+
1 row in set (0.00 sec)

mysql> drop procedure updatesalaryy;
Query OK, 0 rows affected (0.00 sec)

mysql> delimiter //
mysql> create procedure Details()
    -> begin
    -> select * from employee;
    -> end//
Query OK, 0 rows affected (0.00 sec)
mysql> DELIMITER ;
mysql> call Details();
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
| emp_no | emp_name | DOB        | address        | DOJ        | mob_no    | dept_no | salary | designation |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
|      1 | Sadhu    | 1999-11-01 | white house    | 2020-10-10 | 978888888 |     101 |  15000 | writer      |
|      2 | Ameen    | 1999-04-30 |  red house     | 2020-03-30 | 828539870 |     102 |  25000 | typist      |
|      4 | Sugunan  | 1999-01-27 | doubt house    | 2020-10-01 | 987456321 |     104 |  42000 | tester      |
|      5 | Aswin    | 1999-02-28 | ratheesh house | 2020-11-10 | 987656436 |     105 |  62000 | coder       |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
4 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)
