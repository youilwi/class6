-- 회원
CREATE TABLE users(
   userId     VARCHAR2(30) PRIMARY KEY,		-- 회원아이디
   userName   VARCHAR2(30) NOT NULL,		-- 회원이름
   userPwd    VARCHAR2(100) NOT NULL,		-- 비밀번호
   userLevel  CHAR(1),						-- 회원등급
   userEmail  VARCHAR2(100),				-- 이메일
   userPhone  VARCHAR2(20),					-- 핸드폰번호
   companyNo  int,							-- 회사번호
   regDate    DATE          				-- 가입일자
);

-- 회사
CREATE TABLE company(
   companyNo	int			PRIMARY KEY,    -- 회사번호
   companyName  VARCHAR2(100) NOT NULL,     -- 회사이름
   companyAddr  VARCHAR2(100),     			-- 주소
   companyCeo   VARCHAR2(30),      			-- CEO
   ceoPhone 	VARCHAR2(20),    			-- CEO 전화번호
   regDate 		DATE          				-- 가입일자
);

CREATE SEQUENCE company_companyNo_seq NOCACHE;

-- 게시판
CREATE TABLE board(
   boardNo      NUMBER        PRIMARY KEY,	-- 게시판번호
   boardWriter 	VARCHAR2(100) NOT NULL,		-- 회원아이디
   boardTitle   VARCHAR2(100) NOT NULL, 	-- 글제목
   boardContent CLOB,                       -- 내용
   viewCount 	NUMBER,             		-- 글조회수
   regDate   	DATE                 		-- 작성일
);

CREATE SEQUENCE board_boardNo_seq NOCACHE;

-- 게시판 덧글
CREATE TABLE boardComment(
   commentNo    	NUMBER	PRIMARY KEY, 	-- 댓글번호
   commentWriter	VARCHAR2(100),			-- 작성자
   commentContent	VARCHAR2(500),			-- 내용
   boardWriter		VARCHAR2(100),			-- 원글작성자
   boardNo			NUMBER,					-- 게시판번호
   commentGroup		NUMBER,					-- 덧글 내에서의 그룹
   regDate			DATE					-- 작성일
);
