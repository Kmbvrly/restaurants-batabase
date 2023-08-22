CREATE DATABASE  IF NOT EXISTS `restaurants` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurants`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: restaurants
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `street_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Baltimore Ave','7313'),(2,'Baltimore Ave','8145'),(3,'College Ave','4511'),(4,'Baltimore Ave','7406'),(5,'Rhode Island Ave','9823'),(6,'Guilford Dr b2','4200'),(7,'Baltimore Ave','7350'),(8,'Baltimore Ave','7400'),(9,'Baltimore Ave','9078'),(10,'Baltimore Ave','7346'),(11,'Baltimore Ave','8145'),(12,'Baltimore Ave','7412'),(13,'Rhode Island Ave','9906'),(14,'Cherry Hill Rd','4734'),(15,'Baltimore Ave','7313');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuisine`
--

DROP TABLE IF EXISTS `cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuisine` (
  `cuisine_id` int NOT NULL,
  `cuisine_type` varchar(45) NOT NULL,
  PRIMARY KEY (`cuisine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuisine`
--

LOCK TABLES `cuisine` WRITE;
/*!40000 ALTER TABLE `cuisine` DISABLE KEYS */;
INSERT INTO `cuisine` VALUES (1,'Vietnamese'),(2,'Mexican'),(3,'Thai'),(4,'Japanese'),(5,'Chinese'),(6,'Korean'),(7,'Mediterranean'),(8,'Portugese'),(9,'Jamaican'),(10,'American'),(11,'Salvadoran'),(12,'Greek'),(13,'African'),(14,'Italian'),(15,'Colombian');
/*!40000 ALTER TABLE `cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `days` (
  `day_id` int NOT NULL,
  `name_of_day` varchar(45) NOT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (1,'Sunday'),(2,'Monday'),(3,'Tuesday'),(4,'Wednesday'),(5,'Thursday'),(6,'Friday'),(7,'Saturday');
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hours_of_operation`
--

DROP TABLE IF EXISTS `hours_of_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hours_of_operation` (
  `day_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `opening_hours` varchar(45) DEFAULT NULL,
  `closing_hours` varchar(45) DEFAULT NULL,
  KEY `fk_hours_of_operation_days1_idx` (`day_id`),
  KEY `fk_hours_of_operation_restaurant1_idx` (`restaurant_id`),
  CONSTRAINT `fk_hours_of_operation_days1` FOREIGN KEY (`day_id`) REFERENCES `days` (`day_id`),
  CONSTRAINT `fk_hours_of_operation_restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hours_of_operation`
--

LOCK TABLES `hours_of_operation` WRITE;
/*!40000 ALTER TABLE `hours_of_operation` DISABLE KEYS */;
INSERT INTO `hours_of_operation` VALUES (1,1,'11:00 AM','9:00 PM'),(2,1,'11:00 AM','9:00 PM'),(3,1,'Closed','Closed '),(4,1,'11:00 AM','9:00 PM'),(5,1,'11:00 AM','9:00 PM'),(6,1,'11:00 AM','9:00 PM'),(7,1,'11:00 AM','9:00 PM'),(1,2,'11:00 AM','10:00 PM'),(2,2,'11:00 AM','10:00 PM'),(3,2,'11:00 AM','10:00 PM'),(4,2,'11:00 AM','10:00 PM'),(5,2,'11:00 AM','10:00 PM'),(6,2,'11:00 AM','10:30 PM'),(7,2,'11:00 AM','10:30 PM'),(1,3,'12:00 PM','9:00 PM'),(2,3,'11:30 AM','9:00 PM'),(3,3,'11:30 AM','9:00 PM'),(4,3,'11:30 AM','9:00 PM'),(5,3,'11:30 AM','9:00 PM'),(6,3,'11:30 AM','9:00 PM'),(7,3,'12:00 PM','9:00 PM'),(1,4,'12:00 PM','9:00 PM'),(2,4,'11:00 AM','9:00 PM'),(3,4,'11:00 AM','9:00 PM'),(4,4,'11:00 AM','9:00 PM'),(5,4,'11:00 AM','9:00 PM'),(6,4,'11:00 AM','10:00 PM'),(7,4,'11:00 AM','10:00 PM'),(1,5,'12:00 PM','10:30 PM'),(2,5,'Closed','Closed'),(3,5,'11:00 AM','10:30 PM'),(4,5,'11:00 AM','10:30 PM'),(5,5,'11:00 AM','10:30 PM'),(6,5,'11:00 AM','11:30 PM'),(7,5,'11:00 AM','11:30 PM'),(1,6,'11:30 AM','11:30 PM'),(2,6,'Closed','Closed'),(3,6,'11:30 AM','11:30 PM'),(4,6,'11:30 AM','11:30 PM'),(5,6,'11:30 AM','11:30 PM'),(6,6,'11:30 AM','11:30 PM'),(7,6,'11:30 AM','11:30 PM'),(1,7,'10:45 AM','10:00 PM'),(2,7,'10:45 AM','10:00 PM'),(3,7,'10:45 AM','10:00 PM'),(4,7,'10:45 AM','10:00 PM'),(5,7,'10:45 AM','10:00 PM'),(6,7,'10:45 AM','10:00 PM'),(7,7,'10:45 AM','10:00 PM'),(1,8,'10:30 AM','11:00 PM'),(2,8,'10:30 AM','10:00 PM'),(3,8,'10:30 AM','10:00 PM'),(4,8,'10:30 AM','10:00 PM'),(5,8,'10:30 AM','10:00 PM'),(6,8,'10:30 AM','10:00 PM'),(7,8,'10:30 AM','11:00 PM'),(1,9,'11:00 AM','10:00 PM'),(2,9,'10:00 AM','10:00 PM'),(3,9,'10:00 AM','10:00 PM'),(4,9,'10:00 AM','10:00 PM'),(5,9,'10:00 AM','10:00 PM'),(6,9,'10:00 AM','2:00 AM'),(7,9,'10:00 AM','2:00 AM'),(1,10,'11:00 AM','10:00 PM'),(2,10,'11:00 AM','10:00 PM'),(3,10,'11:00 AM','10:00 PM'),(4,10,'11:00 AM','10:00 PM'),(5,10,'11:00 AM','10:00 PM'),(6,10,'11:00 AM','10:00 PM'),(7,10,'11:00 AM','10:00 PM'),(1,11,'9:00 AM','10:00 PM'),(2,11,'10:30 AM','10:00 PM'),(3,11,'10:30 AM','10:00 PM'),(4,11,'10:30 AM','10:00 PM'),(5,11,'10:30 AM','10:00 PM'),(6,11,'9:30 AM','10:00 PM'),(7,11,'9:00 AM','10:00 PM'),(1,12,'11:00 AM','1:00 AM'),(2,12,'10:00 AM','3:00 AM'),(3,12,'10:00 AM','3:00 AM'),(4,12,'10:00 AM','3:00 AM'),(5,12,'10:00 AM','3:00 AM'),(6,12,'10:00 AM','3:00 AM'),(7,12,'10:00 AM','3:00 AM'),(1,13,'12:00 PM','9:00 PM'),(2,13,'12:00 PM','9:00 PM'),(3,13,'12:00 PM','9:00 PM'),(4,13,'12:00 PM','9:00 PM'),(5,13,'12:00 PM','9:00 PM'),(6,13,'12:00 PM','9:00 PM'),(7,13,'12:00 PM','9:00 PM'),(1,14,'12:00 PM','9:00 PM'),(2,14,'10:00 AM','9:00 PM'),(3,14,'10:00 AM','9:00 PM'),(4,14,'10:00 AM','9:00 PM'),(5,14,'10:00 AM','9:00 PM'),(6,14,'10:00 AM','10:00 PM'),(7,14,'10:00 AM','10:00 PM'),(1,15,'11:30 AM','9:00 PM'),(2,15,'11:30 AM','9:00 PM'),(3,15,'Closed','Closed'),(4,15,'11:30 AM','9:00 PM'),(5,15,'11:30 AM','9:00 PM'),(6,15,'11:30 AM','9:00 PM'),(7,15,'11:30 AM','9:00 PM');
/*!40000 ALTER TABLE `hours_of_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `least_most_expensive`
--

DROP TABLE IF EXISTS `least_most_expensive`;
/*!50001 DROP VIEW IF EXISTS `least_most_expensive`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `least_most_expensive` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `least_expensive_item`,
 1 AS `most_expensive_item`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item` (
  `menu_item_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `item_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`menu_item_id`),
  KEY `fk_menu_item_restaurant1_idx` (`restaurant_id`),
  CONSTRAINT `fk_menu_item_restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (1,1,'Pho Vietnamese Noodle Soup with Beef Broth',13.95,'Served with rice noodle in beef broth, bean sprouts, hot peppers, slices of lime and fresh basil'),(2,1,'Grill Lemongrass Chicken',12.95,'Serred with lettuce cucumber. carotilantrtriedscallion-ond fish sauce coasted, pennuts and bean sprouts are served with rice vermicelli'),(3,1,'Grill Lemongrass Pork',12.95,'Serred with lettuce cucumber. carotilantrtriedscallion-ond fish sauce coasted, pennuts and bean sprouts are served with rice vermicelli'),(4,1,'Thom Wings',8.50,'Deep fried chicken wings, sauteed with Thai chili sauce'),(5,1,'Chicken Satay',6.95,'Gilled tender shunks of chessered chicken. Served with peanut and cucumber sauce'),(6,1,'Spring Roll',5.25,'Deep fried chicken, shrimp, and vegetable. Served with sweet and sour sauce'),(7,1,'Dumpling',7.95,'Steamed or deep fried, choice of chicken or por: dumpling stuffed with cabbage and green onion'),(8,1,'Thom Yum Goong',6.50,'Shrimp and fresh mushrooms in spicy and sour lemongrass broth'),(9,1,'Yum Telay',13.95,'Scallop, shrimp, mussels tossed with red onion, cilantro with spicy lime dressing'),(10,1,'Pla Chili Sauce',15.95,'Deep-fried fish fillet topped with house chili sauce and fresh basil'),(11,2,'Queso Fundido',11.00,'Chihuahua cheese with spicy chorizo, poblano peppers, served with tortilla chips'),(12,2,'Ceviche de la Casa',14.00,'Lime-marinated shrimp, clamato sauce, cucumbers, serrano pepper, onions & avocado'),(13,2,'Birria de Res',14.00,'Three toasted tacos stuffed with stewed beef, chihuahua cheese, cilantro and onions, served with savory beef broth'),(14,2,'Tortas',12.00,'Toasted telera roll, lettuce, onion, tomato, oaxaca cheese, refried beans, avocado and pickled jalapenos'),(15,2,'Echiladas de Pollo',14.00,'Shredded chicken, pork chorizo bits, yellow rice, black beans, onions, crema fresca, and queso fresco. choose green or red salsa mole poblana sauce'),(16,2,'Carne Asada',22.00,'6 oz strip steak, one green cheese enchilada, yellow rice, black beans & corn tortillas'),(17,2,'Molcajete',50.00,'grilled cactus, bell peppers, chicken, steak,Mexican chorizo, shrimp, queso fresco, and smoked green sauce towered over a molcajete dish with tortilla side. serves 2'),(18,2,'Tres Leches con Pina',9.00,'Sponge cake filled with milk trifecta, raspberry-pineapple marmalade'),(19,2,'Margaritas',11.00,'Simple syrup, fresh lime juice, served on the rocks'),(20,2,'Mexican Mojito',13.00,'Your mojito with a twist! tequila or mezcal, muddled lime and mint, and soda water'),(21,3,'Tofu Tod',5.95,'Deep fried tofu served with sweet and sour sauce and crushed peanuts.'),(22,3,'Shrimp Bikini',6.95,'Whole shrimp and minced chicken wrapped in spring roll skin, deep fried, served with sweet and sour sauce'),(23,3,'Tom Kha',5.95,'Traditional Thai style hot and sour galangal soup with mushroom, tomato and cilantro in coconut milk'),(24,3,'Papaya Salad',6.95,'Shredded green papaya mixed with carrots, tomato, string beans and crushed peanuts in spicy lime dressing'),(25,3,'Pad Eggplant',12.95,'Stir fried with Thai eggplant, basil leaves, red bell pepper, soy bean in a chili and garlic sauce'),(26,3,'Pad Prik King',12.95,'Stir fried with string beans and red bell pepper in spicy Prik King sauce topped with kafir lime leaves'),(27,3,'Drunken Noodle',12.95,'Choice of meat stir fried with wide rice noodles, chili, garlic, basil leaves, onion and tomato in our special brown sauce'),(28,3,'Spicy Basil Fried Rice',12.95,'Choice of meat stir fried with jasmine rice, egg, basil leaves, onion, and bell peppers in our special chili and garlic sauce'),(29,3,'Kao Mun Gai',13.95,'Seasoned steamed chicken served over herb studded jasmine rice, with spicy garlic ginger sauce'),(30,3,'Mango and Sticky Rice',5.95,'Sliced fresh mango served with Thai sticky rice topped with sweet coconut milk and crispy mung bean'),(31,4,'Qu Ramen',12.95,'Tonkostu salt flavor with roast pork (chashu), shrimp, grill chicken, fish cake, stir-fried bean sprout, bok-choy, bamboo shoots, corn, chopped scallion, seasoned boil egg and nori (seaweed)'),(32,4,'Vegetable Ramen',12.50,'Steam tofu, stir-fried bean sprout, bok-choy, broccoli, bamboo shoots, corn, chopped scallion and nori (seaweed) with veggie broth'),(33,4,'Tonkotsu Ramen',13.99,'Roast pork (chashu), fish cake, stir-fried bean sprout, bok-choy, bamboo shoots, corn, chopped scallion, seasoned boil egg and nori (seaweed)'),(34,4,'Tonkotsu Shoyu Ramen',13.99,'Roast pork (chashu), fish cake, stir-fried bean sprout, bok-choy, bamboo shoots, corn, chopped scallion, seasoned boil egg and nori (seaweed)'),(35,4,'Chicken Teriyaki Ramen',13.50,'Grill chicken, fish cake, stir-fried bean sprout, bok-choy, bamboo shoots, corn, chopped scallion, seasoned boil egg and nori (seaweed)'),(36,4,'Shrimp Teriyaki Ramen',13.99,'6pcs shrimp, fish cake, stir-fried bean sprout, bok-choy, bamboo shoots, corn, chopped scallion, seasoned boil egg and nori (seaweed)'),(37,4,'Tonkotsu Miso Ramen',13.99,'Roast pork (chashu), fish cake, stir-fried bean sprout, bok-choy, bamboo shoots, corn, chopped scallion, seasoned boil egg and nori (seaweed)'),(38,4,'Beef Teriyaki Ramen',13.99,'Grill beef, fish cake, stir-fried bean sprout, bok-choy, bamboo shoots, corn, chopped scallion, seasoned boil egg and nori (seaweed)'),(39,4,'Matcha Cheesecake  ',5.50,NULL),(40,4,'Shrimp Shumai',5.99,NULL),(41,5,'Egg Drop Soup',3.96,NULL),(42,5,'Chicken Fried Rice',9.24,NULL),(43,5,'Vegetable Lo Mein',8.58,NULL),(44,5,'Beef Egg Foo Young',12.61,NULL),(45,5,'Moo Shu Vegetable',11.88,NULL),(46,5,'Moo Goo Gai Pan',10.63,NULL),(47,5,'Seafood Lo Mein',15.25,NULL),(48,5,'Chicken Noodle Soup',3.96,NULL),(49,5,'Curry Beef with Onion',11.29,NULL),(50,5,'3 Piece Chicken on Stick',6.94,NULL),(51,6,'Soy Chicken',9.95,'Korean style chicken with sweet soy-honey sauce'),(52,6,'Mandu Fried & Steamed Dumplings 5pc',6.50,'Korean style dumplings. Traditional Korean dumplings are made with minced pork. Its mild yet juicy flavor and texture mingles well with any vegetables'),(53,6,'Kangnam Bibimbap',14.00,'Rice topped with various cooked vegetables, such as spinach, mushrooms and bean sprouts, plus beef and fried egg'),(54,6,'Gim Bap 1 Roll',7.00,'Gimbap, also romanized as kimbap, is a Korean dish made from cooked rice and ingredients such as vegetables, fish and meats that are rolled in gim-dried sheets of seaweed and served in bite-sized slic'),(55,6,'Bulgogi with Rice Bento',14.00,'Stir-fried bulgogi (beef in a soy sauce marinade), served on a bed of rice'),(56,6,'Porkbelly Kimchi Pancakes',15.00,'Kimchi-buchimgae or kimchi pancake, sometimes also referred to as kimchi-jeon, is a variety of buchimgae, or Korean pancake. It is primarily made with sliced kimchi, flour batter and sometimes other v'),(57,6,'Sukiyaki Beef Donburi',10.00,'A bowl containing simmered beef, onion, and egg over steamed rice. Japanese Beef Bowl, is always served over a warm bowl of freshly steamed rice.'),(58,6,'Soybean Paste Stew',12.50,'Doenjang-jjigae, referred in English as soybean paste stew, is a Korean traditional jjigae, made from the primary ingredient of doenjang, and additional optional ingredients vegetables, seafood, and m'),(59,6,'Chicken Teriyaki',21.95,'Tender chicken with teriyaki sauce'),(60,6,'Kimchi Fried Rice ',15.00,'Kimchi fried rice or kimchi-bokkeum-bap is a variety of bokkeum-bap, a popular dish in Korea'),(61,7,'Balsamic Date Chicken',10.72,'Grilled chicken, eggplant dip, red pepper hummus, corn, brown rice, spinach, balsamic date vinaigrette'),(62,7,'Harissa Avocado Bowl',14.22,'Harissa honey chicken and hot harissa vinaigrette. Crazy Feta, hummus, corn, avocado, rice, SuperGreens'),(63,7,'Lentil Avocado Bowl',13.07,'Falafel, roasted veg, roasted eggplant, hummus, avocado, lentil tabbouleh, spinach, SuperGreens, skhug'),(64,7,'Greek Salad',10.72,'Grilled chicken, hummus, tzatziki, feta, cucumber, tomato, Kalamata olives, romaine, arugula, and vinaigrette'),(65,7,'Crispy Falafel Pita',10.72,'Falafel, hummus, roasted eggplant, pickles, cabbage slaw, tomato and onion, garlic dressing, skhug'),(66,7,'Spicy Lamb Meatball Pita',12.72,'Lamb meatballs, hummus, tomato and cucumber, pickled onions, cabbage slaw, pickles, garlic dressing, skhug'),(67,7,'Greek Chicken Pita',10.72,'Grilled chicken, hummus, tzatziki, pickles, tomato and onion, olives, feta, shredded romaine, Greek Vinaigrette'),(68,7,'Kid\'s Pita',6.55,'A mini version of our build-you-own pita with a side of pita chips or carrots sticks. Choose milk or juice'),(69,7,'Pita Chips',2.10,'Made in-house in small batches, our pita chips are meant for big dipping. Crispy outside, soft inside'),(70,7,'Greyston Brownie',2.00,'Intensely chocolatey brownie, with a fudgy, almost-gooey inside. Handcrafted by Greyston Bakery for CAVA'),(71,8,'1/2 Chicken and Chips',15.39,'Signature 1/2 chicken served with PERi chips'),(72,8,'PERi-PERi Chicken Tender Bowl',12.89,'Portuguese rice topped with PERi-PERi chicken, arugula, roasted red peppers, cut grilled corn and hummus'),(73,8,'Avocado and Roasted Pepper Bowl',11.39,'Avocado, roasted red peppers, cut grilled corn, hummus and arugula served over Portuguese rice'),(74,8,'Chicken Breast Sandwich',9.00,'Served with arugula, tomato, pickled onions and PERinaise'),(75,8,'Full Chicken Platter',31.59,'Whole chicken plus your choice of 2 large sides'),(76,8,'Nandocas\' Choice',12.80,'A butterflied PERi-PERi chicken breast served on garlic bread, and topped with our house-made coleslaw'),(77,8,'Chicken Breast Pita',8.60,'Served toasted with a mix of lettuce and crunchy vegetables with PERinaise'),(78,8,'Veggie Burger',8.60,'Plant-based patty made from piquante peppers, mushrooms, water chestnuts and garden vegetables topped with arugula, tomato, pickled onions and PERinaise'),(79,8,'Sweet Potato Halloumi Sandwich',8.90,'Charred sweet potatoes with arugula, yogurt sauce and chilli jam served on a Portuguese roll'),(80,8,'Wing Platter',29.79,'24 flame-grilled PERi-PERi wings served with PERi Ranch'),(81,9,'Jerk Chicken',9.50,'Dark Meat, Quarter size'),(82,9,'Jerk Chicken',11.00,'White Meat, Quarter size'),(83,9,'Jerk Wings/BBQ Wings',6.50,NULL),(84,9,'Curry Goat',15.00,'Size Medium'),(85,9,'Oxtail',16.00,'Size Medium'),(86,9,'Ackee & Saltfish',15.00,'Served with Yam, Banana, Dumpling'),(87,9,'Kids Meal ',7.00,'Served with chicken'),(88,9,'Garden Salad',6.00,NULL),(89,9,'Curry or Brown Stew Chicken ',11.00,'Size Medium'),(90,9,'Jerk Pork',12.50,'Size Medium'),(91,10,'Hamburger',8.81,'Fresh, hand-formed patties hot off the grill and placed on a soft, toasted sesame seed bun. Choose as many toppings as you want.'),(92,10,'Cheeseburger',9.69,'American-style cheese melted between fresh patties and placed on a soft, toasted sesame seed bun. Choose as many toppings as you want'),(93,10,'Bacon Cheeseburger',10.95,'Fresh patties hot off the grill with American-style cheese and crispy apple-wood smoked bacon. Placed on a soft, toasted sesame seed bun. Choose as many toppings as you want.'),(94,10,'Hot Dog',5.91,'All-beef hot dog, split and grilled lengthwise for a caramelized exterior with any of your favorite toppings'),(95,10,'Cheese Dog',6.79,'All-beef hot dog, split and grilled lengthwise for a caramelized exterior with a layer of American-style cheese on top and any of your favorite toppings'),(96,10,'Bacon Dog',7.17,'All-beef hot dog, split and grilled lengthwise for a caramelized exterior with a layer of apple-wood smoked bacon and any of your favorite toppings'),(97,10,'Five Guys Fries',5.28,'Freshly made boardwalk-style fries, cooked in pure, cholesterol-free, 100% peanut oil. Cut fresh and cooked twice - firm on the outside and mashed potato on the inside'),(98,10,'Cajun Fries',5.28,'Freshly made boardwalk-style fries, cooked in pure, cholesterol-free, 100% peanut oil, and then showered with a heavy dose of Cajun spice. Cut fresh and cooked twice - firm on the outside and mashed p'),(99,10,'Grilled Cheese',5.53,'Slices of American-style cheese melted on an inside-out sesame seed bun with toppings of your choice and grilled until golden brown.'),(100,10,'Veggie Sandwich',4.65,'Freshly grilled onions, mushrooms and green peppers layered with lettuce and tomatoes on a soft, toasted sesame seed bun. Or start with the bun and build your own from scratch. Not a veggie burger'),(101,11,'Tamales de Gallina',1.50,'Chicken tamale salvadoran style'),(102,11,'Quesadilla de Pollo',6.75,'Flour tortilla with shredded chicken and cheese, served with sour cream, guacamole and chirmol '),(103,11,'Carne Asada',9.00,'Grilled steak, served with rice, salad or pico de gallo and two homemade tortillas '),(104,11,'Burrito Vegetariano',5.50,'Burrito veggie, served with lettuce, pico de gallo and sour cream '),(105,11,'Taquitos Fritos',5.49,'Golden fried taquitos, served with pico de gallo, shredded lettuce and sour cream'),(106,11,'Chicharrones',2.25,'Fried chunks of pork'),(107,11,'Sopa de Res',8.95,'Beef soup salvadoran style, served with two homemade tortillas '),(108,11,'Budin',1.25,'Bread Pudding'),(109,11,'Arroz',1.75,'Fried rice'),(110,11,'Pescado Frito',9.99,'Whole seasoned tilapia fish deep-fried, served with rice, salad or pico de gallo and two homemade tortillas'),(111,12,'Pisces Melt',11.99,'Tuna, gouda, arugula, onions, tomato, cukes, & olive oil'),(112,12,'Bella Gi',11.99,'Eggplant, fresh mozzarella cheese, arugula, reo roasted peppers & pesto mayo'),(113,12,'Smoke House',12.99,'Chicken fingers, cheddar & gouda, hickory bacon & tangy BBQ sauce '),(114,12,'King Kong',12.99,'Meatloaf, sauteed peppers, onions, mushrooms, Swiss cheese, bacon, ketchup '),(115,12,'Eggplant Parmessan',13.99,'Fried eggplant topped with melted provolone cheese marinara sauce served with ziti'),(116,12,'Chicken & Broccoli',14.99,'Sauteed chicken breast, fresh broccoli crowns tossed in lite creamy garlic sauce '),(117,12,'Mayflower Wrap',10.99,'Turkey, stuffing, cranberry sauce & mayo '),(118,12,'Tuscan Chicken Wrap',10.99,'Chicken, provolone, lettuce, sweet red peppers & pesto mayo '),(119,12,'Ceaser Veggie Wrap',8.49,'Romaine lettuce, croutons, parmesan cheese & Caesar dressing '),(120,12,'The \"Clocker\"\"\"',11.99,'Imported ham, American & chedar cheese, hickory bacon, lettuce, tomato, & mayo '),(121,13,'Suya',15.00,'Thinly sliced meat marinated in various spices and barbecued served with a side of chopped red onions and spices'),(122,13,'Goat Meat Pepper Soup',15.00,'Goat meat served in flavorful pepper soup'),(123,13,'Nkwobi',30.00,NULL),(124,13,'Asun',15.00,NULL),(125,13,'Fish Pepper Soup',17.00,'Fish pepper soup is a warm and soothing West African soup, simmered in a flavorful, spicy broth made up of catfish, vegetables, and spices'),(126,13,'Jollof Rice',19.00,'Jollof rice served with plantain and a choice of meat (Chicken, goat, or cow)'),(127,13,'Egusi',19.00,'Soup thickened with ground melon seeds and contains leafy greens and other vegetables'),(128,13,'Ogbonno',20.00,'A rich, nutrition-packed Nigerian soup made from ogbono seeds, palm oil, assorted meats, and traditional spices'),(129,13,'Groundnut Soup',20.00,'West African peanut soup'),(130,13,'Meat Pie',3.00,'Meat pies are delicious pastries filled with minced meat, potato and carrots. The pastry is slightly flaky and very rich in flavor. The filling is moist and very flavorful'),(131,14,'Bruschetta',11.00,'Toasted garlic bread, diced tomatoes, basil, garlic, olive oil'),(132,14,'Burrata',17.00,'Costini, cherry tomatoes, basil, extra virgin olive oil'),(133,14,'Mamma\'s Half Pound Meatball',15.00,'Crispy italian toast, marinara sauce, dollop of creamy ricotta'),(134,14,'Fried Mozzarella',14.00,'Side of marinara sauce'),(135,14,'Shrimp Bada Ring',17.00,'Crispy shrimp, spicy bada bing sauce'),(136,14,'Mussels',14.00,'Fresh mussels, white wine, garlic, lemon or light marinara sauce'),(137,14,'Risotto Balls',13.00,'Fried italian stuffed rice balls, ground beef, mozzarella'),(138,14,'White Pizza',16.00,'Fontina, olive oil, oregano'),(139,14,'Meat Mania',23.00,'Meatballs, italian sausage, grilled chicken breast, served with grilled vegetables'),(140,14,'Mozzarella Caprese',15.00,'Mozzarella, tomatoes, basil, olive oil'),(141,15,'Pasteles de Pollo y Espinaca',4.75,NULL),(142,15,'Empanadas Vegana',3.00,NULL),(143,15,'Marranitas',4.50,NULL),(144,15,'Pastel de Yuca',4.25,NULL),(145,15,'Papa Criolla',4.99,NULL),(146,15,'Bandeja Paisa',21.00,'Grill meat, fried pork skin, chorizo, rice, beans, sweet plantains, fried plantain, arepita'),(147,15,'Tamal Valluno',11.00,NULL),(148,15,'Carne Asada',14.99,'NY steak, rice, beans, & sweet plantains'),(149,15,'Arepa Pollo',9.50,NULL),(150,15,'Ritchie\'s the Crepe',9.50,NULL);
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `open_everyday`
--

DROP TABLE IF EXISTS `open_everyday`;
/*!50001 DROP VIEW IF EXISTS `open_everyday`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `open_everyday` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `name_of_day`,
 1 AS `opening_hours`,
 1 AS `closing_hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `price_avg`
--

DROP TABLE IF EXISTS `price_avg`;
/*!50001 DROP VIEW IF EXISTS `price_avg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `price_avg` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `average_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `price_indicator`
--

DROP TABLE IF EXISTS `price_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_indicator` (
  `pi_id` int NOT NULL,
  `pi_name` varchar(45) NOT NULL,
  PRIMARY KEY (`pi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_indicator`
--

LOCK TABLES `price_indicator` WRITE;
/*!40000 ALTER TABLE `price_indicator` DISABLE KEYS */;
INSERT INTO `price_indicator` VALUES (1,'low'),(2,'medium');
/*!40000 ALTER TABLE `price_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(45) NOT NULL,
  `cuisine_id` int NOT NULL,
  `pi_id` int NOT NULL,
  `contact_id` int NOT NULL,
  `website_id` int NOT NULL,
  `address_id` int NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  KEY `fk_restaurant_restaurant_contact1_idx` (`contact_id`),
  KEY `fk_restaurant_website1_idx` (`website_id`),
  KEY `fk_restaurant_address1_idx` (`address_id`),
  KEY `fk_restaurant_price_indicator1_idx` (`pi_id`),
  KEY `fk_restaurant_cuisine1_idx` (`cuisine_id`),
  CONSTRAINT `fk_restaurant_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `fk_restaurant_cuisine1` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisine` (`cuisine_id`),
  CONSTRAINT `fk_restaurant_price_indicator1` FOREIGN KEY (`pi_id`) REFERENCES `price_indicator` (`pi_id`),
  CONSTRAINT `fk_restaurant_restaurant_contact1` FOREIGN KEY (`contact_id`) REFERENCES `restaurant_contact` (`contact_id`),
  CONSTRAINT `fk_restaurant_website1` FOREIGN KEY (`website_id`) REFERENCES `website` (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Pho Thom',1,1,1,1,1),(2,'Taqueria Habanero',2,2,2,2,2),(3,'Aroy Thai',3,1,3,3,3),(4,'Qu Japan',4,2,4,4,4),(5,'Eddie\'s Cafe',5,2,5,5,5),(6,'Kangnam BBQ',6,2,6,6,6),(7,'CAVA',7,1,7,7,7),(8,'Nando\'s Peri Peri',8,2,8,8,8),(9,'The Jerk Pit',9,2,9,9,9),(10,'Five Guys',10,2,10,10,10),(11,'Pupuseria La Familiar',11,1,11,11,11),(12,'Marathon Deli',12,1,12,12,12),(13,'Nene\'s Restaraunt',13,2,13,13,13),(14,'Mama Lucia',14,2,14,14,14),(15,'Ritchie\'s Colombian Restaurant',15,2,15,15,15);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_contact`
--

DROP TABLE IF EXISTS `restaurant_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_contact` (
  `contact_id` int NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_contact`
--

LOCK TABLES `restaurant_contact` WRITE;
/*!40000 ALTER TABLE `restaurant_contact` DISABLE KEYS */;
INSERT INTO `restaurant_contact` VALUES (1,'2405827530',NULL),(2,NULL,'catering@taqueriahabanero.com'),(3,'3018645550',NULL),(4,'2404673332',NULL),(5,'3013451791',NULL),(6,'3012201635',NULL),(7,'3012005417',NULL),(8,'2405828420','collegepark@nandosperiperi.com'),(9,'3019825375',NULL),(10,'2406963670',NULL),(11,'3014748484',NULL),(12,'3019276717','marathondeli4429@gmail.com'),(13,NULL,'Nenesrestaurant1@gmail.com'),(14,'3015130605',NULL),(15,'2407647422',NULL);
/*!40000 ALTER TABLE `restaurant_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `saturday_closing_time`
--

DROP TABLE IF EXISTS `saturday_closing_time`;
/*!50001 DROP VIEW IF EXISTS `saturday_closing_time`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `saturday_closing_time` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `name_of_day`,
 1 AS `closing_hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `under_5_items`
--

DROP TABLE IF EXISTS `under_5_items`;
/*!50001 DROP VIEW IF EXISTS `under_5_items`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `under_5_items` AS SELECT 
 1 AS `restaurant_name`,
 1 AS `item_name`,
 1 AS `item_description`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website` (
  `website_id` int NOT NULL,
  `website_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
INSERT INTO `website` VALUES (1,'http://www.phothommd.com'),(2,'https://www.taqueriahabanero.com'),(3,'https://www.aroythaicollegepark.com'),(4,'https://www.qujapancollegeparkmd.com/'),(5,'https://www.collegeparkeddiescafe.com/?utm_so'),(6,'https://www.kangnambbqcollegepark.com/'),(7,'https://cava.com'),(8,'https://www.nandosperiperi.com/find/college-p'),(9,'https://myjerkpit.com'),(10,'https://restaurants.fiveguys.com/7346-baltimo'),(11,'http://pupuserialafamiliar.com/locations.html'),(12,'https://www.marathondelimd.com/'),(13,'https://www.nenesrestaurant.com/'),(14,'https://mammaluciarestaurants.com/locations/c'),(15,'https://ritchiescolombianc.wixsite.com/mysite');
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `least_most_expensive`
--

/*!50001 DROP VIEW IF EXISTS `least_most_expensive`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `least_most_expensive` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,concat('$',min(`menu_item`.`price`)) AS `least_expensive_item`,concat('$',max(`menu_item`.`price`)) AS `most_expensive_item` from (`restaurant` join `menu_item` on((`restaurant`.`restaurant_id` = `menu_item`.`restaurant_id`))) group by `restaurant`.`restaurant_name` order by `least_expensive_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `open_everyday`
--

/*!50001 DROP VIEW IF EXISTS `open_everyday`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `open_everyday` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`days`.`name_of_day` AS `name_of_day`,`hours_of_operation`.`opening_hours` AS `opening_hours`,`hours_of_operation`.`closing_hours` AS `closing_hours` from ((`restaurant` join `hours_of_operation` on((`restaurant`.`restaurant_id` = `hours_of_operation`.`restaurant_id`))) join `days` on((`hours_of_operation`.`day_id` = `days`.`day_id`))) where ((`hours_of_operation`.`opening_hours` <> 'Closed') and (`hours_of_operation`.`closing_hours` <> 'Closed')) order by `restaurant`.`restaurant_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `price_avg`
--

/*!50001 DROP VIEW IF EXISTS `price_avg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `price_avg` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,concat('$',round(avg(`menu_item`.`price`),2)) AS `average_price` from (`restaurant` join `menu_item` on((`restaurant`.`restaurant_id` = `menu_item`.`restaurant_id`))) group by `restaurant`.`restaurant_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `saturday_closing_time`
--

/*!50001 DROP VIEW IF EXISTS `saturday_closing_time`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `saturday_closing_time` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`days`.`name_of_day` AS `name_of_day`,`hours_of_operation`.`closing_hours` AS `closing_hours` from ((`restaurant` join `hours_of_operation` on((`restaurant`.`restaurant_id` = `hours_of_operation`.`restaurant_id`))) join `days` on((`hours_of_operation`.`day_id` = `days`.`day_id`))) where `days`.`name_of_day` in (select `days`.`name_of_day` from `days` where (`days`.`day_id` = 7)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `under_5_items`
--

/*!50001 DROP VIEW IF EXISTS `under_5_items`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `under_5_items` AS select `restaurant`.`restaurant_name` AS `restaurant_name`,`menu_item`.`item_name` AS `item_name`,`menu_item`.`item_description` AS `item_description`,concat('$',`menu_item`.`price`) AS `price` from (`restaurant` join `menu_item` on((`restaurant`.`restaurant_id` = `menu_item`.`restaurant_id`))) where ((`menu_item`.`price` < 5) or (`menu_item`.`price` = 5)) order by `restaurant`.`restaurant_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-11 22:43:15
