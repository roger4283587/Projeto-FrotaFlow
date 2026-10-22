CREATE DATABASE bdfrotaflow;
USE bdfrotaflow;

CREATE TABLE cargo (
	id INT AUTO_INCREMENT,
    cargo VARCHAR(50),
    CONSTRAINT pk_cargo PRIMARY KEY (id)
);

CREATE TABLE usuario ( 
	id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    id_cargo INT,
    CONSTRAINT pk_usuario PRIMARY KEY (id),
    CONSTRAINT fk_cargo FOREIGN KEY (id_cargo) REFERENCES cargo(id)
);

CREATE TABLE tipo_manutencao(
	id INT AUTO_INCREMENT,
    tipos VARCHAR(30) NOT NULL,
    CONSTRAINT pk_tipo_manutencao PRIMARY KEY (id)
);

CREATE TABLE prioridade(
	id INT AUTO_INCREMENT,
    prioridade VARCHAR(30) NOT NULL,
    CONSTRAINT pk_prioridade PRIMARY KEY (id)
);

CREATE TABLE statusManutencao(
	id INT AUTO_INCREMENT,
    statusM VARCHAR(30) NOT NULL,
    CONSTRAINT pk_statusManutencao PRIMARY KEY (id)
);

CREATE TABLE montadora(
	id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    CONSTRAINT pk_montadora PRIMARY KEY(id)
);

CREATE TABLE onibus(
	id INT AUTO_INCREMENT,
    placa CHAR(8) NOT NULL,
    modelo VARCHAR(100) NOT NULL ,
    id_montadora INT,
    ano_fab YEAR NOT NULL,
    kilometragem DECIMAL(10,2) NOT NULL,
    chassi CHAR(17) NOT NULL,
    data_cadastro DATE NOT NULL,
    foto VARCHAR(255),
    CONSTRAINT pk_onibus PRIMARY KEY(id),
    CONSTRAINT fk_montadora FOREIGN KEY (id_montadora) REFERENCES montadora(id)
);

CREATE TABLE manutencao(
	id INT AUTO_INCREMENT,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    descricao TEXT NOT NULL,
    observacoes TEXT,
    id_tipoManutencao INT,
    id_prioridade INT,
    id_statusManutencao INT,
    id_onibus INT,
    CONSTRAINT pk_manutencao PRIMARY KEY (id),
    CONSTRAINT fk_tipoManutencao FOREIGN KEY (id_tipoManutencao) REFERENCES tipo_manutencao(id),
    CONSTRAINT fk_prioridade FOREIGN KEY (id_prioridade) REFERENCES prioridade(id),
    CONSTRAINT fk_statusManutencao FOREIGN KEY (id_statusManutencao) REFERENCES statusManutencao(id),
    CONSTRAINT fk_onibus FOREIGN KEY (id_onibus) REFERENCES onibus(id)
);

CREATE TABLE mecanico_manutencao(
	ordem INT AUTO_INCREMENT,
    id_usuario INT,
    id_manutencao INT,
    CONSTRAINT pk_ordem PRIMARY KEY (ordem),
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    CONSTRAINT fk_manutencao FOREIGN KEY (id_manutencao) REFERENCES manutencao(id)
);

CREATE TABLE medida(
	id INT AUTO_INCREMENT,
    medidas CHAR(3) NOT NULL,
    CONSTRAINT pk_medida PRIMARY KEY (id)
);

CREATE TABLE categoria(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50),
	CONSTRAINT pk_categoria PRIMARY KEY(id)
);

CREATE TABLE item(
	id INT AUTO_INCREMENT,
    id_categoria INT,
    quantidade DECIMAL(10,2),
    nome VARCHAR(100),
    marca VARCHAR(100),
	CONSTRAINT pk_item PRIMARY KEY(id),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE item_manutencao(
	id INT AUTO_INCREMENT,
    id_manutencao INT,
    id_medida INT,
    id_item INT,
    qtd_utilizada DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_ordem_item PRIMARY KEY (id),
    CONSTRAINT fk_item_manutencao FOREIGN KEY (id_manutencao) REFERENCES manutencao(id),
    CONSTRAINT fk_medida FOREIGN KEY (id_medida) REFERENCES medida(id),
    CONSTRAINT fk_item FOREIGN KEY (id_item) REFERENCES item(id)
);


DELETE FROM usuario
WHERE id = 1;

select * from usuario;





