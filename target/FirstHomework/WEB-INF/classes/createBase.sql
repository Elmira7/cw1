CREATE TABLE if not exists users (
    id BIGSERIAL PRIMARY KEY,
    name text,
    login text,
    password text);

insert into users(name, login, password)
VALUES
('Петя', 'Петя','qwert234'),
('Ваня', 'Петя','qw234'),
('Маша', 'Маша','паролььььь'),
('Петя', 'Петя2','шкаф'),
('Катя', 'Катя','телефон');
