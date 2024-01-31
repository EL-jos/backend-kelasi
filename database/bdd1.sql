-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: kelasi
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_province_id_foreign` (`province_id`),
  CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('0568eb01-476d-491e-876a-771024dc194c','Basoko','c954f9a2-b75b-4d09-801c-6469bdac2447','2024-01-25 09:25:14','2024-01-25 09:25:14'),('0858378e-3477-47de-ac67-fc6cd8c463d0','Kabare','364b7026-7b44-4534-adf2-957016b71779','2024-01-25 09:25:14','2024-01-25 09:25:14'),('0903742e-172f-4e0a-9314-ea3343056ed5','Aketi','0bc9244e-9ec6-4bca-a575-c6c27c59a201','2024-01-25 09:25:13','2024-01-25 09:25:13'),('0a458ccc-ce27-4866-9776-538f7669c6e0','Lisala','a1dda58c-8a55-4130-8764-2cf78755db59','2024-01-25 09:25:13','2024-01-25 09:25:13'),('0aad414f-3535-4cf9-99c5-af67ab159031','Tshela','274a23cb-a720-408b-9237-900b48540776','2024-01-25 09:25:14','2024-01-25 09:25:14'),('0c356f8d-06d1-4c1e-bed3-1f47f2d3d646','Buta','0bc9244e-9ec6-4bca-a575-c6c27c59a201','2024-01-25 09:25:13','2024-01-25 09:25:13'),('1229f920-c533-4362-8391-add3840466a0','Kamina','f630a635-77d1-4232-8395-6aae8ccd4235','2024-01-25 09:25:13','2024-01-25 09:25:13'),('15e7f7ff-25e1-4232-a34d-1d06f79d5f1d','Gandajika','86255d14-5cac-468e-a33e-e6a915507505','2024-01-25 09:25:13','2024-01-25 09:25:13'),('1b78dd71-bf83-4581-acf9-ecd4df1d057b','Wamba','723ad81a-efe3-4b12-8d1a-0b92801e7841','2024-01-25 09:25:13','2024-01-25 09:25:13'),('20a51d6b-bb0a-498f-bb9a-81ab6427551b','Kasangulu','274a23cb-a720-408b-9237-900b48540776','2024-01-25 09:25:14','2024-01-25 09:25:14'),('289c7d95-b6c6-4107-8d42-cfca091a72d6','Watsa','723ad81a-efe3-4b12-8d1a-0b92801e7841','2024-01-25 09:25:13','2024-01-25 09:25:13'),('33a47a40-6aa1-4254-878a-907b365e186f','Kinshasa','6ab2b671-15dc-4dc2-952b-e32a924629d7','2024-01-25 09:25:13','2024-01-25 09:25:13'),('36032734-05c1-4f9d-b7bd-4a7c2023bd4d','Lubao','75ab4b46-a348-43e1-b41a-ccb9114686bc','2024-01-25 09:25:14','2024-01-25 09:25:14'),('4932ef3b-70b9-4fb8-89d0-09d2f59eb4c1','Bukavu','364b7026-7b44-4534-adf2-957016b71779','2024-01-25 09:25:14','2024-01-25 09:25:14'),('4c86b46b-06e7-4c90-ac6b-cd5e61f9b128','Mbandaka','a1dda58c-8a55-4130-8764-2cf78755db59','2024-01-25 09:25:13','2024-01-25 09:25:13'),('4ca531fb-92a2-41ad-830a-d5ca3c9b7ad1','Bosobolo','d0e91a66-65f4-44a0-93f9-3ba73c27ee26','2024-01-25 09:25:14','2024-01-25 09:25:14'),('4cd4e179-84f6-4af8-826e-a8e6c3747c4a','Kasongo','6493e17a-034c-4a0b-9cd8-2448378d28d1','2024-01-25 09:25:14','2024-01-25 09:25:14'),('50797e8f-60c0-4b15-96df-4147642fa44a','Isiro','723ad81a-efe3-4b12-8d1a-0b92801e7841','2024-01-25 09:25:13','2024-01-25 09:25:13'),('534f791e-8f4f-46fa-80f0-c3337edddde8','Gbadolite','d0e91a66-65f4-44a0-93f9-3ba73c27ee26','2024-01-25 09:25:14','2024-01-25 09:25:14'),('53ce937f-bf1b-4200-b2ff-734a1672b93e','Bulungu','03ca9bf1-39b7-4d5c-8881-c0eb58b8fcc8','2024-01-25 09:25:14','2024-01-25 09:25:14'),('57153fee-f2bc-48a2-a6f7-bc5ff33b02f9','Moanda','274a23cb-a720-408b-9237-900b48540776','2024-01-25 09:25:14','2024-01-25 09:25:14'),('57dc43a6-2252-4281-8ad7-e1b772dcca3c','Beni','de2d1599-badd-42d9-894a-8063ce1dc779','2024-01-25 09:25:14','2024-01-25 09:25:14'),('5936e501-e790-4fc9-8402-7e336b960338','Kipushi','06a1b824-19ee-4e7c-9d39-076cadb3c6b5','2024-01-25 09:25:13','2024-01-25 09:25:13'),('5c3f521e-3162-4f3a-9686-c04ad5f5ebd9','Likasi','06a1b824-19ee-4e7c-9d39-076cadb3c6b5','2024-01-25 09:25:13','2024-01-25 09:25:13'),('5fe1e099-cc26-45da-bb1e-637a4ae17d46','Bandundu','03ca9bf1-39b7-4d5c-8881-c0eb58b8fcc8','2024-01-25 09:25:14','2024-01-25 09:25:14'),('63395a71-885d-40ac-8b0d-58469fd88707','Kisangani','c954f9a2-b75b-4d09-801c-6469bdac2447','2024-01-25 09:25:14','2024-01-25 09:25:14'),('63db508a-524d-415c-b67e-906cb2ab412d','Mweka','f5202319-ccbd-4703-8a31-c1c93b28f4cb','2024-01-25 09:25:13','2024-01-25 09:25:13'),('6b520302-aac8-4859-8351-41729c942878','Bumba','4c6af4e8-fe77-459f-a635-49827dfbe86a','2024-01-25 09:25:14','2024-01-25 09:25:14'),('6b759b8e-4b28-4f27-a483-cb4f61c371ba','Kambove','06a1b824-19ee-4e7c-9d39-076cadb3c6b5','2024-01-25 09:25:13','2024-01-25 09:25:13'),('6ccdc8e1-393e-4859-98f1-6d48e04f4ef2','Inongo','dde9a53f-e02a-484f-b82f-39a77df22c4e','2024-01-25 09:25:14','2024-01-25 09:25:14'),('6e4cc313-c2ce-4f5b-b393-a4d04fdd67e0','Kongolo','d6ecb019-e8c3-4058-b9b3-7fe9b3f9e1d3','2024-01-25 09:25:14','2024-01-25 09:25:14'),('726646ac-a167-4fd9-bdb5-03c7e26715f3','Kasongo-Lunda','3235809a-607a-41cf-aedb-807cbf3444b8','2024-01-25 09:25:14','2024-01-25 09:25:14'),('74a5f524-6533-4c61-b880-14508ae3dcbd','Kabalo','d6ecb019-e8c3-4058-b9b3-7fe9b3f9e1d3','2024-01-25 09:25:14','2024-01-25 09:25:14'),('8a933a80-a3ef-4408-a7f1-d8c35fc11306','Lusambo','a3cb60cc-61d1-4ada-b39c-aebd383413ca','2024-01-25 09:25:14','2024-01-25 09:25:14'),('8cee68c6-7a5e-4910-bb59-a37398c3dc25','Masina','6ab2b671-15dc-4dc2-952b-e32a924629d7','2024-01-25 09:25:13','2024-01-25 09:25:13'),('983698d1-643e-49ae-81a0-bdddc278903a','Libenge','fa900d38-0dd9-472c-a619-37608ec01080','2024-01-25 09:25:14','2024-01-25 09:25:14'),('98b4f707-5c8a-454d-958c-8de2e5cb39f5','Mwene-Ditu','75ab4b46-a348-43e1-b41a-ccb9114686bc','2024-01-25 09:25:14','2024-01-25 09:25:14'),('990a7543-c2f5-4d0f-866c-0df1fd0f5670','Butembo','de2d1599-badd-42d9-894a-8063ce1dc779','2024-01-25 09:25:14','2024-01-25 09:25:14'),('9ba8bb4c-ffb5-4415-8e12-97e3216e5619','Mbanza-Ngungu','274a23cb-a720-408b-9237-900b48540776','2024-01-25 09:25:14','2024-01-25 09:25:14'),('9d408077-18d5-4f2e-b357-6047dcb583e1','Boende','c8b16744-7aeb-4684-8695-30824e1b7922','2024-01-25 09:25:14','2024-01-25 09:25:14'),('9d49d452-b4c0-40b3-acb8-1eb091b20d7a','Bunia','3c9b263b-bf18-4cb7-bc41-6aa51a24f82b','2024-01-25 09:25:13','2024-01-25 09:25:13'),('9e74a486-cb6d-4afd-965a-aa1496745a93','Haut Katanga','06a1b824-19ee-4e7c-9d39-076cadb3c6b5','2024-01-25 09:25:13','2024-01-25 09:25:13'),('9f781fcc-f030-4856-93bd-b9e411082398','Mushie','dde9a53f-e02a-484f-b82f-39a77df22c4e','2024-01-25 09:25:14','2024-01-25 09:25:14'),('a0f769da-5c8f-4fca-aed1-e195839ff275','Luebo','f5202319-ccbd-4703-8a31-c1c93b28f4cb','2024-01-25 09:25:13','2024-01-25 09:25:13'),('a6242e6d-d3e2-4ec5-bf9b-0df32d6b1539','Sake','de2d1599-badd-42d9-894a-8063ce1dc779','2024-01-25 09:25:14','2024-01-25 09:25:14'),('b1de1b66-4765-4286-b8e3-0e6b344cce52','Matadi','274a23cb-a720-408b-9237-900b48540776','2024-01-25 09:25:14','2024-01-25 09:25:14'),('b980a75f-18eb-45ff-bf5b-a9c949a75569','Boma','274a23cb-a720-408b-9237-900b48540776','2024-01-25 09:25:13','2024-01-25 09:25:13'),('ba3a43da-a5f3-4080-abde-b65feada7010','Bongandanga','fa900d38-0dd9-472c-a619-37608ec01080','2024-01-25 09:25:14','2024-01-25 09:25:14'),('bda62c24-269d-404c-a324-81053aee3935','Bondo','0bc9244e-9ec6-4bca-a575-c6c27c59a201','2024-01-25 09:25:13','2024-01-25 09:25:13'),('be464f9a-be47-434f-b017-791ef06294d1','Kikwit','03ca9bf1-39b7-4d5c-8881-c0eb58b8fcc8','2024-01-25 09:25:14','2024-01-25 09:25:14'),('bf998158-aeba-473f-8414-865d41f633d3','Nioki','dde9a53f-e02a-484f-b82f-39a77df22c4e','2024-01-25 09:25:14','2024-01-25 09:25:14'),('c8a4e216-4301-4f9e-9a3b-c5660468a596','Kindu','6493e17a-034c-4a0b-9cd8-2448378d28d1','2024-01-25 09:25:14','2024-01-25 09:25:14'),('cd97fa43-4a62-4aa1-911f-54768c475376','Kalemie','d6ecb019-e8c3-4058-b9b3-7fe9b3f9e1d3','2024-01-25 09:25:14','2024-01-25 09:25:14'),('cefe7691-95ac-4722-8616-64f0e7ce398e','Goma','de2d1599-badd-42d9-894a-8063ce1dc779','2024-01-25 09:25:14','2024-01-25 09:25:14'),('d06db5ab-e21e-4fae-b717-c09638c5eb48','Ilebo','f5202319-ccbd-4703-8a31-c1c93b28f4cb','2024-01-25 09:25:13','2024-01-25 09:25:13'),('d09262d1-49cb-41da-9e6b-0cca745949eb','Uvira','364b7026-7b44-4534-adf2-957016b71779','2024-01-25 09:25:14','2024-01-25 09:25:14'),('d47c36b8-e7b4-4f85-8b34-676c1cacbdeb','Lukolela','a1dda58c-8a55-4130-8764-2cf78755db59','2024-01-25 09:25:13','2024-01-25 09:25:13'),('d8c05c23-624d-4465-a16a-911876808272','Mbuji-Mayi','86255d14-5cac-468e-a33e-e6a915507505','2024-01-25 09:25:13','2024-01-25 09:25:13'),('d984c2b1-fada-4c63-b1a6-1d77e198f873','Bolobo','dde9a53f-e02a-484f-b82f-39a77df22c4e','2024-01-25 09:25:14','2024-01-25 09:25:14'),('e00ef7a9-4008-4229-b8de-a0b137e76b6d','Yangambi','c954f9a2-b75b-4d09-801c-6469bdac2447','2024-01-25 09:25:14','2024-01-25 09:25:14'),('e32b23be-de3f-4d7a-a5df-c6eef71e1c70','Tshikapa','f5202319-ccbd-4703-8a31-c1c93b28f4cb','2024-01-25 09:25:13','2024-01-25 09:25:13'),('e583f2ce-df92-4151-99cd-097dbfc34bd2','Kampene','6493e17a-034c-4a0b-9cd8-2448378d28d1','2024-01-25 09:25:14','2024-01-25 09:25:14'),('e6a856cc-91e8-4baa-b442-24afe45bd8f4','Lubumbashi','06a1b824-19ee-4e7c-9d39-076cadb3c6b5','2024-01-25 09:25:13','2024-01-25 09:25:13'),('e7ceabee-74a8-4912-b7ba-3b860444444b','Gemena','a1dda58c-8a55-4130-8764-2cf78755db59','2024-01-25 09:25:13','2024-01-25 09:25:13'),('e96ede3c-016a-42cf-88a3-efbc3606a9d6','Mangai','03ca9bf1-39b7-4d5c-8881-c0eb58b8fcc8','2024-01-25 09:25:14','2024-01-25 09:25:14'),('ec4f7e1e-8eea-405e-af07-1b2f3cee8fee','Lodja','a3cb60cc-61d1-4ada-b39c-aebd383413ca','2024-01-25 09:25:14','2024-01-25 09:25:14'),('eeca7c8c-292e-43ea-a547-975a8eb764f9','Businga','d0e91a66-65f4-44a0-93f9-3ba73c27ee26','2024-01-25 09:25:14','2024-01-25 09:25:14'),('f46907ce-2b78-46e3-8208-d4128800d0f0','Kabinda','86255d14-5cac-468e-a33e-e6a915507505','2024-01-25 09:25:13','2024-01-25 09:25:13'),('f834b8ee-63f1-4596-a0a8-39fc94b63c5e','Bukama','f630a635-77d1-4232-8395-6aae8ccd4235','2024-01-25 09:25:13','2024-01-25 09:25:13');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint unsigned NOT NULL,
  `section_id` bigint unsigned NOT NULL,
  `school_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classes_level_id_foreign` (`level_id`),
  KEY `classes_section_id_foreign` (`section_id`),
  KEY `classes_school_id_foreign` (`school_id`),
  CONSTRAINT `classes_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `classes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `classes_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('02a52213-a5ae-4ca7-8d1d-06732d675e8c',2,2,'a4c0af21-f779-4c7a-84a1-43058d7eb286','Tempore exercitationem voluptatem et ut quia. Eveniet optio praesentium et sed. Adipisci sunt dolores quis et. Iusto sint qui fugit et.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('10a10614-1c1a-479b-88c5-93e99e8eea79',4,2,'da235278-a468-447f-9d0f-13345aeecd09','Sit enim beatae impedit impedit rerum non est consequatur. Et tempore ad dolorem est non excepturi.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('15961c1e-f75a-4a26-bd8b-3812fb6e7622',1,1,'a4c0af21-f779-4c7a-84a1-43058d7eb286','Tenetur est fugiat dolorem voluptatum nobis unde optio. Qui aliquam sit autem blanditiis ullam natus. Id vero fugiat nihil quidem illo assumenda. Minima nihil nisi est unde ipsam deleniti numquam.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('18eceb7a-3c20-465b-9373-a7ade93bdccb',1,2,'85c351d0-fb4b-49bd-b738-c85b3344ddb8','Temporibus veritatis quis voluptas nam. Qui dolor et et temporibus aut maiores. Dignissimos atque deleniti sequi.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('18f013b7-095f-42ce-a639-495e19ba03d0',4,2,'629f620c-3132-4c13-bb07-9a1f001bd3fe','Facilis recusandae voluptatem dolorum mollitia optio sit. At et deserunt ad ut. Officiis dolore qui et qui numquam. Esse praesentium reiciendis praesentium.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('22f9cf1e-4697-40fa-b46b-2cab09caafc6',2,3,'85c351d0-fb4b-49bd-b738-c85b3344ddb8','Accusamus et non quam et. Non ab non quo sequi. Impedit sed repellat dolore laborum aut occaecati. Sit optio quos tenetur similique officia facere temporibus. Ipsa quibusdam error tempore sed.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('23f475be-b7b1-4ab6-97b6-4656a58e7639',3,1,'c44ed683-2368-4627-b7c6-8b402fea8ea8','Sint itaque sed fugit et. Atque aut et suscipit praesentium ut. Consequatur voluptas consequatur excepturi et voluptatem libero.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('26293553-aa41-4a50-94da-b1c51360cb10',4,1,'2e8b1339-712f-44c8-857e-0386b42d3fc3','Dignissimos culpa sunt dolor molestias iusto. Maxime voluptas eius natus possimus ratione itaque soluta neque. Architecto consequatur voluptate nobis reiciendis ut quia quia.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('27e15c52-f49c-4955-87d9-98586e16df70',2,1,'3bd2b602-d801-429a-b505-da5309d67f8f','Est voluptate earum sint est repellat voluptatem ut amet. Soluta tenetur sint ut optio. Quam nemo illum minima eos expedita explicabo tempora.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('316c0f46-d80e-41ab-8edd-36dbb79ea703',3,3,'2e8b1339-712f-44c8-857e-0386b42d3fc3','Aut sunt eligendi laboriosam molestiae. Rerum rerum et sit rerum at incidunt omnis dolor. Ratione in commodi ut veritatis voluptate vel.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('3233ca0f-b417-4715-a934-f47631b2c5bf',3,3,'da235278-a468-447f-9d0f-13345aeecd09','Enim nihil ut nostrum ratione. Suscipit consequuntur explicabo enim alias sint et id. Nemo minima fuga fuga omnis ut error praesentium. Nobis eos ut asperiores ab.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('379bdf9b-3ddb-4e4a-b04a-ba42ac0718c7',2,1,'85c351d0-fb4b-49bd-b738-c85b3344ddb8','Ea quasi laborum illum doloremque quis et nemo eum. Assumenda id quia rerum quis est. Optio necessitatibus id est est.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('38eadf0f-7481-4c21-935a-981186293583',1,2,'2e8b1339-712f-44c8-857e-0386b42d3fc3','Ipsam et et quae est illum. Incidunt debitis incidunt sit temporibus ab. Nihil et dolores neque ducimus eaque voluptatum id. Officia qui magni sit reiciendis quia veniam.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('3f2b7931-be20-4873-9821-0fbae8184553',3,1,'629f620c-3132-4c13-bb07-9a1f001bd3fe','Qui libero qui cumque reprehenderit consectetur totam rerum aliquid. Ipsa iure sit commodi nostrum. Omnis animi praesentium dignissimos perferendis.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('453e8d72-e501-4fcb-aeb3-3994c9fd51fe',1,2,'c44ed683-2368-4627-b7c6-8b402fea8ea8','Vel laudantium minus aliquam a et nisi. Omnis non veritatis pariatur. Facere distinctio iusto nesciunt tempore illo dolor a et. Molestiae ad sunt quaerat provident facilis.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('51c5668b-c588-439b-b3bd-2e4ae54ac2aa',3,1,'a4c0af21-f779-4c7a-84a1-43058d7eb286','Exercitationem ex debitis aut. Iusto velit corrupti quam blanditiis. Eaque earum dolorem eaque similique deleniti. Tenetur minima autem aut dolorum ea fuga veniam.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('5bb2e731-c2cd-4cce-af2a-007e267ead18',5,1,'da235278-a468-447f-9d0f-13345aeecd09','Molestiae qui quasi voluptate fugiat adipisci accusantium magni. Vel vel incidunt consequatur voluptatem alias. Et sit eius nostrum doloribus. Qui atque labore omnis quod praesentium quo impedit est.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('5c48defd-dc6d-4684-bc5d-62f181959e9a',5,2,'629f620c-3132-4c13-bb07-9a1f001bd3fe','Et porro tempora non totam excepturi expedita. Quidem eos facilis porro aliquam veniam inventore quasi officiis.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('5f85cf43-6a4a-4af6-9189-0eb523f2b331',3,3,'2e8b1339-712f-44c8-857e-0386b42d3fc3','Porro dolor assumenda neque itaque. Culpa nihil fuga omnis eum. Et molestiae accusantium provident quaerat modi.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('64f41d5f-8c2d-4ae2-88fc-ec430feffad4',6,1,'307020fd-feab-4045-8213-0583324f5a7a','In necessitatibus porro sint temporibus. Nobis ab eos ipsum ut neque. Facere rerum commodi qui ut.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('682e501c-cbe1-4aed-bb42-4353c441be14',3,1,'085b13aa-ff1c-473e-9c19-4c17cc67b426','Pariatur accusamus est ut voluptates sed omnis nihil. Non eius laboriosam consequatur. Expedita id nemo et minima molestias est qui.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('6a118974-fd25-49a3-91e1-310e39138859',5,2,'a4c0af21-f779-4c7a-84a1-43058d7eb286','Aut consequatur et magnam dolorem. Odit consequuntur nisi officia eveniet. Officiis enim sunt sequi dolor quo rerum. Voluptatem alias rerum minus explicabo veniam consequuntur suscipit.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('7612a27d-3b5e-4302-98ac-1f2685006f4e',1,2,'92ac400c-d609-475a-a76b-0ec05c5a9d8f','Quis aut ratione repudiandae ducimus. Corrupti est suscipit molestias aliquam occaecati odio qui culpa. Dolor id autem aliquid modi doloremque non doloremque.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('7a606e2c-da9b-4f15-a921-fb963a6e6d8e',5,1,'b7131ad9-c1b0-4a4b-975b-7676fb296203','Officia iste quia sequi voluptates quis voluptatum sed. Laborum eaque consequatur natus mollitia delectus. Recusandae neque eius impedit qui deserunt.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('7bb8179b-9aa9-410c-b7c0-dcc3455dfaf8',5,2,'307020fd-feab-4045-8213-0583324f5a7a','Asperiores in illo maiores ut cupiditate quasi. Provident reiciendis et maiores ipsum quia est. Accusamus voluptate quos ad architecto. Odio quam ipsam incidunt vel illo quasi aut.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('7bed821a-6695-4107-ad29-0676781d4df2',5,1,'307020fd-feab-4045-8213-0583324f5a7a','Cumque amet sunt reiciendis. Ut distinctio ea animi sequi. Pariatur voluptatem sequi voluptates similique. Enim corporis consectetur veritatis exercitationem nostrum ullam consequuntur.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('7c8116c3-e12c-4053-97ce-91a9498ab12b',5,3,'64d56ec3-8ddd-4522-b583-deac6e353096','Fuga ea aut tempore atque iusto est. Sunt nostrum facilis dolorem quis. Velit quaerat et inventore vel tempora ea.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('7e08b0a5-5644-4f83-b8f6-d24959ac1829',3,1,'da235278-a468-447f-9d0f-13345aeecd09','Quia nostrum id amet quos. Unde deserunt rerum est et aut dolor. Consequuntur esse inventore et et cum.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('80cadb59-b7c9-416e-b083-7ae7a7f23a8d',2,3,'676a6520-1d1c-4af9-bacc-b156492c885d','Aut enim unde est ut voluptas harum. Incidunt possimus tempore cupiditate tempora. Impedit non libero beatae.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('86687896-f092-4268-9680-617f78213769',6,3,'64d56ec3-8ddd-4522-b583-deac6e353096','Doloribus et et ab sequi sit mollitia enim dignissimos. Sapiente amet distinctio doloribus voluptate deserunt sed optio. Iure eveniet minus et quia odio.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('89962be6-5f0e-429c-86f5-2468717d90f1',4,2,'676a6520-1d1c-4af9-bacc-b156492c885d','In dolorem eius natus et ad voluptas. Pariatur officiis consectetur dicta odit. Ex est velit nesciunt consequatur dolorem.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('917e2273-a86a-4f8f-8a99-e87117f120ed',5,3,'64d56ec3-8ddd-4522-b583-deac6e353096','Sunt eos quo et quia velit. In delectus perspiciatis ipsa et. Voluptatem cum aut iure quo repellat.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('94a531df-134b-4fe9-bf77-e44ae6738635',5,2,'cce3db99-4bcf-4770-ac8f-f47d5a30ed61','Et eius saepe quae fuga commodi qui qui. Accusantium aspernatur libero veritatis neque aut ad aut. Neque quia voluptatem ut consectetur soluta labore. Aperiam cumque et ex voluptas.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('9e6f742d-7fff-4a7e-91aa-e39b75ae7a0c',4,3,'85c351d0-fb4b-49bd-b738-c85b3344ddb8','Ut rerum est cumque ut fugit cumque. Esse eos eum dolorem vero in est voluptas. Ea totam adipisci quidem et.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('a534651e-433d-4bc6-a1bb-da0cd286ccbd',4,1,'b7131ad9-c1b0-4a4b-975b-7676fb296203','Fugiat repellendus suscipit dicta sapiente minima. Tempora nihil dolores in repellat magnam deleniti. Voluptas aliquid dolorum assumenda autem fuga rerum excepturi quos.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('a93c1d0f-d46c-4552-b457-cc15bdabdee2',2,1,'da235278-a468-447f-9d0f-13345aeecd09','Labore repudiandae nostrum est error corrupti. Optio voluptatem provident totam qui. Possimus nisi iste blanditiis laboriosam ut velit magni.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('b46d359b-cb88-4c69-96ca-60e68b0f5a74',4,2,'085b13aa-ff1c-473e-9c19-4c17cc67b426','Doloremque a quia facilis vel. Quia sint tempore vitae eum minus. Blanditiis excepturi repellat nam illo dolores. Perspiciatis consequuntur dolorem saepe nemo magni tenetur enim.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('b79d0161-4c07-4da1-b566-0a0406f58696',4,2,'da235278-a468-447f-9d0f-13345aeecd09','A velit beatae eum ea ut voluptatem. Temporibus id ut est. Magni dolor quisquam reprehenderit voluptas quis. Et rerum voluptatem non iste aliquam. Beatae ea consequatur quia.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('baf381b7-7e91-4d50-93e0-dbb25eb573f8',6,1,'cce3db99-4bcf-4770-ac8f-f47d5a30ed61','Cum nulla assumenda eveniet. Quidem soluta ea illum ut. Repellendus aperiam sit in ut omnis. Quo et sit molestiae modi repellendus eveniet a.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('bd790641-b3f4-40e4-8d64-4e42e514d462',6,3,'e79a7355-ba24-466e-8cc2-54fa939d08e5','Asperiores sit dolorem animi libero possimus odio sapiente occaecati. Occaecati voluptas quia porro vel distinctio hic unde ut. Eos quia aut ipsam est.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('cf4f70ca-4ffc-45eb-845e-62e944a610fe',6,3,'a4c0af21-f779-4c7a-84a1-43058d7eb286','Necessitatibus quia consequatur adipisci alias quia repellendus. Et esse dolores nemo aut dolores enim. Provident inventore sunt rerum aut eligendi. Qui quae sit maxime ratione.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('d27021ea-95df-4b9e-a049-6424898a28ff',4,1,'cce3db99-4bcf-4770-ac8f-f47d5a30ed61','Animi alias expedita molestias iusto ut. Maxime sit quis quia amet quis. Non molestiae distinctio sunt laudantium delectus quis dolorem. Veritatis quas adipisci possimus adipisci voluptatum a.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('d429c58c-737d-4893-b052-ae0925958262',1,2,'92ac400c-d609-475a-a76b-0ec05c5a9d8f','Sed et quisquam illum atque dolores et. Enim eos soluta qui aperiam. Excepturi tenetur ducimus neque amet temporibus sit qui.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('e665b766-dc31-44a1-9eda-54328b1e90e2',2,3,'b7131ad9-c1b0-4a4b-975b-7676fb296203','Repellat omnis neque libero rerum corrupti asperiores. Sed rem qui atque totam enim voluptas. Suscipit voluptatum nisi consequatur voluptas quod non.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('eb9c8b1c-1c9a-45da-b1c0-75ad2de8a757',3,2,'0bd3cda1-bf05-4018-b7d0-622d9a28dd44','Iste quam nam sunt est eum maiores voluptatem. Fugiat eum optio maiores sit sunt. Labore a beatae possimus blanditiis.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('ebf0887d-ba82-40f3-a034-2c412db17417',4,3,'307020fd-feab-4045-8213-0583324f5a7a','Necessitatibus eos consequatur quia et saepe. Ut et error occaecati maxime itaque blanditiis. Consequatur nisi fugit est asperiores.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('f1dbb1bc-5ce1-4946-b079-24e4b0b56eb7',2,1,'e79a7355-ba24-466e-8cc2-54fa939d08e5','Aut laborum beatae ipsum sequi. Quibusdam et et exercitationem aut. Praesentium modi est itaque nostrum.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('f8137089-62c9-4df1-978a-3dc911f93749',4,1,'4dd63281-12b6-4e5f-bc25-9e0798218a96','Et dicta provident nisi vel culpa totam. Dolorum reiciendis explicabo necessitatibus amet. Quas a aut rerum numquam vel quae iste ad.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('f8243cc1-c3f8-43a6-a943-87b06bb8f4aa',3,1,'0bd3cda1-bf05-4018-b7d0-622d9a28dd44','Ea et sit eligendi dignissimos rerum facere. Et iste velit quis rerum a sit minus temporibus. Consectetur deleniti quo sed porro doloremque at provident.','2024-01-29 09:06:36','2024-01-29 09:06:36'),('fad60295-77de-42fc-aa7f-8b67dbe6912c',1,3,'da235278-a468-447f-9d0f-13345aeecd09','Amet ab voluptatibus fugit officia. Aut culpa aut aliquid dolor et non. Id sit a asperiores occaecati repudiandae. Cum ut provident ab velit omnis dignissimos inventore.','2024-01-29 09:06:36','2024-01-29 09:06:36');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coefficient` int NOT NULL,
  `teacher_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `courses_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'homme',NULL,NULL),(2,'femme',NULL,NULL);
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_student`
--

DROP TABLE IF EXISTS `guardian_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guardian_student` (
  `guardian_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `guardian_student_guardian_id_foreign` (`guardian_id`),
  KEY `guardian_student_student_id_foreign` (`student_id`),
  CONSTRAINT `guardian_student_guardian_id_foreign` FOREIGN KEY (`guardian_id`) REFERENCES `guardians` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `guardian_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_student`
--

LOCK TABLES `guardian_student` WRITE;
/*!40000 ALTER TABLE `guardian_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardians`
--

DROP TABLE IF EXISTS `guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guardians` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guardians_profession_id_foreign` (`profession_id`),
  CONSTRAINT `guardians_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardians`
--

LOCK TABLES `guardians` WRITE;
/*!40000 ALTER TABLE `guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'premier(e)','1',NULL,NULL),(2,'deuxième','2',NULL,NULL),(3,'troisième','3',NULL,NULL),(4,'quatrième','4',NULL,NULL),(5,'cinquième','5',NULL,NULL),(6,'sixième','6',NULL,NULL);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(9,'2024_01_25_095113_create_provinces_table',2),(10,'2024_01_25_095135_create_cities_table',2),(11,'2024_01_25_102718_create_schools_table',3),(12,'2024_01_25_104414_create_levels_table',3),(16,'2024_01_25_104506_create_sections_table',4),(17,'2024_01_25_104618_create_classes_table',4),(18,'2024_01_25_105547_create_genders_table',4),(19,'2024_01_25_105722_create_guardians_table',4),(20,'2024_01_25_105737_create_students_table',4),(21,'2024_01_25_112121_create_pivot_table_guardian_student',5),(22,'2024_01_25_112624_create_professions_table',6),(23,'2024_01_29_095620_remove_column_province_id_in_schools_table',7),(44,'2024_01_29_101810_remove_commun_columns_in_students_table',8),(45,'2024_01_29_102451_create_roles_table',8),(46,'2024_01_29_102737_create_teachers_table',8),(47,'2024_01_29_102833_create_courses_table',8),(58,'2024_01_29_103215_update_columns_in_users_table',9),(59,'2024_01_29_105632_create_priorities_table',9),(60,'2024_01_29_105812_add_priority_columns_in_roles_table',10),(61,'2024_01_29_105957_create_pivot_table_role_user',10),(62,'2024_01_29_111010_update_columns_in_guardianss_table',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priorities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorities`
--

LOCK TABLES `priorities` WRITE;
/*!40000 ALTER TABLE `priorities` DISABLE KEYS */;
INSERT INTO `priorities` VALUES (1,'all',NULL,NULL),(2,'low',NULL,NULL),(3,'medium',NULL,NULL),(4,'high',NULL,NULL);
/*!40000 ALTER TABLE `priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professions`
--

LOCK TABLES `professions` WRITE;
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
INSERT INTO `professions` VALUES (1,'Etudiant','2023-11-21 10:04:47','2023-11-21 10:04:47'),(2,'Pasteur','2023-11-21 10:04:47','2023-11-21 10:04:47'),(3,'Menagère','2023-11-21 10:04:47','2023-11-21 10:04:47'),(4,'Téléconseiller','2023-11-21 10:04:47','2023-11-21 10:04:47'),(5,'Ingénieur logiciel','2023-11-21 10:04:47','2023-11-21 10:04:47'),(6,'Médecin','2023-11-21 10:04:47','2023-11-21 10:04:47'),(7,'Enseignant','2023-11-21 10:04:47','2023-11-21 10:04:47'),(8,'Avocat','2023-11-21 10:04:47','2023-11-21 10:04:47'),(9,'Architecte','2023-11-21 10:04:47','2023-11-21 10:04:47'),(10,'Comptable','2023-11-21 10:04:47','2023-11-21 10:04:47'),(11,'Infirmier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(12,'Artiste','2023-11-21 10:04:47','2023-11-21 10:04:47'),(13,'Journaliste','2023-11-21 10:04:47','2023-11-21 10:04:47'),(14,'Chef cuisinier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(15,'Policier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(16,'Pompier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(17,'Plombier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(18,'Électricien','2023-11-21 10:04:47','2023-11-21 10:04:47'),(19,'Entrepreneur','2023-11-21 10:04:47','2023-11-21 10:04:47'),(20,'Designer graphique','2023-11-21 10:04:47','2023-11-21 10:04:47'),(21,'Agriculteur','2023-11-21 10:04:47','2023-11-21 10:04:47'),(22,'Pharmacien','2023-11-21 10:04:47','2023-11-21 10:04:47'),(23,'Psychologue','2023-11-21 10:04:47','2023-11-21 10:04:47'),(24,'Scientifique de données','2023-11-21 10:04:47','2023-11-21 10:04:47'),(25,'Analyste financier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(26,'Ingénieur civil','2023-11-21 10:04:47','2023-11-21 10:04:47'),(27,'Écrivain','2023-11-21 10:04:47','2023-11-21 10:04:47'),(28,'Photographe','2023-11-21 10:04:47','2023-11-21 10:04:47'),(29,'Musicien','2023-11-21 10:04:47','2023-11-21 10:04:47'),(30,'Acteur','2023-11-21 10:04:47','2023-11-21 10:04:47'),(31,'Consultant en management','2023-11-21 10:04:47','2023-11-21 10:04:47'),(32,'Chauffeur de taxi','2023-11-21 10:04:47','2023-11-21 10:04:47'),(33,'Boulanger','2023-11-21 10:04:47','2023-11-21 10:04:47'),(34,'Agent immobilier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(35,'Athlète professionnel','2023-11-21 10:04:47','2023-11-21 10:04:47'),(36,'Traducteur','2023-11-21 10:04:47','2023-11-21 10:04:47'),(37,'Animateur radio/TV','2023-11-21 10:04:47','2023-11-21 10:04:47'),(38,'Assistant administratif','2023-11-21 10:04:47','2023-11-21 10:04:47'),(39,'Technicien de laboratoire','2023-11-21 10:04:47','2023-11-21 10:04:47'),(40,'Chirurgien-dentiste','2023-11-21 10:04:47','2023-11-21 10:04:47'),(41,'Développeur web','2023-11-21 10:04:47','2023-11-21 10:04:47'),(42,'Spécialiste des ressources humaines','2023-11-21 10:04:47','2023-11-21 10:04:47'),(43,'Juge','2023-11-21 10:04:47','2023-11-21 10:04:47'),(44,'Agent de voyage','2023-11-21 10:04:47','2023-11-21 10:04:47'),(45,'Conseiller financier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(46,'Directeur de projet','2023-11-21 10:04:47','2023-11-21 10:04:47'),(47,'Garde forestier','2023-11-21 10:04:47','2023-11-21 10:04:47'),(48,'Secrétaire','2023-11-21 10:04:47','2023-11-21 10:04:47'),(49,'Géologue','2023-11-21 10:04:47','2023-11-21 10:04:47'),(50,'Bibliothécaire','2023-11-21 10:04:47','2023-11-21 10:04:47'),(51,'Économiste','2023-11-21 10:04:47','2023-11-21 10:04:47'),(52,'Conducteur de bus','2023-11-21 10:04:47','2023-11-21 10:04:47'),(53,'Courtier en bourse','2023-11-21 10:04:47','2023-11-21 10:04:47'),(54,'Gestionnaire de projet','2023-11-21 10:04:47','2023-11-21 10:04:47'),(55,'Développeur informaticien','2023-11-21 11:42:15','2023-11-21 11:42:15');
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES ('03ca9bf1-39b7-4d5c-8881-c0eb58b8fcc8','Kwilu','2024-01-25 09:25:14','2024-01-25 09:25:14'),('06a1b824-19ee-4e7c-9d39-076cadb3c6b5','Haut-Katanga','2024-01-25 09:25:13','2024-01-25 09:25:13'),('0bc9244e-9ec6-4bca-a575-c6c27c59a201','Bas-Uélé','2024-01-25 09:25:13','2024-01-25 09:25:13'),('274a23cb-a720-408b-9237-900b48540776','Kongo Central','2024-01-25 09:25:13','2024-01-25 09:25:13'),('3235809a-607a-41cf-aedb-807cbf3444b8','Kwango','2024-01-25 09:25:14','2024-01-25 09:25:14'),('364b7026-7b44-4534-adf2-957016b71779','Sud-Kivu','2024-01-25 09:25:14','2024-01-25 09:25:14'),('3c9b263b-bf18-4cb7-bc41-6aa51a24f82b','Ituri','2024-01-25 09:25:13','2024-01-25 09:25:13'),('4c6af4e8-fe77-459f-a635-49827dfbe86a','Mongala','2024-01-25 09:25:14','2024-01-25 09:25:14'),('6493e17a-034c-4a0b-9cd8-2448378d28d1','Maniema','2024-01-25 09:25:14','2024-01-25 09:25:14'),('6ab2b671-15dc-4dc2-952b-e32a924629d7','Kinshasa','2024-01-25 09:25:13','2024-01-25 09:25:13'),('723ad81a-efe3-4b12-8d1a-0b92801e7841','Haut-Uélé','2024-01-25 09:25:13','2024-01-25 09:25:13'),('75ab4b46-a348-43e1-b41a-ccb9114686bc','Lomami','2024-01-25 09:25:14','2024-01-25 09:25:14'),('86255d14-5cac-468e-a33e-e6a915507505','Kasaï Oriental','2024-01-25 09:25:13','2024-01-25 09:25:13'),('a1dda58c-8a55-4130-8764-2cf78755db59','Équateur','2024-01-25 09:25:13','2024-01-25 09:25:13'),('a3cb60cc-61d1-4ada-b39c-aebd383413ca','Sankuru','2024-01-25 09:25:14','2024-01-25 09:25:14'),('b4022db7-133f-4a3f-8285-ab08a3f0afcc','Lualaba','2024-01-25 09:25:14','2024-01-25 09:25:14'),('c8b16744-7aeb-4684-8695-30824e1b7922','Tshuapa','2024-01-25 09:25:14','2024-01-25 09:25:14'),('c954f9a2-b75b-4d09-801c-6469bdac2447','Tshopo','2024-01-25 09:25:14','2024-01-25 09:25:14'),('d0e91a66-65f4-44a0-93f9-3ba73c27ee26','Nord-Ubangi','2024-01-25 09:25:14','2024-01-25 09:25:14'),('d6ecb019-e8c3-4058-b9b3-7fe9b3f9e1d3','Tanganyika','2024-01-25 09:25:14','2024-01-25 09:25:14'),('dde9a53f-e02a-484f-b82f-39a77df22c4e','Mai-Ndombe','2024-01-25 09:25:14','2024-01-25 09:25:14'),('de2d1599-badd-42d9-894a-8063ce1dc779','Nord-Kivu','2024-01-25 09:25:14','2024-01-25 09:25:14'),('f5202319-ccbd-4703-8a31-c1c93b28f4cb','Kasaï','2024-01-25 09:25:13','2024-01-25 09:25:13'),('f630a635-77d1-4232-8395-6aae8ccd4235','Haut-Lomami','2024-01-25 09:25:13','2024-01-25 09:25:13'),('fa900d38-0dd9-472c-a619-37608ec01080','Sud-Ubangi','2024-01-25 09:25:14','2024-01-25 09:25:14'),('fde1f64f-cdb4-45ec-8f6f-9f2009308ea2','Kasaï Central','2024-01-25 09:25:13','2024-01-25 09:25:13');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `role_user_user_id_foreign` (`user_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_priority_id_foreign_idx` (`priority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrateur',NULL,NULL,0),(2,'Teacher',NULL,NULL,0),(3,'Student',NULL,NULL,0),(4,'Guardian',NULL,NULL,0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schools_city_id_foreign` (`city_id`),
  CONSTRAINT `schools_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES ('085b13aa-ff1c-473e-9c19-4c17cc67b426','Osinski LLC','(629) 735-9484','71347 Brandy Stravenue\nAmayaport, DC 19195','f46907ce-2b78-46e3-8208-d4128800d0f0','Crona','531.250.2852','145 Janet Mills Apt. 546\nNorth Lois, RI 75290-8298','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('0bd3cda1-bf05-4018-b7d0-622d9a28dd44','Herzog, Wisoky and Kunze','+17575493327','7886 Champlin Isle Apt. 913\nFaytown, MT 97201','d47c36b8-e7b4-4f85-8b34-676c1cacbdeb','Ruecker','+12072025969','3427 Bosco Forge\nPort Ashlynnfurt, GA 49393-0024','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('215beb77-1520-495f-856e-2ff64645a269','Stroman-Schowalter','+1.662.699.0562','18619 Steuber Fords Apt. 016\nMurrayborough, NY 92149-2269','e96ede3c-016a-42cf-88a3-efbc3606a9d6','Williamson','(850) 658-1562','89088 Sherwood Trail Suite 620\nNoelberg, AZ 09452-7457','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('2e8b1339-712f-44c8-857e-0386b42d3fc3','Hermiston, O\'Reilly and Lebsack','+1-505-883-2897','119 Noelia Mill\nHammesfurt, IL 74468-8103','9ba8bb4c-ffb5-4415-8e12-97e3216e5619','Schinner','+1.480.410.9911','30454 Gusikowski Grove\nWest Toy, CA 03193-1195','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('307020fd-feab-4045-8213-0583324f5a7a','Grady Ltd','+15642773297','4463 Gunnar Harbors\nEast Rashadburgh, UT 51645','5936e501-e790-4fc9-8402-7e336b960338','Pouros','540.847.0596','591 Williamson Ports\nSouth Mariah, DE 04545-2677','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('3bd2b602-d801-429a-b505-da5309d67f8f','Corwin-Heidenreich','(934) 973-0359','87430 Kutch Extension Apt. 676\nWest Hannaburgh, VA 37495','63395a71-885d-40ac-8b0d-58469fd88707','Reilly','1-317-439-5486','2275 Wolff Mews Apt. 893\nPort Orvalstad, KS 40704-8914','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('4dd63281-12b6-4e5f-bc25-9e0798218a96','Schoen-Hartmann','1-803-881-3030','3943 Ruecker Crest Suite 605\nAbernathyborough, WI 04255-6982','e6a856cc-91e8-4baa-b442-24afe45bd8f4','Runolfsdottir','+1 (410) 323-6642','275 Kuvalis Rapid\nNorth Korey, RI 50974-3284','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('629f620c-3132-4c13-bb07-9a1f001bd3fe','Batz, Windler and Swaniawski','+1.661.736.6787','61165 Miller Orchard Suite 074\nEast Loma, NC 53931-8517','5936e501-e790-4fc9-8402-7e336b960338','Osinski','+1.541.719.6582','779 Jeremie Ford Apt. 593\nNorth Joany, FL 87685','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('64d56ec3-8ddd-4522-b583-deac6e353096','Ritchie Ltd','+1.248.897.2278','256 Mante Port Suite 694\nWisokybury, GA 05394','1229f920-c533-4362-8391-add3840466a0','Klein','820.392.3898','812 Feest Landing Apt. 723\nNew Tadmouth, NV 31488','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('676a6520-1d1c-4af9-bacc-b156492c885d','Walter-Kling','351.201.9438','9890 Weimann Mills Apt. 046\nRosalindberg, VT 29804-0323','15e7f7ff-25e1-4232-a34d-1d06f79d5f1d','Rau','458-459-5031','17833 Novella Curve Apt. 326\nWestbury, NC 63544-2562','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('85c351d0-fb4b-49bd-b738-c85b3344ddb8','Turcotte, Wolf and Lindgren','+1 (330) 850-7114','809 Gutmann Summit\nCasperview, DC 06533','b980a75f-18eb-45ff-bf5b-a9c949a75569','Herzog','240.206.4453','37068 Ward Mountains\nBoehmhaven, LA 25020','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('92ac400c-d609-475a-a76b-0ec05c5a9d8f','Weimann, Stanton and Graham','(352) 620-8851','280 Crooks Tunnel Apt. 257\nChristinachester, MA 46377-7973','cefe7691-95ac-4722-8616-64f0e7ce398e','Keebler','+1-352-870-4311','323 Susan Manors Apt. 790\nGoldnermouth, TN 69786-3950','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('a4c0af21-f779-4c7a-84a1-43058d7eb286','Rosenbaum-Connelly','(762) 425-7797','993 Santiago Mission Suite 233\nConroyside, WA 55897','57dc43a6-2252-4281-8ad7-e1b772dcca3c','Wilderman','1-283-566-2023','4738 Grady Glen Apt. 170\nGrahamstad, TX 91475-7547','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('b663b40d-2faa-4eab-a254-339da60564b1','Brown Inc','+1 (475) 965-9645','79940 Ledner Views\nGusikowskitown, KY 83428-7890','6ccdc8e1-393e-4859-98f1-6d48e04f4ef2','Reilly','(208) 232-6911','5113 Conrad Spring\nWest Makenzieburgh, IA 52335-1350','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('b7131ad9-c1b0-4a4b-975b-7676fb296203','Yundt-Kohler','+1-434-514-5271','499 Arden Brooks Apt. 430\nEast Trentonshire, NM 74307','f46907ce-2b78-46e3-8208-d4128800d0f0','Tillman','(925) 330-4087','14948 Laura Orchard\nAniyahview, MN 02819','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('b882dea6-6b39-49d6-b7de-e32c49202c78','Kris-Reinger','+1-530-309-3154','671 Spencer Ways\nLylaside, CA 99106-4168','74a5f524-6533-4c61-b880-14508ae3dcbd','Rohan','952.947.4114','6516 Gregory Valley Apt. 929\nSouth Xzavier, MD 43947-7278','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('c44ed683-2368-4627-b7c6-8b402fea8ea8','Quitzon Group','+1 (239) 221-3377','301 Schultz Meadow Apt. 883\nWilliamsonborough, DC 26738-8656','f834b8ee-63f1-4596-a0a8-39fc94b63c5e','Rice','423.695.9567','2687 Trantow Courts\nArlenestad, MA 13027','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('cce3db99-4bcf-4770-ac8f-f47d5a30ed61','Schulist LLC','(253) 715-0729','926 Armstrong Creek\nPort Bartfurt, HI 77721-5167','8cee68c6-7a5e-4910-bb59-a37398c3dc25','Bergstrom','+1 (650) 823-0456','75159 Bogan Squares Apt. 483\nDeckowtown, PA 23977','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('da235278-a468-447f-9d0f-13345aeecd09','D\'Amore Inc','301.961.7938','13303 Fiona Meadow Apt. 298\nKiehnland, MT 11746','c8a4e216-4301-4f9e-9a3b-c5660468a596','Wolff','561-562-3986','63671 Raquel Run Suite 635\nJabariton, MD 80664-6691','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02',''),('e79a7355-ba24-466e-8cc2-54fa939d08e5','Koepp-Grady','+1.601.783.5244','5231 Wehner Causeway Suite 364\nSouth Yasmeenport, AL 99706-7335','5936e501-e790-4fc9-8402-7e336b960338','Schiller','+1 (747) 543-8252','9118 Oswald Circle\nHalvorsonton, KY 56253','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2024-01-29 09:00:02','2024-01-29 09:00:02','');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'primaire',NULL,NULL),(2,'Cycle d\'orientation (CO)',NULL,NULL),(3,'Imanuté',NULL,NULL);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admission` date DEFAULT NULL,
  `classe_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_classe_id_foreign` (`classe_id`),
  CONSTRAINT `students_classe_id_foreign` FOREIGN KEY (`classe_id`) REFERENCES `classes` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postnom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` bigint unsigned NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date NOT NULL,
  `medical_history` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_gender_id_foreign` (`gender_id`),
  CONSTRAINT `users_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-29 17:58:08
