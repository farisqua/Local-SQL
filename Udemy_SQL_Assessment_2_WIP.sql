/* Assessment Test 2 */

--(1) Retrieve all info from cd.facilities table
SELECT * FROM cd.facilities;

--(2) Retreve list of only facility names and costs
SELECT facilities.name, facilities.membercost FROM cd.facilities;

--(3) Produce list of facilities that charge fee to members
SELECT * FROM cd.facilities
WHERE facilities.membercost > 0;

--(4) Produce list of facilities that charge fee to members
--AND fee is less than 1/50th of monthly maintenance cost
SELECT 
	facilities.facid, 
	facilities.name, 
	facilities.membercost, 
	facilities.monthlymaintenance 
FROM cd.facilities
WHERE (facilities.membercost < 0.02*(facilities.monthlymaintenance))
AND (facilities.membercost > 0);

--(5) Produce list of facilities with word 'Tennis' in name
SELECT * FROM cd.facilities
WHERE facilities.name LIKE '%Tennis%';

--(6) Retrieve facilities with facid = {1,2}
SELECT * FROM cd.facilities
WHERE facilities.facid IN (1, 5);

--(7) Produce list of members who joined after Sept 2012
--Return memid, surname, firstname, joindate
SELECT
	members.memid,
	members.surname,
	members.firstname,
	members.joindate
FROM cd.members
WHERE members.joindate >= '2012-09-01';

--(8) Produce ordered list of first 10 surnames in members table
SELECT members.surname
FROM cd.members
GROUP BY members.surname
ORDER BY members.surname ASC
LIMIT 10;

--(9) Signup date of last members
SELECT members.joindate
FROM cd.members
ORDER BY members.joindate DESC
LIMIT 1;

--(10) Produce count of number of facilities with guestcost >= 10
SELECT COUNT(*) FROM cd.facilities
WHERE facilities.guestcost >= 10;

--(11) Produce list of total of slots_booked/facility in Sept '12
--Include facid, slots, sorted by # of slots
SELECT bookings.facid, SUM(bookings.slots) AS "Total Slots"
FROM cd.bookings
WHERE bookings.starttime BETWEEN '2012-09-01' AND '2012-09-30 23:59:59'
GROUP BY bookings.facid
ORDER BY SUM(bookings.slots);

--(12) Product list of facilities with >1000 slots booked
--Include facid and total slots sorted by facid
SELECT bookings.facid, SUM(bookings.slots) AS total_slots
FROM cd.bookings
GROUP BY bookings.facid
HAVING SUM(bookings.slots) > 1000
ORDER BY bookings.facid ASC;

--(13) Produce list of start times for bookings for tennis
--for the date '2012-09-21'
--List start time and facility name, order by time
--NOTE TO SELF: INNER JOIN on facid
SELECT
	bookings.starttime,
	facilities.name
FROM cd.bookings
INNER JOIN cd.facilities
ON bookings.facid = facilities.facid
WHERE bookings.starttime BETWEEN '2012-09-21' AND '2012-09-22'
AND facilities.name LIKE 'Tennis Court%'
ORDER BY bookings.starttime;

--(14) Produce a list of start times for bookings by member 'David Farrell'
SELECT 
	members.firstname, 
	members.surname, 
	bookings.starttime 
FROM cd.members
INNER JOIN cd.bookings 
ON bookings.memid = members.memid
WHERE firstname = 'David'
AND surname = 'Farrell'
ORDER BY bookings.starttime;