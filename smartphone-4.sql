use eletronicos;


alter table notas_fiscais
add constraint fk_notas_fiscais_cpf 
foreign key (cpf) 
references clientes(cpf);


alter table notas_fiscais 
add constraint fk_notas_fiscais_matricula
foreign key (matricula)
references vendedores(matricula);


alter table vendidos_notas_fiscais 
add constraint fk_vendidos_notas_fiscais
foreign key (numero)
references notas_fiscais (numero);



