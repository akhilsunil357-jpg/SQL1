USE mashup;


CREATE TABLE CINEMA(
    ID INT(4) PRIMARY KEY AUTO_INCREMENT,
TITLE VARCHAR(100) NOT NULL,
GENRE VARCHAR(100) NOT NULL,
RELEASE_YEAR INT(6) not NULL,
RATING DECIMAL(2,1) NOT NULL,
BOX_OFFICE INT(100) NOT NULL
);


INSERT INTO CINEMA(ID,TITLE,GENRE,RELEASE_YEAR,RATING,BOX_OFFICE) VALUES
(1, 'Inception', 'Sci-Fi', 2010, 8.8, 825),
(2, 'The Dark Knight', 'Action', 2008, 9.0, 1004),
(3, 'Interstellar', 'Sci-Fi', 2014, 8.6, 677),
(4, 'Joker', 'Drama', 2019, 8.4, 1074),
(5, 'Dunkirk', 'War', 2017, 7.9, 527);


SELECT * FROM CINEMA;


--Show only the movie title and its box_office collection but rename the column box_office as Earnings (in Cr).--

SELECT TITLE , BOX_OFFICE AS `EARNINGS (IN CR)` FROM CINEMA;


--Display the movie titles and rename them as Movie Title, along with their genre as Category.--

SELECT TITLE AS 'MOVIE TITLE',GENRE AS 'CATEGORY' FROM CINEMA;

--Select all movies where genre is either 'Sci-Fi' or 'Action' using IN, and rename rating as IMDb Score.--

SELECT TITLE , RATING, GENRE AS `INDb Score` from CINEMA
WHERE GENRE IN ('SCI-FI','ACTION');

--Find movies released between 2008 and 2015 and rename the year column as Release.--

SELECT TITLE,RATING,GENRE,RELEASE_YEAR AS 'RELEASE' FROM CINEMA
WHERE RELEASE_YEAR BETWEEN 2008 AND 2015; 

--Find out how many movies have a rating greater than 8.5 and rename the result as High Rated Movies--

SELECT TITLE , RATING AS 'HIGH RATING MOVIES' FROM CINEMA WHERE RATING > 8.5 ;

