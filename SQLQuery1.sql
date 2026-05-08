SELECT *
FROM videogame


-- Top 10 best selling video games(by total sales)

SELECT TOP(10) title,SUM(total_sales) as Total_Sales_Title from videogame
GROUP BY title
ORDER BY Total_Sales_Title DESC;

-- Total Global Sales

SELECT SUM(total_sales) as Total_Global_Sales
FROM videogame

-- TOP 10 Best Selling Genre

SELECT TOP 10 genre, SUM(total_sales) as totalsales_genre
FROM videogame
GROUP BY genre
ORDER BY totalsales_genre DESC

-- Sales by Region

SELECT 
SUM(na_sales) as North_America,
SUM(jp_sales) as Japan,
SUM(pal_sales) as Europe_African, 
SUM(other_sales) as Other_Region
FROM videogame

-- Top Publishers

SELECT TOP 5 publisher, SUM(total_sales) as totalsales
FROM videogame
GROUP BY publisher
Order BY totalsales DESC;

-- Sales by Platform 

SELECT TOP 10 console, AVG(total_sales) as avg_sales
FROM videogame
GROUP BY console
ORDER BY avg_sales DESC;

-- Games released after 2010

SELECT title,year(release_date) as yearonly
FROM videogame
WHERE year(release_date) > 2010
ORDER BY yearonly DESC;

-- VIEW
CREATE VIEW TopSellingGames AS
SELECT TOP 10 title,genre,total_sales
FROM videogame
WHERE total_sales > 10;


-- STORED PROCEDURE

CREATE PROCEDURE GetGamesbyGenre
	@GenreName VARCHAR(100)
	AS
	BEGIN
		SELECT title,genre,total_sales
		FROM videogame
		WHERE genre = @GenreName
	END;

EXEC GetGamesbyGenre @GenreName = 'Sports'










