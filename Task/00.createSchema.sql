-- Delete the table if it exits then create it.
DROP DATABASE IF EXISTS asdaDatabase;
CREATE SCHEMA IF NOT EXISTS asdaDatabase DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- Delete the user if they exist, then recreate them and grant privileges
DROP USER IF EXISTS 'asdaUser'@localhost;
CREATE USER IF NOT EXISTS 'asdaUser'@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON asdaDatabase.* TO 'asdaUser'@localhost IDENTIFIED BY 'password';
FLUSH PRIVILEGES;