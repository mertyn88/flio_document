-- flio.board definition

CREATE TABLE `board` (
  `board_seq` int NOT NULL AUTO_INCREMENT COMMENT '게시판 시퀀스',
  `board_kind` enum('COMMUNITY','BOAST','SAMPLE1') DEFAULT NULL COMMENT '게시판 종류',
  `board_no` int DEFAULT NULL COMMENT '게시판 번호',
  `board_title` varchar(250) DEFAULT NULL COMMENT '게시판 제목',
  `board_content` longtext COMMENT '게시판 내용',
  `board_writer` varchar(50) DEFAULT NULL COMMENT '게시판 작성자',
  `board_img_url` varchar(100) DEFAULT NULL COMMENT '게시판 이미지 파일 경로',
  `board_img_origin_nm` varchar(100) DEFAULT NULL COMMENT '게시판 이미지 원본 파일이름',
  `board_img_destination_nm` varchar(100) DEFAULT NULL COMMENT '게시판 이미지 변환 파일이름',
  `reply_content` varchar(500) DEFAULT NULL COMMENT '댓글 내용',
  `reply_sort` int DEFAULT '0' COMMENT '댓글 정렬 번호',
  `reply_depth` int DEFAULT '0' COMMENT '댓글 깊이',
  `reg_date` datetime DEFAULT NULL COMMENT '게시판 등록일',
  `chg_date` datetime DEFAULT NULL COMMENT '게시판 수정일',
  PRIMARY KEY (`board_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='게시판';