USE DoctorWho
DELETE FROM tblCompanions
WHERE CompanionId NOT IN(
    SELECT DISTINCT CompanionId
    FROM tblEpisodeCompanions
);