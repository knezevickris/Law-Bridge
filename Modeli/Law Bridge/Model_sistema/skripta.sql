/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     29.5.2024. 16:47:17                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Adresni podaci"') and o.name = 'FK_ADRESNI _KOD DRUGO_POSLOVNI')
alter table "Adresni podaci"
   drop constraint "FK_ADRESNI _KOD DRUGO_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Adresni podaci"') and o.name = 'FK_ADRESNI _KONTAKT P_REGISTAR')
alter table "Adresni podaci"
   drop constraint "FK_ADRESNI _KONTAKT P_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Adresni podaci"') and o.name = 'FK_ADRESNI _MJESTO AD_NASELJEN')
alter table "Adresni podaci"
   drop constraint "FK_ADRESNI _MJESTO AD_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Akcija') and o.name = 'FK_AKCIJA_AKCIJE TO_SESIJA')
alter table Akcija
   drop constraint "FK_AKCIJA_AKCIJE TO_SESIJA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Akcija') and o.name = 'FK_AKCIJA_TIP AKCIJ_TIP')
alter table Akcija
   drop constraint "FK_AKCIJA_TIP AKCIJ_TIP"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Akcija') and o.name = 'FK_AKCIJA_EVIDENCIJ_ARHIVIRA')
alter table Akcija
   drop constraint FK_AKCIJA_EVIDENCIJ_ARHIVIRA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Arhivirani predmet"') and o.name = 'FK_ARHIVIRA_LOKACIJA _ORGANIZA')
alter table "Arhivirani predmet"
   drop constraint "FK_ARHIVIRA_LOKACIJA _ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Arhivirani predmet"') and o.name = 'FK_ARHIVIRA_ODGOVORNO_REGISTAR')
alter table "Arhivirani predmet"
   drop constraint FK_ARHIVIRA_ODGOVORNO_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Atribut') and o.name = 'FK_ATRIBUT_RESURSI P_POSLOVNI')
alter table Atribut
   drop constraint "FK_ATRIBUT_RESURSI P_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ciljni entitet akcije"') and o.name = 'FK_CILJNI E_CILJNI EN_TABELE')
alter table "Ciljni entitet akcije"
   drop constraint "FK_CILJNI E_CILJNI EN_TABELE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ciljni entitet akcije"') and o.name = 'FK_CILJNI E_CILJNI EN_AKCIJA')
alter table "Ciljni entitet akcije"
   drop constraint "FK_CILJNI E_CILJNI EN_AKCIJA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dokazi') and o.name = 'FK_DOKAZI_TIPIZACIJ_TIP DOKA')
alter table Dokazi
   drop constraint "FK_DOKAZI_TIPIZACIJ_TIP DOKA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokazi na rocistu"') and o.name = 'FK_DOKAZI N_DOKAZI NA_DOKAZI')
alter table "Dokazi na rocistu"
   drop constraint "FK_DOKAZI N_DOKAZI NA_DOKAZI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokazi na rocistu"') and o.name = 'FK_DOKAZI N_DOKAZI NA_ROCISTE')
alter table "Dokazi na rocistu"
   drop constraint "FK_DOKAZI N_DOKAZI NA_ROCISTE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokazi u postupku"') and o.name = 'FK_DOKAZI U_DOKAZI U _SUDSKI P')
alter table "Dokazi u postupku"
   drop constraint "FK_DOKAZI U_DOKAZI U _SUDSKI P"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokazi u postupku"') and o.name = 'FK_DOKAZI U_DOKAZI U _DOKAZI')
alter table "Dokazi u postupku"
   drop constraint "FK_DOKAZI U_DOKAZI U _DOKAZI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokument sistematizacije"') and o.name = 'FK_DOKUMENT_SISTEMATI_POSLOVNI')
alter table "Dokument sistematizacije"
   drop constraint FK_DOKUMENT_SISTEMATI_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokument sistematizacije"') and o.name = 'FK_DOKUMENT_ODGOVORNO_REGISTAR')
alter table "Dokument sistematizacije"
   drop constraint FK_DOKUMENT_ODGOVORNO_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokumentacija predmeta"') and o.name = 'FK_DOKUMENT_DOKUMENTA_DOKUMENT')
alter table "Dokumentacija predmeta"
   drop constraint FK_DOKUMENT_DOKUMENTA_DOKUMENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokumentacija predmeta"') and o.name = 'FK_DOKUMENT_DOKUMENTA_PREDMET')
alter table "Dokumentacija predmeta"
   drop constraint FK_DOKUMENT_DOKUMENTA_PREDMET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokumentacija sa sastanaka"') and o.name = 'FK_DOKUMENT_DOKUMENTA_DOKUMENT3')
alter table "Dokumentacija sa sastanaka"
   drop constraint FK_DOKUMENT_DOKUMENTA_DOKUMENT3
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokumentacija sa sastanaka"') and o.name = 'FK_DOKUMENT_DOKUMENTA_SASTANCI')
alter table "Dokumentacija sa sastanaka"
   drop constraint FK_DOKUMENT_DOKUMENTA_SASTANCI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokumentacija zahtjeva"') and o.name = 'FK_DOKUMENT_DOKUMENTA_DOKUMENT2')
alter table "Dokumentacija zahtjeva"
   drop constraint FK_DOKUMENT_DOKUMENTA_DOKUMENT2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokumentacija zahtjeva"') and o.name = 'FK_DOKUMENT_DOKUMENTA_ZAHTJEV')
alter table "Dokumentacija zahtjeva"
   drop constraint FK_DOKUMENT_DOKUMENTA_ZAHTJEV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dokumenti') and o.name = 'FK_DOKUMENT_DOKUMENTA_SPOLJASN')
alter table Dokumenti
   drop constraint FK_DOKUMENT_DOKUMENTA_SPOLJASN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dokumenti') and o.name = 'FK_DOKUMENT_TIPIZACIJ_TIP DOKU')
alter table Dokumenti
   drop constraint "FK_DOKUMENT_TIPIZACIJ_TIP DOKU"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokumenti u postupku"') and o.name = 'FK_DOKUMENT_DOKUMENTI_DOKUMENT')
alter table "Dokumenti u postupku"
   drop constraint FK_DOKUMENT_DOKUMENTI_DOKUMENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Dokumenti u postupku"') and o.name = 'FK_DOKUMENT_DOKUMENTI_SUDSKI P')
alter table "Dokumenti u postupku"
   drop constraint "FK_DOKUMENT_DOKUMENTI_SUDSKI P"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Drava') and o.name = 'FK_DRAVA_AKTUELNI _NASELJEN')
alter table Drava
   drop constraint "FK_DRAVA_AKTUELNI _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Drava') and o.name = 'FK_DRAVA_TEKUCE UR_DRAVNO')
alter table Drava
   drop constraint "FK_DRAVA_TEKUCE UR_DRAVNO"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dravljanstvo') and o.name = 'FK_DRAVLJA_DRAVLJAN_REGISTAR')
alter table Dravljanstvo
   drop constraint FK_DRAVLJA_DRAVLJAN_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dravljanstvo') and o.name = 'FK_DRAVLJA_DRAVLJAN_DRAVA')
alter table Dravljanstvo
   drop constraint FK_DRAVLJA_DRAVLJAN_DRAVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Eksportovanje') and o.name = 'FK_EKSPORTO_NACIN EKS_IZVJEŠTA')
alter table Eksportovanje
   drop constraint "FK_EKSPORTO_NACIN EKS_IZVJEŠTA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Faktura') and o.name = 'FK_FAKTURA_FAKTURE N_PRAVNI U')
alter table Faktura
   drop constraint "FK_FAKTURA_FAKTURE N_PRAVNI U"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Faktura') and o.name = 'FK_FAKTURA_IZVJESTAJ_IZVJEŠTA')
alter table Faktura
   drop constraint FK_FAKTURA_IZVJESTAJ_IZVJEŠTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Faktura') and o.name = 'FK_FAKTURA_NACIN PLA_TIP NAPL')
alter table Faktura
   drop constraint "FK_FAKTURA_NACIN PLA_TIP NAPL"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Glavni grad"') and o.name = 'FK_GLAVNI G_GLAVNI GR_DRAVA')
alter table "Glavni grad"
   drop constraint "FK_GLAVNI G_GLAVNI GR_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Glavni grad"') and o.name = 'FK_GLAVNI G_GLAVNI GR_NASELJEN')
alter table "Glavni grad"
   drop constraint "FK_GLAVNI G_GLAVNI GR_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Istorija') and o.name = 'FK_ISTORIJA_ISTORIJA _PREDMET')
alter table Istorija
   drop constraint "FK_ISTORIJA_ISTORIJA _PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Istorija') and o.name = 'FK_ISTORIJA_URED VODI_ORGANIZA')
alter table Istorija
   drop constraint "FK_ISTORIJA_URED VODI_ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istorija lokacija"') and o.name = 'FK_ISTORIJA_LOKACIJA _NASELJEN')
alter table "Istorija lokacija"
   drop constraint "FK_ISTORIJA_LOKACIJA _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istorija lokacija"') and o.name = 'FK_ISTORIJA_UREDJAJ S_UREDJAJ')
alter table "Istorija lokacija"
   drop constraint "FK_ISTORIJA_UREDJAJ S_UREDJAJ"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istorija statusa"') and o.name = 'FK_ISTORIJA_PROMJENA _STATUS P')
alter table "Istorija statusa"
   drop constraint "FK_ISTORIJA_PROMJENA _STATUS P"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istorija statusa"') and o.name = 'FK_ISTORIJA_STATUSI P_PREDMET')
alter table "Istorija statusa"
   drop constraint "FK_ISTORIJA_STATUSI P_PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istorija uredenja"') and o.name = 'FK_ISTORIJA_KROZ ISTO_DRAVA')
alter table "Istorija uredenja"
   drop constraint "FK_ISTORIJA_KROZ ISTO_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istorija uredenja"') and o.name = 'FK_ISTORIJA_UREĞENJE _DRAVNO')
alter table "Istorija uredenja"
   drop constraint "FK_ISTORIJA_UREĞENJE _DRAVNO"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Istorijat') and o.name = 'FK_ISTORIJA_ARHIVIRAN_PREDMET')
alter table Istorijat
   drop constraint FK_ISTORIJA_ARHIVIRAN_PREDMET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Istorijat') and o.name = 'FK_ISTORIJA_PREDMET U_ARHIVIRA')
alter table Istorijat
   drop constraint "FK_ISTORIJA_PREDMET U_ARHIVIRA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istorijat statusa"') and o.name = 'FK_ISTORIJA_ISTORIJA _STATUS')
alter table "Istorijat statusa"
   drop constraint "FK_ISTORIJA_ISTORIJA _STATUS"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Istorijat statusa"') and o.name = 'FK_ISTORIJA_STATUS DO_DOKUMENT')
alter table "Istorijat statusa"
   drop constraint "FK_ISTORIJA_STATUS DO_DOKUMENT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izabrani tipovi organizacione jedinice"') and o.name = 'FK_IZABRANI_IZABRANA _TIP ORGA')
alter table "Izabrani tipovi organizacione jedinice"
   drop constraint "FK_IZABRANI_IZABRANA _TIP ORGA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Izabrani tipovi organizacione jedinice"') and o.name = 'FK_IZABRANI_IZBOR TIP_POSLOVNI')
alter table "Izabrani tipovi organizacione jedinice"
   drop constraint "FK_IZABRANI_IZBOR TIP_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izdavanje') and o.name = 'FK_IZDAVANJ_ISTORIJA _ARHIVIRA')
alter table Izdavanje
   drop constraint "FK_IZDAVANJ_ISTORIJA _ARHIVIRA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izdavanje') and o.name = 'FK_IZDAVANJ_ODGOVORNO_REGISTAR')
alter table Izdavanje
   drop constraint FK_IZDAVANJ_ODGOVORNO_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izvještaj') and o.name = 'FK_IZVJEŠTA_IZVJESTAJ_KLIJENT')
alter table Izvještaj
   drop constraint FK_IZVJEŠTA_IZVJESTAJ_KLIJENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izvještaj') and o.name = 'FK_IZVJEŠTA_IZVJESTAJ_ORGANIZA')
alter table Izvještaj
   drop constraint FK_IZVJEŠTA_IZVJESTAJ_ORGANIZA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izvještaj') and o.name = 'FK_IZVJEŠTA_KREIRA IZ_REGISTAR')
alter table Izvještaj
   drop constraint "FK_IZVJEŠTA_KREIRA IZ_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izvještaj') and o.name = 'FK_IZVJEŠTA_IZVJESTAJ_REGISTAR')
alter table Izvještaj
   drop constraint FK_IZVJEŠTA_IZVJESTAJ_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Izvještaj') and o.name = 'FK_IZVJEŠTA_TIPIZACIJ_TIP IZVJ')
alter table Izvještaj
   drop constraint "FK_IZVJEŠTA_TIPIZACIJ_TIP IZVJ"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Katalog radnih mjesta"') and o.name = 'FK_KATALOG _IMA RADNA_POSLOVNI')
alter table "Katalog radnih mjesta"
   drop constraint "FK_KATALOG _IMA RADNA_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Katalog zanimanja"') and o.name = 'FK_KATALOG _REGISTROV_DRAVA')
alter table "Katalog zanimanja"
   drop constraint "FK_KATALOG _REGISTROV_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Katalog zvanja"') and o.name = 'FK_KATALOG _KATALOG Z_DRAVA')
alter table "Katalog zvanja"
   drop constraint "FK_KATALOG _KATALOG Z_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Klijent') and o.name = 'FK_KLIJENT_FIZICKO L_OSOBA')
alter table Klijent
   drop constraint "FK_KLIJENT_FIZICKO L_OSOBA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Klijent') and o.name = 'FK_KLIJENT_KLIJENT A_ORGANIZA')
alter table Klijent
   drop constraint "FK_KLIJENT_KLIJENT A_ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Klijent') and o.name = 'FK_KLIJENT_PRAVNO LI_POSLOVNI')
alter table Klijent
   drop constraint "FK_KLIJENT_PRAVNO LI_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Kontakt osoba"') and o.name = 'FK_KONTAKT _KONTAKT O_SPOLJASN')
alter table "Kontakt osoba"
   drop constraint "FK_KONTAKT _KONTAKT O_SPOLJASN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Korisnicki nalog"') and o.name = 'FK_KORISNIC_NALOG ZAP_REGISTAR')
alter table "Korisnicki nalog"
   drop constraint "FK_KORISNIC_NALOG ZAP_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Korisnicki nalog"') and o.name = 'FK_KORISNIC_REGISTROV_POSLOVNI')
alter table "Korisnicki nalog"
   drop constraint FK_KORISNIC_REGISTROV_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Lista zvanja"') and o.name = 'FK_LISTA ZV_LISTA ZVA_KATALOG')
alter table "Lista zvanja"
   drop constraint "FK_LISTA ZV_LISTA ZVA_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Lista zvanja"') and o.name = 'FK_LISTA ZV_OBUHVATA _ŠKOLSKA')
alter table "Lista zvanja"
   drop constraint "FK_LISTA ZV_OBUHVATA _ŠKOLSKA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Logovi podataka"') and o.name = 'FK_LOGOVI P_LOG AKCIJ_AKCIJA')
alter table "Logovi podataka"
   drop constraint "FK_LOGOVI P_LOG AKCIJ_AKCIJA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Mjesna zajednica"') and o.name = 'FK_MJESNA Z_IMA MJESN_OPŠTINA')
alter table "Mjesna zajednica"
   drop constraint "FK_MJESNA Z_IMA MJESN_OPŠTINA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Mjesna zajednica"') and o.name = 'FK_MJESNA Z_SJEDIŠTE _NASELJEN')
alter table "Mjesna zajednica"
   drop constraint "FK_MJESNA Z_SJEDIŠTE _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Mjesno pokrivanje naselja"') and o.name = 'FK_MJESNO P_MJESNA ZA_MJESNA Z')
alter table "Mjesno pokrivanje naselja"
   drop constraint "FK_MJESNO P_MJESNA ZA_MJESNA Z"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Mjesno pokrivanje naselja"') and o.name = 'FK_MJESNO P_PRIPADA M_NASELJEN')
alter table "Mjesno pokrivanje naselja"
   drop constraint "FK_MJESNO P_PRIPADA M_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Nabavka') and o.name = 'FK_NABAVKA_DOBAVLJAC_SPOLJASN')
alter table Nabavka
   drop constraint FK_NABAVKA_DOBAVLJAC_SPOLJASN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Nabavka') and o.name = 'FK_NABAVKA_IZVJESTAJ_IZVJEŠTA')
alter table Nabavka
   drop constraint FK_NABAVKA_IZVJESTAJ_IZVJEŠTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Nabavka trajnog resursa"') and o.name = 'FK_NABAVKA _DOBAVLJAC_SPOLJASN')
alter table "Nabavka trajnog resursa"
   drop constraint "FK_NABAVKA _DOBAVLJAC_SPOLJASN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Nabavka trajnog resursa"') and o.name = 'FK_NABAVKA _IZVJESTAJ_IZVJEŠTA')
alter table "Nabavka trajnog resursa"
   drop constraint "FK_NABAVKA _IZVJESTAJ_IZVJEŠTA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Naseljeno mjesto"') and o.name = 'FK_NASELJEN_SADRI NA_DRAVA')
alter table "Naseljeno mjesto"
   drop constraint "FK_NASELJEN_SADRI NA_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obrazuju za"') and o.name = 'FK_OBRAZUJU_OBRAZUJU _POSLOVNI')
alter table "Obrazuju za"
   drop constraint "FK_OBRAZUJU_OBRAZUJU _POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obrazuju za"') and o.name = 'FK_OBRAZUJU_ŠKOLSKE S_ŠKOLSKA')
alter table "Obrazuju za"
   drop constraint "FK_OBRAZUJU_ŠKOLSKE S_ŠKOLSKA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obuhvata naselja"') and o.name = 'FK_OBUHVATA_OBUHVATA _REGION')
alter table "Obuhvata naselja"
   drop constraint "FK_OBUHVATA_OBUHVATA _REGION"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obuhvata naselja"') and o.name = 'FK_OBUHVATA_PRIPADA R_NASELJEN')
alter table "Obuhvata naselja"
   drop constraint "FK_OBUHVATA_PRIPADA R_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obuhvata opštine"') and o.name = 'FK_OBUHVATA_OPŠTINA O_OPŠTINA')
alter table "Obuhvata opštine"
   drop constraint "FK_OBUHVATA_OPŠTINA O_OPŠTINA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Obuhvata opštine"') and o.name = 'FK_OBUHVATA_OBUHVATA _NASELJEN2')
alter table "Obuhvata opštine"
   drop constraint "FK_OBUHVATA_OBUHVATA _NASELJEN2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Odgovorno lice"') and o.name = 'FK_ODGOVORN_ODGOVORNO_REGISTAR2')
alter table "Odgovorno lice"
   drop constraint FK_ODGOVORN_ODGOVORNO_REGISTAR2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Odgovorno lice"') and o.name = 'FK_ODGOVORN_ODGOVORNO_TRAJNIMA')
alter table "Odgovorno lice"
   drop constraint FK_ODGOVORN_ODGOVORNO_TRAJNIMA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Odgovorno lice za potrosni resurs"') and o.name = 'FK_ODGOVORN_ODGOVORNO_REGISTAR')
alter table "Odgovorno lice za potrosni resurs"
   drop constraint FK_ODGOVORN_ODGOVORNO_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Odgovorno lice za potrosni resurs"') and o.name = 'FK_ODGOVORN_ODGOVORNO_POTROŠNI')
alter table "Odgovorno lice za potrosni resurs"
   drop constraint FK_ODGOVORN_ODGOVORNO_POTROŠNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Opština') and o.name = 'FK_OPŠTINA_LOKALNA S_DRAVA')
alter table Opština
   drop constraint "FK_OPŠTINA_LOKALNA S_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Opština') and o.name = 'FK_OPŠTINA_SJEDIŠTE _NASELJEN')
alter table Opština
   drop constraint "FK_OPŠTINA_SJEDIŠTE _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizaciona jedinica"') and o.name = 'FK_ORGANIZA_SJEDIŠTE _NASELJEN')
alter table "Organizaciona jedinica"
   drop constraint "FK_ORGANIZA_SJEDIŠTE _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizaciona jedinica"') and o.name = 'FK_ORGANIZA_TIPIZACIJ_IZABRANI')
alter table "Organizaciona jedinica"
   drop constraint FK_ORGANIZA_TIPIZACIJ_IZABRANI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizaciona jedinica"') and o.name = 'FK_ORGANIZA_UNUTRAŠNJ_POSLOVNI')
alter table "Organizaciona jedinica"
   drop constraint FK_ORGANIZA_UNUTRAŠNJ_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizaciona šema"') and o.name = 'FK_ORGANIZA_AUTOR_REGISTAR')
alter table "Organizaciona šema"
   drop constraint FK_ORGANIZA_AUTOR_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizaciona šema"') and o.name = 'FK_ORGANIZA_SISTEMATI_ORGANIZA')
alter table "Organizaciona šema"
   drop constraint FK_ORGANIZA_SISTEMATI_ORGANIZA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Organizaciona šema"') and o.name = 'FK_ORGANIZA_U SKLOPU _DOKUMENT')
alter table "Organizaciona šema"
   drop constraint "FK_ORGANIZA_U SKLOPU _DOKUMENT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Osoba') and o.name = 'FK_OSOBA_MJESTO ST_NASELJEN')
alter table Osoba
   drop constraint "FK_OSOBA_MJESTO ST_NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Osoba') and o.name = 'FK_OSOBA_TIPIZACIJ_TIP UCES')
alter table Osoba
   drop constraint "FK_OSOBA_TIPIZACIJ_TIP UCES"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Personalna restrikcija"') and o.name = 'FK_PERSONAL_PERSONALN_PRIPADA')
alter table "Personalna restrikcija"
   drop constraint FK_PERSONAL_PERSONALN_PRIPADA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Personalna restrikcija"') and o.name = 'FK_PERSONAL_PERSONALN_ATRIBUT')
alter table "Personalna restrikcija"
   drop constraint FK_PERSONAL_PERSONALN_ATRIBUT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Personalna restrikcija"') and o.name = 'FK_PERSONAL_PERSONALN_TABELA')
alter table "Personalna restrikcija"
   drop constraint FK_PERSONAL_PERSONALN_TABELA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Podaci o obrazovanju"') and o.name = 'FK_PODACI O_OBRAZOVNA_POSLOVNI')
alter table "Podaci o obrazovanju"
   drop constraint "FK_PODACI O_OBRAZOVNA_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Podaci o obrazovanju"') and o.name = 'FK_PODACI O_PODACI O _REGISTAR')
alter table "Podaci o obrazovanju"
   drop constraint "FK_PODACI O_PODACI O _REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Podaci o obrazovanju"') and o.name = 'FK_PODACI O_TIPIZACIJ_KATALOG')
alter table "Podaci o obrazovanju"
   drop constraint "FK_PODACI O_TIPIZACIJ_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Podaci o obrazovanju"') and o.name = 'FK_PODACI O_TIPIZACIJ_ŠKOLSKA')
alter table "Podaci o obrazovanju"
   drop constraint "FK_PODACI O_TIPIZACIJ_ŠKOLSKA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Podtip') and o.name = 'FK_PODTIP_PODTIP TI_TIP PRED')
alter table Podtip
   drop constraint "FK_PODTIP_PODTIP TI_TIP PRED"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Poslovni sistem"') and o.name = 'FK_POSLOVNI_DRAVA PO_DRAVA')
alter table "Poslovni sistem"
   drop constraint "FK_POSLOVNI_DRAVA PO_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Poslovni sistem"') and o.name = 'FK_POSLOVNI_PRAVNI SL_POSLOVNI')
alter table "Poslovni sistem"
   drop constraint "FK_POSLOVNI_PRAVNI SL_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Poslovni sistem"') and o.name = 'FK_POSLOVNI_SJEDIŠTE _NASELJEN')
alter table "Poslovni sistem"
   drop constraint "FK_POSLOVNI_SJEDIŠTE _NASELJEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Poslovni sistem"') and o.name = 'FK_POSLOVNI_TIPIZACIJ_TIP POSL')
alter table "Poslovni sistem"
   drop constraint "FK_POSLOVNI_TIPIZACIJ_TIP POSL"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrebna školska sprema"') and o.name = 'FK_POTREBNA_POTREBNA _ŠKOLSKA')
alter table "Potrebna školska sprema"
   drop constraint "FK_POTREBNA_POTREBNA _ŠKOLSKA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrebna školska sprema"') and o.name = 'FK_POTREBNA_ŠKOLSKA S_KATALOG')
alter table "Potrebna školska sprema"
   drop constraint "FK_POTREBNA_ŠKOLSKA S_KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrebne spreme"') and o.name = 'FK_POTREBNE_POTREBNE _ŠKOLSKA')
alter table "Potrebne spreme"
   drop constraint "FK_POTREBNE_POTREBNE _ŠKOLSKA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrebne spreme"') and o.name = 'FK_POTREBNE_POTREBNE _KATALOG')
alter table "Potrebne spreme"
   drop constraint "FK_POTREBNE_POTREBNE _KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrošni materijalni resursi"') and o.name = 'FK_POTROŠNI_NABAVKA P_NABAVKA')
alter table "Potrošni materijalni resursi"
   drop constraint "FK_POTROŠNI_NABAVKA P_NABAVKA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrošni materijalni resursi"') and o.name = 'FK_POTROŠNI_POTROŠNI _ORGANIZA')
alter table "Potrošni materijalni resursi"
   drop constraint "FK_POTROŠNI_POTROŠNI _ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Potrošni materijalni resursi"') and o.name = 'FK_POTROŠNI_TIP POTRO_TIP POTR')
alter table "Potrošni materijalni resursi"
   drop constraint "FK_POTROŠNI_TIP POTRO_TIP POTR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Povezana sa"') and o.name = 'FK_POVEZANA_POVEZANA _TABELA')
alter table "Povezana sa"
   drop constraint "FK_POVEZANA_POVEZANA _TABELA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Povezana sa"') and o.name = 'FK_POVEZANA_TABELA_TABELA')
alter table "Povezana sa"
   drop constraint FK_POVEZANA_TABELA_TABELA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pozicija') and o.name = 'FK_POZICIJA_NA POZICI_REGISTAR')
alter table Pozicija
   drop constraint "FK_POZICIJA_NA POZICI_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pozicija') and o.name = 'FK_POZICIJA_POZICIJA _ORGANIZA')
alter table Pozicija
   drop constraint "FK_POZICIJA_POZICIJA _ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravni nasljednik"') and o.name = 'FK_PRAVNI N_PRAVNI NA_OSOBA2')
alter table "Pravni nasljednik"
   drop constraint "FK_PRAVNI N_PRAVNI NA_OSOBA2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravni nasljednik"') and o.name = 'FK_PRAVNI N_PRAVNI NA_OSOBA')
alter table "Pravni nasljednik"
   drop constraint "FK_PRAVNI N_PRAVNI NA_OSOBA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravni sljedbenik"') and o.name = 'FK_PRAVNI S_PRAVNI SL_DRAVA')
alter table "Pravni sljedbenik"
   drop constraint "FK_PRAVNI S_PRAVNI SL_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravni sljedbenik"') and o.name = 'FK_PRAVNI S_PRAVNI SL_DRAVA2')
alter table "Pravni sljedbenik"
   drop constraint "FK_PRAVNI S_PRAVNI SL_DRAVA2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravni ugovor"') and o.name = 'FK_PRAVNI U_ADVOKAT S_REGISTAR')
alter table "Pravni ugovor"
   drop constraint "FK_PRAVNI U_ADVOKAT S_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravni ugovor"') and o.name = 'FK_PRAVNI U_KLIJENT S_KLIJENT')
alter table "Pravni ugovor"
   drop constraint "FK_PRAVNI U_KLIJENT S_KLIJENT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravo na podsistem"') and o.name = 'FK_PRAVO NA_ROLA OBUH_ROLA')
alter table "Pravo na podsistem"
   drop constraint "FK_PRAVO NA_ROLA OBUH_ROLA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pravo na podsistem"') and o.name = 'FK_PRAVO NA_SISTEM PR_SISTEM I')
alter table "Pravo na podsistem"
   drop constraint "FK_PRAVO NA_SISTEM PR_SISTEM I"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Predefinisane role radnih mjesta"') and o.name = 'FK_PREDEFIN_PREDEFINI_KATALOG')
alter table "Predefinisane role radnih mjesta"
   drop constraint FK_PREDEFIN_PREDEFINI_KATALOG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Predefinisane role radnih mjesta"') and o.name = 'FK_PREDEFIN_ROLE ZA R_ROLA')
alter table "Predefinisane role radnih mjesta"
   drop constraint "FK_PREDEFIN_ROLE ZA R_ROLA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Predmet') and o.name = 'FK_PREDMET_PODTIP PR_PODTIP')
alter table Predmet
   drop constraint "FK_PREDMET_PODTIP PR_PODTIP"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Predmet') and o.name = 'FK_PREDMET_TIPIZACIJ_TIP PRED')
alter table Predmet
   drop constraint "FK_PREDMET_TIPIZACIJ_TIP PRED"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Predmet s kojim je povezan pravni ugovor"') and o.name = 'FK_PREDMET _PREDMET S_PRAVNI U')
alter table "Predmet s kojim je povezan pravni ugovor"
   drop constraint "FK_PREDMET _PREDMET S_PRAVNI U"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Predmet s kojim je povezan pravni ugovor"') and o.name = 'FK_PREDMET _PREDMET S_PREDMET')
alter table "Predmet s kojim je povezan pravni ugovor"
   drop constraint "FK_PREDMET _PREDMET S_PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Predmeti klijenta"') and o.name = 'FK_PREDMETI_PREDMETI _KLIJENT')
alter table "Predmeti klijenta"
   drop constraint "FK_PREDMETI_PREDMETI _KLIJENT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Predmeti klijenta"') and o.name = 'FK_PREDMETI_PREDMETI _PREDMET')
alter table "Predmeti klijenta"
   drop constraint "FK_PREDMETI_PREDMETI _PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pripada roli"') and o.name = 'FK_PRIPADA _KO JE U G_ROLA')
alter table "Pripada roli"
   drop constraint "FK_PRIPADA _KO JE U G_ROLA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pripada roli"') and o.name = 'FK_PRIPADA _SVRSTAN U_KORISNIC')
alter table "Pripada roli"
   drop constraint "FK_PRIPADA _SVRSTAN U_KORISNIC"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pripadnost timu"') and o.name = 'FK_PRIPADNO_POZICIJA_TIM')
alter table "Pripadnost timu"
   drop constraint FK_PRIPADNO_POZICIJA_TIM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Pripadnost timu"') and o.name = 'FK_PRIPADNO_ZAPOSLEN _REGISTAR')
alter table "Pripadnost timu"
   drop constraint "FK_PRIPADNO_ZAPOSLEN _REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Prisustvovali sastancima"') and o.name = 'FK_PRISUSTV_PRISUSTVO_INTERNI')
alter table "Prisustvovali sastancima"
   drop constraint FK_PRISUSTV_PRISUSTVO_INTERNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Prisustvovali sastancima"') and o.name = 'FK_PRISUSTV_PRISUSTVO_REGISTAR')
alter table "Prisustvovali sastancima"
   drop constraint FK_PRISUSTV_PRISUSTVO_REGISTAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rad') and o.name = 'FK_RAD_ISTORIJA _PREDMET')
alter table Rad
   drop constraint "FK_RAD_ISTORIJA _PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rad') and o.name = 'FK_RAD_RADI NA P_REGISTAR')
alter table Rad
   drop constraint "FK_RAD_RADI NA P_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rad') and o.name = 'FK_RAD_ULOGA PRI_ULOGA')
alter table Rad
   drop constraint "FK_RAD_ULOGA PRI_ULOGA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Raspored na radna mjesta"') and o.name = 'FK_RASPORED_KADROVI U_ORGANIZA')
alter table "Raspored na radna mjesta"
   drop constraint "FK_RASPORED_KADROVI U_ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Raspored na radna mjesta"') and o.name = 'FK_RASPORED_RASPORED _KATALOG')
alter table "Raspored na radna mjesta"
   drop constraint "FK_RASPORED_RASPORED _KATALOG"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Raspored na radna mjesta"') and o.name = 'FK_RASPORED_RASPORED _REGISTAR')
alter table "Raspored na radna mjesta"
   drop constraint "FK_RASPORED_RASPORED _REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Raspored na radna mjesta"') and o.name = 'FK_RASPORED_TIPIZACIJ_VRSTA RA')
alter table "Raspored na radna mjesta"
   drop constraint "FK_RASPORED_TIPIZACIJ_VRSTA RA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Region') and o.name = 'FK_REGION_ADMINISTR_NASELJEN')
