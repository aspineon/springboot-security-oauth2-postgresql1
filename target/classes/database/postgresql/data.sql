                    /* Company Data */
INSERT INTO company (id,name,category,ceo,chairman,start_date) 
VALUES (1,'Infosys','Software Services','Vishal Sikka','Narayana Murthy',current_date);

INSERT INTO company (id,name,category,ceo,chairman,start_date) 
VALUES (2,'Tesla','Electric Cars, Battery Technology','Elon Musk','XYZ',current_date);

INSERT INTO company (id,name,category,ceo,chairman,start_date) 
VALUES (3,'Samsung','Electronics','ABC','XYZ',current_date);

                    /* OAuth Client Data */
INSERT INTO OAUTH_CLIENT_DETAILS(CLIENT_ID, RESOURCE_IDS, CLIENT_SECRET, SCOPE, AUTHORIZED_GRANT_TYPES, AUTHORITIES, ACCESS_TOKEN_VALIDITY, REFRESH_TOKEN_VALIDITY)
    VALUES ('spring-security-oauth2-read-client', 'resource-server-rest-api',
    /*spring-security-oauth2-read-client-password1234*/'$2a$04$WGq2P9egiOYoOFemBRfsiO9qTcyJtNRnPKNBl5tokP7IP.eZn93km',
    'read', 'password,authorization_code,refresh_token,implicit', 'USER', 60, 300);

INSERT INTO OAUTH_CLIENT_DETAILS(CLIENT_ID, RESOURCE_IDS, CLIENT_SECRET, SCOPE, AUTHORIZED_GRANT_TYPES, AUTHORITIES, ACCESS_TOKEN_VALIDITY, REFRESH_TOKEN_VALIDITY)
    VALUES ('spring-security-oauth2-read-write-client', 'resource-server-rest-api',
    /*spring-security-oauth2-read-write-client-password1234*/'$2a$04$soeOR.QFmClXeFIrhJVLWOQxfHjsJLSpWrU1iGxcMGdu.a5hvfY4W',
    'read,write', 'password,authorization_code,refresh_token,implicit', 'USER', 60, 300);
    
                    /* User Data */
INSERT INTO USERS(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
  VALUES (1, 'admin', /*admin1234*/'$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USERS(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
  VALUES (2, 'reader', /*reader1234*/'$2a$08$dwYz8O.qtUXboGosJFsS4u19LHKW7aCQ0LXXuNlRfjjGKwj5NfKSe', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USERS(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
  VALUES (3, 'modifier', /*modifier1234*/'$2a$08$kPjzxewXRGNRiIuL4FtQH.mhMn7ZAFBYKB3ROz.J24IX8vDAcThsG', FALSE, FALSE, FALSE, TRUE);

INSERT INTO USERS(ID, USER_NAME, PASSWORD, ACCOUNT_EXPIRED, ACCOUNT_LOCKED, CREDENTIALS_EXPIRED, ENABLED)
  VALUES (4, 'reader2', /*reader1234*/'$2a$08$vVXqh6S8TqfHMs1SlNTu/.J25iUCrpGBpyGExA.9yI.IlDRadR6Ea', FALSE, FALSE, FALSE, TRUE);

                    /* Authority Data */
INSERT INTO AUTHORITY(ID, NAME) VALUES (1, 'COMPANY_CREATE');
INSERT INTO AUTHORITY(ID, NAME) VALUES (2, 'COMPANY_READ');
INSERT INTO AUTHORITY(ID, NAME) VALUES (3, 'COMPANY_UPDATE');
INSERT INTO AUTHORITY(ID, NAME) VALUES (4, 'COMPANY_DELETE');

                   /* User and Authority Data */ 
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 1);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 2);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 3);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (1, 4);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (2, 2);
INSERT INTO USERS_AUTHORITIES(USER_ID, AUTHORITY_ID) VALUES (3, 3);
