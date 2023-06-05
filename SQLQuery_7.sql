CREATE FUNCTION fnEnemies(@EpisodeId INT)
RETURNS VARCHAR(255)
AS
BEGIN
    DECLARE @Enemies VARCHAR(255);
    SELECT @Enemies = COALESCE(@Enemies+', ','')+e.EnemyName
    FROM tblEpisodeEnemies ee
    JOIN tblEnemies e ON e.EnemyId=ee.EnemyId
    WHERE ee.EpisodeId=@EpisodeId;
    RETURN @Enemies;
END;