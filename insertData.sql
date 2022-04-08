USE northwind;
CREATE TABLE dbo.Workers
(
	wID		INT			NOT NULL PRIMARY KEY IDENTITY (1,1),
	fName	VARCHAR(30) Not NULL,
	info	VARCHAR(100)	Null
);

INSERT INTO dbo.Workers(fname.Info)
VALUES ('Fred', 'Bit of an Idiot');

SELECT * FROM dbo.Workers;

INSERT INTO dbo.Workers(fName, Info)
VALUES ('Doris', 'Very Old'),
		('Ethel', 'Even Older'),
		('George', 'Very Ancient');

INSERT INTO dbo.Workers(fname)
	SELECT FirstName	
	FROM dbo.Employees;

UPDATE dbo.Workers
	SET Info = 'Nothing to say'
WHERE info IS NULL;

UPDATE dbo.Workers
	SET fname = 'Freddy', Info = 'Nice person'
WHERE wID = 1;