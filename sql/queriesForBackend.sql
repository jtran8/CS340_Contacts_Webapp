-- Throughout this file, single quotes are used to set off variables that will
-- be provided by the backend programming language.

--------------------------------------------------------------------------------

-- Queries needed by /home.html:

-- -- Query to generate list of users (and user IDs):

SELECT userId, lastName, firstName
FROM users;

-- -- Query to create a new account:

INSERT INTO users (lastName, firstName, phone, email) VALUES
('LastNameFromUserInput', 'FirstNameFromUserInput', 'PhoneNumberFromUserInput', 'EmailAddressFromUserInput');

--------------------------------------------------------------------------------

-- Queries needed by /myAccount.html:

-- -- Query to get user's name:

SELECT lastName, firstName
FROM users
WHERE userId='CurrentUserIdFromURL';

-- -- Query to get current information for current user:

SELECT lastName, firstName, phone, email
FROM users
WHERE userId='CurrentUserIdFromURL';

-- -- Query to update information for current user:

UPDATE users
SET lastName='LastNameFromUserInput', firstName='FirstNameFromUserInput', phone='PhoneFromUserInput', email='EmailFromUserInput'
WHERE userId='CurrentUserIdFromURL';

--------------------------------------------------------------------------------

-- Queries needed by /contacts.html:

-- -- Query to get user's name:

-- -- -- See above.

-- -- Query to run when a user searches for a last name and/or a first name and/or no name:

SELECT C.contactId, C.lastName, C.firstName, C.phone, C.email, C.notes, EC.lastName AS `EC.lastName`, EC.firstName as `EC.firstName`
FROM contacts AS C
LEFT JOIN contacts AS EC ON EC.contactId=C.emergencyContactId
WHERE C.lastName LIKE 'LastNameSearchParameter'
AND C.firstName LIKE 'FirstNameSearchParameter'
AND C.userId='CurrentUserIdFromUrl';

-- -- -- Note: Any search parameter that is not provided by the user will be set equal to a % character.
-- -- -- As a result, we'll be able to use this one query whether the user searches for a last name,
-- -- -- a first name, or no name.

-- -- Query to populate the "Emergency Contact" selection element:

SELECT contactId, lastName, firstName
FROM contacts
WHERE userId='CurrentUserIdFromUrl';

-- -- Query to add a new contact:

INSERT INTO contacts (userId, lastName, firstName, phone, email, notes, emergencyContactId) VALUES
('CurrentUserIdFromUrl',
'LastNameFromUserInput',
'FirstNameFromUserInput',
'PhoneFromUserInput',
'EmailFromUserInput',
'NotesFromUserInput',
'EmergencyContactIdFromUserInput');

-- -- -- Note: We don't have a way to ensure that the end user doesn't hack the form by submitting some other user's
-- -- -- userId.
-- -- -- 
-- -- -- We also don't have a way to ensure that the end user doesn't hack the form by submitting an invalid
-- -- -- emergency contact ID.
-- -- -- 
-- -- -- For this class's purposes, I'm sure that this okay. I'm just sayin'.

--------------------------------------------------------------------------------

-- Queries needed by /editContact.html:

--------------------------------------------------------------------------------

-- Queries needed by /viewInteractions.html:

--------------------------------------------------------------------------------

-- Queries needed by /addModeToInteraction.html:

--------------------------------------------------------------------------------

-- Queries neeed by /modes.html: