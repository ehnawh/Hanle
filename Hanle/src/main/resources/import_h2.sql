INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('공지사항', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('자유게시판', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('자료실', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('문의게시판', NOW(), NOW());

INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('Home', 0, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('Welcome', 1, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('메인', 1, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('About', 0, 2, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('하하', 2, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('호호', 2, 2, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('Contact', 0, 3, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('하하', 3, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('호호', 3, 2, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('Boards', 0, 4, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('공지사항', 4, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('자유게시판', 4, 2, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('자료실', 4, 3, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('문의게시판', 4, 4, NOW(), NOW());


INSERT INTO Content(name, createdDate, modifiedDate, boardId, contents) VALUES ('안녕하십니까?', NOW(), NOW(), 1, '안녕하세요. 내용입니다.');
INSERT INTO Content(name, createdDate, modifiedDate, boardId, contents) VALUES ('테스트', NOW(), NOW(), 1, '테스트중입니다.');
INSERT INTO Content(name, createdDate, modifiedDate, boardId, contents) VALUES ('가나다라', NOW(), NOW(), 1, '마바사아자차');