alter table Region
   drop constraint FK_REGION_ADMINISTR_NASELJEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Region') and o.name = 'FK_REGION_MATICNA D_DRAVA')
alter table Region
   drop constraint "FK_REGION_MATICNA D_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Region') and o.name = 'FK_REGION_TIPIZACIJ_TIP REGI')
alter table Region
   drop constraint "FK_REGION_TIPIZACIJ_TIP REGI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Registar zaposlenih"') and o.name = 'FK_REGISTAR_ZAPOŠLJAV_POSLOVNI')
alter table "Registar zaposlenih"
   drop constraint FK_REGISTAR_ZAPOŠLJAV_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Restrikcija atributa"') and o.name = 'FK_RESTRIKC_ATRIBUTI _ATRIBUT')
alter table "Restrikcija atributa"
   drop constraint "FK_RESTRIKC_ATRIBUTI _ATRIBUT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Restrikcija atributa"') and o.name = 'FK_RESTRIKC_ROLA OBUH_ROLA2')
alter table "Restrikcija atributa"
   drop constraint "FK_RESTRIKC_ROLA OBUH_ROLA2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Restrikcija nad tabelama"') and o.name = 'FK_RESTRIKC_ROLA OBUH_ROLA')
alter table "Restrikcija nad tabelama"
   drop constraint "FK_RESTRIKC_ROLA OBUH_ROLA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Restrikcija nad tabelama"') and o.name = 'FK_RESTRIKC_TABELE PR_TABELA')
alter table "Restrikcija nad tabelama"
   drop constraint "FK_RESTRIKC_TABELE PR_TABELA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Rezervna kopija"') and o.name = 'FK_REZERVNA_KREIRAO R_KORISNIC')
alter table "Rezervna kopija"
   drop constraint "FK_REZERVNA_KREIRAO R_KORISNIC"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Rezervna kopija"') and o.name = 'FK_REZERVNA_LOKACIJA _SKLADIST')
alter table "Rezervna kopija"
   drop constraint "FK_REZERVNA_LOKACIJA _SKLADIST"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Rezervna kopija"') and o.name = 'FK_REZERVNA_UREDJAJ S_UREDJAJ')
alter table "Rezervna kopija"
   drop constraint "FK_REZERVNA_UREDJAJ S_UREDJAJ"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rociste') and o.name = 'FK_ROCISTE_ROCISTA U_SUDSKI P')
alter table Rociste
   drop constraint "FK_ROCISTE_ROCISTA U_SUDSKI P"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rociste') and o.name = 'FK_ROCISTE_TIPIZACIJ_TIP ROCI')
alter table Rociste
   drop constraint "FK_ROCISTE_TIPIZACIJ_TIP ROCI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rola') and o.name = 'FK_ROLA_ROLE POSL_POSLOVNI')
alter table Rola
   drop constraint "FK_ROLA_ROLE POSL_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri atribute"') and o.name = 'FK_SADRI A_PRIPADAJU_ATRIBUT')
alter table "Sadri atribute"
   drop constraint "FK_SADRI A_PRIPADAJU_ATRIBUT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri atribute"') and o.name = 'FK_SADRI A_SADRI AT_TABELA')
alter table "Sadri atribute"
   drop constraint "FK_SADRI A_SADRI AT_TABELA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri podsisteme"') and o.name = 'FK_SADRI P_PODSISTEM_SISTEM I')
alter table "Sadri podsisteme"
   drop constraint "FK_SADRI P_PODSISTEM_SISTEM I"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri podsisteme"') and o.name = 'FK_SADRI P_SISTEM_SISTEM I')
alter table "Sadri podsisteme"
   drop constraint "FK_SADRI P_SISTEM_SISTEM I"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri tabele"') and o.name = 'FK_SADRI T_PRIPADAJU_TABELA')
alter table "Sadri tabele"
   drop constraint "FK_SADRI T_PRIPADAJU_TABELA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sadri tabele"') and o.name = 'FK_SADRI T_SADRI TA_SISTEM I')
alter table "Sadri tabele"
   drop constraint "FK_SADRI T_SADRI TA_SISTEM I"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastanak sa klijentom"') and o.name = 'FK_SASTANAK_SASTANAK _KLIJENT')
alter table "Sastanak sa klijentom"
   drop constraint "FK_SASTANAK_SASTANAK _KLIJENT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastanak sa klijentom"') and o.name = 'FK_SASTANAK_SASTANAK _INTERNI')
alter table "Sastanak sa klijentom"
   drop constraint "FK_SASTANAK_SASTANAK _INTERNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastanak sa spoljasnjim poslovnim subjektom"') and o.name = 'FK_SASTANAK_SASTANAK _SPOLJASN')
alter table "Sastanak sa spoljasnjim poslovnim subjektom"
   drop constraint "FK_SASTANAK_SASTANAK _SPOLJASN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastanak sa spoljasnjim poslovnim subjektom"') and o.name = 'FK_SASTANAK_SASTANAK _SASTANCI')
alter table "Sastanak sa spoljasnjim poslovnim subjektom"
   drop constraint "FK_SASTANAK_SASTANAK _SASTANCI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastav drava"') and o.name = 'FK_SASTAV D_DRAVA CL_DRAVA')
alter table "Sastav drava"
   drop constraint "FK_SASTAV D_DRAVA CL_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastav drava"') and o.name = 'FK_SASTAV D_SLOENA D_DRAVA')
alter table "Sastav drava"
   drop constraint "FK_SASTAV D_SLOENA D_DRAVA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastav regiona"') and o.name = 'FK_SASTAV R_SASTAV RE_REGION')
alter table "Sastav regiona"
   drop constraint "FK_SASTAV R_SASTAV RE_REGION"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sastav regiona"') and o.name = 'FK_SASTAV R_SASTAVLJE_REGION')
alter table "Sastav regiona"
   drop constraint "FK_SASTAV R_SASTAVLJE_REGION"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sesija') and o.name = 'FK_SESIJA_SESIJA KO_KORISNIC')
alter table Sesija
   drop constraint "FK_SESIJA_SESIJA KO_KORISNIC"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sesija') and o.name = 'FK_SESIJA_UREDJAJ P_UREDJAJ')
alter table Sesija
   drop constraint "FK_SESIJA_UREDJAJ P_UREDJAJ"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sistem ili podsistem"') and o.name = 'FK_SISTEM I_RESURSI P_POSLOVNI')
alter table "Sistem ili podsistem"
   drop constraint "FK_SISTEM I_RESURSI P_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Skladiste') and o.name = 'FK_SKLADIST_TIPIZACIJ_TIP SKLA')
alter table Skladiste
   drop constraint "FK_SKLADIST_TIPIZACIJ_TIP SKLA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sloena organizaciona jedinica"') and o.name = 'FK_SLOENA _MATICNA O_ORGANIZA')
alter table "Sloena organizaciona jedinica"
   drop constraint "FK_SLOENA _MATICNA O_ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sloena organizaciona jedinica"') and o.name = 'FK_SLOENA _ORGANIZAC_ORGANIZA')
alter table "Sloena organizaciona jedinica"
   drop constraint "FK_SLOENA _ORGANIZAC_ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sloeni poslovni sistem"') and o.name = 'FK_SLOENI _MATICNI P_POSLOVNI')
alter table "Sloeni poslovni sistem"
   drop constraint "FK_SLOENI _MATICNI P_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sloeni poslovni sistem"') and o.name = 'FK_SLOENI _SISTEM U _POSLOVNI')
alter table "Sloeni poslovni sistem"
   drop constraint "FK_SLOENI _SISTEM U _POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sloeni poslovni sistem"') and o.name = 'FK_SLOENI _TIPIZACIJ_TIP SLO')
alter table "Sloeni poslovni sistem"
   drop constraint "FK_SLOENI _TIPIZACIJ_TIP SLO"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Spoljasnji poslovni subjekt"') and o.name = 'FK_SPOLJASN_TIPIZACIJ_TIP SPOL')
alter table "Spoljasnji poslovni subjekt"
   drop constraint "FK_SPOLJASN_TIPIZACIJ_TIP SPOL"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Spoljasnji servis"') and o.name = 'FK_SPOLJASN_TIPIZACIJ_TIP SERV')
alter table "Spoljasnji servis"
   drop constraint "FK_SPOLJASN_TIPIZACIJ_TIP SERV"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Spoljasnji ucesnici"') and o.name = 'FK_SPOLJASN_SPOLJASNJ_KONTAKT')
alter table "Spoljasnji ucesnici"
   drop constraint FK_SPOLJASN_SPOLJASNJ_KONTAKT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Spoljasnji ucesnici"') and o.name = 'FK_SPOLJASN_SPOLJASNJ_SASTANCI')
alter table "Spoljasnji ucesnici"
   drop constraint FK_SPOLJASN_SPOLJASNJ_SASTANCI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stanje sesije"') and o.name = 'FK_STANJE S_STANJE SE_SESIJA')
alter table "Stanje sesije"
   drop constraint "FK_STANJE S_STANJE SE_SESIJA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stanje sesije"') and o.name = 'FK_STANJE S_STANJE SE_STANJE')
alter table "Stanje sesije"
   drop constraint "FK_STANJE S_STANJE SE_STANJE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stanje trajnog materijalnog resursa"') and o.name = 'FK_STANJE T_SERVISIRA_SPOLJASN')
alter table "Stanje trajnog materijalnog resursa"
   drop constraint "FK_STANJE T_SERVISIRA_SPOLJASN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stanje trajnog materijalnog resursa"') and o.name = 'FK_STANJE T_ISTORIJA _STANJE R')
alter table "Stanje trajnog materijalnog resursa"
   drop constraint "FK_STANJE T_ISTORIJA _STANJE R"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Stanje trajnog materijalnog resursa"') and o.name = 'FK_STANJE T_STANJE RE_TRAJNIMA')
alter table "Stanje trajnog materijalnog resursa"
   drop constraint "FK_STANJE T_STANJE RE_TRAJNIMA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Struktura atributa"') and o.name = 'FK_STRUKTUR_ATRIBUT_ATRIBUT')
alter table "Struktura atributa"
   drop constraint FK_STRUKTUR_ATRIBUT_ATRIBUT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Struktura atributa"') and o.name = 'FK_STRUKTUR_SADRANI _ATRIBUT')
alter table "Struktura atributa"
   drop constraint "FK_STRUKTUR_SADRANI _ATRIBUT"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sudski postupak"') and o.name = 'FK_SUDSKI P_SUD NA KO_SUD')
alter table "Sudski postupak"
   drop constraint "FK_SUDSKI P_SUD NA KO_SUD"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Sudski postupak"') and o.name = 'FK_SUDSKI P_SUDSKI PO_PREDMET')
alter table "Sudski postupak"
   drop constraint "FK_SUDSKI P_SUDSKI PO_PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Tabela') and o.name = 'FK_TABELA_RESURSI P_POSLOVNI')
alter table Tabela
   drop constraint "FK_TABELA_RESURSI P_POSLOVNI"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Tim') and o.name = 'FK_TIM_SISTEMATI_ORGANIZA')
alter table Tim
   drop constraint FK_TIM_SISTEMATI_ORGANIZA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Tim') and o.name = 'FK_TIM_VODJA TIM_REGISTAR')
alter table Tim
   drop constraint "FK_TIM_VODJA TIM_REGISTAR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Tim') and o.name = 'FK_TIM_TIPIZACIJ_OBLAST R')
alter table Tim
   drop constraint "FK_TIM_TIPIZACIJ_OBLAST R"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Tipovi usluga"') and o.name = 'FK_TIPOVI U_TIPOVI US_TIP USLU')
alter table "Tipovi usluga"
   drop constraint "FK_TIPOVI U_TIPOVI US_TIP USLU"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Tipovi usluga"') and o.name = 'FK_TIPOVI U_TIPOVI US_PRAVNI U')
alter table "Tipovi usluga"
   drop constraint "FK_TIPOVI U_TIPOVI US_PRAVNI U"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TrajniMaterijalniResurs') and o.name = 'FK_TRAJNIMA_NABAVLJAN_NABAVKA')
alter table TrajniMaterijalniResurs
   drop constraint FK_TRAJNIMA_NABAVLJAN_NABAVKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TrajniMaterijalniResurs') and o.name = 'FK_TRAJNIMA_POPIS INV_IZVJEŠTA')
alter table TrajniMaterijalniResurs
   drop constraint "FK_TRAJNIMA_POPIS INV_IZVJEŠTA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TrajniMaterijalniResurs') and o.name = 'FK_TRAJNIMA_TIP TRAJN_TIP RESU')
alter table TrajniMaterijalniResurs
   drop constraint "FK_TRAJNIMA_TIP TRAJN_TIP RESU"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TrajniMaterijalniResurs') and o.name = 'FK_TRAJNIMA_TRAJNI MA_ORGANIZA')
alter table TrajniMaterijalniResurs
   drop constraint "FK_TRAJNIMA_TRAJNI MA_ORGANIZA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ucesnici na rocistu"') and o.name = 'FK_UCESNICI_UCESNICI _OSOBA2')
alter table "Ucesnici na rocistu"
   drop constraint "FK_UCESNICI_UCESNICI _OSOBA2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ucesnici na rocistu"') and o.name = 'FK_UCESNICI_UCESNICI _ROCISTE')
alter table "Ucesnici na rocistu"
   drop constraint "FK_UCESNICI_UCESNICI _ROCISTE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ucesnici u postupku"') and o.name = 'FK_UCESNICI_UCESNICI _SUDSKI P')
alter table "Ucesnici u postupku"
   drop constraint "FK_UCESNICI_UCESNICI _SUDSKI P"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Ucesnici u postupku"') and o.name = 'FK_UCESNICI_UCESNICI _OSOBA')
alter table "Ucesnici u postupku"
   drop constraint "FK_UCESNICI_UCESNICI _OSOBA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Ugovor') and o.name = 'FK_UGOVOR_SPOLJASNJ_SPOLJASN')
alter table Ugovor
   drop constraint FK_UGOVOR_SPOLJASNJ_SPOLJASN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Ugovor') and o.name = 'FK_UGOVOR_UNUTRASNJ_POSLOVNI')
alter table Ugovor
   drop constraint FK_UGOVOR_UNUTRASNJ_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Unutrasnji ucesnici"') and o.name = 'FK_UNUTRASN_UNUTRASNJ_SASTANCI')
alter table "Unutrasnji ucesnici"
   drop constraint FK_UNUTRASN_UNUTRASNJ_SASTANCI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Unutrasnji ucesnici"') and o.name = 'FK_UNUTRASN_UNUTRASNJ_POSLOVNI')
alter table "Unutrasnji ucesnici"
   drop constraint FK_UNUTRASN_UNUTRASNJ_POSLOVNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Uredjaj') and o.name = 'FK_UREDJAJ_VRSTA URE_VRSTA')
alter table Uredjaj
   drop constraint "FK_UREDJAJ_VRSTA URE_VRSTA"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Zahtjev') and o.name = 'FK_ZAHTJEV_ZAHTJEV Z_SPOLJASN')
alter table Zahtjev
   drop constraint "FK_ZAHTJEV_ZAHTJEV Z_SPOLJASN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"dokazi na predmetu"') and o.name = 'FK_DOKAZI N_DOKAZI NA_DOKAZI2')
alter table "dokazi na predmetu"
   drop constraint "FK_DOKAZI N_DOKAZI NA_DOKAZI2"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"dokazi na predmetu"') and o.name = 'FK_DOKAZI N_DOKAZI NA_PREDMET')
alter table "dokazi na predmetu"
   drop constraint "FK_DOKAZI N_DOKAZI NA_PREDMET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"dokumenti sa rocista"') and o.name = 'FK_DOKUMENT_DOKUMENTI_DOKUMENT2')
alter table "dokumenti sa rocista"
   drop constraint FK_DOKUMENT_DOKUMENTI_DOKUMENT2
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"dokumenti sa rocista"') and o.name = 'FK_DOKUMENT_DOKUMENTI_ROCISTE')
alter table "dokumenti sa rocista"
   drop constraint FK_DOKUMENT_DOKUMENTI_ROCISTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Školska sprema"') and o.name = 'FK_ŠKOLSKA _KOJE ŠKOL_NIVO OBR')
