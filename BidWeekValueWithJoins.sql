SELECT bw.BidWeekId,
    bw.[Value],
    bw.SiteEntityId,
    s.Name,
    bw.DepartmentEntityId,
    dept.Name,
    bw.DisciplineId,
    disc.DisciplineId,
    bw.ShowId,
    show.ShowCode,
    bw.BuId,
    bu.Name
FROM dwh.BidWeek bw
    JOIN dbo.Entities s ON bw.SiteEntityId = s.EntityId
    JOIN dbo.Entities dept ON bw.DepartmentEntityId = dept.EntityId
    JOIN dbo.Disciplines disc ON bw.DisciplineId = disc.DisciplineId
    JOIN dwh.Show show ON bw.ShowId = show.ShowId
    JOIN dbo.Entities bu ON bw.BuId = bu.EntityId