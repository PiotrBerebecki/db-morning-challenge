/* CH1 */

SELECT book_id, book_name, max_reservation_time FROM books AS booksearch
WHERE book_search.max_reservation_time > (
SELECT AVG(books.max_reservation_time) FROM books
WHERE books.library = booksearch.library
)

/* CH2a */

SELECT posts.mentor_name, COUNT(likes.post_num)
FROM likes INNER JOIN posts
ON likes.post_num = posts.num
GROUP BY posts.mentor_name


SELECT mentors.name, COUNT(likes.mentor_name) FROM mentors
INNER JOIN posts
ON posts.mentor_name = mentors.name
INNER JOIN likes
ON likes.mentor_name = mentors.name
GROUP BY likes.mentor_name, mentors.name;

/* CH2b */
SELECT mentors.location, likes.post_num FROM mentors
INNER JOIN likes
ON mentors.name = likes.mentor_name;

/* CH3 */
