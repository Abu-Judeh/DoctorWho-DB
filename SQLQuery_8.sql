CREATE VIEW viewEpisodes AS
SELECT
    a.AuthorName,
    d.DoctorName,
    dbo.fnCompanions(e.EpisodeId) AS Companions,
    dbo.fnEnemies(e.EpisodeId) AS Enemies
FROM
    tblEpisodes e
    JOIN tblAuthors a on a.AuthorId=e.AuthorId
    JOIN tblDoctors d ON d.DoctorId=e.DoctorId;
