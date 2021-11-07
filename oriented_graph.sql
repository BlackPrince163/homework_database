CREATE TABLE oriented_graph
(
    nodes varchar,
    edges varchar,
    costs integer
);

INSERT INTO oriented_graph
VALUES ('S', null, 0),
       ('S', 'Y', 3),
       ('U', 'S', 3),
       ('U', 'X', 1),
       ('X', 'S', 5),
       ('X', 'U', 2),
       ('Y', 'X', 6),
       ('Y', 'V', 2),
       ('V', 'U', 6),
       ('V', 'Y', 7),
       ('V', 'X', 4);

WITH RECURSIVE journey_cte AS
                   (
                       SELECT nodes, array [nodes] AS path, FALSE AS cycle, costs
                       FROM oriented_graph
                       WHERE edges IS NULL
                       UNION ALL
                       SELECT oriented_graph.nodes,
                              journey_cte.path || oriented_graph.nodes      AS path,
                              oriented_graph.nodes = ANY (journey_cte.path) AS cycle,
                              oriented_graph.costs + journey_cte.costs
                       FROM oriented_graph
                                INNER JOIN journey_cte ON (journey_cte.nodes = oriented_graph.edges) AND NOT cycle),
               short (costs)
                   AS (SELECT MIN(costs)
                       FROM journey_cte
                       WHERE nodes = 'Y')

SELECT DISTINCT path, j.costs
FROM journey_cte j
         INNER JOIN short s ON j.costs = s.costs;