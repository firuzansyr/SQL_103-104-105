--DATABASE(VeriTabani)olusturma
Create dataBase firuzan;

--DDL - DATA DEFINITION LANG.
--CREATE - TABLO OLUSTURMA
CREATE TABLE ogrenciler

(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real,  --Ondalikli sayilar icin kullanilir(double gibi)
kayit_tarih date
);

--VAROLAN TABLODAN YENI BIR TABLO OLUSTURMA
CREATE TABLE ogrenci_notlari
AS   --Benzer tablodaki basliklarla ve data tipleriyle yeni bir tabo olusturmak icin normal tablo olustururken ki 
     --parantezler yerine AS kullanip select komutuyla almak istedigimiz verileri aliriz.
SELECT isim,soyisim,not_ort FROM ogrenciler;

--DML - DATA MANUPULATION LANG.
--INSERT (Database'e veri ekleme)

INSERT INTO ogrenciler VALUES ('1234567','Said','ILHAN',85.5,now());
INSERT INTO ogrenciler VALUES ('1234567','Said','ILHAN',85.5,'2020-12-11');

--BIR TABLOYA PARCALI VERI EKLEMEK ISTERSEK

INSERT INTO ogrenciler (isim,soyisim) VALUES('Firuzan','Sayar');

--DQL - DATA QUERY LANG.
--SELECT

select * FROM ogrenciler; 


















