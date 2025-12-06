SELECT TOP 10
    title, 
    score, 
    genre, 
    studio
FROM 
    anime_cleaned
WHERE 
    score > 0
ORDER BY 
    score DESC;