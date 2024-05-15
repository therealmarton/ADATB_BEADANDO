--1.	Április 21-től a mai dátumig befizetett tandíjak összege (Ft)
SELECT concat(sum(fosszeg), ' Ft') as 'aprilis 21-tol a mai datumig befizetett osszeg:'
FROM Fizetes
WHERE fdatum BETWEEN '2024-04-21'and GETDATE()
--2.   Milyen típusú járművön hány diák fog vezetni? Csökkenő sorba rendezve a legnépszerűbb autótól
SELECT o.Auto, count(*) as 'Darab diak'
FROM Oktato o JOIN Foglalas f ON o.OktatoID = f.OktatoID 
			  JOIN Diak d ON f.DiakID = d.DiakID
GROUP BY o.auto
ORDER BY count(*) DESC
--3.  Csoportosítsuk emailcímeik végződése szerint, hogy mennyi diák nem fizetett még . Csak a .hu-s és a .hr-es emailcímek érdekelnek.
SELECT COUNT(*)  as 'diakdb', RIGHT(d.Email, CHARINDEX('.', REVERSE(d.Email)) - 1) AS 'Email vegzodes'
FROM Diak d
LEFT JOIN Fizetes  f ON d.DiakID = f.DiakID
WHERE f.DiakID IS NULL
GROUP BY RIGHT(d.Email, CHARINDEX('.', REVERSE(d.Email)) - 1)
HAVING RIGHT(d.Email, CHARINDEX('.', REVERSE(d.Email)) - 1) = 'hr' OR
RIGHT(d.Email, CHARINDEX('.', REVERSE(d.Email)) - 1) = 'hu'
--4. Mely ID-jú oktatókhoz van óra felvéve és melyekhez nincs? (Halmazművelettel)
SELECT OktatoID, 'Van hozzá óra felvéve' AS 'Foglalt'
FROM Foglalas
UNION
SELECT OktatoID,  'Nincs hozzá óra felvéve' AS 'Foglalt'
FROM Oktato
WHERE OktatoID NOT IN (SELECT DISTINCT OktatoID FROM Foglalas);
--5. Tanfolyam típusonként és oktatónként hány tanfolyam lesz? Kíváncsiak vagyunk a típusonkénti összegre is és az összes típus összegére is. (ROLLUP-pal)
SELECT 
    CASE
        WHEN t.Ttipus IS NULL THEN 'összes fajta tanfolyam'
        ELSE t.Ttipus
    END AS 'Tanfolyam típus',
    CASE
        WHEN o.Nev IS NULL THEN '-összesen oktatott tanfolyamok:'
        ELSE o.Nev
    END AS 'Oktato',
    COUNT(*) AS 'Oktatott tanfolyam db'
FROM Tanfolyam t
LEFT JOIN Foglalas f ON t.TanfolyamID = f.TanfolyamID
LEFT JOIN Oktato  o ON f.OktatoID = o.OktatoID
GROUP BY ROLLUP(t.Ttipus, o.Nev)
--6. 
SELECT Nev, Telefonszam, Email
FROM Oktato
WHERE 
OktatoID IN (SELECT OktatoID FROM Foglalas 
             WHERE OktatoId IN (SELECT OktatoID FROM Oktato WHERE Auto = 'VW Passat B5')
             );