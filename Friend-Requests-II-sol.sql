/* Write your T-SQL query statement below */
SELECT TOP 1 requester_id as id, COUNT(*) as num FROM 
(SELECT requester_id FROM RequestAccepted
UNION ALL
SELECT accepter_id FROM RequestAccepted
) AS Combined
GROUP BY requester_id
ORDER BY num DESC;
