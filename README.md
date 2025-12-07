**Anime Analytics ETL Pipeline Using Microsoft Fabric**
Dashboard Preview
<img width="562" height="316" alt="image" src="https://github.com/user-attachments/assets/7749e34a-532b-4484-9831-7646d850503e" />



**Project Overview**
In this project, I built a complete end-to-end ETL pipeline using Microsoft Fabric, PySpark, SQL, and Power BI.
The goal was to collect anime metadata from the Jikan REST API, transform it into a clean analytical dataset, store it in a Lakehouse, and design a dashboard to visualize trends in anime ratings, genres, popularity, and studio performance.

**Project Workflow**
**1. **Extract — Collecting Data from the Jikan API****

I started by connecting to the Jikan Anime API through a PySpark notebook.
The API provides rich metadata such as:

Anime titles

Genres

Studios

Scores and popularity metrics

Type (TV, Movie, OVA, etc.)

Seasons and release years

The raw JSON response was converted into a PySpark DataFrame for further processing.

**2. **Transform — Cleaning & Structuring the Dataset****

Inside the Fabric PySpark notebook, I performed several transformations:

Extracted nested fields like genres and studios

Handled missing and null values

Casted numeric values into correct data types

Selected and renamed the columns required for analysis

Added a simplified studio and genre column for dashboard use

After cleaning, I generated a final curated table called anime_cleaned, which became the core dataset for SQL queries and reporting.

The final dataset was saved in the Microsoft Fabric Lakehouse in Delta format.

**3. Load — Querying and Modeling with Fabric SQL Endpoint**

I used the Fabric SQL endpoint to run analytical queries stored in the sql/ folder:

SQL File	Purpose
sql_top_anime.sql	Retrieves top 10 anime ranked by score
sql_genre_count.sql	Counts anime grouped by genre
sql_year_count.sql	Shows anime distribution across release years

These SQL outputs were later connected to Power BI for data modeling and visualization.

**Technologies & Tools Used**

Tool / Technology	Role
PySpark	Data ingestion and transformation
Requests & Pandas	API calling & initial JSON handling
Microsoft Fabric Lakehouse	Storage for raw & cleaned Delta tables
Fabric SQL Endpoint	Querying and analytics
Power BI Desktop	Designing the dashboard
GitHub	Version control and documentation

**How I Ran the Project End-to-End**

**1. Cloned the Repository**
git clone https://github.com/mishragourav0006-ops/anime_fabric_project.git
cd anime_fabric_project

**2. Executed the PySpark Notebook in Fabric**

From notebook/anime_ingestion_cleaning.ipynb, I ran all cells to:

Fetch data from the API

Clean and restructure the dataset

Save the final table into the Lakehouse

**3. Ran SQL Files for Analysis**

The SQL scripts validated the cleaned table and prepared key analytics such as:

SELECT title, score
FROM anime_cleaned
ORDER BY score DESC
LIMIT 10;


These outputs helped define the Power BI visuals.

**4. Built the Power BI Dashboard**

Using the SQL endpoint as a data source, I created visuals illustrating:

Top-rated anime

Genre distribution

Score trends over the years

Comparison of anime types

Popularity vs score insights

Studio-level contributions

Dashboard Insights

Some of the insights I observed:

TV shows form the majority of anime releases

Action and Comedy emerged as the most dominant genres

The early 2000s showed strong scoring trends across many titles

Several anime ranked high but did not have similarly high popularity levels

Studios vary significantly in terms of the average scores they produce

**Project Structure**
anime_fabric_project/
│
├── dashboard/
│   └── Anime_Dashboard.png
│
├── notebook/
│   └── anime_ingestion_cleaning.ipynb
│
├── sql/
│   ├── sql_genre_count.sql
│   ├── sql_top_anime.sql
│   └── sql_year_count.sql
│
└── README.md

**Conclusion**

This project helped me demonstrate my ability to:

Work with REST APIs and handle semi-structured JSON data

Build ETL workflows using PySpark inside Microsoft Fabric

Store and query data using Lakehouse architecture

Apply SQL for analytical exploration

Develop a polished, interactive dashboard in Power BI

Structure and present a professional data engineering mini-projectolio
