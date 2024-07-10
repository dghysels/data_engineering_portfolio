create or replace procedure query_student_counts

declare
    TABLE OF student_counts%ROWTYPE c_table count_table;
begin

    select * 
    INTO c_table
    FROM student_counts sc
    WHERE sc.buildingcode > 0;

    dbms_output.put_line( c_table.buildingname || ' ' ||
        c_table.districtname || ' ' || c_table.total_enrollment ||'>' );

    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line(SQLERRM);

END;