alter table "Školska sprema"
   drop constraint "FK_ŠKOLSKA _KOJE ŠKOL_NIVO OBR"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Adresni podaci"')
            and   name  = 'Mjesto adrese_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Adresni podaci"."Mjesto adrese_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Adresni podaci"')
            and   name  = 'Kontakt podaci_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Adresni podaci"."Kontakt podaci_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Adresni podaci"')
            and   name  = 'Kod drugog pravnog lica_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Adresni podaci"."Kod drugog pravnog lica_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Adresni podaci"')
            and   type = 'U')
   drop table "Adresni podaci"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Akcija')
            and   name  = 'Tip akcije koja se izvršila_FK'
            and   indid > 0
            and   indid < 255)
   drop index Akcija."Tip akcije koja se izvršila_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Akcija')
            and   name  = 'Akcije tokom sesije_FK'
            and   indid > 0
            and   indid < 255)
   drop index Akcija."Akcije tokom sesije_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Akcija')
            and   type = 'U')
   drop table Akcija
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Arhivirani predmet"')
            and   name  = 'odgovorno lice za arhiviranje_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Arhivirani predmet"."odgovorno lice za arhiviranje_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Arhivirani predmet"')
            and   name  = 'lokacija arhiviranog predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Arhivirani predmet"."lokacija arhiviranog predmeta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Arhivirani predmet"')
            and   type = 'U')
   drop table "Arhivirani predmet"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Atribut')
            and   name  = 'Resursi poslovnog sistema2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Atribut."Resursi poslovnog sistema2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Atribut')
            and   type = 'U')
   drop table Atribut
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ciljni entitet akcije"')
            and   name  = 'Ciljni entitet akcije2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ciljni entitet akcije"."Ciljni entitet akcije2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ciljni entitet akcije"')
            and   name  = 'Ciljni entitet akcije_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ciljni entitet akcije"."Ciljni entitet akcije_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Ciljni entitet akcije"')
            and   type = 'U')
   drop table "Ciljni entitet akcije"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dokazi')
            and   name  = 'Tipizacija dokaza_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dokazi."Tipizacija dokaza_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dokazi')
            and   type = 'U')
   drop table Dokazi
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokazi na rocistu"')
            and   name  = 'Dokazi na rocistu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokazi na rocistu"."Dokazi na rocistu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokazi na rocistu"')
            and   name  = 'Dokazi na rocistu2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokazi na rocistu"."Dokazi na rocistu2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dokazi na rocistu"')
            and   type = 'U')
   drop table "Dokazi na rocistu"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokazi u postupku"')
            and   name  = 'Dokazi u postupku2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokazi u postupku"."Dokazi u postupku2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokazi u postupku"')
            and   name  = 'Dokazi u postupku_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokazi u postupku"."Dokazi u postupku_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dokazi u postupku"')
            and   type = 'U')
   drop table "Dokazi u postupku"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokument sistematizacije"')
            and   name  = 'odgovorno lice_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokument sistematizacije"."odgovorno lice_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokument sistematizacije"')
            and   name  = 'Sistematizacija poslovnog sistema_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokument sistematizacije"."Sistematizacija poslovnog sistema_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dokument sistematizacije"')
            and   type = 'U')
   drop table "Dokument sistematizacije"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokumentacija predmeta"')
            and   name  = 'Dokumentacija predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokumentacija predmeta"."Dokumentacija predmeta_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokumentacija predmeta"')
            and   name  = 'Dokumentacija predmeta2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokumentacija predmeta"."Dokumentacija predmeta2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dokumentacija predmeta"')
            and   type = 'U')
   drop table "Dokumentacija predmeta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokumentacija sa sastanaka"')
            and   name  = 'Dokumentacija sa sastanaka2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokumentacija sa sastanaka"."Dokumentacija sa sastanaka2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokumentacija sa sastanaka"')
            and   name  = 'Dokumentacija sa sastanaka_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokumentacija sa sastanaka"."Dokumentacija sa sastanaka_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dokumentacija sa sastanaka"')
            and   type = 'U')
   drop table "Dokumentacija sa sastanaka"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokumentacija zahtjeva"')
            and   name  = 'Dokumentacija zahtjeva_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokumentacija zahtjeva"."Dokumentacija zahtjeva_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokumentacija zahtjeva"')
            and   name  = 'Dokumentacija zahtjeva2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokumentacija zahtjeva"."Dokumentacija zahtjeva2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dokumentacija zahtjeva"')
            and   type = 'U')
   drop table "Dokumentacija zahtjeva"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dokumenti')
            and   name  = 'Tipizacija dokumenta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dokumenti."Tipizacija dokumenta_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dokumenti')
            and   name  = 'Dokumentacija_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dokumenti.Dokumentacija_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dokumenti')
            and   type = 'U')
   drop table Dokumenti
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokumenti u postupku"')
            and   name  = 'Dokumenti u postupku_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokumenti u postupku"."Dokumenti u postupku_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Dokumenti u postupku"')
            and   name  = 'Dokumenti u postupku2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Dokumenti u postupku"."Dokumenti u postupku2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dokumenti u postupku"')
            and   type = 'U')
   drop table "Dokumenti u postupku"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dokumentii')
            and   type = 'U')
   drop table Dokumentii
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Drava')
            and   name  = 'Tekuce uredenje_FK'
            and   indid > 0
            and   indid < 255)
   drop index Drava."Tekuce uredenje_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Drava')
            and   name  = 'Glavni grad_FK'
            and   indid > 0
            and   indid < 255)
   drop index Drava."Glavni grad_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Drava')
            and   type = 'U')
   drop table Drava
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dravljanstvo')
            and   name  = 'Dravljanstvo_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dravljanstvo.Dravljanstvo_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Dravljanstvo')
            and   name  = 'Dravljanstvo2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Dravljanstvo.Dravljanstvo2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Dravljanstvo')
            and   type = 'U')
   drop table Dravljanstvo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Dravno uredenje"')
            and   type = 'U')
   drop table "Dravno uredenje"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Eksportovanje')
            and   name  = 'nacin eksportovanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index Eksportovanje."nacin eksportovanja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Eksportovanje')
            and   type = 'U')
   drop table Eksportovanje
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Faktura')
            and   name  = 'Nacin placanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index Faktura."Nacin placanja_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Faktura')
            and   name  = 'Izvjestaj o naplati fakture_FK'
            and   indid > 0
            and   indid < 255)
   drop index Faktura."Izvjestaj o naplati fakture_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Faktura')
            and   name  = 'Fakture na osnovu ugovora_FK'
            and   indid > 0
            and   indid < 255)
   drop index Faktura."Fakture na osnovu ugovora_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Faktura')
            and   type = 'U')
   drop table Faktura
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Glavni grad"')
            and   name  = 'Glavni grad u dravi_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Glavni grad"."Glavni grad u dravi_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Glavni grad"')
            and   name  = 'Glavni grad_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Glavni grad"."Glavni grad_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Glavni grad"')
            and   type = 'U')
   drop table "Glavni grad"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Interni sastanci"')
            and   type = 'U')
   drop table "Interni sastanci"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Istorija')
            and   name  = 'Ured vodi predmet_FK'
            and   indid > 0
            and   indid < 255)
   drop index Istorija."Ured vodi predmet_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Istorija')
            and   name  = 'Istorija vodjenja predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Istorija."Istorija vodjenja predmeta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Istorija')
            and   type = 'U')
   drop table Istorija
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istorija lokacija"')
            and   name  = 'Uredjaj se nalazi na lokacijama kroz vrijeme_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istorija lokacija"."Uredjaj se nalazi na lokacijama kroz vrijeme_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istorija lokacija"')
            and   name  = 'Lokacija uredjaja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istorija lokacija"."Lokacija uredjaja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Istorija lokacija"')
            and   type = 'U')
   drop table "Istorija lokacija"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istorija statusa"')
            and   name  = 'Statusi predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istorija statusa"."Statusi predmeta_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istorija statusa"')
            and   name  = 'Promjena statusa_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istorija statusa"."Promjena statusa_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Istorija statusa"')
            and   type = 'U')
   drop table "Istorija statusa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istorija uredenja"')
            and   name  = 'Uredenje drave_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istorija uredenja"."Uredenje drave_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istorija uredenja"')
            and   name  = 'Kroz istoriju_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istorija uredenja"."Kroz istoriju_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Istorija uredenja"')
            and   type = 'U')
   drop table "Istorija uredenja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Istorijat')
            and   name  = 'predmet u arhivi_FK'
            and   indid > 0
            and   indid < 255)
   drop index Istorijat."predmet u arhivi_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Istorijat')
            and   name  = 'arhiviranje predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Istorijat."arhiviranje predmeta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Istorijat')
            and   type = 'U')
   drop table Istorijat
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istorijat statusa"')
            and   name  = 'Status dokumenta sistematizacije_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istorijat statusa"."Status dokumenta sistematizacije_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Istorijat statusa"')
            and   name  = 'Istorija statusa dokumenta sistematizacije_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Istorijat statusa"."Istorija statusa dokumenta sistematizacije_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Istorijat statusa"')
            and   type = 'U')
   drop table "Istorijat statusa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izabrani tipovi organizacione jedinice"')
            and   name  = 'Izbor tipizacije po poslovnom sistemu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izabrani tipovi organizacione jedinice"."Izbor tipizacije po poslovnom sistemu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Izabrani tipovi organizacione jedinice"')
            and   name  = 'Izabrana tipizacija organizacione jedinice_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Izabrani tipovi organizacione jedinice"."Izabrana tipizacija organizacione jedinice_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Izabrani tipovi organizacione jedinice"')
            and   type = 'U')
   drop table "Izabrani tipovi organizacione jedinice"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Izdavanje')
            and   name  = 'odgovorno lice za izdavanje_FK'
            and   indid > 0
            and   indid < 255)
   drop index Izdavanje."odgovorno lice za izdavanje_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Izdavanje')
            and   name  = 'istorija izdavanja predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Izdavanje."istorija izdavanja predmeta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Izdavanje')
            and   type = 'U')
   drop table Izdavanje
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Izvještaj')
            and   name  = 'tipizacija izvještaja_FK'
            and   indid > 0
            and   indid < 255)
   drop index Izvještaj."tipizacija izvještaja_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Izvještaj')
            and   name  = 'Kreira izvjestaj_FK'
            and   indid > 0
            and   indid < 255)
   drop index Izvještaj."Kreira izvjestaj_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Izvještaj')
            and   name  = 'Izvjestaj o uredu_FK'
            and   indid > 0
            and   indid < 255)
   drop index Izvještaj."Izvjestaj o uredu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Izvještaj')
            and   name  = 'Izvjestaj o klijentu_FK'
            and   indid > 0
            and   indid < 255)
   drop index Izvještaj."Izvjestaj o klijentu_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Izvještaj')
            and   type = 'U')
   drop table Izvještaj
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Katalog radnih mjesta"')
            and   name  = 'Ima radna mjesta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Katalog radnih mjesta"."Ima radna mjesta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Katalog radnih mjesta"')
            and   type = 'U')
   drop table "Katalog radnih mjesta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Katalog zanimanja"')
            and   name  = 'Registrovana zanimanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Katalog zanimanja"."Registrovana zanimanja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Katalog zanimanja"')
            and   type = 'U')
   drop table "Katalog zanimanja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Katalog zvanja"')
            and   name  = 'Katalog zvanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Katalog zvanja"."Katalog zvanja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Katalog zvanja"')
            and   type = 'U')
   drop table "Katalog zvanja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Klijent')
            and   name  = 'Pravno lice kao klijent_FK'
            and   indid > 0
            and   indid < 255)
   drop index Klijent."Pravno lice kao klijent_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Klijent')
            and   name  = 'Klijent advokatskog ureda_FK'
            and   indid > 0
            and   indid < 255)
   drop index Klijent."Klijent advokatskog ureda_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Klijent')
            and   name  = 'Fizicko lice kao klijent_FK'
            and   indid > 0
            and   indid < 255)
   drop index Klijent."Fizicko lice kao klijent_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klijent')
            and   type = 'U')
   drop table Klijent
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Kontakt osoba"')
            and   name  = 'Kontakt osoba iz spoljasnjeg poslovnog subjekta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Kontakt osoba"."Kontakt osoba iz spoljasnjeg poslovnog subjekta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Kontakt osoba"')
            and   type = 'U')
   drop table "Kontakt osoba"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Korisnicki nalog"')
            and   name  = 'Registrovani korisnici_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Korisnicki nalog"."Registrovani korisnici_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Korisnicki nalog"')
            and   name  = 'Nalog zaposlenog_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Korisnicki nalog"."Nalog zaposlenog_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Korisnicki nalog"')
            and   type = 'U')
   drop table "Korisnicki nalog"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Lista zvanja"')
            and   name  = 'Obuhvata zvanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Lista zvanja"."Obuhvata zvanja_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Lista zvanja"')
            and   name  = 'Lista zvanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Lista zvanja"."Lista zvanja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Lista zvanja"')
            and   type = 'U')
   drop table "Lista zvanja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Logovi podataka"')
            and   name  = 'Log akcije_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Logovi podataka"."Log akcije_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Logovi podataka"')
            and   type = 'U')
   drop table "Logovi podataka"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Mjesna zajednica"')
            and   name  = 'Mjesna kancelarija_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Mjesna zajednica"."Mjesna kancelarija_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Mjesna zajednica"')
            and   name  = 'Ima mjesne zajednice_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Mjesna zajednica"."Ima mjesne zajednice_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Mjesna zajednica"')
            and   type = 'U')
   drop table "Mjesna zajednica"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Mjesno pokrivanje naselja"')
            and   name  = 'Mjesno pokrivanje naselja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Mjesno pokrivanje naselja"."Mjesno pokrivanje naselja_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Mjesno pokrivanje naselja"')
            and   name  = 'Mjesno pokrivanje naselja2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Mjesno pokrivanje naselja"."Mjesno pokrivanje naselja2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Mjesno pokrivanje naselja"')
            and   type = 'U')
   drop table "Mjesno pokrivanje naselja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Nabavka')
            and   name  = 'izvjestaj o nabavkama_FK'
            and   indid > 0
            and   indid < 255)
   drop index Nabavka."izvjestaj o nabavkama_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Nabavka')
            and   name  = 'Dobavljac potrosnog materijalnog resursa_FK'
            and   indid > 0
            and   indid < 255)
   drop index Nabavka."Dobavljac potrosnog materijalnog resursa_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Nabavka')
            and   type = 'U')
   drop table Nabavka
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Nabavka trajnog resursa"')
            and   name  = 'izvjestaj o nabavkama2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Nabavka trajnog resursa"."izvjestaj o nabavkama2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Nabavka trajnog resursa"')
            and   name  = 'Dobavljac trajnih materijalnih resursa_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Nabavka trajnog resursa"."Dobavljac trajnih materijalnih resursa_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Nabavka trajnog resursa"')
            and   type = 'U')
   drop table "Nabavka trajnog resursa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Naseljeno mjesto"')
            and   name  = 'Sadri naselja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Naseljeno mjesto"."Sadri naselja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Naseljeno mjesto"')
            and   type = 'U')
   drop table "Naseljeno mjesto"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Nivo obrazovanja"')
            and   type = 'U')
   drop table "Nivo obrazovanja"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Oblast rada"')
            and   type = 'U')
   drop table "Oblast rada"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obrazuju za"')
            and   name  = 'Školske spreme_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obrazuju za"."Školske spreme_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obrazuju za"')
            and   name  = 'Obrazuju za2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obrazuju za"."Obrazuju za2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Obrazuju za"')
            and   type = 'U')
   drop table "Obrazuju za"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obuhvata naselja"')
            and   name  = 'Obuhvata naselja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obuhvata naselja"."Obuhvata naselja_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obuhvata naselja"')
            and   name  = 'Obuhvata naselja2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obuhvata naselja"."Obuhvata naselja2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Obuhvata naselja"')
            and   type = 'U')
   drop table "Obuhvata naselja"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obuhvata opštine"')
            and   name  = 'Obuhvata opštine_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obuhvata opštine"."Obuhvata opštine_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Obuhvata opštine"')
            and   name  = 'Obuhvata opštine2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Obuhvata opštine"."Obuhvata opštine2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Obuhvata opštine"')
            and   type = 'U')
   drop table "Obuhvata opštine"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Odgovorno lice"')
            and   name  = 'Odgovorno lice3_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Odgovorno lice"."Odgovorno lice3_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Odgovorno lice"')
            and   name  = 'Odgovorno lice2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Odgovorno lice"."Odgovorno lice2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Odgovorno lice"')
            and   type = 'U')
   drop table "Odgovorno lice"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Odgovorno lice za potrosni resurs"')
            and   name  = 'Odgovorno lice4_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Odgovorno lice za potrosni resurs"."Odgovorno lice4_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Odgovorno lice za potrosni resurs"')
            and   name  = 'Odgovorno lice5_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Odgovorno lice za potrosni resurs"."Odgovorno lice5_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Odgovorno lice za potrosni resurs"')
            and   type = 'U')
   drop table "Odgovorno lice za potrosni resurs"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Opština')
            and   name  = 'Središte opštine_FK'
            and   indid > 0
            and   indid < 255)
   drop index Opština."Središte opštine_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Opština')
            and   name  = 'Lokalna samouprava_FK'
            and   indid > 0
            and   indid < 255)
   drop index Opština."Lokalna samouprava_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Opština')
            and   type = 'U')
   drop table Opština
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizaciona jedinica"')
            and   name  = 'Unutrašnja organizacija_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizaciona jedinica"."Unutrašnja organizacija_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizaciona jedinica"')
            and   name  = 'Tipizacija organizacione jedinice_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizaciona jedinica"."Tipizacija organizacione jedinice_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizaciona jedinica"')
            and   name  = 'Sjedište organizacione jedinice_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizaciona jedinica"."Sjedište organizacione jedinice_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Organizaciona jedinica"')
            and   type = 'U')
   drop table "Organizaciona jedinica"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizaciona šema"')
            and   name  = 'U sklopu dokumenta sistematizacije_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizaciona šema"."U sklopu dokumenta sistematizacije_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizaciona šema"')
            and   name  = 'Sistematizovanje organizacione jedinice_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizaciona šema"."Sistematizovanje organizacione jedinice_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Organizaciona šema"')
            and   name  = 'Autor_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Organizaciona šema".Autor_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Organizaciona šema"')
            and   type = 'U')
   drop table "Organizaciona šema"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Osoba')
            and   name  = 'Tipizacija ucesnika_FK'
            and   indid > 0
            and   indid < 255)
   drop index Osoba."Tipizacija ucesnika_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Osoba')
            and   name  = 'Mjesto stanovanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index Osoba."Mjesto stanovanja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Osoba')
            and   type = 'U')
   drop table Osoba
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Personalna restrikcija"')
            and   name  = 'Personalna restrikcija tabela_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Personalna restrikcija"."Personalna restrikcija tabela_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Personalna restrikcija"')
            and   name  = 'Personalna restrikcija atributa_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Personalna restrikcija"."Personalna restrikcija atributa_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Personalna restrikcija"')
            and   name  = 'Personalna restrikcija2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Personalna restrikcija"."Personalna restrikcija2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Personalna restrikcija"')
            and   type = 'U')
   drop table "Personalna restrikcija"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Podaci o obrazovanju"')
            and   name  = 'Tipizacija školske sprema_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Podaci o obrazovanju"."Tipizacija školske sprema_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Podaci o obrazovanju"')
            and   name  = 'Tipizacija zvanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Podaci o obrazovanju"."Tipizacija zvanja_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Podaci o obrazovanju"')
            and   name  = 'Podaci o obrazovanju_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Podaci o obrazovanju"."Podaci o obrazovanju_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Podaci o obrazovanju"')
            and   name  = 'Obrazovna ustanova_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Podaci o obrazovanju"."Obrazovna ustanova_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Podaci o obrazovanju"')
            and   type = 'U')
   drop table "Podaci o obrazovanju"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Podtip')
            and   name  = 'Podtip tipa_FK'
            and   indid > 0
            and   indid < 255)
   drop index Podtip."Podtip tipa_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Podtip')
            and   type = 'U')
   drop table Podtip
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Poslovni sistem"')
            and   name  = 'Tipizacija poslovnog sistema_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Poslovni sistem"."Tipizacija poslovnog sistema_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Poslovni sistem"')
            and   name  = 'Sjedište poslovnog sistema_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Poslovni sistem"."Sjedište poslovnog sistema_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Poslovni sistem"')
            and   name  = 'Pravni sljedbenik_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Poslovni sistem"."Pravni sljedbenik_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Poslovni sistem"')
            and   name  = 'Drava poslovnog sistema_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Poslovni sistem"."Drava poslovnog sistema_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Poslovni sistem"')
            and   type = 'U')
   drop table "Poslovni sistem"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrebna školska sprema"')
            and   name  = 'Školska sprema za radno mjesto_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrebna školska sprema"."Školska sprema za radno mjesto_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrebna školska sprema"')
            and   name  = 'Potrebna školska sprema_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrebna školska sprema"."Potrebna školska sprema_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Potrebna školska sprema"')
            and   type = 'U')
   drop table "Potrebna školska sprema"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrebne spreme"')
            and   name  = 'Potrebne spreme2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrebne spreme"."Potrebne spreme2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrebne spreme"')
            and   name  = 'Potrebne spreme_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrebne spreme"."Potrebne spreme_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Potrebne spreme"')
            and   type = 'U')
   drop table "Potrebne spreme"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrošni materijalni resursi"')
            and   name  = 'Tip potrošnog materijalnog resursa_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrošni materijalni resursi"."Tip potrošnog materijalnog resursa_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrošni materijalni resursi"')
            and   name  = 'Potrošni materijalni resurs pripada organizacionoj jedinici_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrošni materijalni resursi"."Potrošni materijalni resurs pripada organizacionoj jedinici_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Potrošni materijalni resursi"')
            and   name  = 'Nabavka potrošnog materijalnog resursa_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Potrošni materijalni resursi"."Nabavka potrošnog materijalnog resursa_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Potrošni materijalni resursi"')
            and   type = 'U')
   drop table "Potrošni materijalni resursi"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Povezana sa"')
            and   name  = 'Povezana tabela_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Povezana sa"."Povezana tabela_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Povezana sa"')
            and   name  = 'Tabela_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Povezana sa".Tabela_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Povezana sa"')
            and   type = 'U')
   drop table "Povezana sa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Pozicija')
            and   name  = 'pozicija u organizacionoj jedinici_FK'
            and   indid > 0
            and   indid < 255)
   drop index Pozicija."pozicija u organizacionoj jedinici_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Pozicija')
            and   name  = 'na poziciji2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Pozicija."na poziciji2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pozicija')
            and   type = 'U')
   drop table Pozicija
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravni nasljednik"')
            and   name  = 'Pravni nasljednik4_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravni nasljednik"."Pravni nasljednik4_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravni nasljednik"')
            and   name  = 'Pravni nasljednik_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravni nasljednik"."Pravni nasljednik_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pravni nasljednik"')
            and   type = 'U')
   drop table "Pravni nasljednik"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravni sljedbenik"')
            and   name  = 'Pravni sljedbenik2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravni sljedbenik"."Pravni sljedbenik2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravni sljedbenik"')
            and   name  = 'Pravni sljedbenik3_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravni sljedbenik"."Pravni sljedbenik3_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pravni sljedbenik"')
            and   type = 'U')
   drop table "Pravni sljedbenik"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravni ugovor"')
            and   name  = 'Klijent sklopio ugovor sa advokatom_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravni ugovor"."Klijent sklopio ugovor sa advokatom_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravni ugovor"')
            and   name  = 'Advokat sklopio ugovor sa klijentom_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravni ugovor"."Advokat sklopio ugovor sa klijentom_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pravni ugovor"')
            and   type = 'U')
   drop table "Pravni ugovor"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravo na podsistem"')
            and   name  = 'Rola obuhvata sistem_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravo na podsistem"."Rola obuhvata sistem_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pravo na podsistem"')
            and   name  = 'Sistem pripada roli_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pravo na podsistem"."Sistem pripada roli_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pravo na podsistem"')
            and   type = 'U')
   drop table "Pravo na podsistem"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Predefinisane role radnih mjesta"')
            and   name  = 'Predefinisane role radnih mjesta2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Predefinisane role radnih mjesta"."Predefinisane role radnih mjesta2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Predefinisane role radnih mjesta"')
            and   name  = 'Predefinisane role radnih mjesta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Predefinisane role radnih mjesta"."Predefinisane role radnih mjesta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Predefinisane role radnih mjesta"')
            and   type = 'U')
   drop table "Predefinisane role radnih mjesta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Predmet')
            and   name  = 'Tipizacija predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Predmet."Tipizacija predmeta_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Predmet')
            and   name  = 'Podtip predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Predmet."Podtip predmeta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Predmet')
            and   type = 'U')
   drop table Predmet
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Predmet s kojim je povezan pravni ugovor"')
            and   name  = 'Predmet s kojim je povezan pravni ugovor2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Predmet s kojim je povezan pravni ugovor"."Predmet s kojim je povezan pravni ugovor2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Predmet s kojim je povezan pravni ugovor"')
            and   name  = 'Predmet s kojim je povezan pravni ugovor_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Predmet s kojim je povezan pravni ugovor"."Predmet s kojim je povezan pravni ugovor_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Predmet s kojim je povezan pravni ugovor"')
            and   type = 'U')
   drop table "Predmet s kojim je povezan pravni ugovor"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Predmeti klijenta"')
            and   name  = 'Predmeti klijenta2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Predmeti klijenta"."Predmeti klijenta2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Predmeti klijenta"')
            and   name  = 'Predmeti klijenta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Predmeti klijenta"."Predmeti klijenta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Predmeti klijenta"')
            and   type = 'U')
   drop table "Predmeti klijenta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pripada roli"')
            and   name  = 'Svrstan u grupu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pripada roli"."Svrstan u grupu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pripada roli"')
            and   name  = 'Ko je u grupi_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pripada roli"."Ko je u grupi_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pripada roli"')
            and   type = 'U')
   drop table "Pripada roli"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pripadnost timu"')
            and   name  = 'zaposlen u odsjeku2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pripadnost timu"."zaposlen u odsjeku2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Pripadnost timu"')
            and   name  = 'pozicija_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Pripadnost timu".pozicija_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Pripadnost timu"')
            and   type = 'U')
   drop table "Pripadnost timu"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Prisustvovali sastancima"')
            and   name  = 'Prisustvovali sastancima2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Prisustvovali sastancima"."Prisustvovali sastancima2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Prisustvovali sastancima"')
            and   name  = 'Prisustvovali sastancima_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Prisustvovali sastancima"."Prisustvovali sastancima_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Prisustvovali sastancima"')
            and   type = 'U')
   drop table "Prisustvovali sastancima"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rad')
            and   name  = 'Uloga pri radu na predmetu_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rad."Uloga pri radu na predmetu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rad')
            and   name  = 'Radi na predmetu_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rad."Radi na predmetu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rad')
            and   name  = 'Istorija rada na predmetu_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rad."Istorija rada na predmetu_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rad')
            and   type = 'U')
   drop table Rad
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Raspored na radna mjesta"')
            and   name  = 'Tipizacija radnog odnosa_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Raspored na radna mjesta"."Tipizacija radnog odnosa_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Raspored na radna mjesta"')
            and   name  = 'Raspored zaposlenog_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Raspored na radna mjesta"."Raspored zaposlenog_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Raspored na radna mjesta"')
            and   name  = 'Raspored zaposlenih_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Raspored na radna mjesta"."Raspored zaposlenih_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Raspored na radna mjesta"')
            and   name  = 'Kadrovi u organizacionoj jedinici_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Raspored na radna mjesta"."Kadrovi u organizacionoj jedinici_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Raspored na radna mjesta"')
            and   type = 'U')
   drop table "Raspored na radna mjesta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Region')
            and   name  = 'Administrativno sjedište_FK'
            and   indid > 0
            and   indid < 255)
   drop index Region."Administrativno sjedište_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Region')
            and   name  = 'Maticna drava_FK'
            and   indid > 0
            and   indid < 255)
   drop index Region."Maticna drava_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Region')
            and   name  = 'Tipizacija regiona_FK'
            and   indid > 0
            and   indid < 255)
   drop index Region."Tipizacija regiona_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Region')
            and   type = 'U')
   drop table Region
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Registar zaposlenih"')
            and   name  = 'Zapošljava_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Registar zaposlenih".Zapošljava_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Registar zaposlenih"')
            and   type = 'U')
   drop table "Registar zaposlenih"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Restrikcija atributa"')
            and   name  = 'Rola obuhvata akcije_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Restrikcija atributa"."Rola obuhvata akcije_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Restrikcija atributa"')
            and   name  = 'Restrikcija atributa2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Restrikcija atributa"."Restrikcija atributa2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Restrikcija atributa"')
            and   type = 'U')
   drop table "Restrikcija atributa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Restrikcija nad tabelama"')
            and   name  = 'Restrikcija nad tabelama2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Restrikcija nad tabelama"."Restrikcija nad tabelama2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Restrikcija nad tabelama"')
            and   name  = 'Rola obuhvata tabele_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Restrikcija nad tabelama"."Rola obuhvata tabele_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Restrikcija nad tabelama"')
            and   type = 'U')
   drop table "Restrikcija nad tabelama"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Rezervna kopija"')
            and   name  = 'Uredjaj sa kog je kreirana rezervna kopija_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Rezervna kopija"."Uredjaj sa kog je kreirana rezervna kopija_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Rezervna kopija"')
            and   name  = 'Lokacija skladistenja rezervne kopije_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Rezervna kopija"."Lokacija skladistenja rezervne kopije_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Rezervna kopija"')
            and   name  = 'Kreirao rezervnu kopiju_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Rezervna kopija"."Kreirao rezervnu kopiju_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Rezervna kopija"')
            and   type = 'U')
   drop table "Rezervna kopija"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rociste')
            and   name  = 'Tipizacija rocista_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rociste."Tipizacija rocista_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rociste')
            and   name  = 'Rocista u toku postupka_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rociste."Rocista u toku postupka_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rociste')
            and   type = 'U')
   drop table Rociste
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rola')
            and   name  = 'Role poslovnog sistema_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rola."Role poslovnog sistema_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rola')
            and   type = 'U')
   drop table Rola
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri atribute"')
            and   name  = 'Sadri atribute2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri atribute"."Sadri atribute2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri atribute"')
            and   name  = 'Pripadaju tabeli_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri atribute"."Pripadaju tabeli_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sadri atribute"')
            and   type = 'U')
   drop table "Sadri atribute"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri podsisteme"')
            and   name  = 'Podsistem_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri podsisteme".Podsistem_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri podsisteme"')
            and   name  = 'Sistem_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri podsisteme".Sistem_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sadri podsisteme"')
            and   type = 'U')
   drop table "Sadri podsisteme"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri tabele"')
            and   name  = 'Pripadaju podsistemu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri tabele"."Pripadaju podsistemu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sadri tabele"')
            and   name  = 'Sadri tabele2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sadri tabele"."Sadri tabele2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sadri tabele"')
            and   type = 'U')
   drop table "Sadri tabele"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastanak sa klijentom"')
            and   name  = 'Sastanak sa klijentom_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastanak sa klijentom"."Sastanak sa klijentom_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastanak sa klijentom"')
            and   name  = 'Sastanak sa klijentom2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastanak sa klijentom"."Sastanak sa klijentom2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sastanak sa klijentom"')
            and   type = 'U')
   drop table "Sastanak sa klijentom"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastanak sa spoljasnjim poslovnim subjektom"')
            and   name  = 'Sastanak sa spoljasnjim poslovnim subjektom2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastanak sa spoljasnjim poslovnim subjektom"."Sastanak sa spoljasnjim poslovnim subjektom2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastanak sa spoljasnjim poslovnim subjektom"')
            and   name  = 'Sastanak sa spoljasnjim poslovnim subjektom_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastanak sa spoljasnjim poslovnim subjektom"."Sastanak sa spoljasnjim poslovnim subjektom_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sastanak sa spoljasnjim poslovnim subjektom"')
            and   type = 'U')
   drop table "Sastanak sa spoljasnjim poslovnim subjektom"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sastanci')
            and   type = 'U')
   drop table Sastanci
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastav drava"')
            and   name  = 'Drava clanica_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastav drava"."Drava clanica_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastav drava"')
            and   name  = 'Sloena drava_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastav drava"."Sloena drava_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sastav drava"')
            and   type = 'U')
   drop table "Sastav drava"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastav regiona"')
            and   name  = 'Sastavljeni region_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastav regiona"."Sastavljeni region_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sastav regiona"')
            and   name  = 'Region u sastavu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sastav regiona"."Region u sastavu_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sastav regiona"')
            and   type = 'U')
   drop table "Sastav regiona"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sesija')
            and   name  = 'Uredjaj pristupa sistemu_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sesija."Uredjaj pristupa sistemu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sesija')
            and   name  = 'Sesija korisnika na sistemu_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sesija."Sesija korisnika na sistemu_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sesija')
            and   type = 'U')
   drop table Sesija
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sistem ili podsistem"')
            and   name  = 'Resursi poslovnog sistema3_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sistem ili podsistem"."Resursi poslovnog sistema3_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sistem ili podsistem"')
            and   type = 'U')
   drop table "Sistem ili podsistem"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Skladiste')
            and   name  = 'Tipizacija skladista_FK'
            and   indid > 0
            and   indid < 255)
   drop index Skladiste."Tipizacija skladista_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Skladiste')
            and   type = 'U')
   drop table Skladiste
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sloena organizaciona jedinica"')
            and   name  = 'Organizaciona jedinica u sastavu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sloena organizaciona jedinica"."Organizaciona jedinica u sastavu_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sloena organizaciona jedinica"')
            and   type = 'U')
   drop table "Sloena organizaciona jedinica"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sloeni poslovni sistem"')
            and   name  = 'Tipizacija sloenog poslovnog sistema_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sloeni poslovni sistem"."Tipizacija sloenog poslovnog sistema_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sloeni poslovni sistem"')
            and   name  = 'Sistem u sastavu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sloeni poslovni sistem"."Sistem u sastavu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sloeni poslovni sistem"')
            and   name  = 'Maticni poslovni sistem_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sloeni poslovni sistem"."Maticni poslovni sistem_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sloeni poslovni sistem"')
            and   type = 'U')
   drop table "Sloeni poslovni sistem"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Spoljasnji poslovni subjekt"')
            and   name  = 'Tipizacija spoljasnjeg poslovnog subjekta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Spoljasnji poslovni subjekt"."Tipizacija spoljasnjeg poslovnog subjekta_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Spoljasnji poslovni subjekt"')
            and   type = 'U')
   drop table "Spoljasnji poslovni subjekt"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Spoljasnji servis"')
            and   name  = 'Tipizacija servisa_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Spoljasnji servis"."Tipizacija servisa_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Spoljasnji servis"')
            and   type = 'U')
   drop table "Spoljasnji servis"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Spoljasnji ucesnici"')
            and   name  = 'Spoljasnji ucesnici2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Spoljasnji ucesnici"."Spoljasnji ucesnici2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Spoljasnji ucesnici"')
            and   name  = 'Spoljasnji ucesnici_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Spoljasnji ucesnici"."Spoljasnji ucesnici_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Spoljasnji ucesnici"')
            and   type = 'U')
   drop table "Spoljasnji ucesnici"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Stanje')
            and   type = 'U')
   drop table Stanje
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Stanje resursa"')
            and   type = 'U')
   drop table "Stanje resursa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stanje sesije"')
            and   name  = 'Stanje sesije2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stanje sesije"."Stanje sesije2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stanje sesije"')
            and   name  = 'Stanje sesije_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stanje sesije"."Stanje sesije_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Stanje sesije"')
            and   type = 'U')
   drop table "Stanje sesije"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stanje trajnog materijalnog resursa"')
            and   name  = 'stanje resursa_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stanje trajnog materijalnog resursa"."stanje resursa_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stanje trajnog materijalnog resursa"')
            and   name  = 'istorija stanja_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stanje trajnog materijalnog resursa"."istorija stanja_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Stanje trajnog materijalnog resursa"')
            and   name  = 'Servisira trajni resurs_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Stanje trajnog materijalnog resursa"."Servisira trajni resurs_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Stanje trajnog materijalnog resursa"')
            and   type = 'U')
   drop table "Stanje trajnog materijalnog resursa"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Status')
            and   type = 'U')
   drop table Status
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Status predmeta"')
            and   type = 'U')
   drop table "Status predmeta"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Struktura atributa"')
            and   name  = 'Atribut_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Struktura atributa".Atribut_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Struktura atributa"')
            and   name  = 'Sadrani atribut_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Struktura atributa"."Sadrani atribut_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Struktura atributa"')
            and   type = 'U')
   drop table "Struktura atributa"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sud')
            and   type = 'U')
   drop table Sud
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sudski postupak"')
            and   name  = 'Sudski postupci pravnog predmeta_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sudski postupak"."Sudski postupci pravnog predmeta_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Sudski postupak"')
            and   name  = 'Sud na kojem se odvija postupak_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Sudski postupak"."Sud na kojem se odvija postupak_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Sudski postupak"')
            and   type = 'U')
   drop table "Sudski postupak"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Tabela')
            and   name  = 'Resursi poslovnog sistema_FK'
            and   indid > 0
            and   indid < 255)
   drop index Tabela."Resursi poslovnog sistema_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tabela')
            and   type = 'U')
   drop table Tabela
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tabele')
            and   type = 'U')
   drop table Tabele
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Tim')
            and   name  = 'tipizacija tima_FK'
            and   indid > 0
            and   indid < 255)
   drop index Tim."tipizacija tima_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Tim')
            and   name  = 'Vodja tima_FK'
            and   indid > 0
            and   indid < 255)
   drop index Tim."Vodja tima_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Tim')
            and   name  = 'Sistematizovanje timova organizacione jedinice_FK'
            and   indid > 0
            and   indid < 255)
   drop index Tim."Sistematizovanje timova organizacione jedinice_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tim')
            and   type = 'U')
   drop table Tim
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tip')
            and   type = 'U')
   drop table Tip
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip dokaza"')
            and   type = 'U')
   drop table "Tip dokaza"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip dokumenta"')
            and   type = 'U')
   drop table "Tip dokumenta"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip izvještaja"')
            and   type = 'U')
   drop table "Tip izvještaja"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip naplate"')
            and   type = 'U')
   drop table "Tip naplate"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip organizacione jedinice"')
            and   type = 'U')
   drop table "Tip organizacione jedinice"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip poslovnog sistema"')
            and   type = 'U')
   drop table "Tip poslovnog sistema"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip potrošnog materijalnog resursa"')
            and   type = 'U')
   drop table "Tip potrošnog materijalnog resursa"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip predmeta"')
            and   type = 'U')
   drop table "Tip predmeta"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip regiona"')
            and   type = 'U')
   drop table "Tip regiona"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip resursa"')
            and   type = 'U')
   drop table "Tip resursa"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip rocista"')
            and   type = 'U')
   drop table "Tip rocista"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip servisa"')
            and   type = 'U')
   drop table "Tip servisa"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip skladista"')
            and   type = 'U')
   drop table "Tip skladista"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip sloenog poslovnog sistema"')
            and   type = 'U')
   drop table "Tip sloenog poslovnog sistema"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip spoljasnjeg poslovnog subjekta"')
            and   type = 'U')
   drop table "Tip spoljasnjeg poslovnog subjekta"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip ucesnika"')
            and   type = 'U')
   drop table "Tip ucesnika"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tip usluge"')
            and   type = 'U')
   drop table "Tip usluge"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Tipovi usluga"')
            and   name  = 'Tipovi usluga_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Tipovi usluga"."Tipovi usluga_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Tipovi usluga"')
            and   name  = 'Tipovi usluga2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Tipovi usluga"."Tipovi usluga2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Tipovi usluga"')
            and   type = 'U')
   drop table "Tipovi usluga"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TrajniMaterijalniResurs')
            and   name  = 'Trajni materijalni resurs pripada organizacionoj jedinici_FK'
            and   indid > 0
            and   indid < 255)
   drop index TrajniMaterijalniResurs."Trajni materijalni resurs pripada organizacionoj jedinici_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TrajniMaterijalniResurs')
            and   name  = 'Tip trajnog materijalnog resursa_FK'
            and   indid > 0
            and   indid < 255)
   drop index TrajniMaterijalniResurs."Tip trajnog materijalnog resursa_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TrajniMaterijalniResurs')
            and   name  = 'Popis inventara_FK'
            and   indid > 0
            and   indid < 255)
   drop index TrajniMaterijalniResurs."Popis inventara_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TrajniMaterijalniResurs')
            and   name  = 'Nabavljanje potrebnih trajnih materijalnih resursa_FK'
            and   indid > 0
            and   indid < 255)
   drop index TrajniMaterijalniResurs."Nabavljanje potrebnih trajnih materijalnih resursa_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TrajniMaterijalniResurs')
            and   type = 'U')
   drop table TrajniMaterijalniResurs
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ucesnici na rocistu"')
            and   name  = 'Ucesnici na rocistu2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ucesnici na rocistu"."Ucesnici na rocistu2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ucesnici na rocistu"')
            and   name  = 'Ucesnici na rocistu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ucesnici na rocistu"."Ucesnici na rocistu_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Ucesnici na rocistu"')
            and   type = 'U')
   drop table "Ucesnici na rocistu"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ucesnici u postupku"')
            and   name  = 'Ucesnici u postupku_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ucesnici u postupku"."Ucesnici u postupku_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Ucesnici u postupku"')
            and   name  = 'Ucesnici u postupku2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Ucesnici u postupku"."Ucesnici u postupku2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Ucesnici u postupku"')
            and   type = 'U')
   drop table "Ucesnici u postupku"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Ugovor')
            and   name  = 'Unutrasnji potpisnik_FK'
            and   indid > 0
            and   indid < 255)
   drop index Ugovor."Unutrasnji potpisnik_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Ugovor')
            and   name  = 'Spoljasnji potpisnik_FK'
            and   indid > 0
            and   indid < 255)
   drop index Ugovor."Spoljasnji potpisnik_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Ugovor')
            and   type = 'U')
   drop table Ugovor
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Uloga')
            and   type = 'U')
   drop table Uloga
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Unutrasnji ucesnici"')
            and   name  = 'Unutrasnji ucesnici2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Unutrasnji ucesnici"."Unutrasnji ucesnici2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Unutrasnji ucesnici"')
            and   name  = 'Unutrasnji ucesnici_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Unutrasnji ucesnici"."Unutrasnji ucesnici_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Unutrasnji ucesnici"')
            and   type = 'U')
   drop table "Unutrasnji ucesnici"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Uredjaj')
            and   name  = 'Vrsta uredjaja_FK'
            and   indid > 0
            and   indid < 255)
   drop index Uredjaj."Vrsta uredjaja_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Uredjaj')
            and   type = 'U')
   drop table Uredjaj
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Vrsta')
            and   type = 'U')
   drop table Vrsta
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Vrsta radnog odnosa"')
            and   type = 'U')
   drop table "Vrsta radnog odnosa"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Zahtjev')
            and   name  = 'Zahtjev za servisom_FK'
            and   indid > 0
            and   indid < 255)
   drop index Zahtjev."Zahtjev za servisom_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zahtjev')
            and   type = 'U')
   drop table Zahtjev
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"dokazi na predmetu"')
            and   name  = 'dokazi na predmetu_FK'
            and   indid > 0
            and   indid < 255)
   drop index "dokazi na predmetu"."dokazi na predmetu_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"dokazi na predmetu"')
            and   name  = 'dokazi na predmetu2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "dokazi na predmetu"."dokazi na predmetu2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"dokazi na predmetu"')
            and   type = 'U')
   drop table "dokazi na predmetu"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"dokumenti sa rocista"')
            and   name  = 'dokumenti sa rocista_FK'
            and   indid > 0
            and   indid < 255)
   drop index "dokumenti sa rocista"."dokumenti sa rocista_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"dokumenti sa rocista"')
            and   name  = 'dokumenti sa rocista2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "dokumenti sa rocista"."dokumenti sa rocista2_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"dokumenti sa rocista"')
            and   type = 'U')
   drop table "dokumenti sa rocista"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Školska sprema"')
            and   name  = 'Koje školske spreme_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Školska sprema"."Koje školske spreme_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Školska sprema"')
            and   type = 'U')
   drop table "Školska sprema"
go

