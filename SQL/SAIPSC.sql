create table pais(
	id int primary key,
	nome varchar(50)
)
create table estado(
	id int primary key,
	id_pais int,
	nome varchar (50),
	foreign key (id_pais) references pais (id) 
)
create table estado_civil(
	id int primary key,
	nome varchar (50)
)
create table categoria(
	id int primary key,
	nome varchar (50),
	descricao varchar (50)
)
create table marca(
	id int primary key,
	nome varchar (50)
)
create table cidade(
	id int primary key,
	id_estado int,
	nome varchar (50),
	foreign key (id_estado) references estado (id)
)	
create table produto(
	id int primary key,
	id_categoria int,
	id_marca int,
	nome varchar (50),
	descrição varchar (50),
	preço decimal (20),
	foreign key (id_categoria) references categoria (id),
	foreign key (id_marca) references marca (id)
)
create table endereco(
	id int primary key,
	id_cidade int,
	nome_rua varchar (50),
	CEP varchar (50),
	numero_residencia varchar (50),
	foreign key (id_cidade) references cidade (id)
)
create table Pessoa(
	id int primary key,
	id_endereco int,
	id_estado_civil int,
	nome varchar (50),
	sobrenome varchar (50),
	genereo varchar (50),
	telefone varchar (50),
	email varchar (50),
	foreign key (id_endereco) references endereco (id),
	foreign key (id_estado_civil) references estado_civil (id)
)
create table cliente(
	id int primary key,
	id_pessoa int,
	foreign key (id_pessoa) references pessoa (id)
)
create table pedido(
	id int primary key,
	id_cliente int,
	id_produto int,
	data_pedido date,
	quantidade  int,
	foreign key (id_cliente) references cliente (id),
	foreign key (id_produto) references produto (id)
)

	table equipe(
	foreign key (ID_cargo) references cargo (id),
	foreign key (id_cor) references cor (id)
	foreign key ()