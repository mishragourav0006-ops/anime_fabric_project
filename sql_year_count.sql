SELECT type, AVG(score) AS avg_score
FROM anime_cleaned
GROUP BY type
ORDER BY avg_score DESC;
