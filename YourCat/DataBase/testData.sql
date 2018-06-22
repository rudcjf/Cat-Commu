--sequence 생성
--create sequence AUT_SEQ start with 1 increment BY 1 maxvalue 1000; 권한은 번호로
drop sequence BOARD_SEQ;
drop sequence BOARD_IMG_SEQ;
drop sequence ITEM_IMG_SEQ;
drop sequence ITEM_SEQ;
drop sequence ITEM_CATE_SEQ;
drop sequence BUY_SEQ;


create sequence BOARD_SEQ start with 1 increment BY 1 maxvalue 1000;
create sequence BOARD_IMG_SEQ start with 1 increment BY 1 maxvalue 1000;

create sequence ITEM_IMG_SEQ start with 1 increment BY 1 maxvalue 1000;
create sequence ITEM_SEQ start with 1 increment BY 1 maxvalue 1000;
create sequence ITEM_CATE_SEQ start with 1 increment BY 1 maxvalue 1000;

create sequence BUY_SEQ start with 1 increment BY 1 maxvalue 1000;

--권한 설정(USER, ADMIN, SYSTEM)
INSERT INTO CAT_AUTHORITY
     VALUES('UUID-1111-0000', 'ROLE_SYSTEM');
INSERT INTO CAT_AUTHORITY
     VALUES('UUID-1111-0001', 'ROLE_ADMIN');
INSERT INTO CAT_AUTHORITY
     VALUES('UUID-1111-0002', 'ROLE_USER');
--기초 회원 아이디(MEMBER_ID, PASSWORD, MEMBER_NAME, TEL, RESIDENCE, HASCAT, HOBBY, MEMBER_STATUS)
INSERT INTO CAT_MEMBER
    VALUES('SYSTEM@naver.com', 'SYSTEM', 'SYSTEM', '02-000-0000', 'SEOUL', 'Y', 'SYSTEM', 'Y');
INSERT INTO CAT_MEMBER
    VALUES('ADMIN@naver.com', 'ADMIN', 'ADMIN', '02-000-0000', 'SEOUL', 'Y', 'ADMIN', 'Y');
    
INSERT INTO CAT_MEMBER
    VALUES('MING@naver.com', 'MINGMING', 'MING', '02-000-1111', 'SEOUL', 'Y', 'SLEEP', 'Y');
INSERT INTO CAT_MEMBER
    VALUES('KKK@naver.com', 'KKK', 'KKK', '02-000-1111', 'SEOUL', 'Y', 'SLEEP', 'N');
INSERT INTO CAT_MEMBER
    VALUES('MC_CHEA@naver.com', 'CHEA', 'MC민채', '02-000-2222', 'SEOUL', 'N', 'SLEEP', 'Y');
    
--회원 권한 관계
INSERT INTO CAT_MEMBER_AUT_REL
    VALUES('SYSTEM@naver.com', 'UUID-1111-0000');
INSERT INTO CAT_MEMBER_AUT_REL
    VALUES('ADMIN@naver.com', 'UUID-1111-0001');
INSERT INTO CAT_MEMBER_AUT_REL
    VALUES('MING@naver.com', 'UUID-1111-0002');
INSERT INTO CAT_MEMBER_AUT_REL
    VALUES('KKK@naver.com', 'UUID-1111-0002');
INSERT INTO CAT_MEMBER_AUT_REL
    VALUES('MC_CHEA@naver.com', 'UUID-1111-0002');
    
---- 오늘 꺼 넣기
--CREATE TABLE DATE_TEST (
--
--T_DATE DATE DEFAULT SYSDATE
--
--);

--게시글 예시 (BOARD_SEQ, BOARD_TITLE, BOARD_CONTENTES, BOARD_STATUS,BOARD_DATE, BOARD_VIEWS,
--            BOARD_LIKE,  MEMBER_ID)
INSERT INTO CAT_BOARD
    VALUES(BOARD_SEQ.NEXTVAL, '개냥이 져아져아','우와 어마어마하당' ,'Y',SYSDATE, 10, 10, 'MING@naver.com');
INSERT INTO CAT_BOARD
    VALUES(BOARD_SEQ.NEXTVAL, '냥냥이','냥냥' ,'Y',SYSDATE, 10, 10, 'MING@naver.com');
INSERT INTO CAT_BOARD
    VALUES(BOARD_SEQ.NEXTVAL, '집사놈 저리갓','크흠' ,'N',SYSDATE, 10, 10, 'KKK@naver.com');
