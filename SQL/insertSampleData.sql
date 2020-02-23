-- This file will INSERT sample data.

-- Its use of foreign keys assumes that it is being run on an empty database.

INSERT INTO users (lastName, firstName, phone, email) VALUES
('Macintosh', 'Morgan', '555-555-1001', 'morgan@example.com'),
('Stone', 'Skyler', '555-555-1002', 'skyler@example.com'),
('Adams', 'Armani', '555-555-1003', 'armani@example.com');

INSERT INTO contacts (userId, lastName, firstName, phone, email, notes, emergencyContactId) VALUES
(1, 'Jung', 'Jordan', '617-555-1004', 'jordan@example.com', 'Birthday is Jan. 1.', NULL),
(1, 'Smith', 'Sydney', '617-555-1005', 'sydney@example.com', 'Has a dog.', 1),
(1, 'Rogers', 'Robin', '617-555-1006', 'robin@example.com', 'Software engineer.', NULL);

INSERT INTO interactions (contactId, `start`) VALUES
(1, '2000-01-01 09:00:00'),
(1, '2000-01-02 10:00:00'),
(1, '2000-01-03 11:00:00'),
(1, '2000-01-13 12:00:00');

INSERT INTO communicationModes (`type`) VALUES
('SMS Message'),
('Voice Call'),
('Meeting');

INSERT INTO interactionDetails (interactId, comId, details) VALUES
(1, 1, 'Made plans to meet up over coffee or lunch.'),
(2, 2, 'Chose a spot and time for lunch.'),
(3, 3, 'Met up for lunch at Queen Margherita Pizza; he forgot his wallet so I covered.'),
(4, 1, 'Reminded him he owes me for lunch.'),
(4, 2, 'He called me apologize for taking so long to repay him.');