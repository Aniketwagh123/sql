
--
-- Table structure for table `customers`
--
use ecommerce;
DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customer_id` varchar(32) DEFAULT NULL,
  `customer_unique_id` varchar(32) DEFAULT NULL,
  `customer_zip_code_prefix` mediumint(9) DEFAULT NULL,
  `customer_city` varchar(32) DEFAULT NULL,
  `customer_state` varchar(2) DEFAULT NULL
) ;



--
-- Table structure for table `geolocation`
--

DROP TABLE IF EXISTS `geolocation`;

CREATE TABLE `geolocation` (
  `geolocation_zip_code_prefix` mediumint(9) DEFAULT NULL,
  `geolocation_lat` decimal(18,16) DEFAULT NULL,
  `geolocation_lng` decimal(17,14) DEFAULT NULL,
  `geolocation_city` varchar(38) DEFAULT NULL,
  `geolocation_state` varchar(2) DEFAULT NULL
) ;


--
-- Table structure for table `leads_closed`
--

DROP TABLE IF EXISTS `leads_closed`;

CREATE TABLE `leads_closed` (
  `mql_id` varchar(32) DEFAULT NULL,
  `seller_id` varchar(32) DEFAULT NULL,
  `sdr_id` varchar(32) DEFAULT NULL,
  `sr_id` varchar(32) DEFAULT NULL,
  `won_date` varchar(19) DEFAULT NULL,
  `business_segment` varchar(31) DEFAULT NULL,
  `lead_type` varchar(15) DEFAULT NULL,
  `lead_behaviour_profile` varchar(11) DEFAULT NULL,
  `has_company` varchar(1) DEFAULT NULL,
  `has_gtin` varchar(1) DEFAULT NULL,
  `average_stock` varchar(7) DEFAULT NULL,
  `business_type` varchar(12) DEFAULT NULL,
  `declared_product_catalog_size` varchar(6) DEFAULT NULL,
  `declared_monthly_revenue` decimal(9,1) DEFAULT NULL
) ;



--
-- Table structure for table `leads_qualified`
--

DROP TABLE IF EXISTS `leads_qualified`;

CREATE TABLE `leads_qualified` (
  `mql_id` varchar(32) DEFAULT NULL,
  `first_contact_date` varchar(10) DEFAULT NULL,
  `landing_page_id` varchar(32) DEFAULT NULL,
  `origin` varchar(17) DEFAULT NULL
) ;



--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;

CREATE TABLE `order_items` (
  `order_id` varchar(32) DEFAULT NULL,
  `order_item_id` tinyint(4) DEFAULT NULL,
  `product_id` varchar(32) DEFAULT NULL,
  `seller_id` varchar(32) DEFAULT NULL,
  `shipping_limit_date` varchar(19) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `freight_value` decimal(5,2) DEFAULT NULL
) ;



--
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;

CREATE TABLE `order_payments` (
  `order_id` varchar(32) DEFAULT NULL,
  `payment_sequential` tinyint(4) DEFAULT NULL,
  `payment_type` varchar(11) DEFAULT NULL,
  `payment_installments` tinyint(4) DEFAULT NULL,
  `payment_value` decimal(7,2) DEFAULT NULL
) ;



--
-- Table structure for table `order_reviews`
--

DROP TABLE IF EXISTS `order_reviews`;

CREATE TABLE `order_reviews` (
  `review_id` varchar(32) DEFAULT NULL,
  `order_id` varchar(32) DEFAULT NULL,
  `review_score` tinyint(4) DEFAULT NULL,
  `review_comment_title` varchar(26) DEFAULT NULL,
  `review_comment_message` varchar(208) DEFAULT NULL,
  `review_creation_date` varchar(19) DEFAULT NULL,
  `review_answer_timestamp` varchar(19) DEFAULT NULL
) ;


--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `order_id` varchar(32) DEFAULT NULL,
  `customer_id` varchar(32) DEFAULT NULL,
  `order_status` varchar(11) DEFAULT NULL,
  `order_purchase_timestamp` varchar(19) DEFAULT NULL,
  `order_approved_at` varchar(19) DEFAULT NULL,
  `order_delivered_carrier_date` varchar(19) DEFAULT NULL,
  `order_delivered_customer_date` varchar(19) DEFAULT NULL,
  `order_estimated_delivery_date` varchar(19) DEFAULT NULL
) ;


--
-- Table structure for table `product_category_name_translation`
--

DROP TABLE IF EXISTS `product_category_name_translation`;

CREATE TABLE `product_category_name_translation` (
  `product_category_name` varchar(46) DEFAULT NULL,
  `product_category_name_english` varchar(39) DEFAULT NULL
) ;




--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_id` varchar(32) DEFAULT NULL,
  `product_category_name` varchar(46) DEFAULT NULL,
  `product_name_lenght` varchar(4) DEFAULT NULL,
  `product_description_lenght` varchar(6) DEFAULT NULL,
  `product_photos_qty` varchar(4) DEFAULT NULL,
  `product_weight_g` varchar(7) DEFAULT NULL,
  `product_length_cm` varchar(5) DEFAULT NULL,
  `product_height_cm` varchar(5) DEFAULT NULL,
  `product_width_cm` varchar(5) DEFAULT NULL
);


--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;

CREATE TABLE `sellers` (
  `seller_id` varchar(32) DEFAULT NULL,
  `seller_zip_code_prefix` int DEFAULT NULL,
  `seller_city` varchar(40) DEFAULT NULL,
  `seller_state` varchar(2) DEFAULT NULL
);

