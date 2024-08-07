# SQLScript_for_SAP_HANA
Additional scripts and information about the **english** edition of the book [SQLScript](https://www.brandeis.de/en/category/sqlscript) for SAP HANA. Please note that the German edition of the book has a slightly different demo data model. The scripts are not compatible, because the names of the tables, functions and procedures are different. 

## Installation of the Demo Data Model
Behind the following links are the SQL scripts that create the data model and fill it with data. Please copy the contents of the individual scripts to the clipboard and then open an SQL console for the database schema of your choice, for example the personal schema of your database user. There you insert the script and execute it.

#### For SQLScript Trainings
* [Creating Database Tables](https://raw.githubusercontent.com/captainabap/SQLScript_for_SAP_HANA/master/demo_data_model/01_Create_Tables_EN.sql)
* [Filling Database Tables - Part 1](https://raw.githubusercontent.com/captainabap/SQLScript_for_SAP_HANA/master/demo_data_model/03_Fill_Tables_EN.sql)
* [Filling Database Tables - Part 2](https://raw.githubusercontent.com/captainabap/SQLScript_for_SAP_HANA/master/demo_data_model/03_Fill_Tables_EN_2.sql)

#### Additionally for Book reference
* [Creating Procedures and Functions](https://raw.githubusercontent.com/captainabap/SQLScript_for_SAP_HANA/master/demo_data_model/02_Create_Procedures_and_Functions_EN.sql)
* [Check installation](https://raw.githubusercontent.com/captainabap/SQLScript_for_SAP_HANA/master/demo_data_model/04_Check_Installation_EN.sql)

After each script, please check in the console output whether everything ran without errors. The last script queries the number of lines in the respective tables. This allows you to check whether the data was loaded correctly.

You can also save the script files locally and customize them as you like. If, for example, the test data is too much for you, you can simply adapt the corresponding script. To delete the created database objects, there is also a suitable script:

[Deleting Database Tables, Procedures, and Functions](https://raw.githubusercontent.com/captainabap/SQLScript_for_SAP_HANA/master/demo_data_model/05_Delete_Data_Model_EN.sql)


## Overview of the Demo Data Model

![Übersicht](https://github.com/captainabap/SQLScript_for_SAP_HANA/blob/master/A02_Demo_Datenmodell.png)
