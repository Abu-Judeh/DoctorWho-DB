-- Inserting into tblAuthors
INSERT INTO tblAuthors VALUES
(1, 'Author1'),
(2, 'Author2'),
(3, 'Author3'),
(4, 'Author4'),
(5, 'Author5');

-- Inserting into tblDoctors
INSERT INTO tblDoctors VALUES
(1, 'DR1',05991,'1963-1-23', '1963-1-23'),
(2, 'DR2',05991,'1963-2-23', '1963-2-23'),
(3, 'DR3',05991,'1963-3-23', '1963-3-23'),
(4, 'DR4',05991,'1963-4-23', '1963-4-23'),
(5, 'DR5',05991,'1963-5-23', '1963-5-23');

-- Inserting into tblCompanions
INSERT INTO tblCompanions VALUES
(1, 'Companion1','Actor a'),
(2, 'Companion2','Actor b'),
(3, 'Companion3','Actor c'),
(4, 'Companion4','Actor d'),
(5, 'Companion5','Actor e');

-- Inserting into tblEnemies
INSERT INTO tblEnemies VALUES
(1, 'Enemy 1', 'Description 1'),
(2, 'Enemy 2', 'Description 2'),
(3, 'Enemy 3', 'Description 3'),
(4, 'Enemy 4', 'Description 4'),
(5, 'Enemy 5', 'Description 5');

-- Inserting into tblEpisodes
INSERT INTO tblEpisodes VALUES
(1, 1, 'Episode Type 1', 'Episode 1', '1963-11-23', 1, 1),
(2, 2, 'Episode Type 2', 'Episode 2', '1966-10-29', 2, 2),
(3, 3, 'Episode Type 3', 'Episode 3', '1970-01-03', 3, 3),
(4, 4, 'Episode Type 4', 'Episode 4', '1974-06-08', 4, 4),
(5, 5, 'Episode Type 5', 'Episode 5', '1982-03-21', 5, 5);

-- Inserting into tblEpisodeCompanions
INSERT INTO tblEpisodeCompanions VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5);
-- Inserting into tblEpisodeEnemies
INSERT INTO tblEpisodeEnemies VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5);
