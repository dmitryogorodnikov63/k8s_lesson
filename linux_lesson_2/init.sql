CREATE DATABASE IF NOT EXISTS reg1;
CREATE USER IF NOT EXISTS 'operator'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT  , UPDATE , INSERT ON reg1.* TO 'operator'@'%';
FLUSH PRIVILEGES;
USE reg1;
CREATE TABLE IF NOT EXISTS users (
  full_name VARCHAR(50) NOT NULL, 
  login VARCHAR(50) NOT NULL, 
  address VARCHAR(200) NOT NULL
);
INSERT INTO users (full_name, login, address) 
VALUES 
  (
    'Alexey Simonov', 'alexsim777', 
    'Belarus, Dzerjinks, Yakub Koles, 4'
  ), 
  (
    'Valery Bechalog', 'peer39ep', 
    'Russia, Novosibirsk, Pobedi, 2'
  ), 
  (
    'Genadiy Vasilev', 'GenadiyVasilev78', 
    'Russia, Moskva, Ryzanskiy pr. 39'
  );
