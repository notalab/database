CREATE TABLE IF NOT EXISTS `notebooks` (
    `id` integer PRIMARY KEY,
    `name` varchar(24) NOT NULL,
    `color` varchar(6) NOT NULL,
    `user` integer NOT NULL,
    `created_at` integer NOT NULL,
    `updated_at` integer NOT NULL
);
