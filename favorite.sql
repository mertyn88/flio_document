-- flio.favorite definition

CREATE TABLE `favorite` (
  `uid` varchar(100) NOT NULL COMMENT '유저 ID',
  `product_id` int NOT NULL COMMENT '상품 ID',
  `is_favorite` char(1) DEFAULT 'Y' COMMENT '관심상품 Y/N',
  PRIMARY KEY (`uid`,`product_id`),
  UNIQUE KEY `unq_id` (`uid`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='관심상품';