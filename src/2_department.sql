drop table department;
drop table student;
create table department 
	(
		dept_id 		varchar2(10),
		dept_name 	varchar2(20) not null,
		office 		varchar2(20),
		constraint pk_department primary key(dept_id)
	);
create table student 
	(
		stu_id 		varchar2(10),
		resident_id 	varchar2(14) not null,
		name 		varchar2(10) not null,
		year 		int,
		address 		varchar2(10),
		dept_id 		varchar2(10),
		constraint pk_student 	primary key(stu_id),
		constraint fk_student 	foreign key(dept_id) references 
					department(dept_id)
	);
insert into department values('920', '��ǻ�Ͱ��а�', '201ȣ');
insert into department values('923', '������а�', '207ȣ');
insert into department values('925', '���ڰ��а�', '308ȣ');
insert into student values('1292001', '900424*1825409', '�豤��', 3, '����', 920);
insert into student values('1292002', '900305*1730021', '������', 3, '����', 920);
insert into student values('1292003', '891021*2308302', '������', 4, '����', 920);
insert into student values('1292301', '890902*2704012', '������', 2, '�뱸', 923);
insert into student values('1292303', '910715*1524390', '�ڱ���', 3, '����', 923);
insert into student values('1292305', '921011*1809003', '�����', 4, '�λ�', 923);
insert into student values('1292501', '900825*1506390', '��ö��', 3, '����', 925);
insert into student values('1292502', '911011*1809003', '���¼�', 3, '����', 925);
