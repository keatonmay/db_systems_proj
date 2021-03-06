#1: Show a count of the largest population (largest venue capacity)
SELECT	venue_name, MAX(venue_capacity)
FROM	venue;

#2: Show a listing of a key entity in the database (events over a period of time)
SELECT	event_id, event_name, venue_id, event_date
FROM	event
WHERE	event_date BETWEEN '2019-6-1' AND '2019-7-1';

#3: Show a list of entities that must function together () - returns tickets to a single event
SELECT	ticket.ticket_number, event.event_name, venue.venue_name
FROM	ticket, event, venue
WHERE	event.event_id = 4 AND ticket.event_id = event.event_id AND venue.venue_id = event.venue_id;

#4: Show the cost of an occurrence, derived using aggregate functions (Total revenue)
SELECT jtable.event_id, SUM(jtable.ticket_price + jtable.upgrade_price)
FROM 
( 
	SELECT e.event_id, t1.ticket_number, t1.ticket_price, tc.upgrade_price
	FROM ticket_class tc
	LEFT JOIN ticket t1 ON t1.ticket_class_name = tc.ticket_class_name
    LEFT JOIN event e ON e.event_id = t1.event_id
	WHERE e.event_id = 1
) as jtable ;

#5: Show a schedule for multiple occurrences, sorted by date and time (Schedule for a venue)
SELECT	v1.venue_name, e.event_name, e.event_date
FROM	event e
LEFT JOIN venue v1 ON v1.venue_id =  e.venue_id
WHERE	e.event_date BETWEEN '2019-7-1' AND '2019-8-1'