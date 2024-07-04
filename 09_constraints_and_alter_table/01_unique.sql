-- Unique Constraint
CREATE TABLE Contacts (
	id int auto_increment primary key,
	person_name varchar(50),
	contact_no varchar(12) not null unique
)

INSERT INTO Contacts (person_name, contact_no)
VALUES ('SUYASH', '912545732225'), ('billy bob', '8781213455');

-- This insert would result in an error:
INSERT INTO contacts (person_name, contact_no)
VALUES ('billy bob', '8781213455');