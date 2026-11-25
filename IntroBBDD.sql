-- Ejercicio 1: Mostrar los vuelos y su identificador cuyo estado sea On Time.

SELECT flight_id, route_no
FROM bookings.flights
WHERE status = 'On Time';



--Ejercicio2. Escribe una consulta que extraiga todas las columnas de la tabla bookings y 
SELECT *
FROM bookings.bookings
WHERE total_amount > 1000000;


 
-- Ejercicio 3.Escribe una consulta que extraiga todas las columnas de los datos de los modelos de aviones disponibles (aircraft_data). Puede que os aparezca en alguna actualización como "aircrafts_data", revisad las tablas y elegid la que corresponda.
SELECT *
FROM bookings.airplanes_data;


--Ejercicio 4. Con el resultado anterior visualizado previamente, escribe una consulta que extraiga los identificadores de vuelo que han volado con un Boeing 737. (Código Modelo Avión = 733)
SELECT DISTINCT flights.flight_id
FROM bookings.flights
JOIN bookings.routes
ON flights.route_no = routes.route_no
WHERE routes.airplane_code = '733';

-- La consulta devuelve 0 resultados porque el modelo 733 no está disponible en la versión actual

-- Ejercicio 5. Escribe una consulta que te muestre la información detallada de los tickets que han comprado las personas que se llaman Irina.
SELECT *
FROM bookings.tickets
WHERE passenger_name LIKE 'Irina %';
