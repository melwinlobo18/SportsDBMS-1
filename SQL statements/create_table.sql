CREATE TABLE COUNTRIES(
    country_id VARCHAR(5) PRIMARY KEY,
    country_name VARCHAR(20) NOT NULL,
    image_url VARCHAR(100) NOT NULL
);

CREATE TABLE SPORTS(
    sport_id VARCHAR(5) PRIMARY KEY,
    sport_name VARCHAR(20) NOT NULL
);

CREATE TABLE CLUBS(
    club_id VARCHAR(5) PRIMARY KEY,
    club_name VARCHAR(20) NOT NULL,
    country_id NUMBER(5) REFERENCES COUNTRIES ON DELETE CASCADE,
    sport_id VARCHAR(5) REFERENCES SPORTS ON DELETE CASCADE
);

CREATE TABLE PLAYER(
    player_id VARCHAR(5) PRIMARY KEY,
    player_name VARCHAR(20) NOT NULL,
    player_age NUMBER(3) NOT NULL,
    player_sex VARCHAR(2) NOT NULL,
    club_id VARCHAR(5) REFERENCES CLUBS ON DELETE CASCADE
);

CREATE TABLE STATS(
    player_id VARCHAR(5) REFERENCES PLAYER ON DELETE CASCADE,
    no_of_matches NUMBER(3) NOT NULL,
    injured VARCHAR(10) NOT NULL,
    man_of_match NUMBER(3) NOT NULL,
    last_match_played DATE NOT NULL, 
    worth NUMBER(12) NOT NULL,
    goals_runs NUMBER(3) NOT NULL,
    position VARCHAR(20) NOT NULL
);

INSERT INTO COUNTRIES VALUES(C1,"India","https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/383px-Flag_of_India.svg.png");
INSERT INTO COUNTRIES VALUES(C2,"England","https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Flag_of_England.svg/1280px-Flag_of_England.svg.png");

INSERT INTO SPORTS VALUES(S1,"Cricket");
INSERT INTO SPORTS VALUES(S2,"Football");

INSERT INTO CLUBS VALUES(CB1,"Arsenal FC",C2,S2);
INSERT INTO CLUBS VALUES(CB2,"Chennai Super Kings",C1,S1);
INSERT INTO CLUBS VALUES(CB3,"Bengaluru FC",C1,S2);
INSERT INTO CLUBS VALUES(CB4,"Henley Cricket Club",C2,S1);

INSERT INTO PLAYER VALUES(P1,"MS Dhoni",30,"M",CB2);
INSERT INTO PLAYER VALUES(P2,"Melwin",25,"M",CB2);
INSERT INTO PLAYER VALUES(P3,"Kohli",25,"M",CB3);
INSERT INTO PLAYER VALUES(P4,"Paul",24,"M",CB2);
INSERT INTO PLAYER VALUES(P5,"Rooney",23,"M",CB4);
INSERT INTO PLAYER VALUES(P6,"Neymaar",21,"M",CB3);
INSERT INTO PLAYER VALUES(P7,"Jehad",35,"M",CB2);
INSERT INTO PLAYER VALUES(P8,"Rohit",31,"M",CB1);
INSERT INTO PLAYER VALUES(P9,"Messi",23,"M",CB1);
INSERT INTO PLAYER VALUES(P10,"Ronaldo",22,"M",CB3);

INSERT INTO STATS VALUES(P1,50,"Flase",15,"12-JAN-2018",500000,1000,"Batsman");
INSERT INTO STATS VALUES(P2,33,"Flase",6,"05-FEB-2018",400000,1000,"Bowler");
INSERT INTO STATS VALUES(P3,70,"Flase",8,"04-MAR-2018",60000,1000,"Forward");
INSERT INTO STATS VALUES(P4,66,"True",22,"23-APR-2018",600000,1000,"Batsman");
INSERT INTO STATS VALUES(P5,45,"Flase",33,"29-MAY-2018",800000,1000,"Bowler");
INSERT INTO STATS VALUES(P6,76,"Flase",41,"30-JUN-2018",45000,1000,"GoalKeeper");
INSERT INTO STATS VALUES(P7,33,"True",10,"18-SEP-2018",80000,1000,"Bowler");
INSERT INTO STATS VALUES(P8,12,"Flase",5,"18-JAN-2018",550000,1000,"Striker");
INSERT INTO STATS VALUES(P9,88,"True",42,"16-FEB-2018",56800,1000,"MidField");
INSERT INTO STATS VALUES(P10,60,"Flase",23,"22-MAR-2018",880000,1000,"Forward");
