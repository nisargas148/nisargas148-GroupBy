-- Notice that using WHERE filtered records before aggregation - what if we would like to filter
--  records after they've been aggregated? For instance, if we would like to exclude artists that
--  have a low total runtime or high average runtime? For this, we will use the HAVING keyword
--  instead. For instance, the song table
--      | id | artist          | song                | runtime |
--      |----|-----------------|---------------------|---------|
--      |1   | 'Peter Gabriel' |'Solsbury Hill'      | 261     |
--      |2   | 'Peter Gabriel' |'In your eyes'       | 323     |
--      |3   | 'Phil Collins'  |'In the air tonight' | 299     |
--      |4   | 'Kate Bush'     |'Wuthering Heights'  | 244     |
--      |5   | 'Kate Bush'     |'Babooshka'          | 206     |
--      |6   | 'Kate Bush'     |'Cloudbusting'       | 306     |
-- and SQL query
--  SELECT artist, COUNT(*) from Song GROUP BY artist HAVING COUNT(*) > 1
-- will produce the result
--      | artist          | count(*) |
--      | 'Peter Gabriel' | 2        |
--      | 'Kate Bush'     | 3        |
-- Notice that the artists with 1 song have been excluded, and that the HAVING clause follows the
--  GROUP BY clause (whereas a WHERE clause would precede GROUP BY)
-- TODO: write a SQL statement that produces only the artists whose longest song is less than 320,
--  using the MAX aggregate function, containing two columns: 'artist' and the aggregate function.