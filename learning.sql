/* multi 
        line
            comment */



--single line comment

/*   TYPES OF DATA

        Text,  Numeric,  Date

        
        statement or query are lines of SQL

        "RUNNING A QUERY"

        retrieve all informaiton from the table with information about bookds


        SELECT * FROM books;

         ^         ^ 
         ------------------- Both of these are KeyWords    

         * => all information

         ---who are all the users of the library in the patrons table?

         SELECT * FROM patrons;


        RETRIEVING ALL INFORMATION
        ------------------------------
        | SELECT * FROM <table name>; |
        ------------------------------

        > SELECT * FROM users;

        id	username	password	first_name	last_name
        1	chalkers	$2a$10$qUNdEvICzo2vIo85/i8iiubY90liWE8o.EcvdNBw4KtINOv8iccNq	Andrew	Chalkley
        2	sawmac	$2a$10$bnckAlwO2SKxLCHu7D..meXeFs936PztodvykE.SgJ4QZ3Cy.1nje	Dave	McFarland
        3	pasanpr	$2a$10$N12mnNuSFS114jztcvqqoOzeVjDEILhkmfm8yE4yvLx.lmudvVzMq	Pasan	Premaratne
        4	lozzy	$2a$10$3jtLlaXL0kk4mMTaNn/oRO7RQcJ77s2Ijdl9STRQDT6mNOaM0g3nC	Lauren	Chalkley
        5	rocky	$2a$10$h.LhtX2nPzeLcZrjTI9pQu1SQ5VXSuT/re3cppNo6/n72hkP7dA2a	Rachael	Hinkley
        6	wig_lady	$2a$10$4y5tMVDQBHLD6O5HVuwFP.ghly/9OT2kD6fAkdev5cItKjd0zLCcK	Lola	Love
        7	2spooky4me	$2a$10$/KTPkQcFGpqPoUlgefMHAOa6nnyXgVrWEmYqtcqsbJ0YphWrIjXci	Nick	Pettit
        8	racing_car	$2a$10$wMOhSC60IyXYaKPlDsne1OLvdDSfbVNU4RCG5D5KYhItDU2rgMA8i	Cory	Tepper
        9	beard_man	$2a$10$8COKxWD10hzmS6E377PXEO0u02xMcbdoBK6PVNG05jiPsog5cihka	Jim	Hoskins
        10	poley_hands	$2a$10$GfoPQzld9v/H4pvKarh7nOemf8KaDkKilVwdKMcbCEjTJgh95Tb4a	Michael	Poley


        > SELECT * FROM customer_addresses;

            id	nickname	street	city	state	zip	user_id
            1	Home	1874 24th AVE	Lincoln City	OR	97233	1
            2	Work	2538 4th AVE	Tilamook	OR	97242	1
            3	Home	1128 24th PL	Portland	OR	97238	2
            4	Work	2325 4th ST	Salem	OR	97227	2
            5	Home	3392 13th ST	Portland	OR	97260	3
            6	Work	1563 3rd PL	Tilamook	OR	97252	3
            7	Home	320 24th AVE	Portland	OR	97256	4
            8	Work	1199 1st AVE	Lincoln City	OR	97259	4
            9	Home	3411 1st PL	Salem	OR	97240	5
            10	Work	1878 13th AVE	Newport	OR	97249	5
            11	Home	2199 1st AVE	Salem	OR	97204	6
            12	Work	958 2nd PL	Medford	OR	97282	6
            13	Home	3817 13th ST	Portland	OR	97230	7
            14	Work	2328 13th ST	Lincoln City	OR	97231	7
            15	Home	2593 102nd ST	Salem	OR	97253	8
            16	Work	3482 24th AVE	Salem	OR	97256	8
            17	Home	812 103rd ST	Salem	OR	97282	9
            18	Work	2772 6th PL	Portland	OR	97284	9
            19	Home	3457 102nd AVE	Newport	OR	97262	10
            20	Work	2487 102nd AVE	Salem	OR	97296	10



            > SELECT * FROM phone_book;

            id	first_name	last_name	phone
            1	Alena	Holligan	(590)-555-6535
            2	Elizabeth	Kozup	(635)-555-8583
            3	Andrew	Chalkley	(679)-555-1847
            4	Dave	McFarland	(586)-555-4522
            5	Brittney	Blews	(553)-555-9219
            6	Jonathan	Luna	(542)-555-870
        



        -----------------------------------------------------------------------------------------
        Retrieving Specific Columns of Information

        -----------------------------------------------------------------------------------------



        * = ALL

        how do we select a specific column?

        we substitute in the column name


        > SELECT email From patrons         

        this will select the information from that specific column


       > SELECT first_name, email FROM patrons

       this lets us select the first_name and the email from the patron data and it will display in the order I query them


       SELECT <column name> FROM <table name>

> SELECT first_name, last_name FROM users;

            first_name	last_name
            Andrew	Chalkley
            Dave	McFarland
            Pasan	Premaratne
            Lauren	Chalkley
            Rachael	Hinkley
            Lola	Love
            Nick	Pettit
            Cory	Tepper
            Jim	Hoskins
            Michael	Poley


> SELECT name FROM products;

            name
            Retro Gaming T-Shirt
            Generic Super Hero T-Shirt
            Some Quirky Phrase T-Shirt


> SELECT street,city,state,zip FROM customer_addresses;

            street	city	state	zip
            1874 24th AVE	Lincoln City	OR	97233
            2538 4th AVE	Tilamook	OR	97242
            1128 24th PL	Portland	OR	97238
            2325 4th ST	Salem	OR	97227
            3392 13th ST	Portland	OR	97260
            1563 3rd PL	Tilamook	OR	97252
            320 24th AVE	Portland	OR	97256
            1199 1st AVE	Lincoln City	OR	97259
            3411 1st PL	Salem	OR	97240
            1878 13th AVE	Newport	OR	97249
            2199 1st AVE	Salem	OR	97204
            958 2nd PL	Medford	OR	97282
            3817 13th ST	Portland	OR	97230
            2328 13th ST	Lincoln City	OR	97231
            2593 102nd ST	Salem	OR	97253
            3482 24th AVE	Salem	OR	97256
            812 103rd ST	Salem	OR	97282
            2772 6th PL	Portland	OR	97284
            3457 102nd AVE	Newport	OR	97262
            2487 102nd AVE	Salem	OR	97296

> SELECT phone FROM phone_book;

            phone
            (590)-555-6535
            (635)-555-8583
            (679)-555-1847
            (586)-555-4522
            (553)-555-9219
            (542)-555-8703



 -----------------------------------------------------------------------------------------
        ALIASING YOUR OUTPUT WITH 'AS'  ALIASING COLUMN NAMES
 -----------------------------------------------------------------------------------------

You're not restricted to displaying the column names from the table at the top of your results. You can specify your own names for result sets.



SELECT title AS Title, first_published AS "First Published" FROM books;


this displays the title column as Title and the first_published column as "First Published"   < Need quote marks to allow SQL to recognise this as a string 
                                                                                                    and not try to read each separate word



SELECT title Title, first_published "First Published" FROM books;    THIS ALSO WORKS BUT ITS NOT AS CLEAR AS USING... AS 



> SELECT name AS "Product Name", description AS "Product Description" FROM products;

        Product Name	Product Description
        Retro Gaming T-Shirt	All your fave gaming characters on one t-shirt.
        Generic Super Hero T-Shirt	Your fave super hero is on this shirt. Wear it.
        Some Quirky Phrase T-Shirt	Annoy your friends with this t-shirt. They'll seeing this phrase everytime you wear it.

> SELECT username "Username",first_name "First Name",last_name "Last Name" FROM users;

        Username	First Name	Last Name
        chalkers	Andrew	Chalkley
        sawmac	Dave	McFarland
        pasanpr	Pasan	Premaratne
        lozzy	Lauren	Chalkley
        rocky	Rachael	Hinkley
        wig_lady	Lola	Love
        2spooky4me	Nick	Pettit
        racing_car	Cory	Tepper
        beard_man	Jim	Hoskins
        poley_hands	Michael	Poley


> SELECT first_name AS "First Name", last_name AS "Last Name", phone AS "Phone Number" FROM phone_book;

        First Name	Last Name	Phone Number
        Alena	Holligan	(590)-555-6535
        Elizabeth	Kozup	(635)-555-8583
        Andrew	Chalkley	(679)-555-1847
        Dave	McFarland	(586)-555-4522
        Brittney	Blews	(553)-555-9219
        Jonathan	Luna	(542)-555-8703




         
         
-----------------------------------------------------------------------------------------
                                    PRACTICING THE BASICS
-----------------------------------------------------------------------------------------
-- What are all the movies in our database?
SELECT * FROM movies;

-- How do you find all the actors in database?
SELECT * FROM actors;

-- Find all the reviews in the database

SELECT * FROM reviews;

-- Can you find all of the movie titles and release years for every movie?
-- Only bring back those two columns

SELECT title, year_released FROM movies;

-----------------------------------------------------------------------------------------
                                    SEARCHING TABLES WITH 'WHERE'
-----------------------------------------------------------------------------------------

SELECT <columns> FROM <table> WHERE <condition>;

SELECT <columns> FROM <table> WHERE <column name> = <value>;

 -- EXAMPLE

    >SELECT title, author FROM books WHERE first_published = 1997;

 This returns title and author where first_published is 1997

    >SELECT title, first_published FROM books WHERE author = 'J.K. ROWLING';

This returns title and first_published date of all books by J.K. ROWLING


    >SELECT title, first_published FROM books WHERE author !='J.K. ROWLING';
    
This returns title and first_published date of all books !NOT! by J.K. ROWLING

    >SELECT book_id FROM loans WHERE loaned_on = "2015-12-10";

    >SELECT title FROM books WHERE id = 15;


> SELECT first_name, last_name FROM users WHERE username="wig_lady";

        first_name	last_name
        Lola	Love


> SELECT * FROM products WHERE price!=9.99;

        id	name	description	price
        1	Retro Gaming T-Shirt	All your fave gaming characters on one t-shirt.	10.99
        2	Generic Super Hero T-Shirt	Your fave super hero is on this shirt. Wear it.	11.99

-----------------------------------------------------------------------------------------
                                  FILTERING BY COMPARING VALUES 
-----------------------------------------------------------------------------------------


EXAMPLE:
    
     "what books are in the library that were first published after the year 2005?"

>SELECT * FROM books WHERE first_published > 2005;


     "Find all books first published before the 20th century"

>SELECT * FROM books WHERE first_published <= 1900;



> SELECT * FROM results WHERE home_score>12;

        id	home_team	home_score	away_team	away_score	played_on
        1	Hessle	45	Rotherham	13	2015-09-05
        3	Hessle	43	Skipton	0	2015-09-26

> SELECT * FROM results WHERE away_score<10;

        id	home_team	home_score	away_team	away_score	played_on
        3	Hessle	43	Skipton	0	2015-09-26



-----------------------------------------------------------------------------------------
                                  FILTERING MORE THAN ONE CONDITION
-----------------------------------------------------------------------------------------

SELECT <columns> FROM <table> WHERE <condition 1> AND <condition 2> ...;
SELECT <columns> FROM <table> WHERE <condition 1> OR <condition 2> ...;


EXAMPLE "What books in our library were published in the year 2000 and authored by J.K. Rowling?"


> SELECT title FROM books WHERE first_published = 2000 AND author ="J.K. Rowling";


EXAMPLE "What books in our library were AUTHORED NY 'Ernest Cline' or 'Andy Weir'?"

> SELECT title, author FROM books WHERE author='Ernest Cline' OR author='Andy Weir';



> SELECT * FROM results WHERE away_team="Hessle" AND away_score>18;

        id	home_team	home_score	away_team	away_score	played_on
        2	Burley	12	Hessle	19	2015-09-12



-----------------------------------------------------------------------------------------
                                  FILTERING BY DATES
-----------------------------------------------------------------------------------------
EXAMPLE "What are all the oloans that happened before December the 13th 2015"

        >SELECT * FROM loans WHERE loaned_on > "2015-12-13";

EXAMPLE "Which books are due back soon if today is December 18th 2015?"

        >SELECT * FROM loans WHERE return_by > "2015-12-18";




-----------------------------------------------------------------------------------------
                              SEARCHING WITHIN A SET OF VALUES    "IN"
-----------------------------------------------------------------------------------------

-- Who are the people with the Library IDs of MCL1001, MCL1100 or MCL1011?

-- SELECT <columns> FROM <table> WHERE <condition 1> OR <condition 2> OR <condition 3>;

    SELECT first_name, email FROM patrons WHERE library_id = "MCL1001" OR library_id = "MCL1100" OR library_id = "MCL1011";




    "IN" KEYWORD IS MORE USEFUL


-- SELECT <columns> FROM <table> WHERE <column> IN (<value 1>, <value 2>, ...);

    SELECT first_name, email FROM patrons WHERE library_id IN ("MCL1001","MCL1100","MCL1011");



--CAN ALSO USE "NOT IN"

        SELECT first_name, email FROM patrons WHERE library_id NOT IN ("MCL1001","MCL1100","MCL1011");


> SELECT * FROM products WHERE price IN (7.99, 9.99, 11.99);

            id	name	description	price
            2	Generic Super Hero T-Shirt	Your fave super hero is on this shirt. Wear it.	11.99
            3	Some Quirky Phrase T-Shirt	Annoy your friends with this t-shirt. They'll seeing this phrase everytime you wear it.	9.99



-----------------------------------------------------------------------------------------
                              SEARCHING WITHIN A RANGE OF VALUES    "BETWEEN"
-----------------------------------------------------------------------------------------

--- What are the book in the library from the 19th century?

    SELECT title, author FROM books WHERE first_published >= 1800 AND first_published <= 1899;



    "BETWEEN" KEYWORD IS MORE USEFUL


--SELECT <columns> FROM <table> WHERE <column> BETWEEN <lesser value> AND <greater value>;


    SELECT title, author FROM books WHERE first_published BETWEEN 1800 AND 1899;


    SELECT * FROM loans WHERE loaned_on Between "2015-12-13" AND "2015-12-19";


> SELECT * FROM products WHERE price BETWEEN 10.99 and 12.99;

            id	name	description	price
            1	Retro Gaming T-Shirt	All your fave gaming characters on one t-shirt.	10.99
            2	Generic Super Hero T-Shirt	Your fave super hero is on this shirt. Wear it.	11.99





-----------------------------------------------------------------------------------------
                              FINDING DATA THAT MATCHES A PATTERN   "LIKE"
-----------------------------------------------------------------------------------------

-- What are all Harry Potter books in the library?

    SELECT title FROM books WHERE title = "Harry Potter";
    -- 0 results

    SELECT title FROM books WHERE title LIKE "Harry Potter"; 
    -- 0 results

    SELECT title FROM books WHERE title LIKE "Harry Potter%"; 
    -- 7 results

    % is a wild card which looks for anything starting with Harry Potter

     SELECT title FROM books WHERE title LIKE "%universe%"; 
    
    this selects anything with universe in it 

    THE LIKE SEARCH IS CASE-INSENSITIVE :^) 


> SELECT * FROM products WHERE name Like "%t-shirt%";

            id	name	description	price
            1	Retro Gaming T-Shirt	All your fave gaming characters on one t-shirt.	10.99
            2	Generic Super Hero T-Shirt	Your fave super hero is on this shirt. Wear it.	11.99
            3	Some Quirky Phrase T-Shirt	Annoy your friends with this t-shirt. They'll seeing this phrase everytime you wear it.	9.99



            SELECT * FROM users WHERE first_name LIKE "L%";





-----------------------------------------------------------------------------------------
                              FILTERING OUT OR FINDING MISSING INFORMATION
-----------------------------------------------------------------------------------------


--- What are the loans that are due back after December 18th 2015?

SELECT * FROM loans WHERE return_by > "2015-12-18" AND returned_on IS NULL;


                                                                        ^ this lets us know the book hasnt been returned yet    <row> IS NULL or <row> IS NOT NULL

--- What are the loans that are already completed

SELECT * FROM loans WHERE return_by > "2015-12-18" AND returned_on IS NOT NULL;



> SELECT * FROM phone_book WHERE phone IS NULL;

            id	first_name	last_name	phone
            2	Elizabeth	Kozup	
            4	Dave	McFarland	



-----------------------------------------------------------------------------------------
                                    INTRODUCTION TO CRUD
-----------------------------------------------------------------------------------------


                         ---Four Main Data Operations---

                                   > Create      INSERT

                                   > Read        SELECT

                                   > Update

                                   > Delete





-----------------------------------------------------------------------------------------
                                    ADDIBNG A ROW TO A TABLE
-----------------------------------------------------------------------------------------



            > INSERT INTO <table> VALUES (<value 1>, <value 2>, ...);  

                  (ORDER OF THE VALUES HAVE TO BE IN THE CORRECT ORDER )



           > INSERT INTO books VALUES (16, "1984", "George Orwell", "Fiction", 1949);  


            HOW DO WE KEEP THE ID UNIQUE?  USING AUTO-INCREMENT

           > INSERT INTO books VALUES (NULL, "Dune", "Frank Herbert", "Science Fiction, 1965);

            NULL if the AUTO-INCREMENT feature is switched on in the schema will assing dune-entry with a unique id

            we can also use null to set the value to blank if we want to fill it in later


           > INSERT INTO books (id, book_id, patron_id, loaned_on, return_by, returned_on)
             VALUES (NULL, "Dune", "Frank Herbert", "Science Fiction, 1965);

           as long as the declared order of column titles matches the values you put in order it will work the same
           eg changing id to 2nd to last

           > INSERT INTO books ( book_id, patron_id, loaned_on, return_by, id, returned_on)
             VALUES ( "Dune", "Frank Herbert", "Science Fiction, NULL, 1965);


             INSERT INTO users (username, first_name, last_name) VALUES ("chalkers", "Andrew", "Chalkley");

             INSERT INTO users (first_name, last_name, username) VALUES  ("Kenneth", "Love", "ScRiPtKiDdIe");


             SCHEMA CAN SPECIFY WHETHER OR NOT A VALUE CAN BE NULL 



-----------------------------------------------------------------------------------------
                                    ADDING MULTIPLE ROWS TO A TABLE
-----------------------------------------------------------------------------------------

             Inserting multiple rows in a single statement:

            INSERT INTO <table> (<column 1>, <column 2>, ...) 
             VALUES 
                    (<value 1>, <value 2>, ...),
                    (<value 1>, <value 2>, ...),
                    (<value 1>, <value 2>, ...);



                    INSERT INTO movies (title, genre, year_released) 
                    VALUES 
                   ("Starman", "Science Fiction", 1984),
                   ("Moulin Rouge!", "Musical", 2001);


> INSERT INTO products VALUES (NULL, "meh", "meh meh", 12);



-----------------------------------------------------------------------------------------
                                    UPDATING ALL ROWS IN A TABLE  "SET"
-----------------------------------------------------------------------------------------

Sometimes you need to update values in all rows. Maybe to fix an error or update the status of something. In this video we'll update data!


                UPDATE <table> SET <column> = <value>;


                UPDATE users SET password = "thisisabadidea";

                UPDATE products SET price = 2.99;

                UPDATE users SET password="password";



                UPDATE users SET first_name = "Anony", last_name = "Moose";

                UPDATE products SET stock_count = 0, price = 0;



-----------------------------------------------------------------------------------------
                                   TARGETING SPECIFIC ROWS "SET" WITH "WHERE"
-----------------------------------------------------------------------------------------



                UPDATE <table> SET <column> = <value> WHERE <condition>;

                UPDATE users SET password = "thisisabadidea" WHERE id = 3;

                UPDATE blog_posts SET view_count = 1923 WHERE title = "SQL is Awesome";

                UPDATE users SET entry_url = "/home", last_login = "2016-01-05" WHERE id = 329;

                UPDATE products SET status = "SOLD OUT", availability = "In 1 Week" WHERE stock_count = 0;



                -- UPDATE <table> SET <column> = <value> WHERE <condition>;

                UPDATE loans SET returned_on = "2015-12-18" WHERE patron_id=1 AND returned_on=NULL;





-----------------------------------------------------------------------------------------
                                  NOW WE KNOW
-----------------------------------------------------------------------------------------
                        
                    

            Switch autocommit off and begin a transaction:

                        BEGIN TRANSACTION;
            Or simply:

                        BEGIN;
                        To save all results of the statements after the start of the transaction to disk:

                        COMMIT;



-----------------------------------------------------------------------------------------
                                 DELETE "DELETE"
-----------------------------------------------------------------------------------------


                        To delete all rows from a table:

                            DELETE FROM <table>;


                         Examples:

                            DELETE FROM logs;

                            DELETE FROM users;

                            DELETE FROM products;



-----------------------------------------------------------------------------------------
                                    TARGETING SPECIFIC ROWS WITH "DELETE"
-----------------------------------------------------------------------------------------

                To delete specific rows from a table:

                        DELETE FROM <table> WHERE <condition>;
                Examples:

                    DELETE FROM users WHERE email = "andrew@teamtreehouse.com";

                    DELETE FROM movies WHERE genre = "Musical";

                    DELETE FROM products WHERE stock_count = 0;

                --"delete all the harry potter books"

                    DELETE * FROM books WHERE title LIKE "harry potter%"


-----------------------------------------------------------------------------------------
                                    INTRODUCTION TO TRANSACTIONS
-----------------------------------------------------------------------------------------
                        SQL Used
             Switch autocommit off and begin a transaction:

                        BEGIN TRANSACTION;
             Or simply:

                        BEGIN;

             To save all results of the statements after the start of the transaction to disk:

                        COMMIT;

             To reset the state of the database to before the begining of the transaction:

                        ROLLBACK;
                        
            ORM - Object-Relational Mapping – used to perform CRUD operations with a language other than SQL.

            DML - Data Manipulation Language - the subset of the SQL programming language that deals with CRUD operations.

