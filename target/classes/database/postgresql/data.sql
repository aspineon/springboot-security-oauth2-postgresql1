INSERT INTO company (id,name,category,ceo,chairman,start_date) 
VALUES (1,'Infosys','Software Services','Vishal Sikka','Narayana Murthy',current_date);

INSERT INTO company (id,name,category,ceo,chairman,start_date) 
VALUES (2,'Tesla','Electric Cars, Battery Technology','Elon Musk','XYZ',current_date);

INSERT INTO company (id,name,category,ceo,chairman,start_date) 
VALUES (3,'Samsung','Electronics','ABC','XYZ',current_date);

INSERT INTO OAUTH_CLIENT_DETAILS(CLIENT_ID, RESOURCE_IDS, CLIENT_SECRET, SCOPE, AUTHORIZED_GRANT_TYPES, AUTHORITIES, ACCESS_TOKEN_VALIDITY, REFRESH_TOKEN_VALIDITY)
    VALUES ('spring-security-oauth2-read-client', 'resource-server-rest-api',
    /*spring-security-oauth2-read-client-password1234*/'$2a$04$WGq2P9egiOYoOFemBRfsiO9qTcyJtNRnPKNBl5tokP7IP.eZn93km',
    'read', 'password,authorization_code,refresh_token,implicit', 'USER', 60, 300);

INSERT INTO OAUTH_CLIENT_DETAILS(CLIENT_ID, RESOURCE_IDS, CLIENT_SECRET, SCOPE, AUTHORIZED_GRANT_TYPES, AUTHORITIES, ACCESS_TOKEN_VALIDITY, REFRESH_TOKEN_VALIDITY)
    VALUES ('spring-security-oauth2-read-write-client', 'resource-server-rest-api',
    /*spring-security-oauth2-read-write-client-password1234*/'$2a$04$soeOR.QFmClXeFIrhJVLWOQxfHjsJLSpWrU1iGxcMGdu.a5hvfY4W',
    'read,write', 'password,authorization_code,refresh_token,implicit', 'USER', 60, 300);