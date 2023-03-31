
--Create procedures and functions
CREATE PROCEDURE statustexts(
		IN iv_langu VARCHAR(2), 
		OUT et_result TABLE (
			id INT,
			status_text NVARCHAR(100)
		)
	)
AS
BEGIN
	et_result = SELECT id, 
				status_text
			FROM status_text
			WHERE langu = iv_langu;
END;

CREATE FUNCTION udf_statustexts (iv_langu VARCHAR(2))
RETURNS TABLE ( id INT,
                status_text VARCHAR(20) )
AS BEGIN
   RETURN SELECT id,
                 status_text
   FROM status_text
   WHERE langu = :iv_langu;
END;


create function udf_username(iv_id int)
returns rv_name nvarchar(42)
as begin
select lastname || ', ' || firstname into rv_name from users where id = :iv_id;
end;

create function udf_tasks_in_status(iv_status int)
returns table(id int, assignee int, status int, title varchar(20))
as begin
return select id, assignee, status, title from tasks where status = :iv_status;
end;

CREATE FUNCTION udf_name ( iv_firstname NVARCHAR(20),
                           iv_lastname NVARCHAR(20) )
RETURNS rv_name NVARCHAR(42)
AS
BEGIN
   rv_name = :iv_lastname || ', ' || :iv_firstname;
END;


create function udf_int_min(iv_wert1 int, iv_wert2 int)
returns rv_result int
as begin
select case when :iv_wert1 < :iv_wert2
                    then :iv_wert1
                    else :iv_wert2 end into rv_result from dummy;
end;

create function udf_int_max(iv_wert1 int, iv_wert2 int)
returns rv_result int
as begin
select case when :iv_wert1 > :iv_wert2
                    then :iv_wert1
                    else :iv_wert2 end into rv_result from dummy;
end;

create function udf_tage(id int, iv_von date, iv_bis date)
returns table (id int, datum date)
as begin
 return SELECT :id as id,
               GENERATED_PERIOD_START as datum 
               FROM SERIES_GENERATE_DATE( INCREMENT_BY => 'INTERVAL 1 DAY',
                                          MIN_VALUE => :iv_von,
                                          MAX_VALUE => :iv_bis )
        UNION
        SELECT :ID as id,
               :iv_bis as datum
               from dummy;
end;

create procedure close_tasks(in iv_project int)
as begin
 update tasks set status = 5 where project = :iv_project;
end;

CREATE PROCEDURE write_error_log (
   IN iv_error_code INT,
   IN iv_error_message NVARCHAR(500)
   )
AS
BEGIN
   BEGIN
      AUTONOMOUS TRANSACTION

      INSERT INTO error_log (
         timestamp,
         errorcode,
         message
         )
      VALUES (
         current_timestamp,
         :iv_error_code,
         :iv_error_message
         );
   END;
END;

create procedure show_error_log(in iv_seconds int default 10)
as begin
    select * from error_log where timestamp > add_seconds( current_timestamp, -1 * iv_seconds ) order by id desc;
end;