/*==============================================================*/
/* Table: "Adresni podaci"                                      */
/*==============================================================*/
create table "Adresni podaci" (
   Identifikator        bigint               not null,
   Zaposleni            int                  not null,
   "Redni broj"         smallint             not null,
   Tip                  char(1)              not null default 'P'
      constraint CKC_TIP_ADRESNI check (Tip in ('P','L')),
   Drava               char(3)              not null,
   Mjesto               int                  not null,
   "Drzava zaposlenog"  char(3)              not null,
   Poslodavac           bigint               null,
   Ulica                varchar(120)         null,
   Broj                 varchar(8)           null,
   "Fiksni telefon"     varchar(20)          null,
   "Mobilni telefon"    varchar(20)          null,
   email                varchar(60)          null,
   www                  varchar(120)         null,
   constraint "PK_ADRESNI PODACI" primary key (Identifikator, Zaposleni, "Redni broj", Tip, "Drzava zaposlenog")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Adresni podaci"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Adresni podaci', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Adresni podaci', 'column', 'Drava'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Adresni podaci"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Adresni podaci', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Adresni podaci', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Kod drugog pravnog lica_FK"                          */
/*==============================================================*/




create nonclustered index "Kod drugog pravnog lica_FK" on "Adresni podaci" ("Drzava zaposlenog" ASC,
  Poslodavac ASC)
go

/*==============================================================*/
/* Index: "Kontakt podaci_FK"                                   */
/*==============================================================*/




create nonclustered index "Kontakt podaci_FK" on "Adresni podaci" ("Drzava zaposlenog" ASC,
  Identifikator ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Index: "Mjesto adrese_FK"                                    */
/*==============================================================*/




create nonclustered index "Mjesto adrese_FK" on "Adresni podaci" (Drava ASC,
  Mjesto ASC)
go

/*==============================================================*/
/* Table: Akcija                                                */
/*==============================================================*/
create table Akcija (
   Oznaka               int                  not null,
   "Poslovni sistem"    bigint               not null,
   "Drzava sistema"     char(3)              not null,
   Uredjaj              int                  not null,
   "Vrsta uredjaja"     int                  not null,
   "User ID"            varchar(30)          not null,
   Sesija               int                  not null,
   "Tip akcije"         int                  not null,
   "Arhivirani predmet" char(10)             null,
   "Datum i vrijeme"    datetime             not null,
   Upit                 varchar(300)         not null,
   "Rezultat upita"     varchar(300)         null,
   constraint PK_AKCIJA primary key (Uredjaj, "Poslovni sistem", "Drzava sistema", "User ID", "Vrsta uredjaja", Sesija, "Tip akcije", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Akcija')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava sistema')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Akcija', 'column', 'Drzava sistema'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Akcija', 'column', 'Drzava sistema'
go

/*==============================================================*/
/* Index: "Akcije tokom sesije_FK"                              */
/*==============================================================*/




create nonclustered index "Akcije tokom sesije_FK" on Akcija (Uredjaj ASC,
  "Vrsta uredjaja" ASC,
  "Poslovni sistem" ASC,
  "Drzava sistema" ASC,
  "User ID" ASC,
  Sesija ASC)
go

/*==============================================================*/
/* Index: "Tip akcije koja se izvršila_FK"                      */
/*==============================================================*/




create nonclustered index "Tip akcije koja se izvršila_FK" on Akcija ("Tip akcije" ASC)
go

/*==============================================================*/
/* Table: "Arhivirani predmet"                                  */
/*==============================================================*/
create table "Arhivirani predmet" (
   Oznaka               char(10)             not null,
   Zaposleni            int                  not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Organizaciona jedinica" numeric(4)           not null,
   "Datum arhiviranja"  datetime             not null,
   "Broj arhivske kutije" char(10)             not null,
   Napomena             varchar(200)         null,
   constraint "PK_ARHIVIRANI PREDMET" primary key (Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Arhivirani predmet"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Arhivirani predmet', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Arhivirani predmet', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "lokacija arhiviranog predmeta_FK"                    */
/*==============================================================*/




create nonclustered index "lokacija arhiviranog predmeta_FK" on "Arhivirani predmet" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Index: "odgovorno lice za arhiviranje_FK"                    */
/*==============================================================*/




create nonclustered index "odgovorno lice za arhiviranje_FK" on "Arhivirani predmet" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Table: Atribut                                               */
/*==============================================================*/
create table Atribut (
   Id                   bigint               not null,
   Oznaka               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Naziv                varchar(120)         not null,
   Kod                  varchar(30)          not null,
   constraint PK_ATRIBUT primary key (Oznaka, "Poslovni sistem", Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Atribut')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Atribut', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Atribut', 'column', 'Oznaka'
go

/*==============================================================*/
/* Index: "Resursi poslovnog sistema2_FK"                       */
/*==============================================================*/




create nonclustered index "Resursi poslovnog sistema2_FK" on Atribut (Oznaka ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: "Ciljni entitet akcije"                               */
/*==============================================================*/
create table "Ciljni entitet akcije" (
   Tabela               int                  not null,
   "Poslovni sistem"    bigint               not null,
   Uredjaj              int                  not null,
   "Drzava sistema"     char(3)              not null,
   "User ID"            varchar(30)          not null,
   "Vrsta uredjaja"     int                  not null,
   Sesija               int                  not null,
   "Tip akcije"         int                  not null,
   Akcija               int                  not null,
   constraint "PK_CILJNI ENTITET AKCIJE" primary key (Tabela, Uredjaj, "Poslovni sistem", "Drzava sistema", "User ID", "Vrsta uredjaja", Sesija, "Tip akcije", Akcija)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Ciljni entitet akcije"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava sistema')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Ciljni entitet akcije', 'column', 'Drzava sistema'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Ciljni entitet akcije', 'column', 'Drzava sistema'
go

/*==============================================================*/
/* Index: "Ciljni entitet akcije_FK"                            */
/*==============================================================*/




create nonclustered index "Ciljni entitet akcije_FK" on "Ciljni entitet akcije" (Tabela ASC)
go

/*==============================================================*/
/* Index: "Ciljni entitet akcije2_FK"                           */
/*==============================================================*/




create nonclustered index "Ciljni entitet akcije2_FK" on "Ciljni entitet akcije" (Uredjaj ASC,
  "Poslovni sistem" ASC,
  "Drzava sistema" ASC,
  "User ID" ASC,
  "Vrsta uredjaja" ASC,
  Sesija ASC,
  "Tip akcije" ASC,
  Akcija ASC)
go

/*==============================================================*/
/* Table: Dokazi                                                */
/*==============================================================*/
create table Dokazi (
   Oznaka               int                  not null,
   Tip                  int                  not null,
   Izvor                varchar(100)         not null,
   "Datum dobijanja"    datetime             not null,
   constraint PK_DOKAZI primary key (Tip, Oznaka)
)
go

/*==============================================================*/
/* Index: "Tipizacija dokaza_FK"                                */
/*==============================================================*/




create nonclustered index "Tipizacija dokaza_FK" on Dokazi (Tip ASC)
go

/*==============================================================*/
/* Table: "Dokazi na rocistu"                                   */
/*==============================================================*/
create table "Dokazi na rocistu" (
   "Tip dokaza"         int                  not null,
   Dokaz                int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Postupak             int                  not null,
   "Tip rocista"        int                  not null,
   Rociste              int                  not null,
   constraint "PK_DOKAZI NA ROCISTU" primary key ("Tip dokaza", Dokaz, "Tip predmeta", Predmet, Postupak, "Tip rocista", Rociste)
)
go

/*==============================================================*/
/* Index: "Dokazi na rocistu2_FK"                               */
/*==============================================================*/




create nonclustered index "Dokazi na rocistu2_FK" on "Dokazi na rocistu" ("Tip predmeta" ASC,
  Predmet ASC,
  Postupak ASC,
  "Tip rocista" ASC,
  Rociste ASC)
go

/*==============================================================*/
/* Index: "Dokazi na rocistu_FK"                                */
/*==============================================================*/




create nonclustered index "Dokazi na rocistu_FK" on "Dokazi na rocistu" ("Tip dokaza" ASC,
  Dokaz ASC)
go

/*==============================================================*/
/* Table: "Dokazi u postupku"                                   */
/*==============================================================*/
create table "Dokazi u postupku" (
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Postupak             int                  not null,
   "Tip dokaza"         int                  not null,
   Dokaz                int                  not null,
   constraint "PK_DOKAZI U POSTUPKU" primary key ("Tip predmeta", Predmet, Postupak, "Tip dokaza", Dokaz)
)
go

/*==============================================================*/
/* Index: "Dokazi u postupku_FK"                                */
/*==============================================================*/




create nonclustered index "Dokazi u postupku_FK" on "Dokazi u postupku" ("Tip predmeta" ASC,
  Predmet ASC,
  Postupak ASC)
go

/*==============================================================*/
/* Index: "Dokazi u postupku2_FK"                               */
/*==============================================================*/




create nonclustered index "Dokazi u postupku2_FK" on "Dokazi u postupku" ("Tip dokaza" ASC,
  Dokaz ASC)
go

/*==============================================================*/
/* Table: "Dokument sistematizacije"                            */
/*==============================================================*/
create table "Dokument sistematizacije" (
   Oznaka               int                  not null,
   Pos_Oznaka           char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Drzava zaposlenog"  char(3)              null,
   Zaposleni            int                  null,
   constraint "PK_DOKUMENT SISTEMATIZACIJE" primary key ("Poslovni sistem", Pos_Oznaka, Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Dokument sistematizacije"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Pos_Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Dokument sistematizacije', 'column', 'Pos_Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Dokument sistematizacije', 'column', 'Pos_Oznaka'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Dokument sistematizacije"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Dokument sistematizacije', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Dokument sistematizacije', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Sistematizacija poslovnog sistema_FK"                */
/*==============================================================*/




create nonclustered index "Sistematizacija poslovnog sistema_FK" on "Dokument sistematizacije" (Pos_Oznaka ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Index: "odgovorno lice_FK"                                   */
/*==============================================================*/




create nonclustered index "odgovorno lice_FK" on "Dokument sistematizacije" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Table: "Dokumentacija predmeta"                              */
/*==============================================================*/
create table "Dokumentacija predmeta" (
   Dokument             int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   constraint "PK_DOKUMENTACIJA PREDMETA" primary key (Dokument, "Tip predmeta", Predmet)
)
go

/*==============================================================*/
/* Index: "Dokumentacija predmeta2_FK"                          */
/*==============================================================*/




create nonclustered index "Dokumentacija predmeta2_FK" on "Dokumentacija predmeta" ("Tip predmeta" ASC,
  Predmet ASC)
go

/*==============================================================*/
/* Index: "Dokumentacija predmeta_FK"                           */
/*==============================================================*/




create nonclustered index "Dokumentacija predmeta_FK" on "Dokumentacija predmeta" (Dokument ASC)
go

/*==============================================================*/
/* Table: "Dokumentacija sa sastanaka"                          */
/*==============================================================*/
create table "Dokumentacija sa sastanaka" (
   Sastanak             int                  not null,
   Dokument             int                  not null,
   constraint "PK_DOKUMENTACIJA SA SASTANAKA" primary key (Dokument, Sastanak)
)
go

/*==============================================================*/
/* Index: "Dokumentacija sa sastanaka_FK"                       */
/*==============================================================*/




create nonclustered index "Dokumentacija sa sastanaka_FK" on "Dokumentacija sa sastanaka" (Dokument ASC)
go

/*==============================================================*/
/* Index: "Dokumentacija sa sastanaka2_FK"                      */
/*==============================================================*/




create nonclustered index "Dokumentacija sa sastanaka2_FK" on "Dokumentacija sa sastanaka" (Sastanak ASC)
go

/*==============================================================*/
/* Table: "Dokumentacija zahtjeva"                              */
/*==============================================================*/
create table "Dokumentacija zahtjeva" (
   Dokument             int                  not null,
   "Tip servisa"        int                  not null,
   Servis               int                  not null,
   Zahtjev              int                  not null,
   constraint "PK_DOKUMENTACIJA ZAHTJEVA" primary key (Dokument, "Tip servisa", Servis, Zahtjev)
)
go

/*==============================================================*/
/* Index: "Dokumentacija zahtjeva2_FK"                          */
/*==============================================================*/




create nonclustered index "Dokumentacija zahtjeva2_FK" on "Dokumentacija zahtjeva" ("Tip servisa" ASC,
  Servis ASC,
  Zahtjev ASC)
go

/*==============================================================*/
/* Index: "Dokumentacija zahtjeva_FK"                           */
/*==============================================================*/




create nonclustered index "Dokumentacija zahtjeva_FK" on "Dokumentacija zahtjeva" (Dokument ASC)
go

/*==============================================================*/
/* Table: Dokumenti                                             */
/*==============================================================*/
create table Dokumenti (
   Oznaka               int                  not null,
   "Tip subjekta"       int                  null,
   "Spoljasnji subjekt" int                  null,
   "Tip dokumenta"      int                  not null,
   Naziv                varchar(50)          not null,
   "Datum kreiranja"    datetime             null,
   Autor                varchar(50)          null,
   Opis                 varchar(200)         null,
   constraint PK_DOKUMENTI primary key (Oznaka)
)
go

/*==============================================================*/
/* Index: Dokumentacija_FK                                      */
/*==============================================================*/




create nonclustered index Dokumentacija_FK on Dokumenti ("Tip subjekta" ASC,
  "Spoljasnji subjekt" ASC)
go

/*==============================================================*/
/* Index: "Tipizacija dokumenta_FK"                             */
/*==============================================================*/




create nonclustered index "Tipizacija dokumenta_FK" on Dokumenti ("Tip dokumenta" ASC)
go

/*==============================================================*/
/* Table: "Dokumenti u postupku"                                */
/*==============================================================*/
create table "Dokumenti u postupku" (
   Dokument             int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Postupak             int                  not null,
   constraint "PK_DOKUMENTI U POSTUPKU" primary key (Dokument, "Tip predmeta", Predmet, Postupak)
)
go

/*==============================================================*/
/* Index: "Dokumenti u postupku2_FK"                            */
/*==============================================================*/




create nonclustered index "Dokumenti u postupku2_FK" on "Dokumenti u postupku" ("Tip predmeta" ASC,
  Predmet ASC,
  Postupak ASC)
go

/*==============================================================*/
/* Index: "Dokumenti u postupku_FK"                             */
/*==============================================================*/




create nonclustered index "Dokumenti u postupku_FK" on "Dokumenti u postupku" (Dokument ASC)
go

/*==============================================================*/
/* Table: Dokumentii                                            */
/*==============================================================*/
create table Dokumentii (
   Oznaka               int                  not null,
   Naziv                varchar(50)          not null,
   "Datum kreiranja"    datetime             not null,
   Autor                varchar(60)          not null,
   constraint PK_DOKUMENTII primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: Drava                                                */
/*==============================================================*/
create table Drava (
   Oznaka               char(3)              not null,
   Naziv                varchar(120)         not null,
   "Datum osnivanja"    datetime             not null,
   "Glavni grad"        int                  null,
   "Drzavno uredjenje"  char(1)              null,
   "Pozivni broj"       numeric(5)           null,
   Himna                varbinary(Max)       null,
   Grb                  image                null,
   Zastava              image                null,
   constraint PK_DRAVA primary key (Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Drava')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Drava', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Drava', 'column', 'Oznaka'
go

/*==============================================================*/
/* Index: "Glavni grad_FK"                                      */
/*==============================================================*/




create nonclustered index "Glavni grad_FK" on Drava (Oznaka ASC,
  "Glavni grad" ASC)
go

/*==============================================================*/
/* Index: "Tekuce uredenje_FK"                                  */
/*==============================================================*/




create nonclustered index "Tekuce uredenje_FK" on Drava ("Drzavno uredjenje" ASC)
go

/*==============================================================*/
/* Table: Dravljanstvo                                         */
/*==============================================================*/
create table Dravljanstvo (
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Zaposleni            int                  not null,
   Dravljanstvo        char(3)              not null,
   constraint PK_DRAVLJANSTVO primary key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni, Dravljanstvo)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Dravljanstvo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Dravljanstvo', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Dravljanstvo', 'column', 'Drzava zaposlenog'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Dravljanstvo')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Dravljanstvo')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Dravljanstvo', 'column', 'Dravljanstvo'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Dravljanstvo', 'column', 'Dravljanstvo'
go

/*==============================================================*/
/* Index: Dravljanstvo2_FK                                     */
/*==============================================================*/




create nonclustered index Dravljanstvo2_FK on Dravljanstvo (Dravljanstvo ASC)
go

/*==============================================================*/
/* Index: Dravljanstvo_FK                                      */
/*==============================================================*/




create nonclustered index Dravljanstvo_FK on Dravljanstvo ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Table: "Dravno uredenje"                                    */
/*==============================================================*/
create table "Dravno uredenje" (
   Oznaka               char(1)              not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(256)         null,
   constraint "PK_DRAVNO UREĞENJE" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: Eksportovanje                                         */
/*==============================================================*/
create table Eksportovanje (
   Oznaka               int                  not null,
   "Tip izvjestaja"     int                  not null,
   Izvjestaj            int                  not null,
   Naziv                varchar(20)          not null,
   constraint PK_EKSPORTOVANJE primary key ("Tip izvjestaja", Izvjestaj, Oznaka)
)
go

/*==============================================================*/
/* Index: "nacin eksportovanja_FK"                              */
/*==============================================================*/




create nonclustered index "nacin eksportovanja_FK" on Eksportovanje ("Tip izvjestaja" ASC,
  Izvjestaj ASC)
go

/*==============================================================*/
/* Table: Faktura                                               */
/*==============================================================*/
create table Faktura (
   Broj                 varchar(10)          not null,
   "Tip naplate"        int                  not null,
   Ugovor               int                  not null,
   "Tip izvjestaja"     int                  null,
   Izvjestaj            int                  null,
   "Datum izdavanja"    datetime             not null,
   Cijena               numeric(7)           not null,
   constraint PK_FAKTURA primary key ("Tip naplate", Broj)
)
go

/*==============================================================*/
/* Index: "Fakture na osnovu ugovora_FK"                        */
/*==============================================================*/




create nonclustered index "Fakture na osnovu ugovora_FK" on Faktura (Ugovor ASC)
go

/*==============================================================*/
/* Index: "Izvjestaj o naplati fakture_FK"                      */
/*==============================================================*/




create nonclustered index "Izvjestaj o naplati fakture_FK" on Faktura ("Tip izvjestaja" ASC,
  Izvjestaj ASC)
go

/*==============================================================*/
/* Index: "Nacin placanja_FK"                                   */
/*==============================================================*/




create nonclustered index "Nacin placanja_FK" on Faktura ("Tip naplate" ASC)
go

/*==============================================================*/
/* Table: "Glavni grad"                                         */
/*==============================================================*/
create table "Glavni grad" (
   "Glavni grad"        int                  not null,
   Drava               char(3)              not null,
   "Redni broj"         numeric(1,0)         not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_GLAVNI GRAD" primary key (Drava, "Glavni grad", "Redni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Glavni grad"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Glavni grad', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Glavni grad', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Glavni grad_FK"                                      */
/*==============================================================*/




create nonclustered index "Glavni grad_FK" on "Glavni grad" (Drava ASC)
go

/*==============================================================*/
/* Index: "Glavni grad u dravi_FK"                             */
/*==============================================================*/




create nonclustered index "Glavni grad u dravi_FK" on "Glavni grad" (Drava ASC,
  "Glavni grad" ASC)
go

/*==============================================================*/
/* Table: "Interni sastanci"                                    */
/*==============================================================*/
create table "Interni sastanci" (
   Oznaka               int                  not null,
   "Datum i vrijeme"    datetime             not null,
   Trajanje             varchar(20)          null,
   Sazetak              varchar(300)         not null,
   constraint "PK_INTERNI SASTANCI" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: Istorija                                              */
/*==============================================================*/
create table Istorija (
   Oznaka               int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   "Poslovni sistem"    bigint               not null,
   Drzava               char(3)              not null,
   "Organizaciona jedinica" numeric(4)           not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint PK_ISTORIJA primary key ("Tip predmeta", Predmet, "Poslovni sistem", Drzava, "Organizaciona jedinica", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Istorija')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Istorija', 'column', 'Drzava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Istorija', 'column', 'Drzava'
go

/*==============================================================*/
/* Index: "Istorija vodjenja predmeta_FK"                       */
/*==============================================================*/




create nonclustered index "Istorija vodjenja predmeta_FK" on Istorija ("Tip predmeta" ASC,
  Predmet ASC)
go

/*==============================================================*/
/* Index: "Ured vodi predmet_FK"                                */
/*==============================================================*/




create nonclustered index "Ured vodi predmet_FK" on Istorija (Drzava ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Table: "Istorija lokacija"                                   */
/*==============================================================*/
create table "Istorija lokacija" (
   Oznaka               int                  not null,
   Drzava               char(3)              not null,
   "Naseljeno mjesto"   int                  not null,
   "Vrsta uredjaja"     int                  not null,
   Uredjaj              int                  not null,
   "IP adresa"          varchar(50)          not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_ISTORIJA LOKACIJA" primary key (Drzava, "Naseljeno mjesto", Uredjaj, "Vrsta uredjaja", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Istorija lokacija"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Istorija lokacija', 'column', 'Drzava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Istorija lokacija', 'column', 'Drzava'
go

/*==============================================================*/
/* Index: "Lokacija uredjaja_FK"                                */
/*==============================================================*/




create nonclustered index "Lokacija uredjaja_FK" on "Istorija lokacija" (Drzava ASC,
  "Naseljeno mjesto" ASC)
go

/*==============================================================*/
/* Index: "Uredjaj se nalazi na lokacijama kroz vrijeme_FK"     */
/*==============================================================*/




create nonclustered index "Uredjaj se nalazi na lokacijama kroz vrijeme_FK" on "Istorija lokacija" ("Vrsta uredjaja" ASC,
  Uredjaj ASC)
go

/*==============================================================*/
/* Table: "Istorija statusa"                                    */
/*==============================================================*/
create table "Istorija statusa" (
   Oznaka               int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Status               int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_ISTORIJA STATUSA" primary key ("Tip predmeta", Predmet, Status, Oznaka)
)
go

/*==============================================================*/
/* Index: "Promjena statusa_FK"                                 */
/*==============================================================*/




create nonclustered index "Promjena statusa_FK" on "Istorija statusa" (Status ASC)
go

/*==============================================================*/
/* Index: "Statusi predmeta_FK"                                 */
/*==============================================================*/




create nonclustered index "Statusi predmeta_FK" on "Istorija statusa" ("Tip predmeta" ASC,
  Predmet ASC)
go

/*==============================================================*/
/* Table: "Istorija uredenja"                                   */
/*==============================================================*/
create table "Istorija uredenja" (
   "Redni broj"         numeric(2,0)         not null,
   Drava               char(3)              not null,
   "Drzavno uredjenje"  char(1)              not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_ISTORIJA UREĞENJA" primary key (Drava, "Redni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Istorija uredenja"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Istorija uredenja', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Istorija uredenja', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Kroz istoriju_FK"                                    */
/*==============================================================*/




create nonclustered index "Kroz istoriju_FK" on "Istorija uredenja" (Drava ASC)
go

/*==============================================================*/
/* Index: "Uredenje drave_FK"                                  */
/*==============================================================*/




create nonclustered index "Uredenje drave_FK" on "Istorija uredenja" ("Drzavno uredjenje" ASC)
go

/*==============================================================*/
/* Table: Istorijat                                             */
/*==============================================================*/
create table Istorijat (
   Oznaka               int                  not null,
   "Arhivirani predmet" char(10)             not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint PK_ISTORIJAT primary key ("Arhivirani predmet", "Tip predmeta", Predmet, Oznaka)
)
go

/*==============================================================*/
/* Index: "arhiviranje predmeta_FK"                             */
/*==============================================================*/




create nonclustered index "arhiviranje predmeta_FK" on Istorijat ("Tip predmeta" ASC,
  Predmet ASC)
go

/*==============================================================*/
/* Index: "predmet u arhivi_FK"                                 */
/*==============================================================*/




create nonclustered index "predmet u arhivi_FK" on Istorijat ("Arhivirani predmet" ASC)
go

/*==============================================================*/
/* Table: "Istorijat statusa"                                   */
/*==============================================================*/
create table "Istorijat statusa" (
   Oznaka               int                  not null,
   "Poslovni sistem"    bigint               not null,
   "Drzava sistema"     char(3)              not null,
   "Broj sistematizacije" int                  not null,
   "Status sistematizacije" int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_ISTORIJAT STATUSA" primary key ("Poslovni sistem", "Broj sistematizacije", "Drzava sistema", "Status sistematizacije", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Istorijat statusa"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava sistema')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Istorijat statusa', 'column', 'Drzava sistema'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Istorijat statusa', 'column', 'Drzava sistema'
go

/*==============================================================*/
/* Index: "Istorija statusa dokumenta sistematizacije_FK"       */
/*==============================================================*/




create nonclustered index "Istorija statusa dokumenta sistematizacije_FK" on "Istorijat statusa" ("Status sistematizacije" ASC)
go

/*==============================================================*/
/* Index: "Status dokumenta sistematizacije_FK"                 */
/*==============================================================*/




create nonclustered index "Status dokumenta sistematizacije_FK" on "Istorijat statusa" ("Poslovni sistem" ASC,
  "Drzava sistema" ASC,
  "Broj sistematizacije" ASC)
go

/*==============================================================*/
/* Table: "Izabrani tipovi organizacione jedinice"              */
/*==============================================================*/
create table "Izabrani tipovi organizacione jedinice" (
   "Tip organizacione jedinice" char(1)              not null,
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Aktivan              bit                  not null,
   constraint "PK_IZABRANI TIPOVI ORGANIZACIO" primary key ("Tip organizacione jedinice", Drava, "Poslovni sistem")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Izabrani tipovi organizacione jedinice"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Izabrani tipovi organizacione jedinice', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Izabrani tipovi organizacione jedinice', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Izabrana tipizacija organizacione jedinice_FK"       */
/*==============================================================*/




create nonclustered index "Izabrana tipizacija organizacione jedinice_FK" on "Izabrani tipovi organizacione jedinice" ("Tip organizacione jedinice" ASC)
go

/*==============================================================*/
/* Index: "Izbor tipizacije po poslovnom sistemu_FK"            */
/*==============================================================*/




create nonclustered index "Izbor tipizacije po poslovnom sistemu_FK" on "Izabrani tipovi organizacione jedinice" (Drava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: Izdavanje                                             */
/*==============================================================*/
create table Izdavanje (
   Oznaka               int                  not null,
   "Drzava zaposlenog"  char(3)              null,
   "Poslovni sistem"    bigint               null,
   Zaposleni            int                  null,
   "Arhivirani predmet" char(10)             not null,
   Izdato               datetime             not null,
   Vraceno              datetime             null,
   constraint PK_IZDAVANJE primary key (Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Izdavanje')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Izdavanje', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Izdavanje', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "istorija izdavanja predmeta_FK"                      */
/*==============================================================*/




create nonclustered index "istorija izdavanja predmeta_FK" on Izdavanje ("Arhivirani predmet" ASC)
go

/*==============================================================*/
/* Index: "odgovorno lice za izdavanje_FK"                      */
/*==============================================================*/




create nonclustered index "odgovorno lice za izdavanje_FK" on Izdavanje ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Table: Izvještaj                                             */
/*==============================================================*/
create table Izvještaj (
   Oznaka               int                  not null,
   "Tip izvjestaja"     int                  not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Organizaciona jedinica" numeric(4)           null,
   Klijent              int                  null,
   Zaposleni            int                  not null,
   Naziv                varchar(30)          not null,
   Opis                 varchar(100)         null,
   "Datum kreiranja"    datetime             null,
   constraint PK_IZVJEŠTAJ primary key ("Tip izvjestaja", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Izvještaj')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Izvještaj', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Izvještaj', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Izvjestaj o klijentu_FK"                             */
/*==============================================================*/




create nonclustered index "Izvjestaj o klijentu_FK" on Izvještaj (Klijent ASC)
go

/*==============================================================*/
/* Index: "Izvjestaj o uredu_FK"                                */
/*==============================================================*/




create nonclustered index "Izvjestaj o uredu_FK" on Izvještaj ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Index: "Kreira izvjestaj_FK"                                 */
/*==============================================================*/




create nonclustered index "Kreira izvjestaj_FK" on Izvještaj ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Index: "tipizacija izvještaja_FK"                            */
/*==============================================================*/




create nonclustered index "tipizacija izvještaja_FK" on Izvještaj ("Tip izvjestaja" ASC)
go

/*==============================================================*/
/* Table: "Katalog radnih mjesta"                               */
/*==============================================================*/
create table "Katalog radnih mjesta" (
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Oznaka               numeric(4,0)         not null,
   "Naziv radnog mjesta" varchar(120)         not null,
   "Planski broj izvršilaca" numeric(3,0)         not null,
   constraint "PK_KATALOG RADNIH MJESTA" primary key (Drava, "Poslovni sistem", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Katalog radnih mjesta"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Katalog radnih mjesta', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Katalog radnih mjesta', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Ima radna mjesta_FK"                                 */
/*==============================================================*/




create nonclustered index "Ima radna mjesta_FK" on "Katalog radnih mjesta" (Drava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: "Katalog zanimanja"                                   */
/*==============================================================*/
create table "Katalog zanimanja" (
   Drava               char(3)              not null,
   Zanimanje            int                  not null,
   Naziv                varchar(120)         not null,
   constraint "PK_KATALOG ZANIMANJA" primary key (Drava, Zanimanje)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Katalog zanimanja"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Katalog zanimanja', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Katalog zanimanja', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Registrovana zanimanja_FK"                           */
/*==============================================================*/




create nonclustered index "Registrovana zanimanja_FK" on "Katalog zanimanja" (Drava ASC)
go

/*==============================================================*/
/* Table: "Katalog zvanja"                                      */
/*==============================================================*/
create table "Katalog zvanja" (
   Drava               char(3)              not null,
   Oznaka               char(2)              not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(256)         null,
   constraint "PK_KATALOG ZVANJA" primary key (Drava, Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Katalog zvanja"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Katalog zvanja', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Katalog zvanja', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Katalog zvanja_FK"                                   */
/*==============================================================*/




create nonclustered index "Katalog zvanja_FK" on "Katalog zvanja" (Drava ASC)
go

/*==============================================================*/
/* Table: Klijent                                               */
/*==============================================================*/
create table Klijent (
   ID                   int                  not null,
   JMBG                 char(13)             null,
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Organizaciona jedinica" numeric(4)           not null,
   constraint PK_KLIJENT primary key (ID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Klijent')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Klijent', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Klijent', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Fizicko lice kao klijent_FK"                         */
/*==============================================================*/




create nonclustered index "Fizicko lice kao klijent_FK" on Klijent (JMBG ASC)
go

/*==============================================================*/
/* Index: "Klijent advokatskog ureda_FK"                        */
/*==============================================================*/




create nonclustered index "Klijent advokatskog ureda_FK" on Klijent (Drava ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Index: "Pravno lice kao klijent_FK"                          */
/*==============================================================*/




create nonclustered index "Pravno lice kao klijent_FK" on Klijent (Drava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: "Kontakt osoba"                                       */
/*==============================================================*/
create table "Kontakt osoba" (
   Oznaka               int                  not null,
   "Tip subjekta"       int                  not null,
   "Spoljasnji subjekt" int                  not null,
   "Ime i prezime"      varchar(50)          not null,
   Pozicija             varchar(20)          null,
   Telefon              varchar(20)          not null,
   "E-mail"             varchar(60)          not null,
   constraint "PK_KONTAKT OSOBA" primary key ("Tip subjekta", "Spoljasnji subjekt", Oznaka)
)
go

/*==============================================================*/
/* Index: "Kontakt osoba iz spoljasnjeg poslovnog subjekta_FK"  */
/*==============================================================*/




create nonclustered index "Kontakt osoba iz spoljasnjeg poslovnog subjekta_FK" on "Kontakt osoba" ("Tip subjekta" ASC,
  "Spoljasnji subjekt" ASC)
go

/*==============================================================*/
/* Table: "Korisnicki nalog"                                    */
/*==============================================================*/
create table "Korisnicki nalog" (
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "User ID"            varchar(30)          not null,
   Zaposleni            int                  not null,
   Identifikator        bigint               not null,
   Username             varchar(15)          not null,
   Password             varchar(256)         null,
   "Datum registracije" datetime             not null,
   Aktivan              bit                  not null,
   constraint "PK_KORISNICKI NALOG" primary key ("Drzava zaposlenog", "Poslovni sistem", "User ID")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Korisnicki nalog"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Korisnicki nalog', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Korisnicki nalog', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Nalog zaposlenog_FK"                                 */
/*==============================================================*/




create nonclustered index "Nalog zaposlenog_FK" on "Korisnicki nalog" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Index: "Registrovani korisnici_FK"                           */
/*==============================================================*/




create nonclustered index "Registrovani korisnici_FK" on "Korisnicki nalog" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: "Lista zvanja"                                        */
/*==============================================================*/
create table "Lista zvanja" (
   Drava               char(3)              not null,
   Zvanje               char(2)              not null,
   "Školska sprema"     char(2)              not null,
   Stepen               numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   constraint "PK_LISTA ZVANJA" primary key (Stepen, "Nivo obrazovanja", "Školska sprema", Drava, Zvanje)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Lista zvanja"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Lista zvanja', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Lista zvanja', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Lista zvanja_FK"                                     */
/*==============================================================*/




create nonclustered index "Lista zvanja_FK" on "Lista zvanja" (Drava ASC,
  Zvanje ASC)
go

/*==============================================================*/
/* Index: "Obuhvata zvanja_FK"                                  */
/*==============================================================*/




create nonclustered index "Obuhvata zvanja_FK" on "Lista zvanja" (Stepen ASC,
  "Nivo obrazovanja" ASC,
  "Školska sprema" ASC)
go

/*==============================================================*/
/* Table: "Logovi podataka"                                     */
/*==============================================================*/
create table "Logovi podataka" (
   Oznaka               int                  not null,
   Uredjaj              int                  not null,
   "Drzava sistema"     char(3)              not null,
   "User ID"            varchar(30)          not null,
   "Vrsta uredjaja"     int                  not null,
   Sesija               int                  not null,
   "Tip akcije"         int                  not null,
   Akcija               int                  not null,
   "Ciljni Red"         varchar(300)         not null,
   "Ciljni kolona"      varchar(300)         not null,
   "Stara vrijednost"   varchar(300)         not null,
   "Nova vrijednost"    varchar(300)         not null,
   "Poslovni sistem"    bigint               not null,
   constraint "PK_LOGOVI PODATAKA" primary key (Uredjaj, "Poslovni sistem", "Drzava sistema", "User ID", "Vrsta uredjaja", Sesija, "Tip akcije", Akcija, Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Logovi podataka"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava sistema')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Logovi podataka', 'column', 'Drzava sistema'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Logovi podataka', 'column', 'Drzava sistema'
go

/*==============================================================*/
/* Index: "Log akcije_FK"                                       */
/*==============================================================*/




create nonclustered index "Log akcije_FK" on "Logovi podataka" (Uredjaj ASC,
  "Poslovni sistem" ASC,
  "Drzava sistema" ASC,
  "User ID" ASC,
  "Vrsta uredjaja" ASC,
  Sesija ASC,
  "Tip akcije" ASC,
  Akcija ASC)
go

/*==============================================================*/
/* Table: "Mjesna zajednica"                                    */
/*==============================================================*/
create table "Mjesna zajednica" (
   Identifikator        numeric(2,0)         not null,
   Drava               char(3)              null,
   "Oznaka opštine"     numeric(3,0)         not null,
   "Naziv mjesne zajednice" varchar(120)         not null,
   "Mjesna kancelarija" int                  null,
   constraint "PK_MJESNA ZAJEDNICA" primary key ("Oznaka opštine", Identifikator)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Mjesna zajednica"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Mjesna zajednica', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Mjesna zajednica', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Ima mjesne zajednice_FK"                             */
/*==============================================================*/




create nonclustered index "Ima mjesne zajednice_FK" on "Mjesna zajednica" (Drava ASC,
  "Oznaka opštine" ASC)
go

/*==============================================================*/
/* Index: "Mjesna kancelarija_FK"                               */
/*==============================================================*/




create nonclustered index "Mjesna kancelarija_FK" on "Mjesna zajednica" (Drava ASC,
  "Mjesna kancelarija" ASC)
go

/*==============================================================*/
/* Table: "Mjesno pokrivanje naselja"                           */
/*==============================================================*/
create table "Mjesno pokrivanje naselja" (
   Drava               char(3)              not null,
   "Oznaka opštine"     numeric(3,0)         not null,
   Oznaka               int                  not null,
   Identifikator        numeric(2,0)         not null,
   constraint "PK_MJESNO POKRIVANJE NASELJA" primary key ("Oznaka opštine", Identifikator, Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Mjesno pokrivanje naselja"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Mjesno pokrivanje naselja', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Mjesno pokrivanje naselja', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Mjesno pokrivanje naselja2_FK"                       */
/*==============================================================*/




create nonclustered index "Mjesno pokrivanje naselja2_FK" on "Mjesno pokrivanje naselja" (Drava ASC,
  Oznaka ASC)
go

/*==============================================================*/
/* Index: "Mjesno pokrivanje naselja_FK"                        */
/*==============================================================*/




create nonclustered index "Mjesno pokrivanje naselja_FK" on "Mjesno pokrivanje naselja" ("Oznaka opštine" ASC,
  Identifikator ASC)
go

/*==============================================================*/
/* Table: Nabavka                                               */
/*==============================================================*/
create table Nabavka (
   Nabavka              char(5)              not null,
   "Tip spoljasnjeg subjekta" int                  null,
   Dobavljac            int                  null,
   "Tip izvjestaja"     int                  null,
   Izvjestaj            int                  null,
   Datum                datetime             null,
   Cijena               decimal(5,2)         null,
   Kolicina             int                  null,
   constraint PK_NABAVKA primary key (Nabavka)
)
go

/*==============================================================*/
/* Index: "Dobavljac potrosnog materijalnog resursa_FK"         */
/*==============================================================*/




create nonclustered index "Dobavljac potrosnog materijalnog resursa_FK" on Nabavka ("Tip spoljasnjeg subjekta" ASC,
  Dobavljac ASC)
go

/*==============================================================*/
/* Index: "izvjestaj o nabavkama_FK"                            */
/*==============================================================*/




create nonclustered index "izvjestaj o nabavkama_FK" on Nabavka ("Tip izvjestaja" ASC,
  Izvjestaj ASC)
go

/*==============================================================*/
/* Table: "Nabavka trajnog resursa"                             */
/*==============================================================*/
create table "Nabavka trajnog resursa" (
   ID                   int                  not null,
   "Tip subjekta"       int                  null,
   Dobavljac            int                  null,
   "Tip izvjestaja"     int                  null,
   Izvjestaj            int                  null,
   Datum                datetime             not null,
   Cijena               decimal(5,2)         not null,
   Kolicina             int                  null,
   constraint "PK_NABAVKA TRAJNOG RESURSA" primary key (ID)
)
go

/*==============================================================*/
/* Index: "Dobavljac trajnih materijalnih resursa_FK"           */
/*==============================================================*/




create nonclustered index "Dobavljac trajnih materijalnih resursa_FK" on "Nabavka trajnog resursa" ("Tip subjekta" ASC,
  Dobavljac ASC)
go

/*==============================================================*/
/* Index: "izvjestaj o nabavkama2_FK"                           */
/*==============================================================*/




create nonclustered index "izvjestaj o nabavkama2_FK" on "Nabavka trajnog resursa" ("Tip izvjestaja" ASC,
  Izvjestaj ASC)
go

/*==============================================================*/
/* Table: "Naseljeno mjesto"                                    */
/*==============================================================*/
create table "Naseljeno mjesto" (
   Oznaka               int                  not null,
   Drava               char(3)              not null,
   "Naziv mjesta"       varchar(120)         not null,
   "PTT oznaka"         varchar(12)          null,
   constraint "PK_NASELJENO MJESTO" primary key (Drava, Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Naseljeno mjesto"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Naseljeno mjesto', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Naseljeno mjesto', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Sadri naselja_FK"                                   */
/*==============================================================*/




create nonclustered index "Sadri naselja_FK" on "Naseljeno mjesto" (Drava ASC)
go

/*==============================================================*/
/* Table: "Nivo obrazovanja"                                    */
/*==============================================================*/
create table "Nivo obrazovanja" (
   Stepen               numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   "Naziv nivoa"        varchar(120)         not null,
   constraint "PK_NIVO OBRAZOVANJA" primary key (Stepen, "Nivo obrazovanja")
)
go

/*==============================================================*/
/* Table: "Oblast rada"                                         */
/*==============================================================*/
create table "Oblast rada" (
   Oznaka               int                  not null,
   Naziv                varchar(50)          not null,
   Opis                 varchar(300)         null,
   constraint "PK_OBLAST RADA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Obrazuju za"                                         */
/*==============================================================*/
create table "Obrazuju za" (
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Školska sprema"     char(2)              not null,
   Stepen               numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   constraint "PK_OBRAZUJU ZA" primary key (Stepen, "Nivo obrazovanja", "Školska sprema", Drava, "Poslovni sistem")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Obrazuju za"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Obrazuju za', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Obrazuju za', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Obrazuju za2_FK"                                     */
/*==============================================================*/




create nonclustered index "Obrazuju za2_FK" on "Obrazuju za" (Drava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Index: "Školske spreme_FK"                                   */
/*==============================================================*/




create nonclustered index "Školske spreme_FK" on "Obrazuju za" (Stepen ASC,
  "Nivo obrazovanja" ASC,
  "Školska sprema" ASC)
go

/*==============================================================*/
/* Table: "Obuhvata naselja"                                    */
/*==============================================================*/
create table "Obuhvata naselja" (
   "Tip regiona"        char(1)              not null,
   "Oznaka regiona"     smallint             not null,
   Drava               char(3)              not null,
   "Naseljeno mjesto"   int                  not null,
   constraint "PK_OBUHVATA NASELJA" primary key (Drava, "Naseljeno mjesto", "Tip regiona", "Oznaka regiona")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Obuhvata naselja"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Obuhvata naselja', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Obuhvata naselja', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Obuhvata naselja2_FK"                                */
/*==============================================================*/




create nonclustered index "Obuhvata naselja2_FK" on "Obuhvata naselja" ("Tip regiona" ASC,
  "Oznaka regiona" ASC)
go

/*==============================================================*/
/* Index: "Obuhvata naselja_FK"                                 */
/*==============================================================*/




create nonclustered index "Obuhvata naselja_FK" on "Obuhvata naselja" (Drava ASC,
  "Naseljeno mjesto" ASC)
go

/*==============================================================*/
/* Table: "Obuhvata opštine"                                    */
/*==============================================================*/
create table "Obuhvata opštine" (
   Drava               char(3)              not null,
   "Oznaka opštine"     numeric(3,0)         not null,
   Oznaka               int                  not null,
   constraint "PK_OBUHVATA OPŠTINE" primary key ("Oznaka opštine", Drava, Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Obuhvata opštine"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Obuhvata opštine', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Obuhvata opštine', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Obuhvata opštine2_FK"                                */
/*==============================================================*/




create nonclustered index "Obuhvata opštine2_FK" on "Obuhvata opštine" (Drava ASC,
  Oznaka ASC)
go

/*==============================================================*/
/* Index: "Obuhvata opštine_FK"                                 */
/*==============================================================*/




create nonclustered index "Obuhvata opštine_FK" on "Obuhvata opštine" (Drava ASC,
  "Oznaka opštine" ASC)
go

/*==============================================================*/
/* Table: "Odgovorno lice"                                      */
/*==============================================================*/
create table "Odgovorno lice" (
   Zaposleni            int                  not null,
   "Inventarni broj"    char(8)              not null,
   "Tip resursa"        char(5)              not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   constraint "PK_ODGOVORNO LICE" primary key ("Tip resursa", "Inventarni broj", "Drzava zaposlenog", "Poslovni sistem", Zaposleni)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Odgovorno lice"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Odgovorno lice', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Odgovorno lice', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Odgovorno lice2_FK"                                  */
/*==============================================================*/




create nonclustered index "Odgovorno lice2_FK" on "Odgovorno lice" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Index: "Odgovorno lice3_FK"                                  */
/*==============================================================*/




create nonclustered index "Odgovorno lice3_FK" on "Odgovorno lice" ("Tip resursa" ASC,
  "Inventarni broj" ASC)
go

/*==============================================================*/
/* Table: "Odgovorno lice za potrosni resurs"                   */
/*==============================================================*/
create table "Odgovorno lice za potrosni resurs" (
   Zaposleni            int                  not null,
   "Tip resursa"        char(5)              not null,
   "Inventarni broj"    char(4)              not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   constraint "PK_ODGOVORNO LICE ZA POTROSNI" primary key ("Tip resursa", "Inventarni broj", "Drzava zaposlenog", "Poslovni sistem", Zaposleni)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Odgovorno lice za potrosni resurs"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Odgovorno lice za potrosni resurs', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Odgovorno lice za potrosni resurs', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Odgovorno lice5_FK"                                  */
/*==============================================================*/




create nonclustered index "Odgovorno lice5_FK" on "Odgovorno lice za potrosni resurs" ("Tip resursa" ASC,
  "Inventarni broj" ASC)
go

/*==============================================================*/
/* Index: "Odgovorno lice4_FK"                                  */
/*==============================================================*/




create nonclustered index "Odgovorno lice4_FK" on "Odgovorno lice za potrosni resurs" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Table: Opština                                               */
/*==============================================================*/
create table Opština (
   "Oznaka opštine"     numeric(3,0)         not null,
   Drava               char(3)              not null,
   "Naziv opštine"      varchar(120)         not null,
   "Sjedište opštine"   int                  null,
   constraint PK_OPŠTINA primary key (Drava, "Oznaka opštine")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Opština')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Opština', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Opština', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Lokalna samouprava_FK"                               */
/*==============================================================*/




create nonclustered index "Lokalna samouprava_FK" on Opština (Drava ASC)
go

/*==============================================================*/
/* Index: "Središte opštine_FK"                                 */
/*==============================================================*/




create nonclustered index "Središte opštine_FK" on Opština (Drava ASC,
  "Sjedište opštine" ASC)
go

/*==============================================================*/
/* Table: "Organizaciona jedinica"                              */
/*==============================================================*/
create table "Organizaciona jedinica" (
   Oznaka               numeric(4)           not null,
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Tip organizacione jedinice" char(1)              not null,
   "Sjedište organizacione jedinice" int                  not null,
   Naziv                varchar(120)         not null,
   Adresa               varchar(120)         null,
   Telefon              varchar(11)          null,
   email                varchar(60)          null,
   constraint "PK_ORGANIZACIONA JEDINICA" primary key (Drava, "Poslovni sistem", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Organizaciona jedinica"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Organizaciona jedinica', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Organizaciona jedinica', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Sjedište organizacione jedinice_FK"                  */
/*==============================================================*/




create nonclustered index "Sjedište organizacione jedinice_FK" on "Organizaciona jedinica" (Drava ASC,
  "Sjedište organizacione jedinice" ASC)
go

/*==============================================================*/
/* Index: "Tipizacija organizacione jedinice_FK"                */
/*==============================================================*/




create nonclustered index "Tipizacija organizacione jedinice_FK" on "Organizaciona jedinica" ("Tip organizacione jedinice" ASC,
  Drava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Index: "Unutrašnja organizacija_FK"                          */
/*==============================================================*/




create nonclustered index "Unutrašnja organizacija_FK" on "Organizaciona jedinica" (Drava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: "Organizaciona šema"                                  */
/*==============================================================*/
create table "Organizaciona šema" (
   "Redni broj"         int                  not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Organizaciona jedinica" numeric(4)           not null,
   "Poslovni sistem"    bigint               not null,
   "Drzava sistema"     char(3)              not null,
   "Broj sistematizacije" int                  not null,
   "Vai od"            datetime             not null,
   "Vai do"            datetime             null,
   Autor                int                  null,
   constraint "PK_ORGANIZACIONA ŠEMA" primary key ("Drzava zaposlenog", "Organizaciona jedinica", "Poslovni sistem", "Broj sistematizacije", "Drzava sistema", "Redni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Organizaciona šema"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Organizaciona šema', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Organizaciona šema', 'column', 'Drzava zaposlenog'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Organizaciona šema"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava sistema')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Organizaciona šema', 'column', 'Drzava sistema'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Organizaciona šema', 'column', 'Drzava sistema'
go

/*==============================================================*/
/* Index: Autor_FK                                              */
/*==============================================================*/




create nonclustered index Autor_FK on "Organizaciona šema" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Autor ASC)
go

/*==============================================================*/
/* Index: "Sistematizovanje organizacione jedinice_FK"          */
/*==============================================================*/




create nonclustered index "Sistematizovanje organizacione jedinice_FK" on "Organizaciona šema" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Index: "U sklopu dokumenta sistematizacije_FK"               */
/*==============================================================*/




create nonclustered index "U sklopu dokumenta sistematizacije_FK" on "Organizaciona šema" ("Poslovni sistem" ASC,
  "Drzava sistema" ASC,
  "Broj sistematizacije" ASC)
go

/*==============================================================*/
/* Table: Osoba                                                 */
/*==============================================================*/
create table Osoba (
   JMBG                 char(13)             not null,
   Drzava               char(3)              null,
   "Naseljeno mjesto"   int                  null,
   "Tip ucesnika"       int                  null,
   Prezime              varchar(30)          not null,
   Ime                  varchar(30)          not null,
   Adresa               varchar(50)          null,
   "Broj telefona"      varchar(20)          not null,
   Email                varchar(40)          null,
   constraint PK_OSOBA primary key (JMBG)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Osoba')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Osoba', 'column', 'Drzava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Osoba', 'column', 'Drzava'
go

/*==============================================================*/
/* Index: "Mjesto stanovanja_FK"                                */
/*==============================================================*/




create nonclustered index "Mjesto stanovanja_FK" on Osoba (Drzava ASC,
  "Naseljeno mjesto" ASC)
go

/*==============================================================*/
/* Index: "Tipizacija ucesnika_FK"                              */
/*==============================================================*/




create nonclustered index "Tipizacija ucesnika_FK" on Osoba ("Tip ucesnika" ASC)
go

/*==============================================================*/
/* Table: "Personalna restrikcija"                              */
/*==============================================================*/
create table "Personalna restrikcija" (
   Atr_Dr_Oznaka       char(3)              not null,
   Atr_Identifikator    bigint               not null,
   Tab_Dr_Oznaka       char(3)              not null,
   Tab_Identifikator    bigint               not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Tabela               bigint               not null,
   Atribut              bigint               not null,
   Korisnik             varchar(30)          not null,
   Rola                 char(2)              not null,
   "Id pripadnosti roli" bigint               not null,
   Dodavanje            bit                  not null,
   Brisanje             bit                  not null,
   Izmjena              bit                  not null,
   Pretraga             bit                  not null,
   constraint "PK_PERSONALNA RESTRIKCIJA" primary key (Atr_Dr_Oznaka, Atr_Identifikator, Atribut, Tab_Dr_Oznaka, Tab_Identifikator, Tabela, "Drzava zaposlenog", "Poslovni sistem", Korisnik, Rola, "Id pripadnosti roli")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Personalna restrikcija"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Personalna restrikcija', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Personalna restrikcija', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Personalna restrikcija2_FK"                          */
/*==============================================================*/




create nonclustered index "Personalna restrikcija2_FK" on "Personalna restrikcija" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Korisnik ASC,
  Rola ASC,
  "Id pripadnosti roli" ASC)
go

/*==============================================================*/
/* Index: "Personalna restrikcija atributa_FK"                  */
/*==============================================================*/




create nonclustered index "Personalna restrikcija atributa_FK" on "Personalna restrikcija" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Atribut ASC)
go

/*==============================================================*/
/* Index: "Personalna restrikcija tabela_FK"                    */
/*==============================================================*/




create nonclustered index "Personalna restrikcija tabela_FK" on "Personalna restrikcija" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Tabela ASC)
go

/*==============================================================*/
/* Table: "Podaci o obrazovanju"                                */
/*==============================================================*/
create table "Podaci o obrazovanju" (
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Zaposleni            int                  not null,
   "Redni broj"         numeric(2,0)         not null,
   "Školska sprema"     char(2)              not null,
   Stepen               numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   Zvanje               char(2)              not null,
   "Obrazovna ustanova" bigint               null,
   "Datum upisa"        datetime             not null,
   "Datum završetka"    datetime             not null,
   "Datum diplomiranja" datetime             null,
   "Broj diplome"       varchar(14)          null,
   constraint "PK_PODACI O OBRAZOVANJU" primary key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni, "Redni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Podaci o obrazovanju"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Podaci o obrazovanju', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Podaci o obrazovanju', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Obrazovna ustanova_FK"                               */
/*==============================================================*/




create nonclustered index "Obrazovna ustanova_FK" on "Podaci o obrazovanju" ("Drzava zaposlenog" ASC,
  "Obrazovna ustanova" ASC)
go

/*==============================================================*/
/* Index: "Podaci o obrazovanju_FK"                             */
/*==============================================================*/




create nonclustered index "Podaci o obrazovanju_FK" on "Podaci o obrazovanju" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Index: "Tipizacija zvanja_FK"                                */
/*==============================================================*/




create nonclustered index "Tipizacija zvanja_FK" on "Podaci o obrazovanju" ("Drzava zaposlenog" ASC,
  Zvanje ASC)
go

/*==============================================================*/
/* Index: "Tipizacija školske sprema_FK"                        */
/*==============================================================*/




create nonclustered index "Tipizacija školske sprema_FK" on "Podaci o obrazovanju" (Stepen ASC,
  "Nivo obrazovanja" ASC,
  "Školska sprema" ASC)
go

/*==============================================================*/
/* Table: Podtip                                                */
/*==============================================================*/
create table Podtip (
   Oznaka               int                  not null,
   Tip                  int                  not null,
   Naziv                varchar(40)          not null,
   constraint PK_PODTIP primary key (Tip, Oznaka)
)
go

/*==============================================================*/
/* Index: "Podtip tipa_FK"                                      */
/*==============================================================*/




create nonclustered index "Podtip tipa_FK" on Podtip (Tip ASC)
go

/*==============================================================*/
/* Table: "Poslovni sistem"                                     */
/*==============================================================*/
create table "Poslovni sistem" (
   Identifikator        bigint               not null,
   Oznaka               char(3)              not null,
   "Poslovni sistem sljedbenik" bigint               null,
   "Tip poslovnog sistema" char(1)              not null,
   "Sjedište poslovnog sistema" int                  not null,
   Naziv                varchar(120)         not null,
   Adresa               varchar(120)         null,
   Telefon              varchar(11)          null,
   email                varchar(60)          null,
   www                  varchar(120)         null,
   "Registracioni broj" char(10)             not null,
   PIB                  char(11)             not null,
   "Datum registracije" datetime             not null,
   "Datum zatvaranja"   datetime             null,
   Memorandum           image                null,
   Logo                 image                null,
   Pecat                image                null,
   "Digitalni potpis"   image                null,
   constraint "PK_POSLOVNI SISTEM" primary key (Oznaka, Identifikator)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Poslovni sistem"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Poslovni sistem', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Poslovni sistem', 'column', 'Oznaka'
go

/*==============================================================*/
/* Index: "Drava poslovnog sistema_FK"                         */
/*==============================================================*/




create nonclustered index "Drava poslovnog sistema_FK" on "Poslovni sistem" (Oznaka ASC)
go

/*==============================================================*/
/* Index: "Pravni sljedbenik_FK"                                */
/*==============================================================*/




create nonclustered index "Pravni sljedbenik_FK" on "Poslovni sistem" (Oznaka ASC,
  "Poslovni sistem sljedbenik" ASC)
go

/*==============================================================*/
/* Index: "Sjedište poslovnog sistema_FK"                       */
/*==============================================================*/




create nonclustered index "Sjedište poslovnog sistema_FK" on "Poslovni sistem" (Oznaka ASC,
  "Sjedište poslovnog sistema" ASC)
go

/*==============================================================*/
/* Index: "Tipizacija poslovnog sistema_FK"                     */
/*==============================================================*/




create nonclustered index "Tipizacija poslovnog sistema_FK" on "Poslovni sistem" ("Tip poslovnog sistema" ASC)
go

/*==============================================================*/
/* Table: "Potrebna školska sprema"                             */
/*==============================================================*/
create table "Potrebna školska sprema" (
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Radno mjesto"       numeric(4,0)         not null,
   "Školska sprema"     char(2)              not null,
   Stepen               numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   constraint "PK_POTREBNA ŠKOLSKA SPREMA" primary key (Drava, "Poslovni sistem", "Radno mjesto", Stepen, "Nivo obrazovanja", "Školska sprema")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Potrebna školska sprema"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Potrebna školska sprema', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Potrebna školska sprema', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Potrebna školska sprema_FK"                          */
/*==============================================================*/




create nonclustered index "Potrebna školska sprema_FK" on "Potrebna školska sprema" (Stepen ASC,
  "Nivo obrazovanja" ASC,
  "Školska sprema" ASC)
go

/*==============================================================*/
/* Index: "Školska sprema za radno mjesto_FK"                   */
/*==============================================================*/




create nonclustered index "Školska sprema za radno mjesto_FK" on "Potrebna školska sprema" (Drava ASC,
  "Poslovni sistem" ASC,
  "Radno mjesto" ASC)
go

/*==============================================================*/
/* Table: "Potrebne spreme"                                     */
/*==============================================================*/
create table "Potrebne spreme" (
   Drava               char(3)              not null,
   Zanimanje            int                  not null,
   "Školska sprema"     char(2)              not null,
   Stepen               numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   constraint "PK_POTREBNE SPREME" primary key (Stepen, "Nivo obrazovanja", "Školska sprema", Drava, Zanimanje)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Potrebne spreme"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Potrebne spreme', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Potrebne spreme', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Potrebne spreme_FK"                                  */
/*==============================================================*/




create nonclustered index "Potrebne spreme_FK" on "Potrebne spreme" (Stepen ASC,
  "Nivo obrazovanja" ASC,
  "Školska sprema" ASC)
go

/*==============================================================*/
/* Index: "Potrebne spreme2_FK"                                 */
/*==============================================================*/




create nonclustered index "Potrebne spreme2_FK" on "Potrebne spreme" (Drava ASC,
  Zanimanje ASC)
go

/*==============================================================*/
/* Table: "Potrošni materijalni resursi"                        */
/*==============================================================*/
create table "Potrošni materijalni resursi" (
   "Inventarni broj"    char(4)              not null,
   "Tip resursa"        char(5)              not null,
   Nabavka              char(5)              not null,
   Drzava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Organizaciona jedinica" numeric(4)           not null,
   Naziv                varchar(50)          not null,
   Opis                 varchar(150)         null,
   constraint "PK_POTROŠNI MATERIJALNI RESURS" primary key ("Tip resursa", "Inventarni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Potrošni materijalni resursi"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Potrošni materijalni resursi', 'column', 'Drzava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Potrošni materijalni resursi', 'column', 'Drzava'
go

/*==============================================================*/
/* Index: "Nabavka potrošnog materijalnog resursa_FK"           */
/*==============================================================*/




create nonclustered index "Nabavka potrošnog materijalnog resursa_FK" on "Potrošni materijalni resursi" (Nabavka ASC)
go

/*=========================================================================*/
/* Index: "Potrošni materijalni resurs pripada organizacionoj jedinici_FK" */
/*=========================================================================*/




create nonclustered index "Potrošni materijalni resurs pripada organizacionoj jedinici_FK" on "Potrošni materijalni resursi" (Drzava ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Index: "Tip potrošnog materijalnog resursa_FK"               */
/*==============================================================*/




create nonclustered index "Tip potrošnog materijalnog resursa_FK" on "Potrošni materijalni resursi" ("Tip resursa" ASC)
go

/*==============================================================*/
/* Table: "Povezana sa"                                         */
/*==============================================================*/
create table "Povezana sa" (
   Tab_DR_OZNAKA        char(3)              not null,
   Tab_PS_IDENTIFIKATOR bigint               not null,
   Tab_PRIP_PRIP_ROLI_IDENTIFIKATOR bigint               not null,
   Tab_Dr_Oznaka       char(3)              not null,
   Tab_Pos_Identifikator bigint               not null,
   Tab_Identifikator    bigint               not null,
   Dr_Oznaka           char(3)              not null,
   Pos_Identifikator    bigint               not null,
   PS_IDENTIFIKATOR     bigint               not null,
   PRIP_PRIP_ROLI_IDENTIFIKATOR bigint               not null,
   Identifikator        bigint               not null,
   Oznaka               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Tabela               bigint               not null,
   "Povezana tabela"    bigint               not null,
   constraint "PK_POVEZANA SA" primary key (Tab_DR_OZNAKA, Tab_PS_IDENTIFIKATOR, Tab_PRIP_PRIP_ROLI_IDENTIFIKATOR, Tab_Dr_Oznaka, Tab_Pos_Identifikator, Tab_Identifikator, Dr_Oznaka, Pos_Identifikator, PS_IDENTIFIKATOR, PRIP_PRIP_ROLI_IDENTIFIKATOR, Identifikator, Tabela, Oznaka, "Poslovni sistem", "Povezana tabela")
)
go

/*==============================================================*/
/* Index: Tabela_FK                                             */
/*==============================================================*/




create nonclustered index Tabela_FK on "Povezana sa" (Oznaka ASC,
  "Poslovni sistem" ASC,
  Tabela ASC)
go

/*==============================================================*/
/* Index: "Povezana tabela_FK"                                  */
/*==============================================================*/




create nonclustered index "Povezana tabela_FK" on "Povezana sa" (Oznaka ASC,
  "Poslovni sistem" ASC,
  "Povezana tabela" ASC)
go

/*==============================================================*/
/* Table: Pozicija                                              */
/*==============================================================*/
create table Pozicija (
   "Redni broj"         int                  not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Organizaciona jedinica" numeric(4)           not null,
   Zaposleni            int                  not null,
   "Drava jedinice"    char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint PK_POZICIJA primary key (Zaposleni, "Drzava zaposlenog", "Poslovni sistem", "Organizaciona jedinica", "Drava jedinice", "Redni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Pozicija')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Pozicija', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Pozicija', 'column', 'Drzava zaposlenog'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Pozicija')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava jedinice')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Pozicija', 'column', 'Drava jedinice'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Pozicija', 'column', 'Drava jedinice'
go

/*==============================================================*/
/* Index: "na poziciji2_FK"                                     */
/*==============================================================*/




create nonclustered index "na poziciji2_FK" on Pozicija ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Index: "pozicija u organizacionoj jedinici_FK"               */
/*==============================================================*/




create nonclustered index "pozicija u organizacionoj jedinici_FK" on Pozicija ("Drava jedinice" ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Table: "Pravni nasljednik"                                   */
/*==============================================================*/
create table "Pravni nasljednik" (
   JMBG_osobe           char(13)             not null,
   JMBG                 char(13)             not null,
   constraint "PK_PRAVNI NASLJEDNIK" primary key (JMBG_osobe, JMBG)
)
go

/*==============================================================*/
/* Index: "Pravni nasljednik_FK"                                */
/*==============================================================*/




create nonclustered index "Pravni nasljednik_FK" on "Pravni nasljednik" (JMBG_osobe ASC)
go

/*==============================================================*/
/* Index: "Pravni nasljednik4_FK"                               */
/*==============================================================*/




create nonclustered index "Pravni nasljednik4_FK" on "Pravni nasljednik" (JMBG ASC)
go

/*==============================================================*/
/* Table: "Pravni sljedbenik"                                   */
/*==============================================================*/
create table "Pravni sljedbenik" (
   Dr_Oznaka           char(3)              not null,
   Oznaka               char(3)              not null,
   constraint "PK_PRAVNI SLJEDBENIK" primary key (Dr_Oznaka, Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Pravni sljedbenik"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Dr_Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Pravni sljedbenik', 'column', 'Dr_Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Pravni sljedbenik', 'column', 'Dr_Oznaka'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Pravni sljedbenik"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Pravni sljedbenik', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Pravni sljedbenik', 'column', 'Oznaka'
go

/*==============================================================*/
/* Index: "Pravni sljedbenik3_FK"                               */
/*==============================================================*/




create nonclustered index "Pravni sljedbenik3_FK" on "Pravni sljedbenik" (Dr_Oznaka ASC)
go

/*==============================================================*/
/* Index: "Pravni sljedbenik2_FK"                               */
/*==============================================================*/




create nonclustered index "Pravni sljedbenik2_FK" on "Pravni sljedbenik" (Oznaka ASC)
go

/*==============================================================*/
/* Table: "Pravni ugovor"                                       */
/*==============================================================*/
create table "Pravni ugovor" (
   Oznaka               int                  not null,
   "Drzava zaposlenog"  char(3)              null,
   "Poslovni sistem"    bigint               null,
   Advokat              int                  null,
   Klijent              int                  not null,
   "Datum sklapanja"    datetime             not null,
   constraint "PK_PRAVNI UGOVOR" primary key (Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Pravni ugovor"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Pravni ugovor', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Pravni ugovor', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Advokat sklopio ugovor sa klijentom_FK"              */
/*==============================================================*/




create nonclustered index "Advokat sklopio ugovor sa klijentom_FK" on "Pravni ugovor" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Advokat ASC)
go

/*==============================================================*/
/* Index: "Klijent sklopio ugovor sa advokatom_FK"              */
/*==============================================================*/




create nonclustered index "Klijent sklopio ugovor sa advokatom_FK" on "Pravni ugovor" (Klijent ASC)
go

/*==============================================================*/
/* Table: "Pravo na podsistem"                                  */
/*==============================================================*/
create table "Pravo na podsistem" (
   Sis_Dr_Oznaka       char(3)              not null,
   Sis_Identifikator    bigint               not null,
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Sistem               bigint               not null,
   Rola                 char(2)              not null,
   Pristup              bit                  not null,
   constraint "PK_PRAVO NA PODSISTEM" primary key (Sis_Dr_Oznaka, Sis_Identifikator, Sistem, Drava, "Poslovni sistem", Rola)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Pravo na podsistem"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Pravo na podsistem', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Pravo na podsistem', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Sistem pripada roli_FK"                              */
/*==============================================================*/




create nonclustered index "Sistem pripada roli_FK" on "Pravo na podsistem" (Drava ASC,
  "Poslovni sistem" ASC,
  Sistem ASC)
go

/*==============================================================*/
/* Index: "Rola obuhvata sistem_FK"                             */
/*==============================================================*/




create nonclustered index "Rola obuhvata sistem_FK" on "Pravo na podsistem" (Drava ASC,
  "Poslovni sistem" ASC,
  Rola ASC)
go

/*==============================================================*/
/* Table: "Predefinisane role radnih mjesta"                    */
/*==============================================================*/
create table "Predefinisane role radnih mjesta" (
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Radno mjesto"       numeric(4,0)         not null,
   "Oznaka role"        char(2)              not null,
   constraint "PK_PREDEFINISANE ROLE RADNIH M" primary key (Drava, "Poslovni sistem", "Oznaka role", "Radno mjesto")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Predefinisane role radnih mjesta"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Predefinisane role radnih mjesta', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Predefinisane role radnih mjesta', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Predefinisane role radnih mjesta_FK"                 */
/*==============================================================*/




create nonclustered index "Predefinisane role radnih mjesta_FK" on "Predefinisane role radnih mjesta" (Drava ASC,
  "Poslovni sistem" ASC,
  "Oznaka role" ASC)
go

/*==============================================================*/
/* Index: "Predefinisane role radnih mjesta2_FK"                */
/*==============================================================*/




create nonclustered index "Predefinisane role radnih mjesta2_FK" on "Predefinisane role radnih mjesta" (Drava ASC,
  "Poslovni sistem" ASC,
  "Radno mjesto" ASC)
go

/*==============================================================*/
/* Table: Predmet                                               */
/*==============================================================*/
create table Predmet (
   ID                   int                  not null,
   Tip                  int                  not null,
   Podtip               int                  null,
   Naziv                varchar(100)         not null,
   Opis                 varchar(500)         null,
   "Datum otvaranja"    datetime             not null,
   constraint PK_PREDMET primary key (Tip, ID)
)
go

/*==============================================================*/
/* Index: "Podtip predmeta_FK"                                  */
/*==============================================================*/




create nonclustered index "Podtip predmeta_FK" on Predmet (Tip ASC,
  Podtip ASC)
go

/*==============================================================*/
/* Index: "Tipizacija predmeta_FK"                              */
/*==============================================================*/




create nonclustered index "Tipizacija predmeta_FK" on Predmet (Tip ASC)
go

/*==============================================================*/
/* Table: "Predmet s kojim je povezan pravni ugovor"            */
/*==============================================================*/
create table "Predmet s kojim je povezan pravni ugovor" (
   Ugovor               int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   constraint "PK_PREDMET S KOJIM JE POVEZAN" primary key (Ugovor, "Tip predmeta", Predmet)
)
go

/*==============================================================*/
/* Index: "Predmet s kojim je povezan pravni ugovor_FK"         */
/*==============================================================*/




create nonclustered index "Predmet s kojim je povezan pravni ugovor_FK" on "Predmet s kojim je povezan pravni ugovor" (Ugovor ASC)
go

/*==============================================================*/
/* Index: "Predmet s kojim je povezan pravni ugovor2_FK"        */
/*==============================================================*/




create nonclustered index "Predmet s kojim je povezan pravni ugovor2_FK" on "Predmet s kojim je povezan pravni ugovor" ("Tip predmeta" ASC,
  Predmet ASC)
go

/*==============================================================*/
/* Table: "Predmeti klijenta"                                   */
/*==============================================================*/
create table "Predmeti klijenta" (
   Klijent              int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   constraint "PK_PREDMETI KLIJENTA" primary key (Klijent, "Tip predmeta", Predmet)
)
go

/*==============================================================*/
/* Index: "Predmeti klijenta_FK"                                */
/*==============================================================*/




create nonclustered index "Predmeti klijenta_FK" on "Predmeti klijenta" (Klijent ASC)
go

/*==============================================================*/
/* Index: "Predmeti klijenta2_FK"                               */
/*==============================================================*/




create nonclustered index "Predmeti klijenta2_FK" on "Predmeti klijenta" ("Tip predmeta" ASC,
  Predmet ASC)
go

/*==============================================================*/
/* Table: "Pripada roli"                                        */
/*==============================================================*/
create table "Pripada roli" (
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Oznaka role"        char(2)              not null,
   Korisnik             varchar(30)          not null,
   Id                   bigint               not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_PRIPADA ROLI" primary key ("Drzava zaposlenog", "Poslovni sistem", Korisnik, "Oznaka role", Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Pripada roli"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Pripada roli', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Pripada roli', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Ko je u grupi_FK"                                    */
/*==============================================================*/




create nonclustered index "Ko je u grupi_FK" on "Pripada roli" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  "Oznaka role" ASC)
go

/*==============================================================*/
/* Index: "Svrstan u grupu_FK"                                  */
/*==============================================================*/




create nonclustered index "Svrstan u grupu_FK" on "Pripada roli" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Korisnik ASC)
go

/*==============================================================*/
/* Table: "Pripadnost timu"                                     */
/*==============================================================*/
create table "Pripadnost timu" (
   Oznaka               int                  not null,
   Zaposleni            int                  not null,
   "Tip tima"           int                  not null,
   Tim                  int                  not null,
   "Drzava zaposlenog"  char(3)              null,
   "Poslovni sistem"    bigint               not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_PRIPADNOST TIMU" primary key (Zaposleni, Tim, "Poslovni sistem", "Tip tima", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Pripadnost timu"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Pripadnost timu', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Pripadnost timu', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: pozicija_FK                                           */
/*==============================================================*/




create nonclustered index pozicija_FK on "Pripadnost timu" ("Tip tima" ASC,
  Tim ASC)
go

/*==============================================================*/
/* Index: "zaposlen u odsjeku2_FK"                              */
/*==============================================================*/




create nonclustered index "zaposlen u odsjeku2_FK" on "Pripadnost timu" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Table: "Prisustvovali sastancima"                            */
/*==============================================================*/
create table "Prisustvovali sastancima" (
   Sastanak             int                  not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Zaposleni            int                  not null,
   constraint "PK_PRISUSTVOVALI SASTANCIMA" primary key (Sastanak, "Drzava zaposlenog", "Poslovni sistem", Zaposleni)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Prisustvovali sastancima"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Prisustvovali sastancima', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Prisustvovali sastancima', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Prisustvovali sastancima_FK"                         */
/*==============================================================*/




create nonclustered index "Prisustvovali sastancima_FK" on "Prisustvovali sastancima" (Sastanak ASC)
go

/*==============================================================*/
/* Index: "Prisustvovali sastancima2_FK"                        */
/*==============================================================*/




create nonclustered index "Prisustvovali sastancima2_FK" on "Prisustvovali sastancima" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Table: Rad                                                   */
/*==============================================================*/
create table Rad (
   Oznaka               int                  not null,
   "Drzava zaposlenog"  char(3)              null,
   "Poslovni sistem"    bigint               null,
   Zaposleni            int                  null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Uloga                int                  not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint PK_RAD primary key (Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Rad')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Rad', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Rad', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Istorija rada na predmetu_FK"                        */
/*==============================================================*/




create nonclustered index "Istorija rada na predmetu_FK" on Rad ("Tip predmeta" ASC,
  Predmet ASC)
go

/*==============================================================*/
/* Index: "Radi na predmetu_FK"                                 */
/*==============================================================*/




create nonclustered index "Radi na predmetu_FK" on Rad ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Index: "Uloga pri radu na predmetu_FK"                       */
/*==============================================================*/




create nonclustered index "Uloga pri radu na predmetu_FK" on Rad (Uloga ASC)
go

/*==============================================================*/
/* Table: "Raspored na radna mjesta"                            */
/*==============================================================*/
create table "Raspored na radna mjesta" (
   Zaposleni            int                  not null,
   "Redni broj"         numeric(4,0)         not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Organizaciona jedinica" numeric(4)           null,
   "Vrsta radnog odnosa" char(2)              not null,
   "Radno mjesto"       numeric(4,0)         not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   "Sta godina"        numeric(2)           not null,
   "Sta mjeseci"       numeric(2)           not null,
   "Sta dana"          numeric(2)           not null,
   constraint "PK_RASPORED NA RADNA MJESTA" primary key (Zaposleni, "Redni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Raspored na radna mjesta"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Raspored na radna mjesta', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Raspored na radna mjesta', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Kadrovi u organizacionoj jedinici_FK"                */
/*==============================================================*/




create nonclustered index "Kadrovi u organizacionoj jedinici_FK" on "Raspored na radna mjesta" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Index: "Raspored zaposlenih_FK"                              */
/*==============================================================*/




create nonclustered index "Raspored zaposlenih_FK" on "Raspored na radna mjesta" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  "Radno mjesto" ASC)
go

/*==============================================================*/
/* Index: "Raspored zaposlenog_FK"                              */
/*==============================================================*/




create nonclustered index "Raspored zaposlenog_FK" on "Raspored na radna mjesta" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Zaposleni ASC)
go

/*==============================================================*/
/* Index: "Tipizacija radnog odnosa_FK"                         */
/*==============================================================*/




create nonclustered index "Tipizacija radnog odnosa_FK" on "Raspored na radna mjesta" ("Vrsta radnog odnosa" ASC)
go

/*==============================================================*/
/* Table: Region                                                */
/*==============================================================*/
create table Region (
   "Oznaka regiona"     smallint             not null,
   Oznaka               char(1)              not null,
   "Naziv regiona"      varchar(120)         not null,
   "Pripada dravi"     char(3)              null,
   "Drava sjedišta"    char(3)              null,
   "Administrativno sjedište" int                  null,
   constraint PK_REGION primary key (Oznaka, "Oznaka regiona")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Pripada dravi')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Region', 'column', 'Pripada dravi'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Region', 'column', 'Pripada dravi'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Region')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava sjedišta')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Region', 'column', 'Drava sjedišta'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Region', 'column', 'Drava sjedišta'
go

/*==============================================================*/
/* Index: "Tipizacija regiona_FK"                               */
/*==============================================================*/




create nonclustered index "Tipizacija regiona_FK" on Region (Oznaka ASC)
go

/*==============================================================*/
/* Index: "Maticna drava_FK"                                   */
/*==============================================================*/




create nonclustered index "Maticna drava_FK" on Region ("Pripada dravi" ASC)
go

/*==============================================================*/
/* Index: "Administrativno sjedište_FK"                         */
/*==============================================================*/




create nonclustered index "Administrativno sjedište_FK" on Region ("Drava sjedišta" ASC,
  "Administrativno sjedište" ASC)
go

/*==============================================================*/
/* Table: "Registar zaposlenih"                                 */
/*==============================================================*/
create table "Registar zaposlenih" (
   "Redni broj evidencije" int                  not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Prezime              varchar(60)          not null,
   "Ime roditelja"      varchar(60)          null,
   Ime                  varchar(60)          not null,
   Pol                  char(1)              not null default ''
      constraint CKC_POL_REGISTAR check (Pol in ('M','','N')),
   "Maticni broj"       varchar(13)          null,
   constraint "PK_REGISTAR ZAPOSLENIH" primary key ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Registar zaposlenih"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Registar zaposlenih', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Registar zaposlenih', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: Zapošljava_FK                                         */
/*==============================================================*/




create nonclustered index Zapošljava_FK on "Registar zaposlenih" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: "Restrikcija atributa"                                */
/*==============================================================*/
create table "Restrikcija atributa" (
   Atr_Dr_Oznaka       char(3)              not null,
   Atr_Identifikator    bigint               not null,
   Oznaka               char(3)              not null,
   Pos_Identifikator    bigint               not null,
   "Poslovni sistem"    bigint               not null,
   Atribut              bigint               not null,
   Rola                 char(2)              not null,
   Dodavanje            bit                  not null,
   Izmjena              bit                  not null,
   Brisanje             bit                  not null,
   Pretraga             bit                  not null,
   constraint "PK_RESTRIKCIJA ATRIBUTA" primary key (Atr_Dr_Oznaka, Atr_Identifikator, Oznaka, Pos_Identifikator, "Poslovni sistem", Atribut, Rola)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Restrikcija atributa"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Restrikcija atributa', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Restrikcija atributa', 'column', 'Oznaka'
go

/*==============================================================*/
/* Index: "Restrikcija atributa2_FK"                            */
/*==============================================================*/




create nonclustered index "Restrikcija atributa2_FK" on "Restrikcija atributa" (Oznaka ASC,
  Atribut ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Index: "Rola obuhvata akcije_FK"                             */
/*==============================================================*/




create nonclustered index "Rola obuhvata akcije_FK" on "Restrikcija atributa" (Oznaka ASC,
  Atribut ASC,
  Rola ASC)
go

/*==============================================================*/
/* Table: "Restrikcija nad tabelama"                            */
/*==============================================================*/
create table "Restrikcija nad tabelama" (
   Tab_Dr_Oznaka       char(3)              not null,
   Tab_Identifikator    bigint               not null,
   Oznaka               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Tabela               bigint               not null,
   Rola                 char(2)              not null,
   Dodavanje            bit                  not null,
   Brisanje             bit                  not null,
   Izmjena              bit                  not null,
   Pretraga             bit                  not null,
   constraint "PK_RESTRIKCIJA NAD TABELAMA" primary key (Tab_Dr_Oznaka, Tab_Identifikator, Tabela, Oznaka, "Poslovni sistem", Rola)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Restrikcija nad tabelama"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Restrikcija nad tabelama', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Restrikcija nad tabelama', 'column', 'Oznaka'
go

/*==============================================================*/
/* Index: "Rola obuhvata tabele_FK"                             */
/*==============================================================*/




create nonclustered index "Rola obuhvata tabele_FK" on "Restrikcija nad tabelama" (Oznaka ASC,
  "Poslovni sistem" ASC,
  Rola ASC)
go

/*==============================================================*/
/* Index: "Restrikcija nad tabelama2_FK"                        */
/*==============================================================*/




create nonclustered index "Restrikcija nad tabelama2_FK" on "Restrikcija nad tabelama" (Oznaka ASC,
  "Poslovni sistem" ASC,
  Tabela ASC)
go

/*==============================================================*/
/* Table: "Rezervna kopija"                                     */
/*==============================================================*/
create table "Rezervna kopija" (
   Oznaka               int                  not null,
   "Tip skladista"      int                  not null,
   Skladiste            int                  not null,
   "Vrsta uredjaja"     int                  not null,
   Uredjaj              int                  not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "User ID"            varchar(30)          not null,
   "Datum kreiranja"    datetime             not null,
   "Datum narednog bekapa" datetime             not null,
   Napomena             varchar(300)         null,
   constraint "PK_REZERVNA KOPIJA" primary key ("Tip skladista", Skladiste, "Vrsta uredjaja", Uredjaj, "Poslovni sistem", "Drzava zaposlenog", "User ID", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Rezervna kopija"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Rezervna kopija', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Rezervna kopija', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Kreirao rezervnu kopiju_FK"                          */
/*==============================================================*/




create nonclustered index "Kreirao rezervnu kopiju_FK" on "Rezervna kopija" ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  "User ID" ASC)
go

/*==============================================================*/
/* Index: "Lokacija skladistenja rezervne kopije_FK"            */
/*==============================================================*/




create nonclustered index "Lokacija skladistenja rezervne kopije_FK" on "Rezervna kopija" ("Tip skladista" ASC,
  Skladiste ASC)
go

/*==============================================================*/
/* Index: "Uredjaj sa kog je kreirana rezervna kopija_FK"       */
/*==============================================================*/




create nonclustered index "Uredjaj sa kog je kreirana rezervna kopija_FK" on "Rezervna kopija" ("Vrsta uredjaja" ASC,
  Uredjaj ASC)
go

/*==============================================================*/
/* Table: Rociste                                               */
/*==============================================================*/
create table Rociste (
   Oznaka               int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Postupak             int                  not null,
   "Tip rocista"        int                  not null,
   "Datum i vrijeme"    datetime             not null,
   Napomena             varchar(300)         null,
   constraint PK_ROCISTE primary key ("Tip predmeta", Predmet, Postupak, "Tip rocista", Oznaka)
)
go

/*==============================================================*/
/* Index: "Rocista u toku postupka_FK"                          */
/*==============================================================*/




create nonclustered index "Rocista u toku postupka_FK" on Rociste ("Tip predmeta" ASC,
  Predmet ASC,
  Postupak ASC)
go

/*==============================================================*/
/* Index: "Tipizacija rocista_FK"                               */
/*==============================================================*/




create nonclustered index "Tipizacija rocista_FK" on Rociste ("Tip rocista" ASC)
go

/*==============================================================*/
/* Table: Rola                                                  */
/*==============================================================*/
create table Rola (
   Oznaka               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Oznaka role"        char(2)              not null,
   Prioritet            smallint             not null,
   "Naziv role"         varchar(80)          not null,
   Opis                 varchar(1000)        null,
   constraint PK_ROLA primary key (Oznaka, "Poslovni sistem", "Oznaka role")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Rola')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Rola', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Rola', 'column', 'Oznaka'
go

/*==============================================================*/
/* Index: "Role poslovnog sistema_FK"                           */
/*==============================================================*/




create nonclustered index "Role poslovnog sistema_FK" on Rola (Oznaka ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: "Sadri atribute"                                     */
/*==============================================================*/
create table "Sadri atribute" (
   Oznaka               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Dr_Oznaka           char(3)              not null,
   Identifikator        bigint               not null,
   Tabela               bigint               not null,
   Atribut              bigint               not null,
   constraint "PK_SADRI ATRIBUTE" primary key (Oznaka, "Poslovni sistem", Atribut, Dr_Oznaka, Identifikator, Tabela)
)
go

/*==============================================================*/
/* Index: "Pripadaju tabeli_FK"                                 */
/*==============================================================*/




create nonclustered index "Pripadaju tabeli_FK" on "Sadri atribute" (Oznaka ASC,
  "Poslovni sistem" ASC,
  Atribut ASC)
go

/*==============================================================*/
/* Index: "Sadri atribute2_FK"                                 */
/*==============================================================*/




create nonclustered index "Sadri atribute2_FK" on "Sadri atribute" (Oznaka ASC,
  "Poslovni sistem" ASC,
  Tabela ASC)
go

/*==============================================================*/
/* Table: "Sadri podsisteme"                                   */
/*==============================================================*/
create table "Sadri podsisteme" (
   Sis_Dr_Oznaka       char(3)              not null,
   Sis_Identifikator    bigint               not null,
   Sis_Id               bigint               not null,
   Dr_Oznaka           char(3)              not null,
   Identifikator        bigint               not null,
   Id                   bigint               not null,
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Sistem               bigint               not null,
   Podsistem            bigint               not null,
   constraint "PK_SADRI PODSISTEME" primary key (Sis_Dr_Oznaka, Sis_Identifikator, Sis_Id, Dr_Oznaka, Identifikator, Id, Sistem, Drava, "Poslovni sistem", Podsistem)
)
go

/*==============================================================*/
/* Index: Sistem_FK                                             */
/*==============================================================*/




create nonclustered index Sistem_FK on "Sadri podsisteme" (Drava ASC,
  "Poslovni sistem" ASC,
  Sistem ASC)
go

/*==============================================================*/
/* Index: Podsistem_FK                                          */
/*==============================================================*/




create nonclustered index Podsistem_FK on "Sadri podsisteme" (Drava ASC,
  "Poslovni sistem" ASC,
  Podsistem ASC)
go

/*==============================================================*/
/* Table: "Sadri tabele"                                       */
/*==============================================================*/
create table "Sadri tabele" (
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Dr_Oznaka           char(3)              not null,
   Identifikator        bigint               not null,
   Sistem               bigint               not null,
   Tabela               bigint               not null,
   constraint "PK_SADRI TABELE" primary key (Tabela, Dr_Oznaka, Identifikator, Drava, "Poslovni sistem", Sistem)
)
go

/*==============================================================*/
/* Index: "Sadri tabele2_FK"                                   */
/*==============================================================*/




create nonclustered index "Sadri tabele2_FK" on "Sadri tabele" (Drava ASC,
  "Poslovni sistem" ASC,
  Sistem ASC)
go

/*==============================================================*/
/* Index: "Pripadaju podsistemu_FK"                             */
/*==============================================================*/




create nonclustered index "Pripadaju podsistemu_FK" on "Sadri tabele" (Drava ASC,
  "Poslovni sistem" ASC,
  Tabela ASC)
go

/*==============================================================*/
/* Table: "Sastanak sa klijentom"                               */
/*==============================================================*/
create table "Sastanak sa klijentom" (
   Klijent              int                  not null,
   Sastanak             int                  not null,
   constraint "PK_SASTANAK SA KLIJENTOM" primary key (Klijent, Sastanak)
)
go

/*==============================================================*/
/* Index: "Sastanak sa klijentom2_FK"                           */
/*==============================================================*/




create nonclustered index "Sastanak sa klijentom2_FK" on "Sastanak sa klijentom" (Sastanak ASC)
go

/*==============================================================*/
/* Index: "Sastanak sa klijentom_FK"                            */
/*==============================================================*/




create nonclustered index "Sastanak sa klijentom_FK" on "Sastanak sa klijentom" (Klijent ASC)
go

/*==============================================================*/
/* Table: "Sastanak sa spoljasnjim poslovnim subjektom"         */
/*==============================================================*/
create table "Sastanak sa spoljasnjim poslovnim subjektom" (
   "Tip subjekta"       int                  not null,
   "Spoljasnji subjekt" int                  not null,
   Sastanak             int                  not null,
   constraint "PK_SASTANAK SA SPOLJASNJIM POS" primary key ("Tip subjekta", "Spoljasnji subjekt", Sastanak)
)
go

/*==============================================================*/
/* Index: "Sastanak sa spoljasnjim poslovnim subjektom_FK"      */
/*==============================================================*/




create nonclustered index "Sastanak sa spoljasnjim poslovnim subjektom_FK" on "Sastanak sa spoljasnjim poslovnim subjektom" ("Tip subjekta" ASC,
  "Spoljasnji subjekt" ASC)
go

/*==============================================================*/
/* Index: "Sastanak sa spoljasnjim poslovnim subjektom2_FK"     */
/*==============================================================*/




create nonclustered index "Sastanak sa spoljasnjim poslovnim subjektom2_FK" on "Sastanak sa spoljasnjim poslovnim subjektom" (Sastanak ASC)
go

/*==============================================================*/
/* Table: Sastanci                                              */
/*==============================================================*/
create table Sastanci (
   Oznaka               int                  not null,
   Datum                datetime             not null,
   Lokacija             varchar(50)          not null,
   constraint PK_SASTANCI primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Sastav drava"                                       */
/*==============================================================*/
create table "Sastav drava" (
   Oznaka               char(3)              not null,
   "Drava clanica"     char(3)              not null,
   "Redni broj"         numeric(2,0)         not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_SASTAV DRAVA" primary key ("Drava clanica", Oznaka, "Redni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Sastav drava"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Sastav drava', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Sastav drava', 'column', 'Oznaka'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Sastav drava"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava clanica')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Sastav drava', 'column', 'Drava clanica'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Sastav drava', 'column', 'Drava clanica'
go

/*==============================================================*/
/* Index: "Sloena drava_FK"                                   */
/*==============================================================*/




create nonclustered index "Sloena drava_FK" on "Sastav drava" (Oznaka ASC)
go

/*==============================================================*/
/* Index: "Drava clanica_FK"                                   */
/*==============================================================*/




create nonclustered index "Drava clanica_FK" on "Sastav drava" ("Drava clanica" ASC)
go

/*==============================================================*/
/* Table: "Sastav regiona"                                      */
/*==============================================================*/
create table "Sastav regiona" (
   "Tip slozenog regiona" char(1)              not null,
   "Sloeni region"     smallint             not null,
   "Tip clana"          char(1)              not null,
   "Region clan"        smallint             not null,
   constraint "PK_SASTAV REGIONA" primary key ("Tip slozenog regiona", "Sloeni region", "Tip clana", "Region clan")
)
go

/*==============================================================*/
/* Index: "Region u sastavu_FK"                                 */
/*==============================================================*/




create nonclustered index "Region u sastavu_FK" on "Sastav regiona" ("Tip clana" ASC,
  "Region clan" ASC)
go

/*==============================================================*/
/* Index: "Sastavljeni region_FK"                               */
/*==============================================================*/




create nonclustered index "Sastavljeni region_FK" on "Sastav regiona" ("Tip slozenog regiona" ASC,
  "Sloeni region" ASC)
go

/*==============================================================*/
/* Table: Sesija                                                */
/*==============================================================*/
create table Sesija (
   Oznaka               int                  not null,
   "Vrsta uredjaja"     int                  not null,
   Uredjaj              int                  not null,
   "Drzava sistema"     char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "User ID"            varchar(30)          not null,
   "Pocetak sesije"     datetime             null,
   "Kraj sesije"        datetime             null,
   constraint PK_SESIJA primary key (Uredjaj, "Vrsta uredjaja", "Poslovni sistem", "Drzava sistema", "User ID", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Sesija')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava sistema')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Sesija', 'column', 'Drzava sistema'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Sesija', 'column', 'Drzava sistema'
go

/*==============================================================*/
/* Index: "Sesija korisnika na sistemu_FK"                      */
/*==============================================================*/




create nonclustered index "Sesija korisnika na sistemu_FK" on Sesija ("Drzava sistema" ASC,
  "Poslovni sistem" ASC,
  "User ID" ASC)
go

/*==============================================================*/
/* Index: "Uredjaj pristupa sistemu_FK"                         */
/*==============================================================*/




create nonclustered index "Uredjaj pristupa sistemu_FK" on Sesija ("Vrsta uredjaja" ASC,
  Uredjaj ASC)
go

/*==============================================================*/
/* Table: "Sistem ili podsistem"                                */
/*==============================================================*/
create table "Sistem ili podsistem" (
   Id                   bigint               not null,
   Drava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Naziv                varchar(120)         not null,
   Kod                  varchar(30)          not null,
   constraint "PK_SISTEM ILI PODSISTEM" primary key (Drava, "Poslovni sistem", Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Sistem ili podsistem"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Sistem ili podsistem', 'column', 'Drava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Sistem ili podsistem', 'column', 'Drava'
go

/*==============================================================*/
/* Index: "Resursi poslovnog sistema3_FK"                       */
/*==============================================================*/




create nonclustered index "Resursi poslovnog sistema3_FK" on "Sistem ili podsistem" (Drava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: Skladiste                                             */
/*==============================================================*/
create table Skladiste (
   Oznaka               int                  not null,
   ID_tipa              int                  not null,
   Naziv                varchar(50)          not null,
   Putanja              varchar(200)         not null,
   Iskoriscenost        int                  not null,
   constraint PK_SKLADISTE primary key (ID_tipa, Oznaka)
)
go

/*==============================================================*/
/* Index: "Tipizacija skladista_FK"                             */
/*==============================================================*/




create nonclustered index "Tipizacija skladista_FK" on Skladiste (ID_tipa ASC)
go

/*==============================================================*/
/* Table: "Sloena organizaciona jedinica"                      */
/*==============================================================*/
create table "Sloena organizaciona jedinica" (
   Drzava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Sloena jedinica"   numeric(4)           not null,
   "Jedinica u sastavu" numeric(4)           not null,
   constraint "PK_SLOENA ORGANIZACIONA JEDIN" primary key (Drzava, "Poslovni sistem", "Sloena jedinica", "Jedinica u sastavu")
)
go

/*==============================================================*/
/* Index: "Organizaciona jedinica u sastavu_FK"                 */
/*==============================================================*/




create nonclustered index "Organizaciona jedinica u sastavu_FK" on "Sloena organizaciona jedinica" (Drzava ASC,
  "Poslovni sistem" ASC,
  "Jedinica u sastavu" ASC)
go

/*==============================================================*/
/* Table: "Sloeni poslovni sistem"                             */
/*==============================================================*/
create table "Sloeni poslovni sistem" (
   "Redni broj"         numeric(1)           not null,
   "Maticna drzava registracije" char(3)              not null,
   "Maticni poslovni sistem" bigint               not null,
   "Drzava registracije clanice" char(3)              not null,
   "Poslovni sistem clanica" bigint               not null,
   Oznaka               char(1)              not null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_SLOENI POSLOVNI SISTEM" primary key ("Maticna drzava registracije", "Maticni poslovni sistem", "Drzava registracije clanice", "Poslovni sistem clanica", "Redni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Sloeni poslovni sistem"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Maticna drzava registracije')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Sloeni poslovni sistem', 'column', 'Maticna drzava registracije'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Sloeni poslovni sistem', 'column', 'Maticna drzava registracije'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Sloeni poslovni sistem"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava registracije clanice')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Sloeni poslovni sistem', 'column', 'Drzava registracije clanice'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Sloeni poslovni sistem', 'column', 'Drzava registracije clanice'
go

/*==============================================================*/
/* Index: "Maticni poslovni sistem_FK"                          */
/*==============================================================*/




create nonclustered index "Maticni poslovni sistem_FK" on "Sloeni poslovni sistem" ("Maticna drzava registracije" ASC,
  "Maticni poslovni sistem" ASC)
go

/*==============================================================*/
/* Index: "Sistem u sastavu_FK"                                 */
/*==============================================================*/




create nonclustered index "Sistem u sastavu_FK" on "Sloeni poslovni sistem" ("Drzava registracije clanice" ASC,
  "Poslovni sistem clanica" ASC)
go

/*==============================================================*/
/* Index: "Tipizacija sloenog poslovnog sistema_FK"            */
/*==============================================================*/




create nonclustered index "Tipizacija sloenog poslovnog sistema_FK" on "Sloeni poslovni sistem" (Oznaka ASC)
go

/*==============================================================*/
/* Table: "Spoljasnji poslovni subjekt"                         */
/*==============================================================*/
create table "Spoljasnji poslovni subjekt" (
   Oznaka               int                  not null,
   "Tip subjekta"       int                  not null,
   Naziv                varchar(40)          not null,
   Opis                 varchar(300)         null,
   constraint "PK_SPOLJASNJI POSLOVNI SUBJEKT" primary key ("Tip subjekta", Oznaka)
)
go

/*==============================================================*/
/* Index: "Tipizacija spoljasnjeg poslovnog subjekta_FK"        */
/*==============================================================*/




create nonclustered index "Tipizacija spoljasnjeg poslovnog subjekta_FK" on "Spoljasnji poslovni subjekt" ("Tip subjekta" ASC)
go

/*==============================================================*/
/* Table: "Spoljasnji servis"                                   */
/*==============================================================*/
create table "Spoljasnji servis" (
   Oznaka               int                  not null,
   "Tip servisa"        int                  not null,
   Naziv                varchar(60)          not null,
   Opis                 varchar(300)         null,
   Kontakt              varchar(100)         not null,
   constraint "PK_SPOLJASNJI SERVIS" primary key ("Tip servisa", Oznaka)
)
go

/*==============================================================*/
/* Index: "Tipizacija servisa_FK"                               */
/*==============================================================*/




create nonclustered index "Tipizacija servisa_FK" on "Spoljasnji servis" ("Tip servisa" ASC)
go

/*==============================================================*/
/* Table: "Spoljasnji ucesnici"                                 */
/*==============================================================*/
create table "Spoljasnji ucesnici" (
   "Tip subjekta"       int                  not null,
   "Spoljasnji saradnik" int                  not null,
   "Kontakt osoba"      int                  not null,
   Sastanak             int                  not null,
   constraint "PK_SPOLJASNJI UCESNICI" primary key ("Tip subjekta", "Spoljasnji saradnik", "Kontakt osoba", Sastanak)
)
go

/*==============================================================*/
/* Index: "Spoljasnji ucesnici_FK"                              */
/*==============================================================*/




create nonclustered index "Spoljasnji ucesnici_FK" on "Spoljasnji ucesnici" ("Tip subjekta" ASC,
  "Spoljasnji saradnik" ASC,
  "Kontakt osoba" ASC)
go

/*==============================================================*/
/* Index: "Spoljasnji ucesnici2_FK"                             */
/*==============================================================*/




create nonclustered index "Spoljasnji ucesnici2_FK" on "Spoljasnji ucesnici" (Sastanak ASC)
go

/*==============================================================*/
/* Table: Stanje                                                */
/*==============================================================*/
create table Stanje (
   Oznaka               int                  not null,
   Naziv                varchar(15)          not null,
   constraint PK_STANJE primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Stanje resursa"                                      */
/*==============================================================*/
create table "Stanje resursa" (
   Oznaka               char(5)              not null,
   Naziv                varchar(15)          not null,
   constraint "PK_STANJE RESURSA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Stanje sesije"                                       */
/*==============================================================*/
create table "Stanje sesije" (
   Uredjaj              int                  not null,
   "Vrsta uredjaja"     int                  not null,
   "Poslovni sistem"    bigint               not null,
   "Drzava sistema"     char(3)              not null,
   "User ID"            varchar(30)          not null,
   Sesija               int                  not null,
   "Stanje sesije"      int                  not null,
   constraint "PK_STANJE SESIJE" primary key (Uredjaj, "Vrsta uredjaja", "Poslovni sistem", "Drzava sistema", "User ID", Sesija, "Stanje sesije")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Stanje sesije"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava sistema')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Stanje sesije', 'column', 'Drzava sistema'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Stanje sesije', 'column', 'Drzava sistema'
go

/*==============================================================*/
/* Index: "Stanje sesije_FK"                                    */
/*==============================================================*/




create nonclustered index "Stanje sesije_FK" on "Stanje sesije" (Uredjaj ASC,
  "Vrsta uredjaja" ASC,
  "Poslovni sistem" ASC,
  "Drzava sistema" ASC,
  "User ID" ASC,
  Sesija ASC)
go

/*==============================================================*/
/* Index: "Stanje sesije2_FK"                                   */
/*==============================================================*/




create nonclustered index "Stanje sesije2_FK" on "Stanje sesije" ("Stanje sesije" ASC)
go

/*==============================================================*/
/* Table: "Stanje trajnog materijalnog resursa"                 */
/*==============================================================*/
create table "Stanje trajnog materijalnog resursa" (
   Oznaka               int                  not null,
   "Inventarni broj"    char(8)              not null,
   Stanje               char(5)              not null,
   "Tip resursa"        char(5)              null,
   "Tip subjekta"       int                  null,
   Serviser             int                  null,
   Od                   datetime             not null,
   Do                   datetime             null,
   constraint "PK_STANJE TRAJNOG MATERIJALNOG" primary key (Stanje, "Inventarni broj", Oznaka)
)
go

/*==============================================================*/
/* Index: "Servisira trajni resurs_FK"                          */
/*==============================================================*/




create nonclustered index "Servisira trajni resurs_FK" on "Stanje trajnog materijalnog resursa" ("Tip subjekta" ASC,
  Serviser ASC)
go

/*==============================================================*/
/* Index: "istorija stanja_FK"                                  */
/*==============================================================*/




create nonclustered index "istorija stanja_FK" on "Stanje trajnog materijalnog resursa" (Stanje ASC)
go

/*==============================================================*/
/* Index: "stanje resursa_FK"                                   */
/*==============================================================*/




create nonclustered index "stanje resursa_FK" on "Stanje trajnog materijalnog resursa" ("Tip resursa" ASC,
  "Inventarni broj" ASC)
go

/*==============================================================*/
/* Table: Status                                                */
/*==============================================================*/
create table Status (
   Oznaka               int                  not null,
   Naziv                varchar(20)          not null,
   constraint PK_STATUS primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Status predmeta"                                     */
/*==============================================================*/
create table "Status predmeta" (
   Oznaka               int                  not null,
   Naziv                varchar(20)          not null,
   constraint "PK_STATUS PREDMETA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Struktura atributa"                                  */
/*==============================================================*/
create table "Struktura atributa" (
   Atr_Dr_Oznaka       char(3)              not null,
   Atr_Pos_Identifikator bigint               not null,
   Atr_Identifikator    bigint               not null,
   Atr_Id               bigint               not null,
   Dr_Oznaka           char(3)              not null,
   Pos_Identifikator    bigint               not null,
   Identifikator        bigint               not null,
   Id                   bigint               not null,
   Oznaka               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Atribut              bigint               not null,
   "Sadrani atribut"   bigint               not null,
   constraint "PK_STRUKTURA ATRIBUTA" primary key (Atr_Dr_Oznaka, Atr_Pos_Identifikator, Atr_Identifikator, Atr_Id, Dr_Oznaka, Pos_Identifikator, Identifikator, Id, "Sadrani atribut", Oznaka, "Poslovni sistem", Atribut)
)
go

/*==============================================================*/
/* Index: "Sadrani atribut_FK"                                 */
/*==============================================================*/




create nonclustered index "Sadrani atribut_FK" on "Struktura atributa" (Oznaka ASC,
  "Poslovni sistem" ASC,
  "Sadrani atribut" ASC)
go

/*==============================================================*/
/* Index: Atribut_FK                                            */
/*==============================================================*/




create nonclustered index Atribut_FK on "Struktura atributa" (Oznaka ASC,
  "Poslovni sistem" ASC,
  Atribut ASC)
go

/*==============================================================*/
/* Table: Sud                                                   */
/*==============================================================*/
create table Sud (
   Oznaka               int                  not null,
   Naziv                varchar(50)          not null,
   constraint PK_SUD primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Sudski postupak"                                     */
/*==============================================================*/
create table "Sudski postupak" (
   Oznaka               int                  not null,
   Tip                  int                  not null,
   ID_predmeta          int                  not null,
   ID_suda              int                  not null,
   Naziv                varchar(100)         not null,
   "Datum pocetka"      datetime             not null,
   "Datum zavrsetka"    datetime             not null,
   Opis                 varchar(300)         null,
   Ishod                varchar(150)         not null,
   constraint "PK_SUDSKI POSTUPAK" primary key (Tip, ID_predmeta, Oznaka)
)
go

/*==============================================================*/
/* Index: "Sud na kojem se odvija postupak_FK"                  */
/*==============================================================*/




create nonclustered index "Sud na kojem se odvija postupak_FK" on "Sudski postupak" (ID_suda ASC)
go

/*==============================================================*/
/* Index: "Sudski postupci pravnog predmeta_FK"                 */
/*==============================================================*/




create nonclustered index "Sudski postupci pravnog predmeta_FK" on "Sudski postupak" (Tip ASC,
  ID_predmeta ASC)
go

/*==============================================================*/
/* Table: Tabela                                                */
/*==============================================================*/
create table Tabela (
   Id                   bigint               not null,
   Oznaka               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   Naziv                varchar(120)         not null,
   Kod                  varchar(30)          not null,
   constraint PK_TABELA primary key (Oznaka, "Poslovni sistem", Id)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Tabela')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Oznaka')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Tabela', 'column', 'Oznaka'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Tabela', 'column', 'Oznaka'
go

/*==============================================================*/
/* Index: "Resursi poslovnog sistema_FK"                        */
/*==============================================================*/




create nonclustered index "Resursi poslovnog sistema_FK" on Tabela (Oznaka ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: Tabele                                                */
/*==============================================================*/
create table Tabele (
   Oznaka               int                  not null,
   Naziv                varchar(50)          not null,
   constraint PK_TABELE primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: Tim                                                   */
/*==============================================================*/
create table Tim (
   Oznaka               int                  not null,
   "Tip tima"           int                  not null,
   "Poslovni sistem"    bigint               not null,
   "Drzava zaposlenog"  char(3)              not null,
   "Organizaciona jedinica" numeric(4)           not null,
   Vodja                int                  null,
   Naziv                varchar(50)          not null,
   "Broj clanova"       int                  not null,
   "Datum osnivanja"    datetime             not null,
   "Datum ukidanja"     datetime             null,
   constraint PK_TIM primary key ("Tip tima", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Tim')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava zaposlenog')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Tim', 'column', 'Drzava zaposlenog'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Tim', 'column', 'Drzava zaposlenog'
go

/*==============================================================*/
/* Index: "Sistematizovanje timova organizacione jedinice_FK"   */
/*==============================================================*/




create nonclustered index "Sistematizovanje timova organizacione jedinice_FK" on Tim ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Index: "Vodja tima_FK"                                       */
/*==============================================================*/




create nonclustered index "Vodja tima_FK" on Tim ("Drzava zaposlenog" ASC,
  "Poslovni sistem" ASC,
  Vodja ASC)
go

/*==============================================================*/
/* Index: "tipizacija tima_FK"                                  */
/*==============================================================*/




create nonclustered index "tipizacija tima_FK" on Tim ("Tip tima" ASC)
go

/*==============================================================*/
/* Table: Tip                                                   */
/*==============================================================*/
create table Tip (
   Oznaka               int                  not null,
   Naziv                varchar(20)          not null,
   constraint PK_TIP primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip dokaza"                                          */
/*==============================================================*/
create table "Tip dokaza" (
   Oznaka               int                  not null,
   Naziv                varchar(50)          not null,
   constraint "PK_TIP DOKAZA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip dokumenta"                                       */
/*==============================================================*/
create table "Tip dokumenta" (
   Oznaka               int                  not null,
   Naziv                varchar(20)          not null,
   constraint "PK_TIP DOKUMENTA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip izvještaja"                                      */
/*==============================================================*/
create table "Tip izvještaja" (
   Oznaka               int                  not null,
   Naziv                varchar(20)          null,
   constraint "PK_TIP IZVJEŠTAJA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip naplate"                                         */
/*==============================================================*/
create table "Tip naplate" (
   Oznaka               int                  not null,
   Naziv                varchar(40)          not null,
   constraint "PK_TIP NAPLATE" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip organizacione jedinice"                          */
/*==============================================================*/
create table "Tip organizacione jedinice" (
   Oznaka               char(1)              not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(256)         null,
   constraint "PK_TIP ORGANIZACIONE JEDINICE" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip poslovnog sistema"                               */
/*==============================================================*/
create table "Tip poslovnog sistema" (
   Oznaka               char(1)              not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(256)         null,
   constraint "PK_TIP POSLOVNOG SISTEMA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip potrošnog materijalnog resursa"                  */
/*==============================================================*/
create table "Tip potrošnog materijalnog resursa" (
   Oznaka               char(5)              not null,
   Naziv                varchar(50)          not null,
   constraint "PK_TIP POTROŠNOG MATERIJALNOG" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip predmeta"                                        */
/*==============================================================*/
create table "Tip predmeta" (
   Oznaka               int                  not null,
   Naziv                varchar(40)          not null,
   constraint "PK_TIP PREDMETA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip regiona"                                         */
/*==============================================================*/
create table "Tip regiona" (
   Oznaka               char(1)              not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(265)         null,
   constraint "PK_TIP REGIONA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip resursa"                                         */
/*==============================================================*/
create table "Tip resursa" (
   Oznaka               char(5)              not null,
   Naziv                varchar(50)          not null,
   constraint "PK_TIP RESURSA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip rocista"                                         */
/*==============================================================*/
create table "Tip rocista" (
   Oznaka               int                  not null,
   Naziv                varchar(60)          not null,
   constraint "PK_TIP ROCISTA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip servisa"                                         */
/*==============================================================*/
create table "Tip servisa" (
   Oznaka               int                  not null,
   Naziv                varchar(20)          not null,
   constraint "PK_TIP SERVISA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip skladista"                                       */
/*==============================================================*/
create table "Tip skladista" (
   Oznaka               int                  not null,
   Naziv                varchar(20)          null,
   constraint "PK_TIP SKLADISTA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip sloenog poslovnog sistema"                      */
/*==============================================================*/
create table "Tip sloenog poslovnog sistema" (
   Oznaka               char(1)              not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(256)         null,
   constraint "PK_TIP SLOENOG POSLOVNOG SIST" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip spoljasnjeg poslovnog subjekta"                  */
/*==============================================================*/
create table "Tip spoljasnjeg poslovnog subjekta" (
   Oznaka               int                  not null,
   Naziv                varchar(50)          not null,
   constraint "PK_TIP SPOLJASNJEG POSLOVNOG S" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip ucesnika"                                        */
/*==============================================================*/
create table "Tip ucesnika" (
   Oznaka               int                  not null,
   Naziv                varchar(40)          not null,
   constraint "PK_TIP UCESNIKA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tip usluge"                                          */
/*==============================================================*/
create table "Tip usluge" (
   Oznaka               int                  not null,
   Naziv                varchar(50)          not null,
   constraint "PK_TIP USLUGE" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Tipovi usluga"                                       */
/*==============================================================*/
create table "Tipovi usluga" (
   "Tip usluge"         int                  not null,
   Ugovor               int                  not null,
   constraint "PK_TIPOVI USLUGA" primary key ("Tip usluge", Ugovor)
)
go

/*==============================================================*/
/* Index: "Tipovi usluga2_FK"                                   */
/*==============================================================*/




create nonclustered index "Tipovi usluga2_FK" on "Tipovi usluga" (Ugovor ASC)
go

/*==============================================================*/
/* Index: "Tipovi usluga_FK"                                    */
/*==============================================================*/




create nonclustered index "Tipovi usluga_FK" on "Tipovi usluga" ("Tip usluge" ASC)
go

/*==============================================================*/
/* Table: TrajniMaterijalniResurs                               */
/*==============================================================*/
create table TrajniMaterijalniResurs (
   "Inventarni broj"    char(8)              not null,
   "Tip resursa"        char(5)              not null,
   Nabavka              int                  not null,
   Drzava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Organizaciona jedinica" numeric(4)           not null,
   "Tip izvjestaja"     int                  null,
   Izvjestaj            int                  null,
   Naziv                varchar(30)          not null,
   Opis                 varchar(150)         null,
   constraint PK_TRAJNIMATERIJALNIRESURS primary key ("Tip resursa", "Inventarni broj")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TrajniMaterijalniResurs')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'TrajniMaterijalniResurs', 'column', 'Drzava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'TrajniMaterijalniResurs', 'column', 'Drzava'
go

/*================================================================*/
/* Index: "Nabavljanje potrebnih trajnih materijalnih resursa_FK" */
/*================================================================*/




create nonclustered index "Nabavljanje potrebnih trajnih materijalnih resursa_FK" on TrajniMaterijalniResurs (Nabavka ASC)
go

/*==============================================================*/
/* Index: "Popis inventara_FK"                                  */
/*==============================================================*/




create nonclustered index "Popis inventara_FK" on TrajniMaterijalniResurs ("Tip izvjestaja" ASC,
  Izvjestaj ASC)
go

/*==============================================================*/
/* Index: "Tip trajnog materijalnog resursa_FK"                 */
/*==============================================================*/




create nonclustered index "Tip trajnog materijalnog resursa_FK" on TrajniMaterijalniResurs ("Tip resursa" ASC)
go

/*=======================================================================*/
/* Index: "Trajni materijalni resurs pripada organizacionoj jedinici_FK" */
/*=======================================================================*/




create nonclustered index "Trajni materijalni resurs pripada organizacionoj jedinici_FK" on TrajniMaterijalniResurs (Drzava ASC,
  "Poslovni sistem" ASC,
  "Organizaciona jedinica" ASC)
go

/*==============================================================*/
/* Table: "Ucesnici na rocistu"                                 */
/*==============================================================*/
create table "Ucesnici na rocistu" (
   JMBG                 char(13)             not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Postupak             int                  not null,
   "Tip rocista"        int                  not null,
   Rociste              int                  not null,
   constraint "PK_UCESNICI NA ROCISTU" primary key (JMBG, "Tip predmeta", Predmet, Postupak, "Tip rocista", Rociste)
)
go

/*==============================================================*/
/* Index: "Ucesnici na rocistu_FK"                              */
/*==============================================================*/




create nonclustered index "Ucesnici na rocistu_FK" on "Ucesnici na rocistu" (JMBG ASC)
go

/*==============================================================*/
/* Index: "Ucesnici na rocistu2_FK"                             */
/*==============================================================*/




create nonclustered index "Ucesnici na rocistu2_FK" on "Ucesnici na rocistu" ("Tip predmeta" ASC,
  Predmet ASC,
  Postupak ASC,
  "Tip rocista" ASC,
  Rociste ASC)
go

/*==============================================================*/
/* Table: "Ucesnici u postupku"                                 */
/*==============================================================*/
create table "Ucesnici u postupku" (
   Oznaka               int                  not null,
   Tip                  int                  not null,
   ID_predmeta          int                  not null,
   JMBG                 char(13)             not null,
   constraint "PK_UCESNICI U POSTUPKU" primary key (Tip, ID_predmeta, Oznaka, JMBG)
)
go

/*==============================================================*/
/* Index: "Ucesnici u postupku2_FK"                             */
/*==============================================================*/




create nonclustered index "Ucesnici u postupku2_FK" on "Ucesnici u postupku" (JMBG ASC)
go

/*==============================================================*/
/* Index: "Ucesnici u postupku_FK"                              */
/*==============================================================*/




create nonclustered index "Ucesnici u postupku_FK" on "Ucesnici u postupku" (Tip ASC,
  ID_predmeta ASC,
  Oznaka ASC)
go

/*==============================================================*/
/* Table: Ugovor                                                */
/*==============================================================*/
create table Ugovor (
   Oznaka               int                  not null,
   Drzava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   "Tip subjekta"       int                  not null,
   "Spoljasnji subjekt" int                  not null,
   Naziv                varchar(100)         null,
   Od                   datetime             not null,
   Do                   datetime             not null,
   Dokument             varchar(100)         null,
   constraint PK_UGOVOR primary key ("Poslovni sistem", Drzava, "Tip subjekta", "Spoljasnji subjekt", Oznaka)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Ugovor')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Ugovor', 'column', 'Drzava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Ugovor', 'column', 'Drzava'
go

/*==============================================================*/
/* Index: "Spoljasnji potpisnik_FK"                             */
/*==============================================================*/




create nonclustered index "Spoljasnji potpisnik_FK" on Ugovor ("Tip subjekta" ASC,
  "Spoljasnji subjekt" ASC)
go

/*==============================================================*/
/* Index: "Unutrasnji potpisnik_FK"                             */
/*==============================================================*/




create nonclustered index "Unutrasnji potpisnik_FK" on Ugovor (Drzava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: Uloga                                                 */
/*==============================================================*/
create table Uloga (
   Oznaka               int                  not null,
   Naziv                varchar(60)          not null,
   constraint PK_ULOGA primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Unutrasnji ucesnici"                                 */
/*==============================================================*/
create table "Unutrasnji ucesnici" (
   Sastanak             int                  not null,
   Drzava               char(3)              not null,
   "Poslovni sistem"    bigint               not null,
   constraint "PK_UNUTRASNJI UCESNICI" primary key (Sastanak, Drzava, "Poslovni sistem")
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('"Unutrasnji ucesnici"')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Drzava')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'schema', @CurrentUser, 'table', 'Unutrasnji ucesnici', 'column', 'Drzava'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'https://www.nationsonline.org/oneworld/country_code_list.htm',
   'schema', @CurrentUser, 'table', 'Unutrasnji ucesnici', 'column', 'Drzava'
go

/*==============================================================*/
/* Index: "Unutrasnji ucesnici_FK"                              */
/*==============================================================*/




create nonclustered index "Unutrasnji ucesnici_FK" on "Unutrasnji ucesnici" (Sastanak ASC)
go

/*==============================================================*/
/* Index: "Unutrasnji ucesnici2_FK"                             */
/*==============================================================*/




create nonclustered index "Unutrasnji ucesnici2_FK" on "Unutrasnji ucesnici" (Drzava ASC,
  "Poslovni sistem" ASC)
go

/*==============================================================*/
/* Table: Uredjaj                                               */
/*==============================================================*/
create table Uredjaj (
   Oznaka               int                  not null,
   "Vrsta uredjaja"     int                  not null,
   "Naziv uredjaja"     varchar(40)          not null,
   "MAC adresa"         varchar(20)          not null,
   constraint PK_UREDJAJ primary key ("Vrsta uredjaja", Oznaka)
)
go

/*==============================================================*/
/* Index: "Vrsta uredjaja_FK"                                   */
/*==============================================================*/




create nonclustered index "Vrsta uredjaja_FK" on Uredjaj ("Vrsta uredjaja" ASC)
go

/*==============================================================*/
/* Table: Vrsta                                                 */
/*==============================================================*/
create table Vrsta (
   Oznaka               int                  not null,
   Naziv                varchar(20)          not null,
   constraint PK_VRSTA primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: "Vrsta radnog odnosa"                                 */
/*==============================================================*/
create table "Vrsta radnog odnosa" (
   Oznaka               char(2)              not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(256)         null,
   constraint "PK_VRSTA RADNOG ODNOSA" primary key (Oznaka)
)
go

/*==============================================================*/
/* Table: Zahtjev                                               */
/*==============================================================*/
create table Zahtjev (
   Oznaka               int                  not null,
   "Tip servisa"        int                  not null,
   Servis               int                  not null,
   Datum                datetime             not null,
   Opis                 varchar(200)         null,
   constraint PK_ZAHTJEV primary key ("Tip servisa", Servis, Oznaka)
)
go

/*==============================================================*/
/* Index: "Zahtjev za servisom_FK"                              */
/*==============================================================*/




create nonclustered index "Zahtjev za servisom_FK" on Zahtjev ("Tip servisa" ASC,
  Servis ASC)
go

/*==============================================================*/
/* Table: "dokazi na predmetu"                                  */
/*==============================================================*/
create table "dokazi na predmetu" (
   "Tip dokaza"         int                  not null,
   Dokaz                int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   constraint "PK_DOKAZI NA PREDMETU" primary key ("Tip dokaza", Dokaz, "Tip predmeta", Predmet)
)
go

/*==============================================================*/
/* Index: "dokazi na predmetu2_FK"                              */
/*==============================================================*/




create nonclustered index "dokazi na predmetu2_FK" on "dokazi na predmetu" ("Tip predmeta" ASC,
  Predmet ASC)
go

/*==============================================================*/
/* Index: "dokazi na predmetu_FK"                               */
/*==============================================================*/




create nonclustered index "dokazi na predmetu_FK" on "dokazi na predmetu" ("Tip dokaza" ASC,
  Dokaz ASC)
go

/*==============================================================*/
/* Table: "dokumenti sa rocista"                                */
/*==============================================================*/
create table "dokumenti sa rocista" (
   Dokument             int                  not null,
   "Tip predmeta"       int                  not null,
   Predmet              int                  not null,
   Postupak             int                  not null,
   "Tip rocista"        int                  not null,
   Rociste              int                  not null,
   constraint "PK_DOKUMENTI SA ROCISTA" primary key (Dokument, "Tip predmeta", Predmet, Postupak, "Tip rocista", Rociste)
)
go

/*==============================================================*/
/* Index: "dokumenti sa rocista2_FK"                            */
/*==============================================================*/




create nonclustered index "dokumenti sa rocista2_FK" on "dokumenti sa rocista" ("Tip predmeta" ASC,
  Predmet ASC,
  Postupak ASC,
  "Tip rocista" ASC,
  Rociste ASC)
go

/*==============================================================*/
/* Index: "dokumenti sa rocista_FK"                             */
/*==============================================================*/




create nonclustered index "dokumenti sa rocista_FK" on "dokumenti sa rocista" (Dokument ASC)
go

/*==============================================================*/
/* Table: "Školska sprema"                                      */
/*==============================================================*/
create table "Školska sprema" (
   Oznaka               char(2)              not null,
   Stepen               numeric(1)           not null,
   "Nivo obrazovanja"   smallint             not null,
   Naziv                varchar(120)         not null,
   Opis                 varchar(256)         null,
   constraint "PK_ŠKOLSKA SPREMA" primary key (Stepen, "Nivo obrazovanja", Oznaka)
)
go

/*==============================================================*/
/* Index: "Koje školske spreme_FK"                              */
/*==============================================================*/




create nonclustered index "Koje školske spreme_FK" on "Školska sprema" (Stepen ASC,
  "Nivo obrazovanja" ASC)
go

alter table "Adresni podaci"
   add constraint "FK_ADRESNI _KOD DRUGO_POSLOVNI" foreign key ("Drzava zaposlenog", Poslodavac)
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Adresni podaci"
   add constraint "FK_ADRESNI _KONTAKT P_REGISTAR" foreign key ("Drzava zaposlenog", Identifikator, Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Adresni podaci"
   add constraint "FK_ADRESNI _MJESTO AD_NASELJEN" foreign key (Drava, Mjesto)
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table Akcija
   add constraint "FK_AKCIJA_AKCIJE TO_SESIJA" foreign key (Uredjaj, "Vrsta uredjaja", "Poslovni sistem", "Drzava sistema", "User ID", Sesija)
      references Sesija (Uredjaj, "Vrsta uredjaja", "Poslovni sistem", "Drzava sistema", "User ID", Oznaka)
go

alter table Akcija
   add constraint "FK_AKCIJA_TIP AKCIJ_TIP" foreign key ("Tip akcije")
      references Tip (Oznaka)
go

alter table Akcija
   add constraint FK_AKCIJA_EVIDENCIJ_ARHIVIRA foreign key ("Arhivirani predmet")
      references "Arhivirani predmet" (Oznaka)
go

alter table "Arhivirani predmet"
   add constraint "FK_ARHIVIRA_LOKACIJA _ORGANIZA" foreign key ("Drzava zaposlenog", "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Arhivirani predmet"
   add constraint FK_ARHIVIRA_ODGOVORNO_REGISTAR foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Atribut
   add constraint "FK_ATRIBUT_RESURSI P_POSLOVNI" foreign key (Oznaka, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Ciljni entitet akcije"
   add constraint "FK_CILJNI E_CILJNI EN_TABELE" foreign key (Tabela)
      references Tabele (Oznaka)
go

alter table "Ciljni entitet akcije"
   add constraint "FK_CILJNI E_CILJNI EN_AKCIJA" foreign key (Uredjaj, "Poslovni sistem", "Drzava sistema", "User ID", "Vrsta uredjaja", Sesija, "Tip akcije", Akcija)
      references Akcija (Uredjaj, "Poslovni sistem", "Drzava sistema", "User ID", "Vrsta uredjaja", Sesija, "Tip akcije", Oznaka)
go

alter table Dokazi
   add constraint "FK_DOKAZI_TIPIZACIJ_TIP DOKA" foreign key (Tip)
      references "Tip dokaza" (Oznaka)
go

alter table "Dokazi na rocistu"
   add constraint "FK_DOKAZI N_DOKAZI NA_DOKAZI" foreign key ("Tip dokaza", Dokaz)
      references Dokazi (Tip, Oznaka)
go

alter table "Dokazi na rocistu"
   add constraint "FK_DOKAZI N_DOKAZI NA_ROCISTE" foreign key ("Tip predmeta", Predmet, Postupak, "Tip rocista", Rociste)
      references Rociste ("Tip predmeta", Predmet, Postupak, "Tip rocista", Oznaka)
go

alter table "Dokazi u postupku"
   add constraint "FK_DOKAZI U_DOKAZI U _SUDSKI P" foreign key ("Tip predmeta", Predmet, Postupak)
      references "Sudski postupak" (Tip, ID_predmeta, Oznaka)
go

alter table "Dokazi u postupku"
   add constraint "FK_DOKAZI U_DOKAZI U _DOKAZI" foreign key ("Tip dokaza", Dokaz)
      references Dokazi (Tip, Oznaka)
go

alter table "Dokument sistematizacije"
   add constraint FK_DOKUMENT_SISTEMATI_POSLOVNI foreign key (Pos_Oznaka, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Dokument sistematizacije"
   add constraint FK_DOKUMENT_ODGOVORNO_REGISTAR foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Dokumentacija predmeta"
   add constraint FK_DOKUMENT_DOKUMENTA_DOKUMENT foreign key (Dokument)
      references Dokumentii (Oznaka)
go

alter table "Dokumentacija predmeta"
   add constraint FK_DOKUMENT_DOKUMENTA_PREDMET foreign key ("Tip predmeta", Predmet)
      references Predmet (Tip, ID)
go

alter table "Dokumentacija sa sastanaka"
   add constraint FK_DOKUMENT_DOKUMENTA_DOKUMENT3 foreign key (Dokument)
      references Dokumenti (Oznaka)
go

alter table "Dokumentacija sa sastanaka"
   add constraint FK_DOKUMENT_DOKUMENTA_SASTANCI foreign key (Sastanak)
      references Sastanci (Oznaka)
go

alter table "Dokumentacija zahtjeva"
   add constraint FK_DOKUMENT_DOKUMENTA_DOKUMENT2 foreign key (Dokument)
      references Dokumenti (Oznaka)
go

alter table "Dokumentacija zahtjeva"
   add constraint FK_DOKUMENT_DOKUMENTA_ZAHTJEV foreign key ("Tip servisa", Servis, Zahtjev)
      references Zahtjev ("Tip servisa", Servis, Oznaka)
go

alter table Dokumenti
   add constraint FK_DOKUMENT_DOKUMENTA_SPOLJASN foreign key ("Tip subjekta", "Spoljasnji subjekt")
      references "Spoljasnji poslovni subjekt" ("Tip subjekta", Oznaka)
go

alter table Dokumenti
   add constraint "FK_DOKUMENT_TIPIZACIJ_TIP DOKU" foreign key ("Tip dokumenta")
      references "Tip dokumenta" (Oznaka)
go

alter table "Dokumenti u postupku"
   add constraint FK_DOKUMENT_DOKUMENTI_DOKUMENT foreign key (Dokument)
      references Dokumentii (Oznaka)
go

alter table "Dokumenti u postupku"
   add constraint "FK_DOKUMENT_DOKUMENTI_SUDSKI P" foreign key ("Tip predmeta", Predmet, Postupak)
      references "Sudski postupak" (Tip, ID_predmeta, Oznaka)
go

alter table Drava
   add constraint "FK_DRAVA_AKTUELNI _NASELJEN" foreign key (Oznaka, "Glavni grad")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table Drava
   add constraint "FK_DRAVA_TEKUCE UR_DRAVNO" foreign key ("Drzavno uredjenje")
      references "Dravno uredenje" (Oznaka)
go

alter table Dravljanstvo
   add constraint FK_DRAVLJA_DRAVLJAN_REGISTAR foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Dravljanstvo
   add constraint FK_DRAVLJA_DRAVLJAN_DRAVA foreign key (Dravljanstvo)
      references Drava (Oznaka)
go

alter table Eksportovanje
   add constraint "FK_EKSPORTO_NACIN EKS_IZVJEŠTA" foreign key ("Tip izvjestaja", Izvjestaj)
      references Izvještaj ("Tip izvjestaja", Oznaka)
go

alter table Faktura
   add constraint "FK_FAKTURA_FAKTURE N_PRAVNI U" foreign key (Ugovor)
      references "Pravni ugovor" (Oznaka)
go

alter table Faktura
   add constraint FK_FAKTURA_IZVJESTAJ_IZVJEŠTA foreign key ("Tip izvjestaja", Izvjestaj)
      references Izvještaj ("Tip izvjestaja", Oznaka)
go

alter table Faktura
   add constraint "FK_FAKTURA_NACIN PLA_TIP NAPL" foreign key ("Tip naplate")
      references "Tip naplate" (Oznaka)
go

alter table "Glavni grad"
   add constraint "FK_GLAVNI G_GLAVNI GR_DRAVA" foreign key (Drava)
      references Drava (Oznaka)
go

alter table "Glavni grad"
   add constraint "FK_GLAVNI G_GLAVNI GR_NASELJEN" foreign key (Drava, "Glavni grad")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table Istorija
   add constraint "FK_ISTORIJA_ISTORIJA _PREDMET" foreign key ("Tip predmeta", Predmet)
      references Predmet (Tip, ID)
go

alter table Istorija
   add constraint "FK_ISTORIJA_URED VODI_ORGANIZA" foreign key (Drzava, "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Istorija lokacija"
   add constraint "FK_ISTORIJA_LOKACIJA _NASELJEN" foreign key (Drzava, "Naseljeno mjesto")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table "Istorija lokacija"
   add constraint "FK_ISTORIJA_UREDJAJ S_UREDJAJ" foreign key ("Vrsta uredjaja", Uredjaj)
      references Uredjaj ("Vrsta uredjaja", Oznaka)
go

alter table "Istorija statusa"
   add constraint "FK_ISTORIJA_PROMJENA _STATUS P" foreign key (Status)
      references "Status predmeta" (Oznaka)
go

alter table "Istorija statusa"
   add constraint "FK_ISTORIJA_STATUSI P_PREDMET" foreign key ("Tip predmeta", Predmet)
      references Predmet (Tip, ID)
go

alter table "Istorija uredenja"
   add constraint "FK_ISTORIJA_KROZ ISTO_DRAVA" foreign key (Drava)
      references Drava (Oznaka)
go

alter table "Istorija uredenja"
   add constraint "FK_ISTORIJA_UREĞENJE _DRAVNO" foreign key ("Drzavno uredjenje")
      references "Dravno uredenje" (Oznaka)
go

alter table Istorijat
   add constraint FK_ISTORIJA_ARHIVIRAN_PREDMET foreign key ("Tip predmeta", Predmet)
      references Predmet (Tip, ID)
go

alter table Istorijat
   add constraint "FK_ISTORIJA_PREDMET U_ARHIVIRA" foreign key ("Arhivirani predmet")
      references "Arhivirani predmet" (Oznaka)
go

alter table "Istorijat statusa"
   add constraint "FK_ISTORIJA_ISTORIJA _STATUS" foreign key ("Status sistematizacije")
      references Status (Oznaka)
go

alter table "Istorijat statusa"
   add constraint "FK_ISTORIJA_STATUS DO_DOKUMENT" foreign key ("Poslovni sistem", "Drzava sistema", "Broj sistematizacije")
      references "Dokument sistematizacije" ("Poslovni sistem", Pos_Oznaka, Oznaka)
go

alter table "Izabrani tipovi organizacione jedinice"
   add constraint "FK_IZABRANI_IZABRANA _TIP ORGA" foreign key ("Tip organizacione jedinice")
      references "Tip organizacione jedinice" (Oznaka)
go

alter table "Izabrani tipovi organizacione jedinice"
   add constraint "FK_IZABRANI_IZBOR TIP_POSLOVNI" foreign key (Drava, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table Izdavanje
   add constraint "FK_IZDAVANJ_ISTORIJA _ARHIVIRA" foreign key ("Arhivirani predmet")
      references "Arhivirani predmet" (Oznaka)
go

alter table Izdavanje
   add constraint FK_IZDAVANJ_ODGOVORNO_REGISTAR foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Izvještaj
   add constraint FK_IZVJEŠTA_IZVJESTAJ_KLIJENT foreign key (Klijent)
      references Klijent (ID)
go

alter table Izvještaj
   add constraint FK_IZVJEŠTA_IZVJESTAJ_ORGANIZA foreign key ("Drzava zaposlenog", "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table Izvještaj
   add constraint "FK_IZVJEŠTA_KREIRA IZ_REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Izvještaj
   add constraint FK_IZVJEŠTA_IZVJESTAJ_REGISTAR foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Izvještaj
   add constraint "FK_IZVJEŠTA_TIPIZACIJ_TIP IZVJ" foreign key ("Tip izvjestaja")
      references "Tip izvještaja" (Oznaka)
go

alter table "Katalog radnih mjesta"
   add constraint "FK_KATALOG _IMA RADNA_POSLOVNI" foreign key (Drava, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Katalog zanimanja"
   add constraint "FK_KATALOG _REGISTROV_DRAVA" foreign key (Drava)
      references Drava (Oznaka)
go

alter table "Katalog zvanja"
   add constraint "FK_KATALOG _KATALOG Z_DRAVA" foreign key (Drava)
      references Drava (Oznaka)
go

alter table Klijent
   add constraint "FK_KLIJENT_FIZICKO L_OSOBA" foreign key (JMBG)
      references Osoba (JMBG)
go

alter table Klijent
   add constraint "FK_KLIJENT_KLIJENT A_ORGANIZA" foreign key (Drava, "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table Klijent
   add constraint "FK_KLIJENT_PRAVNO LI_POSLOVNI" foreign key (Drava, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Kontakt osoba"
   add constraint "FK_KONTAKT _KONTAKT O_SPOLJASN" foreign key ("Tip subjekta", "Spoljasnji subjekt")
      references "Spoljasnji poslovni subjekt" ("Tip subjekta", Oznaka)
go

alter table "Korisnicki nalog"
   add constraint "FK_KORISNIC_NALOG ZAP_REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Korisnicki nalog"
   add constraint FK_KORISNIC_REGISTROV_POSLOVNI foreign key ("Drzava zaposlenog", "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Lista zvanja"
   add constraint "FK_LISTA ZV_LISTA ZVA_KATALOG" foreign key (Drava, Zvanje)
      references "Katalog zvanja" (Drava, Oznaka)
go

alter table "Lista zvanja"
   add constraint "FK_LISTA ZV_OBUHVATA _ŠKOLSKA" foreign key (Stepen, "Nivo obrazovanja", "Školska sprema")
      references "Školska sprema" (Stepen, "Nivo obrazovanja", Oznaka)
go

alter table "Logovi podataka"
   add constraint "FK_LOGOVI P_LOG AKCIJ_AKCIJA" foreign key (Uredjaj, "Poslovni sistem", "Drzava sistema", "User ID", "Vrsta uredjaja", Sesija, "Tip akcije", Akcija)
      references Akcija (Uredjaj, "Poslovni sistem", "Drzava sistema", "User ID", "Vrsta uredjaja", Sesija, "Tip akcije", Oznaka)
go

alter table "Mjesna zajednica"
   add constraint "FK_MJESNA Z_IMA MJESN_OPŠTINA" foreign key (Drava, "Oznaka opštine")
      references Opština (Drava, "Oznaka opštine")
go

alter table "Mjesna zajednica"
   add constraint "FK_MJESNA Z_SJEDIŠTE _NASELJEN" foreign key (Drava, "Mjesna kancelarija")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table "Mjesno pokrivanje naselja"
   add constraint "FK_MJESNO P_MJESNA ZA_MJESNA Z" foreign key ("Oznaka opštine", Identifikator)
      references "Mjesna zajednica" ("Oznaka opštine", Identifikator)
go

alter table "Mjesno pokrivanje naselja"
   add constraint "FK_MJESNO P_PRIPADA M_NASELJEN" foreign key (Drava, Oznaka)
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table Nabavka
   add constraint FK_NABAVKA_DOBAVLJAC_SPOLJASN foreign key ("Tip spoljasnjeg subjekta", Dobavljac)
      references "Spoljasnji poslovni subjekt" ("Tip subjekta", Oznaka)
go

alter table Nabavka
   add constraint FK_NABAVKA_IZVJESTAJ_IZVJEŠTA foreign key ("Tip izvjestaja", Izvjestaj)
      references Izvještaj ("Tip izvjestaja", Oznaka)
go

alter table "Nabavka trajnog resursa"
   add constraint "FK_NABAVKA _DOBAVLJAC_SPOLJASN" foreign key ("Tip subjekta", Dobavljac)
      references "Spoljasnji poslovni subjekt" ("Tip subjekta", Oznaka)
go

alter table "Nabavka trajnog resursa"
   add constraint "FK_NABAVKA _IZVJESTAJ_IZVJEŠTA" foreign key ("Tip izvjestaja", Izvjestaj)
      references Izvještaj ("Tip izvjestaja", Oznaka)
go

alter table "Naseljeno mjesto"
   add constraint "FK_NASELJEN_SADRI NA_DRAVA" foreign key (Drava)
      references Drava (Oznaka)
go

alter table "Obrazuju za"
   add constraint "FK_OBRAZUJU_OBRAZUJU _POSLOVNI" foreign key (Drava, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Obrazuju za"
   add constraint "FK_OBRAZUJU_ŠKOLSKE S_ŠKOLSKA" foreign key (Stepen, "Nivo obrazovanja", "Školska sprema")
      references "Školska sprema" (Stepen, "Nivo obrazovanja", Oznaka)
go

alter table "Obuhvata naselja"
   add constraint "FK_OBUHVATA_OBUHVATA _REGION" foreign key ("Tip regiona", "Oznaka regiona")
      references Region (Oznaka, "Oznaka regiona")
go

alter table "Obuhvata naselja"
   add constraint "FK_OBUHVATA_PRIPADA R_NASELJEN" foreign key (Drava, "Naseljeno mjesto")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table "Obuhvata opštine"
   add constraint "FK_OBUHVATA_OPŠTINA O_OPŠTINA" foreign key (Drava, "Oznaka opštine")
      references Opština (Drava, "Oznaka opštine")
go

alter table "Obuhvata opštine"
   add constraint "FK_OBUHVATA_OBUHVATA _NASELJEN2" foreign key (Drava, Oznaka)
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table "Odgovorno lice"
   add constraint FK_ODGOVORN_ODGOVORNO_REGISTAR2 foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Odgovorno lice"
   add constraint FK_ODGOVORN_ODGOVORNO_TRAJNIMA foreign key ("Tip resursa", "Inventarni broj")
      references TrajniMaterijalniResurs ("Tip resursa", "Inventarni broj")
go

alter table "Odgovorno lice za potrosni resurs"
   add constraint FK_ODGOVORN_ODGOVORNO_REGISTAR foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Odgovorno lice za potrosni resurs"
   add constraint FK_ODGOVORN_ODGOVORNO_POTROŠNI foreign key ("Tip resursa", "Inventarni broj")
      references "Potrošni materijalni resursi" ("Tip resursa", "Inventarni broj")
go

alter table Opština
   add constraint "FK_OPŠTINA_LOKALNA S_DRAVA" foreign key (Drava)
      references Drava (Oznaka)
go

alter table Opština
   add constraint "FK_OPŠTINA_SJEDIŠTE _NASELJEN" foreign key (Drava, "Sjedište opštine")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table "Organizaciona jedinica"
   add constraint "FK_ORGANIZA_SJEDIŠTE _NASELJEN" foreign key (Drava, "Sjedište organizacione jedinice")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table "Organizaciona jedinica"
   add constraint FK_ORGANIZA_TIPIZACIJ_IZABRANI foreign key ("Tip organizacione jedinice", Drava, "Poslovni sistem")
      references "Izabrani tipovi organizacione jedinice" ("Tip organizacione jedinice", Drava, "Poslovni sistem")
go

alter table "Organizaciona jedinica"
   add constraint FK_ORGANIZA_UNUTRAŠNJ_POSLOVNI foreign key (Drava, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Organizaciona šema"
   add constraint FK_ORGANIZA_AUTOR_REGISTAR foreign key ("Drzava zaposlenog", "Poslovni sistem", Autor)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Organizaciona šema"
   add constraint FK_ORGANIZA_SISTEMATI_ORGANIZA foreign key ("Drzava zaposlenog", "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Organizaciona šema"
   add constraint "FK_ORGANIZA_U SKLOPU _DOKUMENT" foreign key ("Poslovni sistem", "Drzava sistema", "Broj sistematizacije")
      references "Dokument sistematizacije" ("Poslovni sistem", Pos_Oznaka, Oznaka)
go

alter table Osoba
   add constraint "FK_OSOBA_MJESTO ST_NASELJEN" foreign key (Drzava, "Naseljeno mjesto")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table Osoba
   add constraint "FK_OSOBA_TIPIZACIJ_TIP UCES" foreign key ("Tip ucesnika")
      references "Tip ucesnika" (Oznaka)
go

alter table "Personalna restrikcija"
   add constraint FK_PERSONAL_PERSONALN_PRIPADA foreign key ("Drzava zaposlenog", "Poslovni sistem", Korisnik, Rola, "Id pripadnosti roli")
      references "Pripada roli" ("Drzava zaposlenog", "Poslovni sistem", Korisnik, "Oznaka role", Id)
go

alter table "Personalna restrikcija"
   add constraint FK_PERSONAL_PERSONALN_ATRIBUT foreign key ("Drzava zaposlenog", "Poslovni sistem", Atribut)
      references Atribut (Oznaka, "Poslovni sistem", Id)
go

alter table "Personalna restrikcija"
   add constraint FK_PERSONAL_PERSONALN_TABELA foreign key ("Drzava zaposlenog", "Poslovni sistem", Tabela)
      references Tabela (Oznaka, "Poslovni sistem", Id)
go

alter table "Podaci o obrazovanju"
   add constraint "FK_PODACI O_OBRAZOVNA_POSLOVNI" foreign key ("Drzava zaposlenog", "Obrazovna ustanova")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Podaci o obrazovanju"
   add constraint "FK_PODACI O_PODACI O _REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Podaci o obrazovanju"
   add constraint "FK_PODACI O_TIPIZACIJ_KATALOG" foreign key ("Drzava zaposlenog", Zvanje)
      references "Katalog zvanja" (Drava, Oznaka)
go

alter table "Podaci o obrazovanju"
   add constraint "FK_PODACI O_TIPIZACIJ_ŠKOLSKA" foreign key (Stepen, "Nivo obrazovanja", "Školska sprema")
      references "Školska sprema" (Stepen, "Nivo obrazovanja", Oznaka)
go

alter table Podtip
   add constraint "FK_PODTIP_PODTIP TI_TIP PRED" foreign key (Tip)
      references "Tip predmeta" (Oznaka)
go

alter table "Poslovni sistem"
   add constraint "FK_POSLOVNI_DRAVA PO_DRAVA" foreign key (Oznaka)
      references Drava (Oznaka)
go

alter table "Poslovni sistem"
   add constraint "FK_POSLOVNI_PRAVNI SL_POSLOVNI" foreign key (Oznaka, "Poslovni sistem sljedbenik")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Poslovni sistem"
   add constraint "FK_POSLOVNI_SJEDIŠTE _NASELJEN" foreign key (Oznaka, "Sjedište poslovnog sistema")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table "Poslovni sistem"
   add constraint "FK_POSLOVNI_TIPIZACIJ_TIP POSL" foreign key ("Tip poslovnog sistema")
      references "Tip poslovnog sistema" (Oznaka)
go

alter table "Potrebna školska sprema"
   add constraint "FK_POTREBNA_POTREBNA _ŠKOLSKA" foreign key (Stepen, "Nivo obrazovanja", "Školska sprema")
      references "Školska sprema" (Stepen, "Nivo obrazovanja", Oznaka)
go

alter table "Potrebna školska sprema"
   add constraint "FK_POTREBNA_ŠKOLSKA S_KATALOG" foreign key (Drava, "Poslovni sistem", "Radno mjesto")
      references "Katalog radnih mjesta" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Potrebne spreme"
   add constraint "FK_POTREBNE_POTREBNE _ŠKOLSKA" foreign key (Stepen, "Nivo obrazovanja", "Školska sprema")
      references "Školska sprema" (Stepen, "Nivo obrazovanja", Oznaka)
go

alter table "Potrebne spreme"
   add constraint "FK_POTREBNE_POTREBNE _KATALOG" foreign key (Drava, Zanimanje)
      references "Katalog zanimanja" (Drava, Zanimanje)
go

alter table "Potrošni materijalni resursi"
   add constraint "FK_POTROŠNI_NABAVKA P_NABAVKA" foreign key (Nabavka)
      references Nabavka (Nabavka)
go

alter table "Potrošni materijalni resursi"
   add constraint "FK_POTROŠNI_POTROŠNI _ORGANIZA" foreign key (Drzava, "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Potrošni materijalni resursi"
   add constraint "FK_POTROŠNI_TIP POTRO_TIP POTR" foreign key ("Tip resursa")
      references "Tip potrošnog materijalnog resursa" (Oznaka)
go

alter table "Povezana sa"
   add constraint "FK_POVEZANA_POVEZANA _TABELA" foreign key (Oznaka, "Poslovni sistem", "Povezana tabela")
      references Tabela (Oznaka, "Poslovni sistem", Id)
go

alter table "Povezana sa"
   add constraint FK_POVEZANA_TABELA_TABELA foreign key (Oznaka, "Poslovni sistem", Tabela)
      references Tabela (Oznaka, "Poslovni sistem", Id)
go

alter table Pozicija
   add constraint "FK_POZICIJA_NA POZICI_REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Pozicija
   add constraint "FK_POZICIJA_POZICIJA _ORGANIZA" foreign key ("Drava jedinice", "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Pravni nasljednik"
   add constraint "FK_PRAVNI N_PRAVNI NA_OSOBA2" foreign key (JMBG_osobe)
      references Osoba (JMBG)
go

alter table "Pravni nasljednik"
   add constraint "FK_PRAVNI N_PRAVNI NA_OSOBA" foreign key (JMBG)
      references Osoba (JMBG)
go

alter table "Pravni sljedbenik"
   add constraint "FK_PRAVNI S_PRAVNI SL_DRAVA" foreign key (Oznaka)
      references Drava (Oznaka)
go

alter table "Pravni sljedbenik"
   add constraint "FK_PRAVNI S_PRAVNI SL_DRAVA2" foreign key (Dr_Oznaka)
      references Drava (Oznaka)
go

alter table "Pravni ugovor"
   add constraint "FK_PRAVNI U_ADVOKAT S_REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Advokat)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Pravni ugovor"
   add constraint "FK_PRAVNI U_KLIJENT S_KLIJENT" foreign key (Klijent)
      references Klijent (ID)
go

alter table "Pravo na podsistem"
   add constraint "FK_PRAVO NA_ROLA OBUH_ROLA" foreign key (Drava, "Poslovni sistem", Rola)
      references Rola (Oznaka, "Poslovni sistem", "Oznaka role")
go

alter table "Pravo na podsistem"
   add constraint "FK_PRAVO NA_SISTEM PR_SISTEM I" foreign key (Drava, "Poslovni sistem", Sistem)
      references "Sistem ili podsistem" (Drava, "Poslovni sistem", Id)
go

alter table "Predefinisane role radnih mjesta"
   add constraint FK_PREDEFIN_PREDEFINI_KATALOG foreign key (Drava, "Poslovni sistem", "Radno mjesto")
      references "Katalog radnih mjesta" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Predefinisane role radnih mjesta"
   add constraint "FK_PREDEFIN_ROLE ZA R_ROLA" foreign key (Drava, "Poslovni sistem", "Oznaka role")
      references Rola (Oznaka, "Poslovni sistem", "Oznaka role")
go

alter table Predmet
   add constraint "FK_PREDMET_PODTIP PR_PODTIP" foreign key (Tip, Podtip)
      references Podtip (Tip, Oznaka)
go

alter table Predmet
   add constraint "FK_PREDMET_TIPIZACIJ_TIP PRED" foreign key (Tip)
      references "Tip predmeta" (Oznaka)
go

alter table "Predmet s kojim je povezan pravni ugovor"
   add constraint "FK_PREDMET _PREDMET S_PRAVNI U" foreign key (Ugovor)
      references "Pravni ugovor" (Oznaka)
go

alter table "Predmet s kojim je povezan pravni ugovor"
   add constraint "FK_PREDMET _PREDMET S_PREDMET" foreign key ("Tip predmeta", Predmet)
      references Predmet (Tip, ID)
go

alter table "Predmeti klijenta"
   add constraint "FK_PREDMETI_PREDMETI _KLIJENT" foreign key (Klijent)
      references Klijent (ID)
go

alter table "Predmeti klijenta"
   add constraint "FK_PREDMETI_PREDMETI _PREDMET" foreign key ("Tip predmeta", Predmet)
      references Predmet (Tip, ID)
go

alter table "Pripada roli"
   add constraint "FK_PRIPADA _KO JE U G_ROLA" foreign key ("Drzava zaposlenog", "Poslovni sistem", "Oznaka role")
      references Rola (Oznaka, "Poslovni sistem", "Oznaka role")
go

alter table "Pripada roli"
   add constraint "FK_PRIPADA _SVRSTAN U_KORISNIC" foreign key ("Drzava zaposlenog", "Poslovni sistem", Korisnik)
      references "Korisnicki nalog" ("Drzava zaposlenog", "Poslovni sistem", "User ID")
go

alter table "Pripadnost timu"
   add constraint FK_PRIPADNO_POZICIJA_TIM foreign key ("Tip tima", Tim)
      references Tim ("Tip tima", Oznaka)
go

alter table "Pripadnost timu"
   add constraint "FK_PRIPADNO_ZAPOSLEN _REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Prisustvovali sastancima"
   add constraint FK_PRISUSTV_PRISUSTVO_INTERNI foreign key (Sastanak)
      references "Interni sastanci" (Oznaka)
go

alter table "Prisustvovali sastancima"
   add constraint FK_PRISUSTV_PRISUSTVO_REGISTAR foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Rad
   add constraint "FK_RAD_ISTORIJA _PREDMET" foreign key ("Tip predmeta", Predmet)
      references Predmet (Tip, ID)
go

alter table Rad
   add constraint "FK_RAD_RADI NA P_REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Rad
   add constraint "FK_RAD_ULOGA PRI_ULOGA" foreign key (Uloga)
      references Uloga (Oznaka)
go

alter table "Raspored na radna mjesta"
   add constraint "FK_RASPORED_KADROVI U_ORGANIZA" foreign key ("Drzava zaposlenog", "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Raspored na radna mjesta"
   add constraint "FK_RASPORED_RASPORED _KATALOG" foreign key ("Drzava zaposlenog", "Poslovni sistem", "Radno mjesto")
      references "Katalog radnih mjesta" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Raspored na radna mjesta"
   add constraint "FK_RASPORED_RASPORED _REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Zaposleni)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table "Raspored na radna mjesta"
   add constraint "FK_RASPORED_TIPIZACIJ_VRSTA RA" foreign key ("Vrsta radnog odnosa")
      references "Vrsta radnog odnosa" (Oznaka)
go

alter table Region
   add constraint FK_REGION_ADMINISTR_NASELJEN foreign key ("Drava sjedišta", "Administrativno sjedište")
      references "Naseljeno mjesto" (Drava, Oznaka)
go

alter table Region
   add constraint "FK_REGION_MATICNA D_DRAVA" foreign key ("Pripada dravi")
      references Drava (Oznaka)
go

alter table Region
   add constraint "FK_REGION_TIPIZACIJ_TIP REGI" foreign key (Oznaka)
      references "Tip regiona" (Oznaka)
go

alter table "Registar zaposlenih"
   add constraint FK_REGISTAR_ZAPOŠLJAV_POSLOVNI foreign key ("Drzava zaposlenog", "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Restrikcija atributa"
   add constraint "FK_RESTRIKC_ATRIBUTI _ATRIBUT" foreign key (Oznaka, Atribut, "Poslovni sistem")
      references Atribut (Oznaka, "Poslovni sistem", Id)
go

alter table "Restrikcija atributa"
   add constraint "FK_RESTRIKC_ROLA OBUH_ROLA2" foreign key (Oznaka, Atribut, Rola)
      references Rola (Oznaka, "Poslovni sistem", "Oznaka role")
go

alter table "Restrikcija nad tabelama"
   add constraint "FK_RESTRIKC_ROLA OBUH_ROLA" foreign key (Oznaka, "Poslovni sistem", Rola)
      references Rola (Oznaka, "Poslovni sistem", "Oznaka role")
go

alter table "Restrikcija nad tabelama"
   add constraint "FK_RESTRIKC_TABELE PR_TABELA" foreign key (Oznaka, "Poslovni sistem", Tabela)
      references Tabela (Oznaka, "Poslovni sistem", Id)
go

alter table "Rezervna kopija"
   add constraint "FK_REZERVNA_KREIRAO R_KORISNIC" foreign key ("Drzava zaposlenog", "Poslovni sistem", "User ID")
      references "Korisnicki nalog" ("Drzava zaposlenog", "Poslovni sistem", "User ID")
go

alter table "Rezervna kopija"
   add constraint "FK_REZERVNA_LOKACIJA _SKLADIST" foreign key ("Tip skladista", Skladiste)
      references Skladiste (ID_tipa, Oznaka)
go

alter table "Rezervna kopija"
   add constraint "FK_REZERVNA_UREDJAJ S_UREDJAJ" foreign key ("Vrsta uredjaja", Uredjaj)
      references Uredjaj ("Vrsta uredjaja", Oznaka)
go

alter table Rociste
   add constraint "FK_ROCISTE_ROCISTA U_SUDSKI P" foreign key ("Tip predmeta", Predmet, Postupak)
      references "Sudski postupak" (Tip, ID_predmeta, Oznaka)
go

alter table Rociste
   add constraint "FK_ROCISTE_TIPIZACIJ_TIP ROCI" foreign key ("Tip rocista")
      references "Tip rocista" (Oznaka)
go

alter table Rola
   add constraint "FK_ROLA_ROLE POSL_POSLOVNI" foreign key (Oznaka, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Sadri atribute"
   add constraint "FK_SADRI A_PRIPADAJU_ATRIBUT" foreign key (Oznaka, "Poslovni sistem", Atribut)
      references Atribut (Oznaka, "Poslovni sistem", Id)
go

alter table "Sadri atribute"
   add constraint "FK_SADRI A_SADRI AT_TABELA" foreign key (Oznaka, "Poslovni sistem", Tabela)
      references Tabela (Oznaka, "Poslovni sistem", Id)
go

alter table "Sadri podsisteme"
   add constraint "FK_SADRI P_PODSISTEM_SISTEM I" foreign key (Drava, "Poslovni sistem", Podsistem)
      references "Sistem ili podsistem" (Drava, "Poslovni sistem", Id)
go

alter table "Sadri podsisteme"
   add constraint "FK_SADRI P_SISTEM_SISTEM I" foreign key (Drava, "Poslovni sistem", Sistem)
      references "Sistem ili podsistem" (Drava, "Poslovni sistem", Id)
go

alter table "Sadri tabele"
   add constraint "FK_SADRI T_PRIPADAJU_TABELA" foreign key (Drava, "Poslovni sistem", Tabela)
      references Tabela (Oznaka, "Poslovni sistem", Id)
go

alter table "Sadri tabele"
   add constraint "FK_SADRI T_SADRI TA_SISTEM I" foreign key (Drava, "Poslovni sistem", Sistem)
      references "Sistem ili podsistem" (Drava, "Poslovni sistem", Id)
go

alter table "Sastanak sa klijentom"
   add constraint "FK_SASTANAK_SASTANAK _KLIJENT" foreign key (Klijent)
      references Klijent (ID)
go

alter table "Sastanak sa klijentom"
   add constraint "FK_SASTANAK_SASTANAK _INTERNI" foreign key (Sastanak)
      references "Interni sastanci" (Oznaka)
go

alter table "Sastanak sa spoljasnjim poslovnim subjektom"
   add constraint "FK_SASTANAK_SASTANAK _SPOLJASN" foreign key ("Tip subjekta", "Spoljasnji subjekt")
      references "Spoljasnji poslovni subjekt" ("Tip subjekta", Oznaka)
go

alter table "Sastanak sa spoljasnjim poslovnim subjektom"
   add constraint "FK_SASTANAK_SASTANAK _SASTANCI" foreign key (Sastanak)
      references Sastanci (Oznaka)
go

alter table "Sastav drava"
   add constraint "FK_SASTAV D_DRAVA CL_DRAVA" foreign key ("Drava clanica")
      references Drava (Oznaka)
go

alter table "Sastav drava"
   add constraint "FK_SASTAV D_SLOENA D_DRAVA" foreign key (Oznaka)
      references Drava (Oznaka)
go

alter table "Sastav regiona"
   add constraint "FK_SASTAV R_SASTAV RE_REGION" foreign key ("Tip clana", "Region clan")
      references Region (Oznaka, "Oznaka regiona")
go

alter table "Sastav regiona"
   add constraint "FK_SASTAV R_SASTAVLJE_REGION" foreign key ("Tip slozenog regiona", "Sloeni region")
      references Region (Oznaka, "Oznaka regiona")
go

alter table Sesija
   add constraint "FK_SESIJA_SESIJA KO_KORISNIC" foreign key ("Drzava sistema", "Poslovni sistem", "User ID")
      references "Korisnicki nalog" ("Drzava zaposlenog", "Poslovni sistem", "User ID")
go

alter table Sesija
   add constraint "FK_SESIJA_UREDJAJ P_UREDJAJ" foreign key ("Vrsta uredjaja", Uredjaj)
      references Uredjaj ("Vrsta uredjaja", Oznaka)
go

alter table "Sistem ili podsistem"
   add constraint "FK_SISTEM I_RESURSI P_POSLOVNI" foreign key (Drava, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table Skladiste
   add constraint "FK_SKLADIST_TIPIZACIJ_TIP SKLA" foreign key (ID_tipa)
      references "Tip skladista" (Oznaka)
go

alter table "Sloena organizaciona jedinica"
   add constraint "FK_SLOENA _MATICNA O_ORGANIZA" foreign key (Drzava, "Poslovni sistem", "Sloena jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Sloena organizaciona jedinica"
   add constraint "FK_SLOENA _ORGANIZAC_ORGANIZA" foreign key (Drzava, "Poslovni sistem", "Jedinica u sastavu")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Sloeni poslovni sistem"
   add constraint "FK_SLOENI _MATICNI P_POSLOVNI" foreign key ("Maticna drzava registracije", "Maticni poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Sloeni poslovni sistem"
   add constraint "FK_SLOENI _SISTEM U _POSLOVNI" foreign key ("Drzava registracije clanice", "Poslovni sistem clanica")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Sloeni poslovni sistem"
   add constraint "FK_SLOENI _TIPIZACIJ_TIP SLO" foreign key (Oznaka)
      references "Tip sloenog poslovnog sistema" (Oznaka)
go

alter table "Spoljasnji poslovni subjekt"
   add constraint "FK_SPOLJASN_TIPIZACIJ_TIP SPOL" foreign key ("Tip subjekta")
      references "Tip spoljasnjeg poslovnog subjekta" (Oznaka)
go

alter table "Spoljasnji servis"
   add constraint "FK_SPOLJASN_TIPIZACIJ_TIP SERV" foreign key ("Tip servisa")
      references "Tip servisa" (Oznaka)
go

alter table "Spoljasnji ucesnici"
   add constraint FK_SPOLJASN_SPOLJASNJ_KONTAKT foreign key ("Tip subjekta", "Spoljasnji saradnik", "Kontakt osoba")
      references "Kontakt osoba" ("Tip subjekta", "Spoljasnji subjekt", Oznaka)
go

alter table "Spoljasnji ucesnici"
   add constraint FK_SPOLJASN_SPOLJASNJ_SASTANCI foreign key (Sastanak)
      references Sastanci (Oznaka)
go

alter table "Stanje sesije"
   add constraint "FK_STANJE S_STANJE SE_SESIJA" foreign key (Uredjaj, "Vrsta uredjaja", "Poslovni sistem", "Drzava sistema", "User ID", Sesija)
      references Sesija (Uredjaj, "Vrsta uredjaja", "Poslovni sistem", "Drzava sistema", "User ID", Oznaka)
go

alter table "Stanje sesije"
   add constraint "FK_STANJE S_STANJE SE_STANJE" foreign key ("Stanje sesije")
      references Stanje (Oznaka)
go

alter table "Stanje trajnog materijalnog resursa"
   add constraint "FK_STANJE T_SERVISIRA_SPOLJASN" foreign key ("Tip subjekta", Serviser)
      references "Spoljasnji poslovni subjekt" ("Tip subjekta", Oznaka)
go

alter table "Stanje trajnog materijalnog resursa"
   add constraint "FK_STANJE T_ISTORIJA _STANJE R" foreign key (Stanje)
      references "Stanje resursa" (Oznaka)
go

alter table "Stanje trajnog materijalnog resursa"
   add constraint "FK_STANJE T_STANJE RE_TRAJNIMA" foreign key ("Tip resursa", "Inventarni broj")
      references TrajniMaterijalniResurs ("Tip resursa", "Inventarni broj")
go

alter table "Struktura atributa"
   add constraint FK_STRUKTUR_ATRIBUT_ATRIBUT foreign key (Oznaka, "Poslovni sistem", Atribut)
      references Atribut (Oznaka, "Poslovni sistem", Id)
go

alter table "Struktura atributa"
   add constraint "FK_STRUKTUR_SADRANI _ATRIBUT" foreign key (Oznaka, "Poslovni sistem", "Sadrani atribut")
      references Atribut (Oznaka, "Poslovni sistem", Id)
go

alter table "Sudski postupak"
   add constraint "FK_SUDSKI P_SUD NA KO_SUD" foreign key (ID_suda)
      references Sud (Oznaka)
go

alter table "Sudski postupak"
   add constraint "FK_SUDSKI P_SUDSKI PO_PREDMET" foreign key (Tip, ID_predmeta)
      references Predmet (Tip, ID)
go

alter table Tabela
   add constraint "FK_TABELA_RESURSI P_POSLOVNI" foreign key (Oznaka, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table Tim
   add constraint FK_TIM_SISTEMATI_ORGANIZA foreign key ("Drzava zaposlenog", "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table Tim
   add constraint "FK_TIM_VODJA TIM_REGISTAR" foreign key ("Drzava zaposlenog", "Poslovni sistem", Vodja)
      references "Registar zaposlenih" ("Drzava zaposlenog", "Poslovni sistem", "Redni broj evidencije")
go

alter table Tim
   add constraint "FK_TIM_TIPIZACIJ_OBLAST R" foreign key ("Tip tima")
      references "Oblast rada" (Oznaka)
go

alter table "Tipovi usluga"
   add constraint "FK_TIPOVI U_TIPOVI US_TIP USLU" foreign key ("Tip usluge")
      references "Tip usluge" (Oznaka)
go

alter table "Tipovi usluga"
   add constraint "FK_TIPOVI U_TIPOVI US_PRAVNI U" foreign key (Ugovor)
      references "Pravni ugovor" (Oznaka)
go

alter table TrajniMaterijalniResurs
   add constraint FK_TRAJNIMA_NABAVLJAN_NABAVKA foreign key (Nabavka)
      references "Nabavka trajnog resursa" (ID)
go

alter table TrajniMaterijalniResurs
   add constraint "FK_TRAJNIMA_POPIS INV_IZVJEŠTA" foreign key ("Tip izvjestaja", Izvjestaj)
      references Izvještaj ("Tip izvjestaja", Oznaka)
go

alter table TrajniMaterijalniResurs
   add constraint "FK_TRAJNIMA_TIP TRAJN_TIP RESU" foreign key ("Tip resursa")
      references "Tip resursa" (Oznaka)
go

alter table TrajniMaterijalniResurs
   add constraint "FK_TRAJNIMA_TRAJNI MA_ORGANIZA" foreign key (Drzava, "Poslovni sistem", "Organizaciona jedinica")
      references "Organizaciona jedinica" (Drava, "Poslovni sistem", Oznaka)
go

alter table "Ucesnici na rocistu"
   add constraint "FK_UCESNICI_UCESNICI _OSOBA2" foreign key (JMBG)
      references Osoba (JMBG)
go

alter table "Ucesnici na rocistu"
   add constraint "FK_UCESNICI_UCESNICI _ROCISTE" foreign key ("Tip predmeta", Predmet, Postupak, "Tip rocista", Rociste)
      references Rociste ("Tip predmeta", Predmet, Postupak, "Tip rocista", Oznaka)
go

alter table "Ucesnici u postupku"
   add constraint "FK_UCESNICI_UCESNICI _SUDSKI P" foreign key (Tip, ID_predmeta, Oznaka)
      references "Sudski postupak" (Tip, ID_predmeta, Oznaka)
go

alter table "Ucesnici u postupku"
   add constraint "FK_UCESNICI_UCESNICI _OSOBA" foreign key (JMBG)
      references Osoba (JMBG)
go

alter table Ugovor
   add constraint FK_UGOVOR_SPOLJASNJ_SPOLJASN foreign key ("Tip subjekta", "Spoljasnji subjekt")
      references "Spoljasnji poslovni subjekt" ("Tip subjekta", Oznaka)
go

alter table Ugovor
   add constraint FK_UGOVOR_UNUTRASNJ_POSLOVNI foreign key (Drzava, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table "Unutrasnji ucesnici"
   add constraint FK_UNUTRASN_UNUTRASNJ_SASTANCI foreign key (Sastanak)
      references Sastanci (Oznaka)
go

alter table "Unutrasnji ucesnici"
   add constraint FK_UNUTRASN_UNUTRASNJ_POSLOVNI foreign key (Drzava, "Poslovni sistem")
      references "Poslovni sistem" (Oznaka, Identifikator)
go

alter table Uredjaj
   add constraint "FK_UREDJAJ_VRSTA URE_VRSTA" foreign key ("Vrsta uredjaja")
      references Vrsta (Oznaka)
go

alter table Zahtjev
   add constraint "FK_ZAHTJEV_ZAHTJEV Z_SPOLJASN" foreign key ("Tip servisa", Servis)
      references "Spoljasnji servis" ("Tip servisa", Oznaka)
go

alter table "dokazi na predmetu"
   add constraint "FK_DOKAZI N_DOKAZI NA_DOKAZI2" foreign key ("Tip dokaza", Dokaz)
      references Dokazi (Tip, Oznaka)
go

alter table "dokazi na predmetu"
   add constraint "FK_DOKAZI N_DOKAZI NA_PREDMET" foreign key ("Tip predmeta", Predmet)
      references Predmet (Tip, ID)
go

alter table "dokumenti sa rocista"
   add constraint FK_DOKUMENT_DOKUMENTI_DOKUMENT2 foreign key (Dokument)
      references Dokumentii (Oznaka)
go

alter table "dokumenti sa rocista"
   add constraint FK_DOKUMENT_DOKUMENTI_ROCISTE foreign key ("Tip predmeta", Predmet, Postupak, "Tip rocista", Rociste)
      references Rociste ("Tip predmeta", Predmet, Postupak, "Tip rocista", Oznaka)
go

alter table "Školska sprema"
   add constraint "FK_ŠKOLSKA _KOJE ŠKOL_NIVO OBR" foreign key (Stepen, "Nivo obrazovanja")
      references "Nivo obrazovanja" (Stepen, "Nivo obrazovanja")
go

