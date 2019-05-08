CREATE TABLE chat.User
(
    email VARCHAR(30) PRIMARY KEY NOT NULL,
    password VARCHAR(32) NOT NULL,
    registerTime VARCHAR(30),
    gender INT
);
CREATE UNIQUE INDEX User_email_uindex ON chat.User (email);

CREATE TABLE chat.Msg
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    data VARCHAR(1000),
    source VARCHAR(30) NOT NULL,
    dest VARCHAR(30) NOT NULL,
    sendTime VARCHAR(30),
    CONSTRAINT fk0 FOREIGN KEY (source) REFERENCES User (email),
    CONSTRAINT fk1 FOREIGN KEY (dest) REFERENCES User (email)
);
CREATE UNIQUE INDEX Msg_id_uindex ON chat.Msg (id);

CREATE TABLE chat.Friends
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email1 VARCHAR(30) NOT NULL,
    email2 VARCHAR(30) NOT NULL,
    CONSTRAINT fk_0 FOREIGN KEY (email1) REFERENCES User (email),
    CONSTRAINT fk_1 FOREIGN KEY (email2) REFERENCES User (email)
);