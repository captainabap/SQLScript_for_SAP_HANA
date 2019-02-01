# SQLScript_for_SAP_HANA
Additional scripts and information about the book SQLScript for SAP HANA. 

## Installation des Demo-Datenmodells
Hinter den folgenden Links stecken die SQL Skripte, die das Datenmodell anlegen und mit Daten füllen. Bitte kopieren Sie den Inhalt der einzelnen Skripte in die Zwischenablage und öffnen dann eine SQL-Konsole für das Datenbankschema Ihrer Wahl, zum Beispiel das persönliche Schema Ihres Datenbanknutzers. Dort fügen Sie das Skript ein und führen es aus. 

* [Datenbanktabellen anlegen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/Install_01_Create_Tables.sql)
* [Prozeduren und Funktionen anlegen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/Install_02_Create_Procedures_and_Functions.sql)
* [Datenbanktabellen füllen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/Install_03_Fill_with_Data.sql)
* [Installation überprüfen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/Install_04_Check_Install_Result.sql)

Nach jedem Skript bitte in der Konsolenausgabe prüfen, ob alles ohne Fehler durchgelaufen ist. Das letzte Skript fragt die Anzahl der Zeilen in den jeweiligen Tabellen ab. Damit können Sie prüfen, ob die Daten korrekt geladen wurden. 

Sie können die Skript Dateien auch lokal speichern und nach belieben anpassen. Wenn Ihnen beispielsweise die Testdaten zu viele sind, können Sie das entsprechende Skript einfach anpassen. Um die angelegten Datenbankobjekte wieder zu Löschen, gibt es auch ein passendes Skript:

[Datenbanktabellen, Prozeduren und Funktionen löschen](https://raw.githubusercontent.com/captainabap/Einstieg-in-SQLScript/master/Install/uninstall.sql)


## Übersicht über das Datenmodell

![Übersicht](https://github.com/captainabap/SQLScript_for_SAP_HANA/blob/master/A02_Demo_Datenmodell.png)
