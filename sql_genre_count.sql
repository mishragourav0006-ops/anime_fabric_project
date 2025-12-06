 SELECT 
    genre, 
    COUNT(*) AS anime_count
FROM 
    anime_cleaned
GROUP BY 
    genre
ORDER BY 
    anime_count DESC;
