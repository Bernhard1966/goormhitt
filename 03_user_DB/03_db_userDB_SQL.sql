
DROP TABLE IF EXISTS boo.users;
CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT null PRIMARY KEY AUTO_INCREMENT,
    userNane Varchar(20) NOT null UNIQUE,
    familyNane Varchar(20) NOT null,
    usersPwd Varchar(40) NOT null,
    firstNane Varchar(20) NOT null
);
    /*Srtucktur*/
    DESCRIBE boo.users;
    INSERT INTO boo.users(userNane, firstNane,familyNane, usersPwd)
    VALUES ("Max","Max","Mütze","1234");
    INSERT INTO boo.users(userNane, firstNane,familyNane,usersPwd)
    VALUES ("Maxine","Maxe","Mütze","#7xDO");
    INSERT INTO boo.users(userNane, firstNane,familyNane, usersPwd)
    VALUES ("Maxl","Max","Mützererich","user1234");
    
    SELECT * FROM boo.users;
    
    
    
    
    
