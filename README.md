# Video Game Sales Data Analysis Using SQL

## Project Overview
This analyzes video game sales data using SQL to identify sales trends, top-performing genres, regional market performance, and publisher insights. The analysis helps uncover patterns in the gaming industry and demonstrates SQL skills for data analytics.
---
## Objectives
- Analyze global video game sales trends
- Identify top-selling games and genres
- Compare regional sales performance
- Examine publisher and platform success
- Practice SQL querying and data analysis techniques
- Average sales by platform
---

## Tools & Technologies Used
- SQL
- Excel
- GitHub
- Tableau

---

## Dataset Information
- Source: Kaggle
- Dataset: Video Game Sales Dataset
- Records: 16,000+ video game entries
- Features Included:
  - title
  - console
  - genre
  - publisher
  - developer
  - critic_score
  - total_sales
  - north_america_sales
  - japan_sales
  - europe_african_sales
  - other_sales
  - relese_date
---

## Analysis Questions
1. Which video games achieved the highest global sales?
2. Which genre generated the most revenue?
3. How do sales differ across regions?
4. Which publishers dominated global sales?
5. Which platform/console had the most successful games?
6. What games were released > 2010?
---

## SQL Skills Demonstrated
- SELECT statements
- WHERE filtering
- GROUP BY
- ORDER BY
- Aggregate Functions
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions

---

## Key Insights
- Grand Theft Auto V generated the highest global sales.
- Sport games generated the highest global sales among all genres.
- North America contributed the largest portion of video game revenue.
- The top five publishers are: Activision, Electronic Arts, EA Sports, Ubisoft, and THQ.
- Among the top 10 sales by console, GBC generated the highest average sales
- Sales performance varied significantly across gaming platforms and regions.

---

## Project Structure

video-game-sales-analysis/
│
├── README.md
├── dataset/
├── sql_queries/
├── visuals/
└── dashboard/

---

## Sample SQL Query

```sql

SELECT TOP 10 genre, SUM(total_sales) as totalsales_genre
FROM videogame
GROUP BY genre
ORDER BY totalsales_genre DESC;
