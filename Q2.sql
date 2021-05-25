(i)	Add 5 rows in the employee and dept tables.

mysql> insert into department values(101,"Kiran","Mayyanad");
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values(102,"Abhinand","Punaloor");
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values(103,"Azhar","Kannanaloor");
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values(104,"Nandu","Navaikulam");
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values(105,"Abi","Paripally");
Query OK, 1 row affected (0.00 sec)

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
5 rows in set (0.00 sec)


mysql> insert into employee values(1,"Sadhu",'1999-11-1',"white house",'2020-10-10',978888888,101,15000,'writer');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values(2,"Ameen",'1999-04-30'," red house",'2020-03-30',828539870,102,25000,'typist');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values(3,"Vivek",'1999-06-01'," blue house",'2019-01-25',898523106,103,45000,'designer');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values(4,"Sugunan",'1999-01-27',"doubt house",'2020-10-01',987651236,104,42000,'tester');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values(5,"Aswin",'1999-02-28',"ratheesh house",'2020-11-10',987656436,105,62000,'coder');
Query OK, 1 row affected (0.00 sec)

(ii)	Display all the records from the above tables.

mysql> select * from employee;
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
| emp_no | emp_name | DOB        | address        | DOJ        | mob_no    | dept_no | salary | designation |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
|      1 | Sadhu    | 1999-11-01 | white house    | 2020-10-10 | 978888888 |     101 |  15000 | writer      |
|      2 | Ameen    | 1999-04-30 |  red house     | 2020-03-30 | 828539870 |     102 |  25000 | typist      |
|      3 | Vivek    | 1999-06-01 |  blue house    | 2019-01-25 | 898523106 |     103 |  45000 | designer    |
|      4 | Sugunan  | 1999-01-27 | doubt house    | 2020-10-01 | 987651236 |     104 |  42000 | tester      |
|      5 | Aswin    | 1999-02-28 | ratheesh house | 2020-11-10 | 987656436 |     105 |  62000 | coder       |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
5 rows in set (0.00 sec)

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
5 rows in set (0.00 sec)


(iii)	Display the empno and name of all the employees from department no2.

mysql> select  emp_name, emp_no FROM employee WHERE dept_no=102;
+----------+--------+
| emp_name | emp_no |
+----------+--------+
| Ameen    |      2 |
+----------+--------+
1 row in set (0.00 sec)
(iv)	Display empno,name,designation,dept no and salary in the descending order of salary.

mysql> select emp_name,emp_no,dept_no,salary FROM employee ORDER BY salary DESC;
+----------+--------+---------+--------+
| emp_name | emp_no | dept_no | salary |
+----------+--------+---------+--------+
| Aswin    |      5 |     105 |  62000 |
| Vivek    |      3 |     103 |  45000 |
| Sugunan  |      4 |     104 |  42000 |
| Ameen    |      2 |     102 |  25000 |
| Sadhu    |      1 |     101 |  15000 |
+----------+--------+---------+--------+
5 rows in set (0.00 sec)


(v)Display the empno and name of all employees whose salary is between 2000 and 25000.


mysql> select * from employee WHERE salary BETWEEN 2000 AND 25000;
+--------+----------+------------+-------------+------------+-----------+---------+--------+
| emp_no | emp_name | DOB        | address     | DOJ        | mob_no    | dept_no | salary |
+--------+----------+------------+-------------+------------+-----------+---------+--------+
|      1 | Sadhu    | 1999-11-01 | white house | 2020-10-10 | 978888888 |     101 |  15000 |
|      2 | Ameen    | 1999-04-30 |  red house  | 2020-03-30 | 828539870 |     102 |  25000 |
+--------+----------+------------+-------------+------------+-----------+---------+--------+
2 rows in set (0.00 sec)


(vi)Display all DOB without duplicate values.

mysql> select DISTINCT DOB FROM employee;
+------------+
| DOB        |
+------------+
| 1999-11-01 |
| 1999-04-30 |
| 1999-06-01 |
| 1999-01-27 |
| 1999-02-28 |
+------------+
5 rows in set (0.00 sec)



(vii)	Display the dept no and total salary of employees .

mysql> select dept_no ,salary from employee;
+---------+--------+
| dept_no | salary |
+---------+--------+
|     101 |  15000 |
|     102 |  25000 |
|     103 |  45000 |
|     104 |  42000 |
|     105 |  62000 |
+---------+--------+
5 rows in set (0.00 sec)


(viii)	Change the salary of employee to 25000 whose  designation is typist.

mysql> update employee SET salary= 25000 WHERE designation='typist';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
| emp_no | emp_name | DOB        | address        | DOJ        | mob_no    | dept_no | salary | designation |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
|      1 | Sadhu    | 1999-11-01 | white house    | 2020-10-10 | 978888888 |     101 |  15000 | writer      |
|      2 | Ameen    | 1999-04-30 |  red house     | 2020-03-30 | 828539870 |     102 |  25000 | typist      |
|      3 | Vivek    | 1999-06-01 |  blue house    | 2019-01-25 | 898523106 |     103 |  45000 | designer    |
|      4 | Sugunan  | 1999-01-27 | doubt house    | 2020-10-01 | 987651236 |     104 |  42000 | tester      |
|      5 | Aswin    | 1999-02-28 | ratheesh house | 2020-11-10 | 987656436 |     105 |  62000 | coder       |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
5 rows in set (0.00 sec)


(ix)	Change the mobile no of employee named ‘sugunan’

mysql> update employee SET mob_no=987456321 WHERE emp_name like '%sugunan';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
| emp_no | emp_name | DOB        | address        | DOJ        | mob_no    | dept_no | salary | designation |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
|      1 | Sadhu    | 1999-11-01 | white house    | 2020-10-10 | 978888888 |     101 |  15000 | writer      |
|      2 | Ameen    | 1999-04-30 |  red house     | 2020-03-30 | 828539870 |     102 |  25000 | typist      |
|      3 | Vivek    | 1999-06-01 |  blue house    | 2019-01-25 | 898523106 |     103 |  45000 | designer    |
|      4 | Sugunan  | 1999-01-27 | doubt house    | 2020-10-01 | 987456321 |     104 |  42000 | tester      |
|      5 | Aswin    | 1999-02-28 | ratheesh house | 2020-11-10 | 987656436 |     105 |  62000 | coder       |
+--------+----------+------------+----------------+------------+-----------+---------+--------+-------------+
5 rows in set (0.00 sec)

(x)	Delete all employees whose salaries are equal to Rs 45000.

mysql> delete from employee WHERE salary=45000;
Query OK, 1 row affected (0.00 sec)

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


(xi)	Select the deptno that has total salary paid for its employees more than 25000.

mysql> select dept_no from employee where salary>25000;
+---------+
| dept_no |
+---------+
|     104 |
|     105 |
+---------+
2 rows in set (0.00 sec)
