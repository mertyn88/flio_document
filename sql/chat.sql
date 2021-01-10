-- flio.chat definition

CREATE TABLE `chat` (
  `chat_seq` int NOT NULL DEFAULT '0' COMMENT '채팅 시퀀',
  `product_id` varchar(250) NOT NULL COMMENT '물품 ID',
  `chat_source_uid` varchar(250) NOT NULL COMMENT '본인 UID',
  `chat_target_uid` varchar(250) NOT NULL COMMENT '상대 UID',
  PRIMARY KEY (`chat_seq`),
  UNIQUE KEY `unq_id` (`product_id`,`chat_source_uid`,`chat_target_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='채팅';