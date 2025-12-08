**Microsoft Fabric Anime Analytics ETL Pipeline.**
**Dashboard Preview**
It is easy to establish the driver factors that would contribute in the production of a new product.
<img width="1100" height="633" alt="image" src="https://github.com/user-attachments/assets/f4cca76a-b2f1-40e3-94f6-60c081d605c7" />


**Project Overview**
This project allowed me to create a complete end-to-end ETL pipeline with Microsoft Fabric, PySpark, SQL, and Power BI.
It was proposed to fetch anime metadata via the Jikan REST API, transform it to an analytic dataset that does not contain errors and then store it in a lakehouse and make a dashboard to visualize the trends in anime ratings, genres, popularity, and studio performance.

**Project Workflow**
**Extract** -- Collection of Data on the Jikan API.

In the beginning first i connected to Jikan Anime API through a PySpark notebook.
The API provided a completed metadata such as:

Anime titles

Genres

Studios

Measures and scores of popularity.

Type (TV, Movie, OVA, etc.)

Seasons and release years

The raw JSON data were converted into a DataFrame to be used in PySpark.

Transform Cleaning Arranging the Data.

In the Fabric PySpark notebook, I ran the following number of transformations:

Strategy of nested fields like studios and genres was picked out.

Robbed missing values and null values.

Transforming numerical values to meaningful data.

Analysis of chosen and renamed columns had to be done.

Added simplified column that has dashboard studio and genre column.

My last cleaned table, animecleaned, was developed after the cleaning process, which would be the starting point of SQL queries and reports.

The final data had been stored in the Microsoft Fabric Lakehouse in Delta format.

Load Loading with Fabric SQL Endpoint Querying and Modeling Endpoint Loading Endpoint Querying and Modeling Endpoint Querying and Modeling Endpoint Loading Endpoint Querying and Modeling Endpoint Querying and Modeling Endpoint Loading Endpoint Querying and Modeling Endpoint Querying and Modeling Endpoint Querying and Modeling Endpoint Loading Endpoint Querying and Modeling Endpoint Querying and Modeling Endpoint Loading Endpoint Querying and Modeling Endpoint Querying and Modeling Endpoint Querying and Modeling Endpoint Querying and Modeling Endpoint Query

In order to run the analytical queries stored in the SQL/ folder I made use of fabric SQL endpoint:

SQL File Purpose
sqltopanime.sql Retrieves 10 anime with the most score.
sqlgenrecount.sql Counts of genres of anime.
sqlyearcount.SQL Shows the distribution of anime according to the year of release.

These SQL results were then linked to power BI to model data and visualize the data.

**Technologies & Tools Used**

**Tool / Technology Role**
PySpark Processing and converting data.
Requests & Pandas Calling of API and initial JSON processing.
Delta table storage Microsoft Fabric Lakehouse Raw and cleaned.
Fabric SQL Endpoint Query and analytics.
BI Desktop Design Dashboards.
GitHub Version control and documentation.

**My End to End Project Management.**

**Cloned the Repository**
git clone https://github.com/mishragourav0006-ops/animefabricproject.git.
cd animefabricproject

PySpark Notebook in Fabric.

According to notebook/animeingestioncleaning.ipynb, I ran each of the cells:

Fetch data from the API

Repurify and restructure the information.

the final table store into the Lakehouse.

Ran SQL Files for Analysis

The table that had been purged and prepped with the key analytics such as: were checked by the SQL scripts.

SELECT title, score
FROM animecleaned
ORDER BY score DESC
LIMIT 10;

These deliverables were used to describe the Power BI images.


Built the Power BI Dashboard

Being the data source, I referred to the SQL endpoint and created visuals representing:

Top-rated anime

Genre distribution

Score trends over the years

Comparison of anime types

Popularity Insight vs score insight.

Studio-level contributions

**Dashboard Insights**

**Some notable observations of mine were:**

Anime releases of the largest ones consist of TV shows.

Action and Comedy became the most dominant ones.

Most of the titles had good tendency in the scores in the early 2000s.

The same levels of popularity have not been enjoyed by some of the anime that have ranked high.

The differences between the studios are great as far as average scores they produce are concerned.

**Project Structure**
animefabricproject/

+-- dashboard/
+-- AnimeDashboard.png

+-- notebook/
+-- animeingestioncleaning.ipynb

+-- sql/
+-- sqlgenrecount.sql
+-- sqltopanime.sql
+-- sqlyear_count.sql

+-- README.md

**Conclusion***

By way of this project, I could demonstrate that I could:

FREST API manipulate and work with semi-structured data (in JSON).

adapt PySpark ETL on Microsoft Fabric.

Lakehouse architecture Store and query data.

Use SQL as an analytical tool.

Produce an interactive dashboard smoothly in power bi.

Create a mini-project in the field of professional data engineering.
