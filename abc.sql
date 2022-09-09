DELIMITER //
create procedure abc(IN VID int(10),IN NAME varchar(20),IN AGE int(10),IN CITY varchar(20),IN PINCODE varchar(10),IN STATE varchar(20))
begin
declare msg varchar(20);
if AGE>=18 then
insert into VOTERS(VID,NAME,AGE,CITY)values(VID,VNAME,AGE,CITY);
set msg="row inserted";
else
set msg="voter not eligible";
end if;
select msg;
end //
DELIMITER ;
