-- Named Constraints
CREATE TABLE Users2 (
	id int auto_increment,
	username varchar(12) not null unique,
	age int,
	primary key(id),
	constraint age_above_18 CHECK(age > 10)
);
