CREATE TABLE IF NOT EXISTS users (
    id integer PRIMARY KEY,
    username varchar(24) NOT NULL,
    email varchar(255) NOT NULL,
    `password` binary NOT NULL,
    `secret` varchar(19) NOT NULL
);
