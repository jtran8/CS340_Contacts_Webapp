-- Throughout this file, single quotes are used to set off variables that will
-- be provided by the backend programming language.

-- Queries needed by /home.html:

-- -- To generate list of users (and user IDs):

SELECT userId, lastName, firstName FROM users;

-- -- To create a new account:

INSERT INTO users (lastName, firstName, phone, email) VALUES
('ProvidedLastName', 'ProvidedFirstName', 'ProvidedPhoneNumber', 'ProvidedEmailAddress');

-- Queries needed by /myAccount.html:

-- Queries needed by /contacts.html:

-- Queries needed by /editContact.html:

-- Queries needed by /viewInteractions.html:

-- Queries needed by /addModeToInteraction.html:

-- Queries neeed by /modes.html: