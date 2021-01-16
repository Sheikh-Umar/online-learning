-- SECTION 2: SQL SELECT FUNDAMENTALS
-- Challenge: SELECT
-- Q1: Grab the first and last names of every customer and their email address
	SELECT first_name, last_name, email
	FROM customer;
 
-- Challenge: SELECT DISTINCT
-- Q1: Retrieve the distinct rating types our films could have in our database
	SELECT DISTINCT rating
	FROM film;

-- Challenge: SELECT WHERE
-- Q1: A customer forgot their wallet at our store. We need to track down their email to inform them. What is the email for the customer with the name Nancy Thomas?
	SELECT email
	FROM customer
	WHERE first_name = 'Nancy'
	AND last_name = 'Thomas';

-- Q2: A customer wants to know what the movie ‘Outlaw Hanky’ is about. Could you give them the description for the movie ‘Outlaw Hanky’?
	SELECT description
	FROM film
	WHERE title = 'Outlaw Hanky';

-- Q3: A customer is late on their movie return and we’ve mailed them a letter to their address at ‘259 Ipoh Drive’. We should also call them on the phone to let them know. Can you get the phone number for the customer who lives at ‘259 Ipoh Drive’?
	SELECT phone
	FROM address
	WHERE address = '259 Ipoh Drive';


-- Challenge: ORDER BY
-- Q1: We want to reward our first 10 paying customers. What are the customer ids of the first 10 customers who created a payment?
	SELECT customer_id
	FROM payment
	ORDER BY payment_date ASC
	LIMIT 10;

-- Q2: A customer wants to quickly rent a video to watch over their short lunch break. What are the titles of the 5 shortest (in length of runtime) movies?
	SELECT title, length
	FROM film
	ORDER BY length ASC
	LIMIT 5;

-- Q3: If the previous customer can watch any movie that is 50 minutes or less in run time, how many options does she have?
	SELECT COUNT(length)
	FROM film
	WHERE length <= 50;

-- General Challenge 1
-- Q1: How many payment transactions were greater than $5.00?
	SELECT COUNT(amount)
	FROM payment
	WHERE amount > 5;

-- Q2: How many actors have a first name that starts with the letter P?
	SELECT COUNT(first_name)
	FROM actor
	WHERE first_name ILIKE 'P%';

-- Q3: How many unique districts are our customers from?
	SELECT COUNT(DISTINCT(district))
	FROM address;

--Q4: Retrieve the list of names for those distinct districts from the previous question
	SELECT DISTINCT(district)
	FROM address;

-- Q5: How many films have a rating of R and a replacement cost between $5 and $15?
	SELECT COUNT(*)
	FROM film
	WHERE rating = 'R'
	AND replacement_cost BETWEEN 5 AND 15;


-- Q6: How many films have the word Truman somewhere in the title?
	SELECT COUNT(*)
	FROM film
	WHERE title LIKE '%Truman%';


s