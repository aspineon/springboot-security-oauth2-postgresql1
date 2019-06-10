CREATE TABLE company (
 id integer PRIMARY KEY,
 name text NOT NULL,
 category text NOT NULL,
 ceo text NOT NULL,
 chairman text NOT NULL,
 start_date date NOT NULL   
);

CREATE SEQUENCE company_seq_id OWNED BY company.id;