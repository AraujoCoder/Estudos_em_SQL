use eletronicos;





select * from eletronicos.smartphones s where id = 66;

-- TOTAL_VENDIDO

select cpf, matricula, codigo_produto, (quantidade * preco) as  Total
from eletronicos.notas_fiscais nf 
inner join eletronicos.vendidos_notas_fiscais vnf 
on nf.numero = vnf.numero
order by Total ;


-- correção de bugs
update eletronicos.smartphones
set price = 36900
where id = 66;


alter table eletronicos.smartphones
modify column price FLOAT(10,2);



select * from vendidos_notas_fiscais

-- Itens vendidos por funcionario

select matricula, quantidade 
from eletronicos.notas_fiscais nf 
inner join eletronicos.vendidos_notas_fiscais vnf 
on nf.numero = vnf.numero 


-- total itens

select id, brand_name, price  from eletronicos.smartphones s;



-- (TOTAL ITENS - ITENS VENDIDOS)

with vendas as (
	select
   	id,
    brand_name,
    coalesce (vnf.numero, 0) as quantidade_vendida,
    coalesce(vnf.preco, 0) as preco_unitario
from
    smartphones s
left join
    vendidos_notas_fiscais vnf on id =codigo_produto)
    
    
    select id,
    brand_name,
    quantidade_vendida,
    preco_unitario
    from vendas;





















