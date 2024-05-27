-- Create Cats2 table and make age as not null
CREATE TABLE IF NOT EXISTS Cats2 (
	id int auto_increment primary key,
	name varchar(50) not null,
	age int not null
);

