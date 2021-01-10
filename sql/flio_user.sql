-- flio.flio_user definition

CREATE TABLE `flio_user` (
  `user_seq` int NOT NULL AUTO_INCREMENT COMMENT '유저 시퀀스',
  `uid` varchar(100) NOT NULL COMMENT '유저 ID',
  `name` varchar(250) DEFAULT NULL COMMENT '유저 이름',
  `email` varchar(400) DEFAULT NULL COMMENT '유저 이메일 주소',
  `image_url` varchar(1000) DEFAULT NULL COMMENT '유저 이미지 주소',
  `message_token` varchar(4000) DEFAULT NULL COMMENT '메시 토큰',
  `reg_date` datetime DEFAULT NULL COMMENT '유저 등록일',
  `chg_date` datetime DEFAULT NULL COMMENT '유저 수정일',
  `is_login` char(1) NOT NULL DEFAULT 'N' COMMENT '로그인여부',
  PRIMARY KEY (`user_seq`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='유저';