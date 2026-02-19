-- Fråga 1 Ta fram all information för alla kunder som finns (tabellen Customers).
SELECT *
FROM Customers
ORDER BY CompanyName ASC;


-- Fråga 2 Ta fram kundnamn, adress och postort för alla kunder.
SELECT ContactName, Address, PostalCode
FROM Customers;


-- Fråga 3 Ta fram adress, postort och kontaktperson för alla kunder i London.
SELECT Address, PostalCode, ContactName
From Customers
WHERE City = 'London';


-- Fråga 4 Ta fram alla kunder som har en kontaktperson som heter John Steel.
SELECT *
FROM Customers
WHERE ContactName = 'John Steel';


-- Fråga 5 Ta fram alla unika städer där det finns kunder dvs. frågan skall alltid ta bort alla dubbletter.
SELECT DISTINCT City
FROM Customers
ORDER BY City ASC;


-- 6. Ta fram kundnamn , adress, postnummer och kontaktperson för alla kunder. 
-- Sortera dessa på postnr i stigande ordning dvs med det lägsta postnumret först.
SELECT CompanyName, Address, PostalCode, ContactName
FROM Customers
ORDER BY PostalCode ASC;


-- 7. Ändra sorteringen för fråga 6 så att resultatet sorteras i fallande ordning dvs med det högsta
-- postnumret först.
SELECT CompanyName, Address, PostalCode, ContactName
FROM Customers
ORDER BY PostalCode DESC


-- 8. Ta fram alla kunder som finns i London eller Paris.
SELECT *
FROM Customers
WHERE City IN ('London', 'Paris')


-- 9. Skriv en fråga som returnerar en siffra som anger antalet rader i kundtabellen.
-- Först räknar på *
-- Sedan räknar på Region
-- Finns det en skillnad? Varför då?
SELECT COUNT(*)
FROM Customers;

SELECT COUNT(Region)
FROM Customers;
-- Det finns en skillnad eftersom COUNT(*) räknar alla rader i tabellen
-- medan COUNT(Region) endast räknar de rader där Region inte är NULL.

-- 10. Ta fram alla kunder som inte har någon ifylld region dvs där detta saknas.
SELECT *
FROM Customers
WHERE Region IS NULL


-- 11. Ta fram namn, city och kontaktperson på alla kunder där namnet INTE är lika med ”Ernst Handel”. 
-- Sortera dessa kunder på namnet och i bokstavsordning.
SELECT CompanyName, City, ContactName
FROM Customers
WHERE CompanyNAME <> 'Ernst Handel'
ORDER BY CompanyName ASC;


-- 12. Ta fram alla kunder som har en områdeskod som antingen är lika med ”BC”, ”SP”, ”WA” eller ”CA”.
SELECT *
FROM Customers
WHERE Region IN ('BC', 'SP', 'WA', 'CA')


-- 13. Hur många anställda kommer från UK? Visa det med en siffra.
SELECT COUNT(*)
FROM Employees
WHERE Country = 'UK'


-- 14. Ta fram alla kunder som antingen har kundnamn ”Island Trading” och region ”Isle of Wight”,
-- eller kundnamnet ”White Clover Markets” och region ”WA” . 
-- Fundera på hur where delen av frågan måste se ut för att detta villkor skall bli rätt
SELECT *
FROM Customers
WHERE (CompanyName = 'Island Trading' AND Region = 'Isle of Wight')
   OR (CompanyName = 'White Clover Markets' AND Region = 'WA')