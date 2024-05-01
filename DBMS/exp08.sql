-- Alter table emp and make enumber as primary key
ALTER TABLE emp ADD PRIMARY KEY (enumber);

-- Alter table emp and add foreign key company from company table
ALTER TABLE company ADD PRIMARY KEY (cname);
ALTER TABLE emp ADD FOREIGN KEY (company) REFERENCES company(cname);

-- Add a check constraint to emp table to ensure that salary is greater than 0
ALTER TABLE emp ADD CHECK (salary > 0);

-- Add a unique constraint to cname table to ensure that cname is unique
ALTER TABLE company ADD UNIQUE (cname);

-- Add a default constraint to column city of company table to set it to 'Delhi'
ALTER TABLE company ALTER COLUMN ccity SET DEFAULT 'Delhi';