-- Multiple column constraints
CREATE TABLE Messages (
	message_id int primary key auto_increment,
	sender_name varchar(40),
	reciever_name varchar(40),
	message varchar(150),
	is_delivered bool default false,
	created_at TIMESTAMP default CURRENT_TIMESTAMP,
	constraint sender_reciever UNIQUE(sender_name, reciever_name)
);

INSERT INTO Messages ( sender_name, reciever_name, message  )
VALUES ('SUYASH', 'SAM', 'HELLO');

INSERT INTO Messages ( sender_name, reciever_name, message  )
VALUES ('SUYASH', 'SAM', 'COOL'); -- ERROR HERE
