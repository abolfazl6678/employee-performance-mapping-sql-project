
-- Built a stored procedure to fetch employees with > 3 years of experience

DELIMITER //
CREATE PROCEDURE Exp_over_three()
BEGIN
    SELECT EMP_ID, FIRST_NAME, LAST_NAME, Exp AS Years_Experience
    FROM employee.emp_record_table 
    WHERE Exp > 3;
END//
DELIMITER ;

CALL Exp_over_three();

-- Developed a stored function to validate job profiles against organizational role standards (Junior, Associate, Senior, Lead, Manager)

delimiter //
create function assg_role_std(EXP int)
returns varchar(100) deterministic
begin 
declare results varchar(100);
if EXP<=2 then 
set results= 'JUNIOR DATA SCIENTIST';
elseif (EXP>2) and (EXP<=5) then 
set results= 'ASSOCIATE DATA SCIENTIST';
elseif (EXP>5) and (EXP<=10) then 
set results= 'SENIOR DATA SCIENTIST';
elseif (EXP>10) and (EXP<=12) then 
set results= 'LEAD DATA SCIENTIST';
elseif (EXP>12) and (EXP<=16) then 
set results= 'MANAGER';
else 
set results= 'N/A';
end if;
return results;
end//
delimiter ;

select EMP_ID, FIRST_NAME, LAST_NAME,Role, assg_role_std(EXP) as 'Role based on standard'
from employee.data_science_team;
