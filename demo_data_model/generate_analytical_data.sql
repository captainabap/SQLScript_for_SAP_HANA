CREATE TABLE Countries (
    COUNTRY VARCHAR(2) NOT NULL primary key,
    TEXT VARCHAR(255) NOT NULL
);


INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AF', 'Afghanistan');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('EG', 'Egypt');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AL', 'Albania');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('DZ', 'Algeria');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AD', 'Andorra');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AO', 'Angola');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AR', 'Argentina');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AM', 'Armenia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AU', 'Australia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AT', 'Austria');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('AZ', 'Azerbaijan');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BH', 'Bahrain');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BD', 'Bangladesh');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BY', 'Belarus');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BE', 'Belgium');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BZ', 'Belize');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BJ', 'Benin');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BO', 'Bolivia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BA', 'Bosnia and Herzegovina');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BW', 'Botswana');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BR', 'Brazil');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BN', 'Brunei');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BG', 'Bulgaria');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BF', 'Burkina Faso');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('BI', 'Burundi');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('KH', 'Cambodia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CM', 'Cameroon');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CA', 'Canada');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CF', 'Central African Republic');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('TD', 'Chad');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CL', 'Chile');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CN', 'China');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CO', 'Colombia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('KM', 'Comoros');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CD', 'Democratic Republic of the Congo');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CG', 'Republic of the Congo');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CR', 'Costa Rica');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('HR', 'Croatia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CU', 'Cuba');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CY', 'Cyprus');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('CZ', 'Czech Republic');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('DK', 'Denmark');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('DJ', 'Djibouti');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('DO', 'Dominican Republic');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('EC', 'Ecuador');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('SV', 'El Salvador');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('ER', 'Eritrea');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('EE', 'Estonia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('ET', 'Ethiopia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('FI', 'Finland');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('FR', 'France');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GA', 'Gabon');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GM', 'Gambia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GE', 'Georgia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('DE', 'Germany');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GH', 'Ghana');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GR', 'Greece');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GT', 'Guatemala');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GN', 'Guinea');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GW', 'Guinea-Bissau');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('GY', 'Guyana');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('HT', 'Haiti');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('HN', 'Honduras');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('HU', 'Hungary');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('IS', 'Iceland');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('IN', 'India');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('ID', 'Indonesia');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('IR', 'Iran');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('IQ', 'Iraq');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('IE', 'Ireland');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('IL', 'Israel');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('IT', 'Italy');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('JM', 'Jamaica');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('JP', 'Japan');
INSERT INTO Countries (COUNTRY, TEXT) VALUES ('JO', 'Jordan');

--------------------------------------------------------------------
CREATE COLUMN TABLE "PCA_PLAN"(
	"COMPCODE" NVARCHAR(8) DEFAULT '' NOT NULL,
	"ACCOUNT" NVARCHAR(6) DEFAULT '' NOT NULL,
	"CURR" NVARCHAR(5) DEFAULT '' NOT NULL,
	"FISCYEAR" NVARCHAR(4) DEFAULT '' NOT NULL,
	"AMOUNT_01" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_02" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_03" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_04" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_05" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_06" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_07" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_08" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_09" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_10" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_11" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	"AMOUNT_12" DECIMAL(17, 2) DEFAULT 0 NOT NULL,
	CONSTRAINT "ZPCA_PLAN~0" PRIMARY KEY INVERTED INDIVIDUAL(
		"COMPCODE",
		"ACCOUNT",
		"CURR",
		"FISCYEAR"
	)
) COLUMN LOADABLE
UNLOAD PRIORITY 5 AUTO MERGE;

do begin 
    declare la_nr varchar(2) array = array( '01', '02', '03', '04', '05', '07', '08', '10', '20',  '40', '50', '60', '70', '90');

    lt_NR = unnest( :la_nr ) as ( nr );
    accounts = select nr1.nr||nr2.nr||nr3.nr as account,
                      lpad(ceil(rand()*5)*10, 4, '0') as acctyp
                           from :lt_nr as nr1
                           cross join :lt_nr as nr2
                           cross join :lt_nr as nr3 ;
                           
  compcodes = select country||'01'as compcode from countries union all
              select country||'02'as compcode from countries union all
              select country||'03'as compcode from countries ;
  
    plan = ( select *,
           (1 + rand( ) * 0.4) * amount_01 as amount_02,
           (1 + rand( ) * 0.4) * amount_01 as amount_03,
           (1 + rand( ) * 0.4) * amount_01 as amount_04,
           (1 + rand( ) * 0.4) * amount_01 as amount_05,
           (1 + rand( ) * 0.4) * amount_01 as amount_06,
           (1 + rand( ) * 0.4) * amount_01 as amount_07,
           (1 + rand( ) * 0.4) * amount_01 as amount_08,
           (1 + rand( ) * 0.4) * amount_01 as amount_09,
           (1 + rand( ) * 0.4) * amount_01 as amount_10,
           (1 + rand( ) * 0.4) * amount_01 as amount_11,
           (1 + rand( ) * 0.4) * amount_01 as amount_12
           from (
           
           	
    select o.compcode,
           a.account,
           'EUR' as curr,
           y.fiscyear,
           y.factor * (1+ rand( )*0.4) * a.factor * o.factor * 1000000 as amount_01
           from (select compcode, rand( ) as factor  from :compcodes) as o
           cross join (select account, rand() as factor  from :accounts ) as a
           cross join ( select year(add_years(current_date, 0)) as fiscyear, 1.1 as factor from dummy union
                        select year(add_years(current_date, -1)) as fiscyear, 1.2 as factor from dummy union
                        select year(add_years(current_date, -2)) as fiscyear, 1.2 as factor from dummy union
                        select year(add_years(current_date, -3)) as fiscyear, 1.2 as factor from dummy  ) as y

           ) );
           
  select * from :compcodes;
  select * from :accounts;
  select * from :plan;
  end;

