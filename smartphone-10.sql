use ELETRONICOS;


-- Correção de dados 


select *
from smartphones s 

start transaction ;

UPDATE smartphones  SET price = CAST(price AS DECIMAL(10,2));

rollback;






    
    
 