**Dashboard Preview**

<img width="1346" height="673" alt="image" src="https://github.com/user-attachments/assets/559098fa-69de-4b79-b019-acdb41b0ab30" />


(Insert your dashboard image here once GitHub renders it)

**Project Workflow**

This project follows a structured Fabric ETL pipeline, executed through a PySpark notebook and SQL queries:

**1️. Extract — API Data Collection**

File: notebook/anime_ingestion_cleaning.ipynb

.Connects to Jikan REST API
.Fetches anime metadata (title, score, genres, type, popularity, etc.)
.Raw JSON is converted into a PySpark DataFrame

**2️ Transform — Data Cleaning in PySpark**

The PySpark notebook performs the following:

.Extracts nested fields (genres, studios)
. Handles missing values
. Casts numeric fields
. Renames and selects key analytics columns
. Creates the final cleaned table: anime_cleaned

➡ Output stored in Fabric Lakehouse (Delta Format)

**3️ Load — Store & Query with Fabric SQL Endpoint
**
SQL files located in the sql/ folder include:

SQL File	Purpose
sql_top_anime.sql	Top 10 anime by score
sql_genre_count.sql	Count of anime per genre
sql_year_count.sql	Anime distribution by year

. The Delta table is queryable inside Fabric using SQL Analytics Endpoint
.  Results feed into the Power BI dashboard

**Technologies & Tools Used**
Tool / Tech	Purpose
Python (PySpark)	Data ingestion & transformation inside Fabric Notebook
Requests, Pandas	API calls & initial data handling
Microsoft Fabric Lakehouse	Storage of raw & cleaned Delta tables
Fabric SQL Endpoint	Running analytical SQL queries
Power BI Desktop	Interactive dashboard & visuals
Git & GitHub	Version control & project hosting
➡ How to Run This Project End-to-End
**Prerequisites**

Microsoft Fabric workspace

Python environment inside Fabric Notebook

Power BI Desktop installed

Git installed (optional, for local work)

**Step-by-Step Setup**
1️.Clone the repository
git clone https://github.com/mishragourav0006-ops/anime_fabric_project.git
cd anime_fabric_project

2️. Open the PySpark notebook in Microsoft Fabric

Navigate to:

notebook/anime_ingestion_cleaning.ipynb


Run all cells to:

. Fetch API data
. Clean & transform it
. Save the final Delta table into Lakehouse

3️. Run SQL Queries (Optional but Recommended)

Open each SQL file inside sql/:

Example: Top Anime
SELECT title, score
FROM anime_cleaned
ORDER BY score DESC
LIMIT 10;


These queries validate the dataset and feed into Power BI modeling.

4️. Open the Power BI Dashboard

Download the dataset via Fabric SQL endpoint
Import into Power BI → build visuals OR open your saved .pbix file
View insights like:

Top-rated anime

Genre distribution

Score trends

Anime type breakdown

Popularity vs Score correlations

Dashboard Insights (Summary)

.TV anime dominate the dataset compared to Movies
.Action & Comedy are the most frequent genres
.Rating trends show peak quality around 1999–2003
.Some anime score high but are not extremely popular (and vice-versa)
.Studios contribute differently to score and popularity metrics

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

This project demonstrates your ability to:

. Build a professional ETL pipeline
. Work with APIs & PySpark
. Use Microsoft Fabric Lakehouse + SQL
. Build real-world dashboards in Power BI
. Structure a clean data engineering project for your portfolio
