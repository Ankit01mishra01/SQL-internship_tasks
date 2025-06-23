🛒 E-commerce Database Schema Project
📚 Task 1: Database Setup and Schema Design
✅ Objective
Design and implement a relational database schema for an E-commerce platform using MySQL. This schema captures essential entities such as Users, Products, Orders, Payments, and Categories, and illustrates their interrelationships through primary and foreign keys.

🛠️ Tools Used
- MySQL Workbench 8.x
- SQL (DDL – Data Definition Language)
- EER Diagram Designer (MySQL Workbench built-in)

📦 Domain: E-commerce
This database simulates the backend of an online shopping system. It incorporates the core modules found in most real-world platforms, including:
- 👤 User registration and profiles
- 🛍️ Product catalog and classification
- 📦 Order placement with itemized details
- 💳 Secure payment tracking

🧱 Database Entities and Descriptions
| Entity | Description | 
| Users | Stores customer data and credentials | 
| Products | Product name, description, price, stock | 
| Orders | Order ID, date, linked to a user | 
| OrderItems | Products included in each order | 
| Payments | Payment method and confirmation status | 
| Categories | Logical grouping of products | 



🔗 Entity Relationships
- A User can place multiple Orders
- An Order includes multiple OrderItems
- Each OrderItem maps to one Product
- Each Product is assigned one Category
- An Order is linked to one Payment

📝 SQL Script Highlights
The SQL file provided includes:
- CREATE DATABASE ecommerce_db;
- USE ecommerce_db;
- Table definitions using CREATE TABLE
- Primary and foreign key constraints
- Data types and referential integrity setup

▶️ How to Run the Script
- Open MySQL Workbench
- Load the SQL script
- Execute:
- Sql -:
- CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Then run the CREATE TABLE statements below
-- [Refer to included SQL script file for full code]
