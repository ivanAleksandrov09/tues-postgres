# assignment-5

reasoning: we have seperate grades table so theres a single source of truth to update when something changes

[students]
INT id;
TEXT name;

[subjects]
INT id;
TEXT name;

[grades]
INT user_id;
INT subject_ud;
INT grade (2-6);
TIMESTAMP time;
