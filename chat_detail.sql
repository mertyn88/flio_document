-- flio.chat_detail definition

CREATE TABLE `chat_detail` (
  `chat_seq` int NOT NULL COMMENT '채팅 시퀀스',
  `chat_source_message` varchar(1000) DEFAULT NULL COMMENT '채팅 본인이 상대에게 보낸 메세지',
  `chat_target_message` varchar(1000) DEFAULT NULL COMMENT '채팅 상대가 본인에게 보낸 메세지',
  `chat_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '채팅 메세지 시간'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='채팅 내역';