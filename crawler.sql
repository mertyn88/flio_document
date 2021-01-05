-- flio.crawler definition

CREATE TABLE `crawler` (
  `crawler_seq` int NOT NULL AUTO_INCREMENT COMMENT '크롤링 시퀀스',
  `crawler_doc_id` varchar(250) NOT NULL COMMENT '크롤링 문서번호',
  `crawler_base_url` varchar(250) DEFAULT NULL COMMENT '기본 주소',
  `crawler_target_url` varchar(400) DEFAULT NULL COMMENT '대상 주소',
  `crawler_keyword` varchar(250) DEFAULT NULL COMMENT '크롤링 검색 키워드',
  `crawler_title` varchar(400) DEFAULT NULL COMMENT '크롤링 타이틀',
  `crawler_image_path` varchar(400) DEFAULT NULL COMMENT '크롤링 이미지',
  `crawler_content` longtext COMMENT '크롤링 내용',
  `crawler_date` varchar(400) DEFAULT NULL COMMENT '크롤링 날짜',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '크롤링 등록',
  `chg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '크롤링 변경일',
  PRIMARY KEY (`crawler_seq`,`crawler_doc_id`),
  UNIQUE KEY `unique_id` (`crawler_title`)
) ENGINE=InnoDB AUTO_INCREMENT=7623 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='크롤링';