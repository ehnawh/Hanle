INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('공지사항', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('자유게시판', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('자료실', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('공유게시판', NOW(), NOW());

INSERT INTO Content(name, createdDate, modifiedDate, boardId, contents) VALUES ('공지사항 글1', NOW(), NOW(), 1, '1234');