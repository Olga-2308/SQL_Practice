ALTER TABLE Films
DROP INDEX idx_full_film_info;

CREATE INDEX idx_full_film_info
ON Films (title, director, release_year);