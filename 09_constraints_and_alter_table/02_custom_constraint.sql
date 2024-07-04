-- Custom Constraint
CREATE TABLE User(
	id int auto_increment,
	username varchar(20),
	age int CHECK(age > 0),
	primary key (id)
);

CREATE TABLE Palindrome (
	word varchar(10) CHECK(REVERSE(word) = word)
);
INSERT INTO Palindrome 
VALUES ("FuuF");