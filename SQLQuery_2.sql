USE DoctorWho;

CREATE TABLE tblAuthors (
    AuthorId INT PRIMARY KEY,
    AuthorName VARCHAR(255) NOT NULL
);

CREATE TABLE tblDoctors (
    DoctorId INT PRIMARY KEY,
    DoctorName VARCHAR(255) NOT NULL,
    DoctorNumber INT NOT NULL,
    BirthDate DATE NOT NULL,
    FirstEpisodeDate DATE NOT NULL
);

CREATE TABLE tblCompanions (
    CompanionId INT PRIMARY KEY,
    CompanionName VARCHAR(255) NOT NULL,
    WhoPlayed VARCHAR(255) NOT NULL


);

CREATE TABLE tblEnemies (
    EnemyId INT PRIMARY KEY,
   EnemyName VARCHAR(255) NOT NULL,
   Description VARCHAR(255) NOT NULL
);

CREATE TABLE tblEpisodes (
    EpisodeId INT PRIMARY KEY,
    SeriesNumber INT  NOT NULL,
    EpisiodType VARCHAR(255) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    EpisiodDate DATE NOT NULL,
    AuthorId INT,
    DoctorId INT,
    FOREIGN KEY (AuthorId) REFERENCES tblAuthors(AuthorId),
    FOREIGN KEY (DoctorId) REFERENCES tblDoctors(DoctorId)
);

CREATE TABLE tblEpisodeCompanions (
    EpisodeCompanionId INT,
    EpisodeId INT,
    CompanionId INT,
    PRIMARY KEY (EpisodeId),
    FOREIGN KEY (EpisodeId) REFERENCES tblEpisodes(EpisodeId),
    FOREIGN KEY (CompanionId) REFERENCES tblCompanions(CompanionId)
);

CREATE TABLE tblEpisodeEnemies (
    EpisodeEnemyId INT,
    EpisodeId INT,
    EnemyId INT,
    PRIMARY KEY (EpisodeId, EnemyId),
    FOREIGN KEY (EpisodeId) REFERENCES tblEpisodes(EpisodeId),
    FOREIGN KEY (EnemyId) REFERENCES tblEnemies(EnemyId)
);
