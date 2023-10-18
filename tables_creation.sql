-- UT.click_partner definition

CREATE TABLE `click_partner` (
  `id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `clickSum` int DEFAULT NULL,
  `prtnerId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



-- UT.transactions definition

CREATE TABLE `transactions` (
  `transactionId` int DEFAULT NULL,
  `comission` int DEFAULT NULL,
  `partnerId` int DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




-- UT.partner definition

CREATE TABLE `partner` (
  `partnerId` int DEFAULT NULL,
  `partnerName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




-- UT.dim_date definition

CREATE TABLE `dim_date` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;