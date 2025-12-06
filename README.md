Anime Analytics Project using Microsoft Fabric

This project demonstrates a complete end-to-end data engineering pipeline using Microsoft Fabric, built using data from the Jikan Anime API (a public MyAnimeList API).
The pipeline covers:

. API ingestion
. Data cleaning & transformation using PySpark
. Data storage in Lakehouse
. SQL analysis
. Interactive dashboard creation
. GitHub-based documentation & project structure

This project was created as part of the Big Data Final Semester Project (MADSC102).

→ Project Architecture
Jikan Anime API → Microsoft Fabric Notebook (PySpark)
.Bronze Layer (Raw Data)
.Silver Layer (Cleaned Data)
.SQL queries in Lakehouse
.Power BI Dashboard
.GitHub Repository for Submission

🔗 API Source

We used the free Jikan API:

https://api.jikan.moe/v4/anime


The ingestion script fetches:

Anime titles

Scores

Ranking

Genres

Release year

Type (TV, Movie, OVA, etc.)

→ Technologies Used
Component	Tool
Data Ingestion	Python (requests), Microsoft Fabric Notebook
Data Cleaning	PySpark
Data Storage	Fabric Lakehouse
Data Querying	T-SQL (SQL Endpoint)
Visualization	Power BI (Fabric Dashboard)
Version Control	GitHub
📁 Project Structure
anime_fabric_project/
│
├── dashboard/
│     └── Anime_Dashboard.png
│
├── notebook/
│     └── anime_ingestion_cleaning.ipynb
│
├── sql/
│     ├── sql_genre_count.sql
│     ├── sql_top_anime.sql
│     └── sql_year_count.sql
│
└── README.md

→ Notebook Workflow (ETL)
Step 1 — API Ingestion

Requested the top 25 anime using Jikan API

Converted JSON → PySpark DataFrame

Stored in Bronze table

Step 2 — Data Cleaning

Selected relevant columns

Exploded genre arrays

Removed null/duplicate entries

Converted year and score fields

Stored cleaned data in Silver table

Step 3 — Load to Lakehouse

Saved cleaned dataframe as a Lakehouse table

Exposed the table to SQL Endpoint for query execution

→ SQL Queries
🔹1. Top 10 Highest Rated Anime

File: /sql/sql_top_anime.sql

SELECT title, score
FROM anime_clean
ORDER BY score DESC
LIMIT 10;

🔹2. Anime Count by Genre

File: /sql/sql_genre_count.sql

SELECT genre, COUNT(*) AS anime_count
FROM anime_clean
GROUP BY genre
ORDER BY anime_count DESC;

🔹3. Anime Count by Release Year

File: /sql/sql_year_count.sql

SELECT year, COUNT(*) AS count_anime
FROM anime_clean
GROUP BY year
ORDER BY year ASC;

→ Dashboard Overview

my dashboard includes 5 analytics visuals:

1. Top 10 Anime (Bar Chart)

Axis: Title

Values: Score

Insight: Helps identify the highest-rated anime.

2. Anime Count by Genre (Donut Chart)

Legend: Genre

Values: Count of Titles

Insight: Shows which genres dominate the anime industry.

3. Anime Count by Year (Column Chart)

Axis: Year

Values: Count of Titles

Insight: Identifies anime production trends over time.

4. Anime Type Distribution (Pie Chart)

Field: type

Values: Count

Insight: Shows ratio of TV vs Movie vs OVA etc.

5. Score Distribution (Histogram / Area Chart)

Field: Score

Insight: Shows how anime scores are spread.

Screenshot is stored in:
/dashboard/Anime_Dashboard.png

Insights & Conclusion

. TV series dominate the anime landscape
. Scores are mostly between 7.0 – 8.5, meaning quality is consistently high
. Action, Adventure, and Fantasy are the most common genres
. Anime production increased significantly after 2010
. The highest-rated anime are generally long-running or critically acclaimed series

This project demonstrates the ability to:

Integrate real-world APIs

Build ETL pipelines in Microsoft Fabric

Transform datasets with PySpark

Query structured tables with SQL

Create meaningful dashboards for analytics

How to Run This Project
1. Clone the repo
git clone https://github.com/yourusername/anime_fabric_project.git

2. Open the notebook in Microsoft Fabric

Upload anime_ingestion_cleaning.ipynb.

3. Run the notebook

This will ingest API data and create Lakehouse tables.

4. Run SQL Scripts

Use the SQL Endpoint and run scripts in /sql folder.

5. Import Dashboard

Recreate visuals in Power BI using your Fabric semantic model.

Final Notes

This project fulfills all required components of a Big Data ETL + Visualization assignment:

. Data ingestion
. Data cleaning
. Data storage
. SQL analysis
. Dashboard insights
. GitHub submission# anime_fabric_project

