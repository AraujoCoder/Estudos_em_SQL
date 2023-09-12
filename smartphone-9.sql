create view vw_total_vendido as 
select cpf, matricula, codigo_produto, (quantidade * preco) as  Total
from eletronicos.notas_fiscais nf 
inner join eletronicos.vendidos_notas_fiscais vnf 
on nf.numero = vnf.numero
order by Total ;



create view vw_vendidos_por_funcionario as
select matricula, quantidade 
from eletronicos.notas_fiscais nf 
inner join eletronicos.vendidos_notas_fiscais vnf 
on nf.numero = vnf.numero; 




create view vw_total_itens as 
select id, brand_name, price  from eletronicos.smartphones s;


create view vw_sub_total as 
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
