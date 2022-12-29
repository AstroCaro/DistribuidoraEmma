CREATE DATABASE emma_distributor;
USE emma_distributor;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR (100) NOT NULL,
    short_description VARCHAR (50) NOT NULL,
    description TEXT NOT NULL,
    stock INT NOT NULL,
    price REAL NOT NULL,
    img VARCHAR (100)
);

DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
    id INT PRIMARY KEY auto_increment,
	product_id INT NOT NULL,
    quantity INT NOT NULL
);

DROP TABLE IF EXISTS checkouts;
CREATE TABLE checkouts (
    id INT PRIMARY KEY auto_increment,
    total_price INT NOT NULL
);

DROP TABLE IF EXISTS checkouts_order_items;
CREATE TABLE checkouts_order_items (
	checkout_id INT NOT NULL,
    order_item_id INT NOT NULL
);

INSERT INTO checkouts VALUES (1, 0);

INSERT INTO products (name, short_description, description, stock, price, img) VALUES ("Botella de agua mineral", "1.5l", "Además de hidratar, nuestra agua mineral le ayudará a mantenerse activo durante el día. La composición mineral equilibrada de nuestra agua envasada, lo revitaliza y le aporta los nutrientes, para que pueda llevar un estilo de vida saludable. Además de muchos beneficios para la salud, este equilibrio adecuado de minerales esenciales le aporta un sabor suave y único.", 100, 200, "botella");
INSERT INTO products (name, short_description, description, stock, price, img) VALUES ("Bidón", "20l", "Además de hidratar, nuestra agua mineral le ayudará a mantenerse activo durante el día. La composición mineral equilibrada de nuestra agua envasada, lo revitaliza y le aporta los nutrientes, para que pueda llevar un estilo de vida saludable. Además de muchos beneficios para la salud, este equilibrio adecuado de minerales esenciales le aporta un sabor suave y único.", 70, 500, "bidon1");
INSERT INTO products (name, short_description, description, stock, price, img) VALUES ("Bidón", "12l", "Además de hidratar, nuestra agua mineral le ayudará a mantenerse activo durante el día. La composición mineral equilibrada de nuestra agua envasada, lo revitaliza y le aporta los nutrientes, para que pueda llevar un estilo de vida saludable. Además de muchos beneficios para la salud, este equilibrio adecuado de minerales esenciales le aporta un sabor suave y único.", 150, 300, "bidon2");
INSERT INTO products (name, short_description, description, stock, price, img) VALUES ("Sifón de soda", "2l", "Agua mineral carbonatada", 203, 420, "sifon");
INSERT INTO products (name, short_description, description, stock, price, img) VALUES ("Dispenser frio-calor", "", "Modelo de carga superior de estilo moderno que complementará la decoración de cualquier hogar u oficina. Fácil de mantener y cómodo de usar, cuenta con dispensadores de agua caliente y fría y una bandeja de goteo amplia y duradera.", 51, 20000, "dispenser");


SELECT * FROM products;
SELECT * FROM checkouts;
SELECT * FROM order_items;
SELECT * FROM checkouts_order_items;
SELECT * FROM checkouts WHERE id = 1;