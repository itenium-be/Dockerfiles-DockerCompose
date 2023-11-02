CREATE TABLE IF NOT EXISTS socks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  brand VARCHAR(255) NOT NULL,
  variant VARCHAR(255) NOT NULL,
  color VARCHAR(10) NOT NULL,
  price DECIMAL NOT NULL,
  inventory INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO socks (name, brand, variant, color, price, inventory)
VALUES ('Angular Socks', 'Angular', 'blue', '#584FB8', FLOOR(RAND()*30), FLOOR(RAND()*30));

INSERT INTO socks (name, brand, variant, color, price, inventory)
VALUES ('Angular Socks', 'Angular', 'red', '#B51020', FLOOR(RAND()*30), 3);

INSERT INTO socks (name, brand, variant, color, price, inventory)
VALUES ('npm Socks', 'npm', 'red', '#DD1F41', FLOOR(RAND()*30), FLOOR(RAND()*30));

INSERT INTO socks (name, brand, variant, color, price, inventory)
VALUES ('React Socks', 'React', 'blue', '#23A3AC', FLOOR(RAND()*30), FLOOR(RAND()*30));

INSERT INTO socks (name, brand, variant, color, price, inventory)
VALUES ('Vue Socks', 'Vue', 'blue', '#27384F', FLOOR(RAND()*30), FLOOR(RAND()*30));

INSERT INTO socks (name, brand, variant, color, price, inventory)
VALUES ('Vue Socks', 'Vue', 'green', '#42AF7C', FLOOR(RAND()*30), FLOOR(RAND()*30));


-- REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'socksuser'@'%';
-- GRANT SELECT ON socks_store.* TO 'socksuser'@'%';
