UPDATE tblEpisodes
SET Title=CONCAT(Title,'_CANCELLED')
WHERE EpisodeId IN (
    SELECT e.EpisodeId
    FROM tblEpisodes e
    LEFT JOIN tblDoctors d ON d.DoctorId=e.DoctorId
    WHERE d.DoctorId IS NULL
);