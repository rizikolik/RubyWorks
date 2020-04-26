CREATE TABLE plays(
id  INTEGER PRIMARY KEY,
title TEXT NOT NULL,
year DATE NOT NULL,
playwrights_id  INTEGER NOT NULL,
FOREIGN KEY (playwrights_id) REFERENCES playwrights(id)

);

CREATE TABLE playwrights(
    id INTEGER  PRIMARY KEY,
    name TEXT NOT NULL,
    birth_year INTEGER
 
);

INSERT INTO 
playwrights (name,birth_year)
VALUES
('Arthur Miller' ,1991),
('Kennedy Fredick',1992);
INSERT INTO
plays(title,year,playwrights_id)
VALUES
("All my Sons",1947,(SELECT id FROM playwrights WHERE name='Arthur Miller')),
('Long Day Journey',1948,(SELECT id FROM playwrights WHERE name='Kennedy Fredick'));

