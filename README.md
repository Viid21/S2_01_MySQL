# 🧑‍💻 Task S2.01. MySQL Database Modeling – Optics & Pizzeria  
**Author:** David Rey  

## 📄 Description  
This project focuses on **database modeling** for two different business scenarios:  
1. An **optics store** ("Cul d'Ampolla") managing suppliers, glasses, clients, and employees.  
2. A **pizzeria web application** for online food orders, including clients, orders, products, categories, stores, and employees.  

The goal is to design entity-relationship diagrams (ERDs), relational schemas, and clear documentation for both cases, ensuring normalization and proper relationships between entities.

---

### 🔹 Level 1  

#### **Exercise 1 – Optics Management System**  
The optics store requires a system to manage suppliers, glasses, clients, and employees.  

- **Supplier**  
  - `name`  
  - `address` (street, number, floor, door, city, postal code, country)  
  - `phone`  
  - `fax`  
  - `taxId` (NIF)  

- **Glasses**  
  - `brand`  
  - `leftLensGraduation`  
  - `rightLensGraduation`  
  - `frameType` (floating, plastic, metallic)  
  - `frameColor`  
  - `leftLensColor`  
  - `rightLensColor`  
  - `price`  
  - Relation: each brand is supplied by **one supplier** (but a supplier can provide multiple brands).  

- **Client**  
  - `name`  
  - `address`  
  - `phone`  
  - `email`  
  - `registrationDate`  
  - `recommendedBy` (reference to another client, optional)  

- **Employee**  
  - `name`  
  - `surname`  
  - `employeeId`  
  - Relation: each sale of glasses must record the employee who sold them.  

---

#### **Exercise 2 – Pizzeria Online Ordering System**  
The pizzeria requires a database to manage clients, orders, products, categories, stores, and employees.  

- **Client**  
  - `clientId`  
  - `name`  
  - `surname`  
  - `address`  
  - `postalCode`  
  - `cityId` (FK)  
  - `provinceId` (FK)  
  - `phone`  

- **City**  
  - `cityId`  
  - `name`  
  - Relation: each city belongs to one province.  

- **Province**  
  - `provinceId`  
  - `name`  
  - Relation: one province can have many cities.  

- **Order**  
  - `orderId`  
  - `clientId` (FK)  
  - `dateTime`  
  - `deliveryType` (home delivery / store pickup)  
  - `totalPrice`  
  - Relation: one client can place many orders, but each order belongs to one client.  

- **OrderProduct** (junction table)  
  - `orderId` (FK)  
  - `productId` (FK)  
  - `quantity`  

- **Product**  
  - `productId`  
  - `name`  
  - `description`  
  - `image`  
  - `price`  
  - Types: pizza, burger, drink.  

- **Category (for pizzas)**  
  - `categoryId`  
  - `name`  
  - Relation: one category can have many pizzas, but each pizza belongs to one category.  

- **Store**  
  - `storeId`  
  - `address`  
  - `postalCode`  
  - `cityId` (FK)  
  - `provinceId` (FK)  
  - Relation: one store can manage many orders.  

- **Employee**  
  - `employeeId`  
  - `name`  
  - `surname`  
  - `taxId` (NIF)  
  - `phone`  
  - `role` (cook / delivery)  
  - Relation: one store can have many employees, but each employee belongs to one store.  
  - For home deliveries, record the delivery employee and the delivery date/time.  

---

## 💻 Technologies Used  
- MySQL / MariaDB for relational database design  
- SQL for schema creation and queries  
- ERD diagrams for conceptual modeling  
- Normalization principles for efficient design  
- Git & GitHub for version control  
- Documentation with README and diagrams  

---

## 📋 Requirements  
- MySQL or compatible RDBMS installed  
- SQL client or IDE (MySQL Workbench, DBeaver, IntelliJ Database plugin)  
- Git installed to clone the repository  
- Basic knowledge of relational modeling and SQL  

---

## 🛠️ Installation  
- Clone the repository:  
```bash
https://github.com/Viid21/S2_01_MySQL.git
