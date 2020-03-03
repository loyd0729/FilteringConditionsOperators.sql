/*
* Here it demonstrate the usage 
* of WHERE, AND & OR
* including BETWEEN, IN, LIKE and NULL.
* Also () and % operator was used in
* EMP table
* in Oracle SQL.
*/

select * from EMP;

/*will return EMP table excluding SALESMAN and MANAGER job
and will retun SAL greater or equal 2000
*/
select * from EMP
where JOB != 'SALESMAN'
and JOB != 'MANAGER' 
and SAL >= 2000

/*will* return ENAME, HIREDATE, LOC from table DEPT, EMP*/
select ENAME, HIREDATE, LOC
from DEPT, EMP;

/*will return the employees from DEPT 20, 30*/
select * from EMP
where DEPTNO = 20
or DEPTNO = 30;

/*will return the employees from DEPT 20, 30 in the parenthesis*/
select * from EMP
where DEPTNO in (20, 30);

/*will return ENAME and HIREDATE of the names in the parenthesis*/
select ENAME, HIREDATE from EMP
where ENAME in ('FORD', 'SMITH', 'ALLEN', 'WARD', 'MARTIN');

/*will return ENAME and HIREDATE excluding the names in the parenthesis*/
select ENAME, HIREDATE from EMP
where ENAME not in ('FORD', 'SMITH', 'ALLEN', 'WARD', 'MARTIN');

/* will return SAL between 1000 and 2000 */
select * from EMP
where SAL between 1000 and 2000;

/*will return EMP that don't make any COMM
SAL between 1100 and 5000 excluding 3000
and make sure to show COMM = 0*/
select * from EMP
where COMM is null
and SAL > 1100 and SAL < 5000
and SAL != 3000
or COMM = 0;

/*Will return EMP will return 
EMP that don't make any COMM including 
with COMM = 0 SAL between 1100 
and 5000 excluding 1500*/
select * from EMP
where (COMM is null or COMM = 0)
and SAL > 1100 and SAL < 5000
and SAL != 1500;

/*Will return JOB that started 
with and S with
with wildcard %*/
select * from EMP
where JOB like 'S%'
and (COMM = 300 or COMM > 1000)
or COMM = 0

/*return empty COMM column*/
select * from EMP
where COMM is null;

/*return non empty COMM column*/
select * from EMP
where COMM is not null;

