
CREATE DATABASE IF NOT EXISTS ctrl_restaurant;

CREATE TABLE IF NOT EXISTS mesas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    decricao TEXT NOT NULL,
    postos INTEGER NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    data_criacao DATETIME NOT NULL DEFAULT (datetime('now','localtime'))
);

CREATE TABLE IF NOT EXISTS garcon (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    data_criacao DATETIME NOT NULL DEFAULT (datetime('now','localtime'))
);

CREATE TABLE IF NOT EXISTS status_pp (
    id TEXT NOT NULL UNIQUE PRIMARY KEY,
    descricao TEXT NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    data_criacao DATETIME NOT NULL DEFAULT (datetime('now','localtime'))
);


CREATE TABLE IF NOT EXISTS pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_mesa INTEGER REFERENCES mesas(id),
    id_garcon INTEGER REFERENCES garcon(id),
    ativo BOOLEAN DEFAULT TRUE,
    data_criacao TIMESTAMP NOT NULL DEFAULT (datetime('now','localtime'))
);



CREATE TABLE IF NOT EXISTS produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    preco REAL NOT NULL DEFAULT 0.00,
    cantidade INTEGER NOT NULL,
    descricao TEXT NOT NULL,
    url_img TEXT,
    id_status_produto INTEGER REFERENCES status_pp(id),
    ativo BOOLEAN DEFAULT TRUE,
    data_criacao TIMESTAMP NOT NULL DEFAULT (datetime('now','localtime'))
);

CREATE TABLE IF NOT EXISTS item_pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pedido INTEGER REFERENCES pedidos(id),
    id_produto INTEGER REFERENCES produtos(id),
    cantidade INTEGER NOT NULL,
    preco REAL NOT NULL,
    ativo BOOLEAN DEFAULT TRUE,
    data_criacao TIMESTAMP NOT NULL DEFAULT (datetime('now','localtime'))
);
