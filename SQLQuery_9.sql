CREATE PROCEDURE spSummariseEpisodes
AS
BEGIN
    -- The 3 most frequently-appearing companions
    SELECT TOP 3
        c.CompanionName,
        COUNT(ec.CompanionId) AS AppearanceCount
    FROM tblEpisodeCompanions ec
    JOIN tblCompanions c ON c.CompanionId = ec.CompanionId
    GROUP BY c.CompanionName
    ORDER BY COUNT(ec.CompanionId) DESC;

    -- The 3 most frequently-appearing enemies
    SELECT TOP 3
        e.EnemyName,
        COUNT(ee.EnemyId) AS AppearanceCount
    FROM tblEpisodeEnemies ee
    JOIN tblEnemies e ON e.EnemyId = ee.EnemyId
    GROUP BY e.EnemyName
    ORDER BY COUNT(ee.EnemyId) DESC;
END;
