-- 로그인 기능 미완성이라 외래키 및 cascade 제약조건 제외하였습니다.
-- mysql 8.0.23 버전 사용
-- user : yoonjin
-- password : 12345
-- db : free_board



drop table member;
drop table board;
drop table comment;

create table member(
id varchar(15) primary key,
nick varchar(20) unique not null,
pwd varchar(10) not null );

create table board(
b_no int(11) auto_increment primary key,
b_id varchar(15) not null,
b_title varchar(50) not null,
b_content varchar(1000) not null,
b_date date not null,
b_view int not null default 0,
fileName varchar(100) );

create table comment(
c_no int auto_increment primary key,
c_bno int(11) not null,
c_id varchar(15) not null,
c_comment varchar(100) not null,
c_date date not null );


insert into board(b_id,b_title,b_content,b_date,fileName) values('lee','안녕하세요','오늘은 날이 꽤 춥네요',now(), '');
insert into board(b_id,b_title,b_content,b_date,fileName) values('leeyul','Hello','홀라홀라',now(), '');
insert into board(b_id,b_title,b_content,b_date,fileName) values('졸린사람','사진 좀 봐봐','뭔가 분위기 있는데 무서운 느낌 나는듯!',now(), '/upload/image/afraid.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('김삿갓','나도','미술 배우고 싶다. 그림 좀 잘그리고 싶어',now(), '/upload/image/art.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('김철철','새야새야','작은새 ㅎㅎ 갑자기 왤케 추버',now(), '/upload/image/bird.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('김찰리찰리','애옹떨어질라','귀여워 솜방맹이 봐봐',now(), '/upload/image/catonthetree.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('김윤진','햇빛','나도 마스크 벗고 햇빛 내리쫴고싶다.',now(), '/upload/image/catunderthesun.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('빈센조','벚꽃','벌써 벚꽃필 때가 되었네.',now(), '/upload/image/cherry-blossom.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('까사노','등산안간지오렌지야','주말에 항상 가겠다고 다짐하는데 할일이 너무 많아..',now(), '/upload/image/climb');
insert into board(b_id,b_title,b_content,b_date,fileName) values('평강','컾컾커피퓌','커피는 맛있어! 커피는 맛있어!!',now(), '/upload/image/coffee.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('온달','유럽','가고싶다!',now(), '/upload/image/eu.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('덕만','안개~','안개낀거봐. 사일런트힐 생각난다.',now(), '/upload/image/fog.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('kim','아이스크림은 역시 녹차맛이지. 녹차가 세상을 지배한다.','여린잎 녹차 존맛.',now(), '/upload/image/icecream.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('kimyoon','떠나자','코로나야 빨리끝나라.',now(), '/upload/image/island.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('yoon','야경','야경 이뿌제~?',now(), '/upload/image/night.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('jin','퍄노 사고싶은디','간만에 손가락 풀고 싶다.',now(), '/upload/image/piano.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('안냥','코로나 언제 끝나..','여행 너무 가고싶어.',now(), '/upload/image/plane.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('라떼','올 겨울엔 스키장을','못갔네. 보드도 새로 배워보고 싶어.',now(), '/upload/image/ski.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('모카','와 별봐!','와-와!!!!',now(), '/upload/image/star.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('희희','별 장난아녀','겁나 멋있제잉',now(), '/upload/image/starlake.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('92구','해바라기 보니까','스파이더맨 뉴 유니버스 생각난디.',now(), '/upload/image/sunflower.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('아이유','달달 디저트','크으~~~',now(), '/upload/image/tea.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('IU','차는 역시 녹차','이파리 녹차로 우려먹음 존맛인데!',now(), '/upload/image/teaa.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('jeje','레고 사고파','이번에 해리포터 에디션 오지던디..',now(), '/upload/image/toy.jpg');
insert into board(b_id,b_title,b_content,b_date,fileName) values('han','겨울 끝','봄 시작. 황사도 시작. 미세먼지 오짐...',now(), '/upload/image/winter.jpg');