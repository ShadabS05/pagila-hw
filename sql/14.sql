/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
SELECT film.title
FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id = film.film_id
WHERE category.name ILIKE 'Family'
GROUP BY film.title
ORDER BY film.title;
