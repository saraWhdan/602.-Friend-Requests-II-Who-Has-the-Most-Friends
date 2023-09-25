# 602. Friend Requests II: Who Has the Most Friends
### Problem Link & Description : [Friend Requests II: Who Has the Most Friends](https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/submissions/1058202719/?envType=study-plan-v2&envId=top-sql-50)
## Solution
```sql
/* Write your T-SQL query statement below */
SELECT TOP 1 requester_id as id, COUNT(*) as num FROM 
(SELECT requester_id FROM RequestAccepted
UNION ALL
SELECT accepter_id FROM RequestAccepted
) AS Combined
GROUP BY requester_id
ORDER BY num DESC;
