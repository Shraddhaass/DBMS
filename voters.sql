  
  
DELIMITER $$
create trigger new
after insert on VOTERS  for each row 
begin
update CONSTITUENCY set CONSTITUENCY.NUMBER_OF_VOTERS=CONSTITUENCY.NUMBER_OF_VOTERS+3
where CONS_id=new.CONS_id;
end$$
