-- Users Missing Phone Numbers


-- The product team is launching a new WhatsApp notification feature and needs to identify users who haven't provided their phone numbers yet. These users will be shown a prompt to add their contact information.


-- Find all users who have not provided a phone number. Return the user ID and name.

-- Table
-- fintech_app_users


select user_id,
       user_name
from fintech_app_users
WHERE phone_number  is  NULL;