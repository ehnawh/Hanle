INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('��������', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('�����Խ���', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('�ڷ��', NOW(), NOW());
INSERT INTO Board(name, createdDate, modifiedDate) VALUES ('���ǰԽ���', NOW(), NOW());

INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('Home', 0, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('Welcome', 1, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('����', 1, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('About', 0, 2, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('����', 2, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('ȣȣ', 2, 2, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('Contact', 0, 3, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('����', 3, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('ȣȣ', 3, 2, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('Boards', 0, 4, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('��������', 4, 1, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('�����Խ���', 4, 2, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('�ڷ��', 4, 3, NOW(), NOW());
INSERT INTO Menu(name, parentId, sequency, createdDate, modifiedDate) VALUES ('���ǰԽ���', 4, 4, NOW(), NOW());


INSERT INTO Content(name, createdDate, modifiedDate, boardId, contents) VALUES ('�ȳ��Ͻʴϱ�?', NOW(), NOW(), 1, '�ȳ��ϼ���. �����Դϴ�.');
INSERT INTO Content(name, createdDate, modifiedDate, boardId, contents) VALUES ('�׽�Ʈ', NOW(), NOW(), 1, '�׽�Ʈ���Դϴ�.');
INSERT INTO Content(name, createdDate, modifiedDate, boardId, contents) VALUES ('�����ٶ�', NOW(), NOW(), 1, '���ٻ������');