SELECT soq.Id,
    soq.[Value],
    soq.[Date],
    e.Name AS SiteName,
    d.DisciplineName,
    soqs.Name AS ScenarioName,
    s.ShowCode,
    s.ShowName,
    al.CareerLevel AS MetricTypeName,
    soqmt.Description
FROM dwh.ShowOnesQuota soq
JOIN dwh.ShowOnesQuotaUniqueFilter soquf ON soq.UniqueFilterId = soquf.Id
JOIN dbo.Entities e ON soquf.SiteId = e.EntityId
JOIN dbo.Disciplines d ON soquf.DisciplineId = d.DisciplineId
JOIN dwh.ShowOnesQuotaScenario soqs ON soquf.ScenarioId = soqs.Id
JOIN dwh.Show s ON soqs.ShowId = s.ShowId
JOIN ref.ArtistLevel al ON soq.SeniorityLevelId = al.Id
JOIN ref.ShowOnesQuotaMetricTypes soqmt ON soq.MetricTypeId = soqmt.Id