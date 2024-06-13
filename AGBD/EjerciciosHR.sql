CREATE TABLE user (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 username TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL
);
CREATE TABLE post (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 author_id INTEGER NOT NULL,
 created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 title TEXT NOT NULL,
 body TEXT NOT NULL,
 FOREIGN KEY (author_id) REFERENCES user (id)
);

INSERT INTO user (username, password)
VALUES ("sofia", "123"), ("mariela","456");

VALUES ((SELECT id FROM user WHERE username LIKE "sofia"),"sss" ,"ooo"),
		((SELECT id FROM user WHERE username LIKE "sofia"),"fff" ,"iii"),
		((SELECT id FROM user WHERE username LIKE "sofia"),"aaa" ,"aaa"),
		((SELECT id FROM user WHERE username LIKE "mariela"),"mmm" ,"aaa"),
		((SELECT id FROM user WHERE username LIKE "mariela"),"rrr" ,"iii"),
		((SELECT id FROM user WHERE username LIKE "mariela"),"eee" ,"lll");