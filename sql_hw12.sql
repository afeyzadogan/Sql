-- 1-
SELECT COUNT(title) 
FROM film
WHERE length > 
(SELECT AVG(length) FROM film)

-- 2-
SELECT COUNT(title)
FROM film
WHERE rental_rate = ALL
(
SELECT MAX(rental_rate)
FROM film)

-- 3-
SELECT title
FROM film
WHERE rental_rate = ALL
(
SELECT MIN(rental_rate)
FROM film)

AND replacement_cost =(
SELECT MIN(replacement_cost) FROM film)


-- 4-

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC