-- Delete tables if they already exist
DROP TABLE IF EXISTS join_reciepts_products CASCADE;
DROP TABLE IF EXISTS join_stores_products CASCADE;
DROP TABLE IF EXISTS reciepts CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS stores CASCADE;

-- Create store table
CREATE TABLE IF NOT EXISTS stores (
    id SERIAL PRIMARY KEY,
    city varchar(30) NOT NULL,
    type varchar(10) NOT NULL
);

-- Create products table
CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name varchar(50) NOT NULL,
    type varchar(20) NOT NULL,
    price decimal(6,2) unsigned NOT NULL
);

-- Create reciepts table
CREATE TABLE IF NOT EXISTS reciepts (
    id SERIAL PRIMARY KEY,
    date DATETIME NOT NULL,
    store_id bigint(20) unsigned NULL,
    CONSTRAINT purchases_FK_1 FOREIGN KEY (store_id) REFERENCES asdaDatabase.stores(id)
);

-- Create stores, products stores join table
CREATE TABLE IF NOT EXISTS join_stores_products (
    id SERIAL PRIMARY KEY,
    store_id bigint(20) unsigned NULL,
    product_id bigint(20) unsigned NULL,
    CONSTRAINT join_products_stores_FK_1 FOREIGN KEY (store_id) REFERENCES asdaDatabase.stores(id),
    CONSTRAINT join_products_stores_FK_2 FOREIGN KEY (product_id) REFERENCES asdaDatabase.products(id)
);

-- Create reciepts, products join table
CREATE TABLE IF NOT EXISTS join_reciepts_products (
    id SERIAL PRIMARY KEY,
    reciept_id bigint(20) unsigned NULL,
    product_id bigint(20) unsigned NULL,
    quantity int(5) NOT NULL,
    CONSTRAINT join_reciepts_products_FK_1 FOREIGN KEY (reciept_id) REFERENCES asdaDatabase.reciepts(id),
    CONSTRAINT join_reciepts_products_FK_2 FOREIGN KEY (product_id) REFERENCES asdaDatabase.products(id)
);