# SQL

### get ecommerce database for Queries by running all SQL scripts in sql_dumps

# SQL Queries by Topic and Complexity

## SQL Intro

- **Retrieve the average payment value for each payment type.**
- **Get the total number of items sold for each product category.**

## SQL Select

- **List all products with their category names and the number of times they have been ordered.**
- **Find the top 3 sellers based on the total freight value of the items they sold.**

## SQL Select Distinct

- **Find the distinct product categories available.**

## SQL Where

- **List customers who have ordered products that were delivered late (i.e., delivered after the estimated delivery date).**
- **Get the delivery delay for each order where the delay is greater than 5 days.**

## SQL Order By

- **Find the product with the highest total price across all orders, sorted by total price.**
- **List all product categories and their total freight value, sorted by total freight value in descending order.**

## SQL And

- **Find customers who have ordered products with a freight value greater than $50 and where the order was delivered late.**

## SQL Or

- **List orders where the payment value is either above $500 or the freight value is greater than $100.**

## SQL Not

- **Find products that have not been ordered yet.**
- **List customers who have not made any orders.**

## SQL Insert Into

- **Insert a new product into the `products` table with a specified category and weight.**

## SQL Null Values

- **Find orders where the delivery date to the customer is not specified (NULL).**

## SQL Update

- **Update the payment value for a specific order.**
- **Set the delivery status to 'delivered' for orders that were delivered more than 10 days ago.**

## SQL Delete

- **Delete orders that have not been delivered within the expected delivery timeframe.**

## SQL Select Top

- **Find the top 5 most expensive products based on price.**

## SQL Aggregate Functions

- **Retrieve the average payment value for each payment type.**
- **Get the total number of items sold for each product category.**

## SQL Min and Max

- **Find the minimum and maximum price of items ordered.**

## SQL Count

- **Count the total number of orders placed by each customer.**

## SQL Sum

- **Calculate the total payment value for all orders delivered in the last month.**

## SQL Avg

- **Find the average price of items for each product category.**

## SQL Like

- **List all products where the product name contains the word 'Pro'.**

## SQL Wildcards

- **Find products where the product description starts with 'Eco'.**

## SQL In

- **Get all orders where the product category is in a specific list of categories.**

## SQL Between

- **Find orders with a payment value between $100 and $500.**

## SQL Aliases

- **List products with their category names using aliases for better readability.**

## SQL Joins

### SQL Inner Join

- **List all products along with the seller and their corresponding order item price.**

### SQL Left Join

- **Find all products and their order details, including those that have not been ordered.**

### SQL Right Join

- **Find all sellers and the products they sell, including those who have not sold any products.**

### SQL Full Join

- **List all products and orders, including those without corresponding matches in either table.**

### SQL Self Join

- **Find products that are related to each other based on a specific criteria (e.g., similar weight).**

## SQL Union

- **Combine results of products and orders that have been delivered to customers.**

## SQL Group By

- **Get the list of product categories and their total freight value, grouped by category.**

## SQL Having

- **Find product categories with an average product weight greater than 500 grams.**

## SQL Exists

- **List customers who have placed at least one order where the payment value exceeds $200.**

## SQL Any, All

- **Find orders where the payment value is greater than any order's payment value in a specific category.**

## SQL Select Into

- **Create a new table with a summary of total payments per product category.**

## Advanced and Complex Queries

### Aggregations and Summarizations

- **Find the product categories with the highest average product weight.**
- **Retrieve the total value of payments made by customers from a specific city.**

### Joins and Relationships

- **Find the sellers who have products in multiple categories.**
- **List all sellers located in cities that have a customer base (i.e., cities with at least one customer).**

### Ordering and Sorting

- **Find the top 5 customers who have made the highest number of orders.**
- **Retrieve the product names and their average price for categories with more than 10 products.**

### Advanced Aggregations

- **Find the most recent order for each customer.**
- **Find the top 3 products based on the highest total freight value.**
- **Retrieve the average time between order approval and delivery to the customer.**

### Complex and Nested Queries

- **Find the sellers who have the highest average number of items per order.**
- **Get the average price of items for each order status.**
- **Find customers who have made orders with a payment value above the average payment value.**
- **List all orders with their total payment value and the number of items in the order, including the delivery delay.**
- **Retrieve the average number of payment installments for each order status.**
- **Get the list of all products that have a product weight greater than the average weight of all products.**
- **List all orders and their respective total payment value and delivery delay (if delivered late).**
- **Get the total value of payments for orders delivered on or before a specific date.**
- **Retrieve the total number of orders and the total payment value for each customer city, sorted by total payment value.**