INSERT INTO CAT_BOARD
    VALUES(BOARD_SEQ.NEXTVAL, '말하는놈','뺴얘얭' ,'Y',SYSDATE, 10, 10, 'ADMIN@naver.com');
INSERT INTO CAT_BOARD
    VALUES(BOARD_SEQ.NEXTVAL, '앵무새 합사','가능?' ,'Y',SYSDATE, 10, 10, 'SYSTEM@naver.com');
INSERT INTO CAT_BOARD
    VALUES(BOARD_SEQ.NEXTVAL, 'ㅈㄱㄴ','졸귀' ,'Y',SYSDATE, 10, 10, 'MC_CHEA@naver.com');
    
--상품(ITEM_SEQ, ITEM_NAME, PRICE, DTAIL, COUNT)
INSERT INTO CAT_ITEM
    VALUES(ITEM_SEQ.NEXTVAL, '사료1',5000 ,'밥밥',50 );
INSERT INTO CAT_ITEM
    VALUES(ITEM_SEQ.NEXTVAL, '사료2',6000 ,'밥밥',50 );
INSERT INTO CAT_ITEM
    VALUES(ITEM_SEQ.NEXTVAL, '사료3',5500 ,'밥밥',50 );
INSERT INTO CAT_ITEM
    VALUES(ITEM_SEQ.NEXTVAL, '사료4',7000 ,'밥밥',50 );
INSERT INTO CAT_ITEM
    VALUES(ITEM_SEQ.NEXTVAL, '사료5',7000 ,'밥밥',50);
INSERT INTO CAT_ITEM
    VALUES(ITEM_SEQ.NEXTVAL, '사료6',7000 ,'밥밥',50);
    
INSERT INTO CAT_ITEM
    VALUES(ITEM_SEQ.NEXTVAL, '장난감1',5000 ,'장난장난',50 );
    
--상품 분류(ITEM_CATE_SEQ, ITEM_CATE_NAME)
INSERT INTO CAT_ITEM_CATE
    VALUES(ITEM_CATE_SEQ.NEXTVAL, '사료');
INSERT INTO CAT_ITEM_CATE
    VALUES(ITEM_CATE_SEQ.NEXTVAL, '장난감');
INSERT INTO CAT_ITEM_CATE
    VALUES(ITEM_CATE_SEQ.NEXTVAL, '화장실');
INSERT INTO CAT_ITEM_CATE
    VALUES(ITEM_CATE_SEQ.NEXTVAL, '캣타워');
INSERT INTO CAT_ITEM_CATE
    VALUES(ITEM_CATE_SEQ.NEXTVAL, '하우스');
INSERT INTO CAT_ITEM_CATE
    VALUES(ITEM_CATE_SEQ.NEXTVAL, '기타');
    
--상품 분류 관계(ITEM_CATE_SEQ, ITEM_SEQ)
INSERT INTO CAT_ITEM_CATE_REL -- 사료
    VALUES(2,2);
INSERT INTO CAT_ITEM_CATE_REL
    VALUES(2,3);
INSERT INTO CAT_ITEM_CATE_REL
    VALUES(2,4);
INSERT INTO CAT_ITEM_CATE_REL
    VALUES(2,5);
INSERT INTO CAT_ITEM_CATE_REL
    VALUES(2,6);
INSERT INTO CAT_ITEM_CATE_REL
    VALUES(2,7);
    
INSERT INTO CAT_ITEM_CATE_REL --장난감
    VALUES(3,8);
    
--상품 이미지(ITEM_IMG_SEQ, ITEM_IMG_NAME)
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'item_cat01');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'item_cat02');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'item_cat03');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'item_cat04');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'item_cat05');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'item_cat06');
    
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'Carousel_cat01');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'Carousel_cat02');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'Carousel_cat03');
    
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'cat01');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'cat02');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'cat02');
INSERT INTO CAT_ITEM_IMG
    VALUES(ITEM_IMG_SEQ.NEXTVAL,'cat02');

--상품이미지 관계(ITEM_CATE_SEQ, ITEM_SEQ)
INSERT INTO CAT_ITEM_IMG_REL
    VALUES(2,2);
INSERT INTO CAT_ITEM_IMG_REL
    VALUES(3,3);
INSERT INTO CAT_ITEM_IMG_REL
    VALUES(4,4);
INSERT INTO CAT_ITEM_IMG_REL
    VALUES(5,5);
INSERT INTO CAT_ITEM_IMG_REL
    VALUES(6,6);
INSERT INTO CAT_ITEM_IMG_REL
    VALUES(7,7);
    
INSERT INTO CAT_ITEM_IMG_REL --장난감
    VALUES(7,8);