-- Import the table dump
-- Create the table if not exists
CREATE TABLE IF NOT EXISTS metal_bands (
    band_name VARCHAR(100),
    formed INT,
    split INT,
    style VARCHAR(100)
);

-- Insert data into the table
-- Assuming you've imported the data from the dump

-- Query to list all bands with Glam rock as their main style, ranked by their longevity
SELECT 
    band_name,
    (2022 - formed) - COALESCE(2022 - split, 0) AS lifespan
FROM 
    metal_bands
WHERE 
    style = 'Glam rock'
ORDER BY 
    lifespan DESC;

