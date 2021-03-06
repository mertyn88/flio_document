# FLIO
FLIO Project 오디오 중고마켓

## 팀원 구성
- 안드로이드 개발자 : 이승철(https://github.com/slee8789)
- 서버 개발자 : 이준명(https://github.com/mertyn88)
- 디자이너 : 오채윤
- 기획 : 이효성, 황교욱

![수료식](./image/completion_ceremony.jpg)

## 작업 내역 노션 URL
> https://www.notion.so/FLIO-158db3cc5b224daeb16e8596254202f0

## 기획 피그마 URL
> https://www.figma.com/file/AmAQuoAYR4hSqOkJVUXanU/%ED%94%8C%EB%A6%AC%EC%98%A4-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8?node-id=0%3A1

## Frontend - Application
> https://github.com/slee8789/FLIO

## Backend - api-manager
> https://app.swaggerhub.com/apis/mertyn88/api-manager/1.4
> https://github.com/mertyn88/api-manager

안드로이드 앱과의 통신용 모듈  
앱 클라이언트의 모든 요청은 api-manager를 통해서 request - response 한다.

## Backend - crawler-manager
> https://github.com/mertyn88/crawler-manager

네이버 포스트를 수집하여 DB에 Insert하는 배치성 모듈  
DB에 넣어진 데이터는 Elasticsearch, Logstash를 이용하여 수집/색인된다.  

### DB 설계 
  
## flio_user - 로그인 유저 정보(파이어베이스)
![로그인 관련 유저정보](./image/flio_user.png)

## product - 상품
![상품](./image/product.png)

## favorite - 관심상품
![관심상품](./image/favorite.png)

## board - 게시판 ( 댓글 +)
![게시판](./image/board.png)

## chat - 채팅 (대분류)
![채팅](./image/chat.png)

## chat_detail - 채팅 상세
![채탱](./image/chat_detail.png)

## crawler - 네이버 포스트 검색엔진 수집 데이터
![수집데이터](./image/crawler.png)


### Elasticsearch

## Index 설정
> highlight 검색이 가능하도록 term_vector: "with_positions_offsets" 설정을 추가
```json
{
  "settings": {
    "index": {
      "number_of_shards": 1,
      "number_of_replicas": 0,
      "analysis": {
        "analyzer": {
          "nori_analyzer": {
            "type": "nori"
          }
        }
      }
    }
  },
  "mappings": {
    "properties":{
      "base_url":{
        "type":"keyword"
      },
      "target_url":{
        "type":"keyword"
      },
      "keyword":{
        "type":"keyword"
      },
      "title":{
        "type":"text",
        "analyzer": "nori_analyzer",
        "term_vector": "with_positions_offsets"
      },
      "content":{
        "type":"text",
        "analyzer": "nori_analyzer",
        "term_vector": "with_positions_offsets"
      },
      "image_path":{
        "type":"keyword"
      },
      "reg_date":{
        "type":"date"
      },
      "chg_date":{
        "type":"date"
      }
    }
  }
}
```

## 검색 질의
> highlight 검색이 가능하도록 관련 설정 추가 
```json
{
  "_source": {
    "excludes": [
      "content"
      ]
    }, 
  "query" : {
    "match": {
      "content": "마크 레빈슨"
    }
  },
  "highlight" : {
    "fields" : {
      "content" : {
          "pre_tags" : ["<HS>"], 
          "post_tags" : ["</HE>"], 
          "number_of_fragments" : 1,
          "fragment_size" : 150,
          "type" : "fvh"
      }
    }
  }
}
```
