CREATE FUNCTION fnCompanions (@EpisodeId INT)
RETURNS VARCHAR(255)
AS
BEGIN
    DECLARE @Companions VARCHAR(255);
    SELECT @Companions = COALESCE(@Companions +', ','') +c.CompanionName
    FROM tblEpisodeCompanions ec
    JOIN tblCompanions c ON c.CompanionId=ec.CompanionId
    WHERE ec.EpisodeId=@EpisodeId;
    RETURN @Companions;
END;
