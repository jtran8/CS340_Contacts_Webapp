-- Throughout this file, single quotes are used to set off variables that will
-- be provided by the backend programming language.



-- Queries needed by /home.html:

-- -- Query to generate list of users (and user IDs):

SELECT userId, lastName, firstName FROM users;

-- -- Query to create a new account:

INSERT INTO users (lastName, firstName, phone, email) VALUES
('LastNameFromUserInput', 'FirstNameFromUserInput', 'PhoneNumberFromUserInput', 'EmailAddressFromUserInput');



-- Queries needed by /myAccount.html:

-- -- Query to get user's name:

SELECT lastName, firstName FROM users WHERE userID='UserIdFromURL';

-- -- Query to get current information for current user:

SELECT lastName, firstName, phone, email FROM users WHERE userID='UserIdFromURL';

-- -- Query to update information for current user:

UPDATE users
SET lastName='LastNameFromUserInput', firstName='FirstNameFromUserInput', phone='PhoneFromUserInput', email='EmailFromUserInput'
WHERE userId='UserIdFromURL';



-- Queries needed by /contacts.html:



-- Queries needed by /editContact.html:



-- Queries needed by /viewInteractions.html:



-- Queries needed by /addModeToInteraction.html:



-- Queries neeed by /modes.html: