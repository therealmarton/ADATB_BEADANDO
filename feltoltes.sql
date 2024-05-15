-- Diak tábla
INSERT INTO Diak (DiakID, Nev, Cim, Telefonszam, Email)
VALUES
    (1, 'John Doe', '123 Main St, Anytown', '123-456-7890', 'john.doe@example.hu'),
    (2, 'Jane Smith', '456 Elm St, Othertown', '987-654-3210', 'jane.smith@example.hr'),
    (3, 'Alice Johnson', '789 Oak St, Somewhere', '555-123-4567', 'alice.johnson@example.com'),
    (4, 'Bob Jones', '321 Pine St, Anycity', '111-222-3333', 'bob.jones@example.hu'),
    (5, 'Emma White', '654 Maple St, Othercity', '444-555-6666', 'emma.white@example.hr'),
    (6, 'Michael Brown', '987 Cedar St, Anothercity', '777-888-9999', 'michael.brown@example.com'),
    (7, 'Emily Davis', '123 Oak St, Anytown', '222-333-4444', 'emily.davis@example.hu'),
    (8, 'David Wilson', '456 Elm St, Othertown', '555-666-7777', 'david.wilson@example.hr'),
    (9, 'Sarah Taylor', '789 Pine St, Somewhere', '888-999-0000', 'sarah.taylor@example.com'),
    (10, 'Daniel Martinez', '321 Maple St, Anycity', '999-000-1111', 'daniel.martinez@example.hu'),
    (11, 'Laura Lee', '987 Oak St, Anytown', '123-456-7890', 'laura.lee@example.hr'),
    (12, 'Michael Johnson', '456 Elm St, Othertown', '987-654-3210', 'michael.johnson@example.com'),
    (13, 'Sophia Smith', '789 Oak St, Somewhere', '555-123-4567', 'sophia.smith@example.hu'),
    (14, 'William Davis', '321 Pine St, Anycity', '111-222-3333', 'william.davis@example.hr'),
    (15, 'Olivia Brown', '654 Maple St, Othercity', '444-555-6666', 'olivia.brown@example.com'),
    (16, 'James Taylor', '987 Cedar St, Anothercity', '777-888-9999', 'james.taylor@example.hu'),
    (17, 'Emily Wilson', '123 Oak St, Anytown', '222-333-4444', 'emily.wilson@example.hr'),
    (18, 'Benjamin Lee', '456 Elm St, Othertown', '555-666-7777', 'benjamin.lee@example.com'),
    (19, 'Abigail Taylor', '789 Pine St, Somewhere', '888-999-0000', 'abigail.taylor@example.hu'),
    (20, 'Ethan Martinez', '321 Maple St, Anycity', '999-000-1111', 'ethan.martinez@example.com');

-- Oktato tábla
INSERT INTO Oktato (OktatoID, Nev, Cim, Auto, Telefonszam, Email)
VALUES
    (1, 'Michael Brown', '123 Oak St, Anytown', 'VW Passat B5', '111-222-3333', 'michael.brown@example.com'),
    (2, 'Emily Davis', '456 Elm St, Othertown', 'BMW E46', '444-555-6666', 'emily.davis@example.com'),
    (3, 'David Wilson', '789 Pine St, Somewhere', 'Mercedes E class', '777-888-9999', 'david.wilson@example.com'),
    (4, 'Sarah Taylor', '321 Maple St, Anycity', 'VW Passat B5', '999-888-7777', 'sarah.taylor@example.com'),
    (5, 'Daniel Martinez', '654 Cedar St, Othercity', 'Dacia Duster', '333-222-1111', 'daniel.martinez@example.com');

-- Tanfolyam tábla
INSERT INTO Tanfolyam (TanfolyamID, Tnev, Ttipus, Dij, Tdatumtol, Tdatumig)
VALUES
    (1, 'Driving Course but more expensive', 'B2', 50000.00, '2024-06-01', '2024-06-30'),
    (2, 'Fast Driving', 'B2+', 30000.00, '2024-07-15', '2024-07-28'),
    (3, 'Driving Course', 'B2', 40000.00, '2024-08-10', '2024-08-31');

-- Foglalas tábla
INSERT INTO Foglalas (FoglalasID, DiakID, OktatoID, TanfolyamID, FoglalasDatum)
VALUES
    (1, 1, 1, 1, '2024-05-14'),
    (2, 2, 2, 2, '2024-05-15'),
    (3, 3, 4, 3, '2024-05-16'),
    (4, 4, 4, 1, '2024-05-17'),
    (5, 5, 5, 2, '2024-05-18'),
    (6, 6, 1, 3, '2024-05-19'),
    (7, 7, 2, 1, '2024-05-20'),
    (8, 8, 4, 2, '2024-05-21'),
    (9, 9, 4, 3, '2024-05-22'),
    (10, 10, 5, 1, '2024-05-23');

-- Fizetes tábla
INSERT INTO Fizetes (FizetesID, DiakID, Fosszeg, Fdatum)
VALUES
    (1, 1, 50000.00, '2024-04-14'),
    (2, 2, 30000.00, '2024-04-15'),
    (3, 3, 40000.00, '2024-04-16'),
    (4, 4, 50000.00, '2024-04-17'),
    (5, 5, 30000.00, '2024-04-25'),
    (6, 6, 40000.00, '2024-04-27');