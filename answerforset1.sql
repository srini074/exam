Create Database answer
Use answer

CREATE TABLE artists (
    artist_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50) NOT NULL,
    birth_year INT NOT NULL
);

CREATE TABLE artworks (
    artwork_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    artist_id INT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    artwork_id INT NOT NULL,
    sale_date DATE NOT NULL,
    quantity INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (artwork_id) REFERENCES artworks(artwork_id)
);

INSERT INTO artists (artist_id, name, country, birth_year) VALUES
(1, 'Vincent van Gogh', 'Netherlands', 1853),
(2, 'Pablo Picasso', 'Spain', 1881),
(3, 'Leonardo da Vinci', 'Italy', 1452),
(4, 'Claude Monet', 'France', 1840),
(5, 'Salvador Dalí', 'Spain', 1904);

INSERT INTO artworks (artwork_id, title, artist_id, genre, price) VALUES
(1, 'Starry Night', 1, 'Post-Impressionism', 1000000.00),
(2, 'Guernica', 2, 'Cubism', 2000000.00),
(3, 'Mona Lisa', 3, 'Renaissance', 3000000.00),
(4, 'Water Lilies', 4, 'Impressionism', 500000.00),
(5, 'The Persistence of Memory', 5, 'Surrealism', 1500000.00);

INSERT INTO sales (sale_id, artwork_id, sale_date, quantity, total_amount) VALUES
(1, 1, '2024-01-15', 1, 1000000.00),
(2, 2, '2024-02-10', 1, 2000000.00),
(3, 3, '2024-03-05', 1, 3000000.00),
(4, 4, '2024-04-20', 2, 1000000.00);

Select * from artists
select * from artworks
select * from sales
Select name from artists


-- 2nd
Select total_amount from sales where artwork_id in
(Select artwork_id from artworks 
	where title = 'Mona Lisa')
-- 3rd
Select title, price,totalprice as t from artworks
where t = price + 10%(price)
-- 4th

Select YEAR(sale_date) from sales where artwork_id in
(Select artwork_id from artworks 
	where title='Guernica')
--5th
Select name from artists
Join artworks on artists.artist_id=artworks.artist_id
where artist_id 

--6th
Select * from artworks
Inner join sales on artworks.artwork_id=sales.artwork_id
where total_amount > max(total_amount)

--7th
Select AVG(price) from artworks
where artist_id in 
(Select name from artists
where artworks.artist_id=artists.artist_id)

--8th
Select title from artworks
where price = max(price),max(price)-1

--9th


--10th

Select name from artists
where birth_year < AVG(birth_year)

--11th
Select name from artists 
where artist_id in
(Select artist_id from artworks
	where genre = 'Cubism' & 'Surrealism')

--12th
Select title from artworks where artwork_id in
(Select artwork_id from sales 
	where MONTH(sale_date) = 01 && 02)

--13th

Select name from artists
where artist_id in 
(Select artist_id from artworks 
where price > AVG(price) 
having genre='Renaissance'

--14th

Select name from artists
	where artist_id in 
	( Select artist_id from artworks 
		where artwork_id in)
		(Select artwork_id from sales 
				where RANK(total_amount) <4)

--15th

--16th

Select title,AVG(price) from artworks
	where price > AVG(price)
	
--17th


--18th

Select title,artist_id from artworks
	where artist_id in  
	( Select price from artworks
		where price > AVG(price) )
		
--19th

select 
		
		artists.artist_id as 'artists.artist_id', 
		name as 'artists.name', 
		country as 'artists.country', 
		birth_year as'artists.birth_year',
		artworks.artwork_id as'artworks.artwork_id', 
		title as 'artworks.title',
		artworks.artist_id as 'artworks.artist_id',
		artworks.gere as 'artworks.genre',
		artworks.price as 'artworks.price',

FROM artists a
    JOIN artworks  ON artists.artist_id = artworks.artwork_id
    JOIN name n ON artists.artist_id = artworks.artist_id
    
FOR JSON Path, Root('artists')

--20th

select 
		
		artists.artist_id as 'artists.artist_id', 
		name as 'artists.name', 
		country as 'artists.country', 
		birth_year as'artists.birth_year',
		artworks.artwork_id as'artworks.artwork_id', 
		title as 'artworks.title',
		artworks.artist_id as 'artworks.artist_id',
		artworks.gere as 'artworks.genre',
		artworks.price as 'artworks.price',

FROM artists a
    JOIN artworks  ON artists.artist_id = artworks.artwork_id
    JOIN name n ON artists.artist_id = artworks.artist_id
    
FOR XML Path, Root('artists')

--21st

Declare @NEWsale int = 1500.00



While @Counter > 0
Begin 
	Print @Counter
	Set @Counter = @Counter - 1

End
UPDATE 
sale_id
Execute spGetMoviesByGenre @Genre = 'Action'

--24th

GO
CREATE TRIGGER trg_artwork
ON artworks 
after Update
AS
BEGIN
    insert into price
    select artwork.price, i.price
    from inserted i,deleted d
END
GO
 
UPDATE artworks
set 
where artwork_id=5
 
SELECT * FROM artworks
SELECT * FROM artists 

--26th

| id  | customer_name | customer_email       | product_name | product_category | product_price | order_date | order_quantity | order_total_amount |
| --- | ------------- | -------------------  | ------------ | ---------------- | ------------- | ---------- | -------------- | ------------------ |
| 1   | Alice Johnson | alice@example.com    | Laptop       | Electronics      | 1200.00       | 2023-01-10 | 1              | 1200.00            |
| 2   | Bob Smith     | bob@example.com      | Smartphone   | Electronics      | 800.00        | 2023-01-15 | 2              | 1600.00            |
| 3   | Alice Johnson | alice@example.com    | Headphones   | Accessories      | 150.00        | 2023-01-20 | 2              | 300.00             |
| 4   | Charlie Brown | charlie@example.com  | Desk Chair   | Furniture        | 200.00        | 2023-02-10 | 1              | 200.00             |

-- Normalized form is as follows

| id  | customer_name | customer_email     |
| --- | ------------- | -------------------|
| 1   | Alice Johnson | alice@example.com  |
| 2   | Bob Smith     | bob@example.com    |
| 3   | Alice Johnson | alice@example.com  |
| 4   | Charlie Brown | charlie@example.com|

| id | product_name | product_category | product_price |
| ---| ------------ | ---------------- | ------------- |
| 1  | Laptop       | Electronics      | 1200.00       |
| 2  | Smartphone   | Electronics      | 800.00        |
| 3  | Headphones   | Accessories      | 150.00        |
| 4  | Desk Chair   | Furniture        | 200.00        |

| id  | product_category | product_price | order_date | order_quantity | order_total_amount |
| --- | ---------------- | ------------- | ---------- | -------------- | ------------------ |
| 1   | Electronics      | 1200.00       | 2023-01-10 | 1              | 1200.00            |
| 2   | Electronics      | 800.00        | 2023-01-15 | 2              | 1600.00            |
| 3   | Accessories      | 150.00        | 2023-01-20 | 2              | 300.00             |
| 4   | Furniture        | 200.00        | 2023-02-10 | 1              | 200.00             |




