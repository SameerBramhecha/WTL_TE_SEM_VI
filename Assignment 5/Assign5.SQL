create database wtl;

create table ebookstore(book_id int primary key, book_name varchar(100),book_author varchar(100), book_price int, quantity int);

insert into ebookstore values(1,'Harry Potter and The Sorcerers Stone','J.K.Rowling',350,10);

insert into ebookstore values(2,'Harry Potter and The Chambers Of Secret','J.K.Rowling',400,15);

insert into ebookstore values(3,'Harry Potter and The Prisoner Of Askaban','J.K.Rowling',440,20);

insert into ebookstore values(4,'Harry Potter and The Goblet Of Fire','J.K.Rowling',480,25);

insert into ebookstore values(5,'Harry Potter and The Order Of Phoenix','J.K.Rowling',500,30);

insert into ebookstore values(6,'Harry Potter and The Half Blood Prince','J.K.Rowling',550,35);

insert into ebookstore values(7,'Harry Potter and The Deathly Hallows-I','J.K.Rowling',575,40);

insert into ebookstore values(8,'Harry Potter and The Deathly Hallows-II','J.K.Rowling',600,45);

select * from ebookstore;
