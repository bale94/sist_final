select *
		from (
			select rownum cnt, m.*, t.PROJECT_NO 
			from Mem4pro m, team t
			where 1=1
			AND name like '%'||''||'%'
			AND t.EMPNO = m.EMPNO)
		where cnt BETWEEN 1 AND 4;
		
select *
		from Mem4pro m, team t
		where m.empno = t.empno
		and m.name like '%'||''||'%';
		
	
	
select m.empno, m.name, m.email, m.auth, t.project_no
		from Mem4pro m, team t
		where m.empno = t.empno;
		
SELECT *
FROM MEM4PRO m, team t
where m.empno = t.empno
AND m.name = '%'||''||'%';
