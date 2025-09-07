1. Atamalar ta’rifi

Ma’lumot (Data) – saqlanishi va qayta ishlanishi mumkin bo‘lgan faktlar (masalan, ism, raqam, sana).

Ma’lumotlar bazasi (Database) – tartiblangan va boshqariladigan ma’lumotlar to‘plami.

Relyatsion ma’lumotlar bazasi (Relational Database) – ma’lumotlar jadvallarda saqlanadigan va ular o‘zaro kalitlar orqali bog‘langan baza.

Jadval (Table) – ma’lumotlarni satr va ustunlarda saqlash uchun tuzilma.

2. SQL Server’ning 5 asosiy xususiyati

Yuqori unumdorlik – katta hajmdagi ma’lumotlarni tezkor qayta ishlash.

Xavfsizlik – shifrlash va autentifikatsiya mexanizmlari mavjud.

Masshtablilik – kichik tizimlardan tortib yirik korporativ tizimlargacha ishlay oladi.

BI integratsiyasi – Power BI, Reporting Services va Analysis Services bilan ishlash imkoniyati.

Boshqaruv qulayligi – SSMS orqali boshqarish va avtomatlashtirish imkoniyati.

3. SQL Server’da autentifikatsiya rejimlari

Windows Authentication – Windows foydalanuvchi hisobidan kirish.

SQL Server Authentication – SQL Server ichida yaratilgan login va parol orqali kirish.

✅ O‘rta daraja
1. Yangi SchoolDB bazasini yaratish
CREATE DATABASE SchoolDB;

2. Students jadvalini yaratish
USE SchoolDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

3. SQL Server, SSMS va SQL o‘rtasidagi farqlar

SQL Server – ma’lumotlar bazasini boshqarish tizimi (server dasturi).

SSMS (SQL Server Management Studio) – SQL Server’ni boshqarish va so‘rov yozish uchun grafik dastur.

SQL (Structured Query Language) – ma’lumotlar bilan ishlash uchun til (o‘qish, o‘zgartirish, o‘chirish).

✅ Qiyin daraja
1. SQL buyruqlari turlari

DQL (Data Query Language) – ma’lumotlarni olish.

SELECT * FROM Students;


DML (Data Manipulation Language) – ma’lumotlarni boshqarish.

INSERT INTO Students VALUES (1, 'Ali', 20);
UPDATE Students SET Age = 21 WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 1;


DDL (Data Definition Language) – ma’lumotlar bazasi tuzilmasini aniqlash.

CREATE TABLE Courses (CourseID INT PRIMARY KEY, CourseName VARCHAR(50));
ALTER TABLE Students ADD Email VARCHAR(100);
DROP TABLE Courses;


DCL (Data Control Language) – foydalanuvchi huquqlarini boshqarish.

GRANT SELECT ON Students TO User1;
REVOKE SELECT ON Students FROM User1;


TCL (Transaction Control Language) – tranzaksiyalarni boshqarish.

BEGIN TRANSACTION;
INSERT INTO Students VALUES (2, 'Aziz', 19);
COMMIT; -- yoki ROLLBACK;

2. Students jadvaliga uchta yozuv qo‘shish
INSERT INTO Students (StudentID, Name, Age)
VALUES 
(1, 'Ali', 20),
(2, 'Aziz', 19),
(3, 'Madina', 21);

3. AdventureWorksDW2022 bazasini tiklash

Qadamlar:

AdventureWorksDW2022.bak
 faylini yuklab oling.

Faylni SQL Server backup papkasiga nusxalash:

C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup


SSMS’ni oching va serverga ulanib oling.

Databases bo‘limida → sichqoncha o‘ng tugmasi → Restore Database....

«Device» tanlab, AdventureWorksDW2022.bak faylini ko‘rsating.

«Destination» bo‘limida bazaning nomini (AdventureWorksDW2022) belgilang.

OK tugmasini bosing – baza tiklanadi.
