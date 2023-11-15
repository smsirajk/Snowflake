CREATE OR REPLACE NOTIFICATION INTEGRATION my_email_int
    TYPE=EMAIL
    ENABLED=TRUE
    ALLOWED_RECIPIENTS=('smsirajk@gmail.com');



CALL SYSTEM$SEND_EMAIL(
    'my_email_int',
    'smsirajk@gmail.com',
    'Email Alert: Task A has finished.',
    'Task A has successfully finished.\nStart Time: 10:10:32\nEnd Time: 12:15:45\nTotal Records Processed: 115678'
);
