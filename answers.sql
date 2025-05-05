-- Question 1 Achieving 1NF (First Normal Form) 🛠️
-- Creating customers table
CREATE TABLE Customers(
CustomerID INT PRIMARY KEY AUTO_INCREMENT,
CustomerName VARCHAR(100)
);
-- Creating product details table
CREATE TABLE ProductDetails(
ProductID INT PRIMARY KEY AUTO_INCREMENT,
CustomerID INT,
Product VARCHAR(30),
FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID) 
);

-- Question 2 Achieving 2NF (Second Normal Form) 🧩
-- the tables already have 1NF since customers table was already created
CREATE TABLE OrderDetails(
OrderID INT PRIMARY KEY AUTO_INCREMENT,
CustomerID INT,
ProductID INT,
Quantity INT,
FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY(ProductID) REFERENCES ProductDetails(ProductID)
);