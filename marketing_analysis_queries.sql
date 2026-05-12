USE marketing_db;

LOAD DATA INFILE 'C:/Users/rajiv/Desktop/marketing_campaign_dataset.csv'
INTO TABLE marketing_campaign
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
INSERT INTO marketing_campaign VALUES
(1,'Innovate Industries','Email','Men 18-24','30 days','Google Ads',0.04,16174,6.29,'Chicago','Spanish',506,1922,6,'Health & Wellness','2021-01-01',0.56789320,56.43289),
(2,'NexGen Systems','Email','Women 35-44','60 days','Google Ads',0.12,11566,5.61,'New York','German',116,7523,7,'Fashionistas','2021-01-02',0.263267429760666,31.9644268774704),
(3,'Alpha Innovations','Influencer','Men 25-34','30 days','YouTube',0.07,10200,7.18,'Los Angeles','French',584,7698,1,'Outdoor Adventurers','2021-01-03',0.0154193805662635,99.7068965517241),
(4,'DataTech Solutions','Display','All Ages','60 days','YouTube',0.11,12724,5.55,'Miami','Mandarin',217,1820,7,'Health & Wellness','2021-01-04',0.0758638607430501,17.4657534246575),
(5,'NexGen Systems','Email','Men 25-34','15 days','YouTube',0.05,16452,6.5,'Los Angeles','Mandarin',379,4201,3,'Health & Wellness','2021-01-05',0.119230769230769,58.6359447004608),
(6,'DataTech Solutions','Display','All Ages','15 days','Instagram',0.07,9716,4.36,'New York','German',100,1643,1,'Foodies','2021-01-06',0.0902166150916448,43.4089709762533),
(7,'NexGen Systems','Email','Women 35-44','60 days','Website',0.13,11067,2.86,'Los Angeles','Spanish',817,8749,10,'Tech Enthusiasts','2021-01-07',0.0608642726719416,97.16),
(8,'DataTech Solutions','Search','Men 18-24','45 days','Google Ads',0.08,13280,5.55,'Los Angeles','Mandarin',624,7854,7,'Outdoor Adventurers','2021-01-08',0.0933821008115213,13.5458996328029),
(9,'Alpha Innovations','Social Media','Women 35-44','15 days','Facebook',0.09,18066,6.73,'Chicago','German',861,1754,6,'Tech Enthusiasts','2021-01-09',0.079449961802903,21.2820512820513),
(10,'TechCorp','Email','Women 35-44','15 days','Instagram',0.09,13766,3.78,'Los Angeles','English',642,3856,3,'Tech Enthusiasts','2021-01-10',0.490877993158495,20.9825783972125),
(11,'NexGen Systems','Display','Men 25-34','45 days','Email',0.12,8590,3.49,'New York','Spanish',321,6628,10,'Tech Enthusiasts','2021-01-11',0.16649377593361,21.4423676012461),
(12,'Innovate Industries','Influencer','Men 25-34','60 days','Google Ads',0.05,17502,3.59,'Los Angeles','Mandarin',659,8948,1,'Foodies','2021-01-12',0.0484308992154496,26.7601246105919),
(13,'TechCorp','Social Media','Men 25-34','60 days','Facebook',0.09,17189,4.91,'Chicago','Mandarin',677,8817,10,'Tech Enthusiasts','2021-01-13',0.0736477425122933,26.5584218512898),
(14,'TechCorp','Email','Men 25-34','45 days','Instagram',0.14,9975,7.06,'New York','German',994,2201,4,'Health & Wellness','2021-01-14',0.0767834864466372,25.3899556868538),
(15,'TechCorp','Display','All Ages','45 days','Website',0.04,11346,5.28,'Chicago','Spanish',482,8470,1,'Outdoor Adventurers','2021-01-15',0.451612903225806,10.0352112676056),
(16,'Innovate Industries','Social Media','Women 35-44','60 days','YouTube',0.11,9407,2.91,'New York','German',299,1512,5,'Health & Wellness','2021-01-16',0.0569067296340024,23.5394190871369),
(17,'Innovate Industries','Display','Women 35-44','45 days','Website',0.08,5478,4.53,'Houston','English',931,2488,3,'Fashionistas','2021-01-17',0.197751322751323,31.4615384615385),
(18,'Alpha Innovations','Influencer','Men 18-24','15 days','Instagram',0.14,9485,4.48,'Miami','French',218,9264,9,'Health & Wellness','2021-01-18',0.3741961414791,5.88399570354458),
(19,'Alpha Innovations','Social Media','Men 25-34','60 days','Google Ads',0.07,19224,6.08,'New York','French',182,5798,1,'Foodies','2021-01-19',0.0235319516407599,43.5091743119266),
(20,'DataTech Solutions','Influencer','Men 25-34','15 days','Google Ads',0.09,10258,3.83,'Miami','French',193,3677,1,'Tech Enthusiasts','2021-01-20',0.031390134529148,105.626373626374),
(21,'DataTech Solutions','Search','Women 25-34','15 days','Email',0.04,16580,7.99,'New York','Spanish',975,1561,3,'Outdoor Adventurers','2021-01-21',0.0524884416644003,53.1502590673575),
(22,'TechCorp','Influencer','All Ages','30 days','Facebook',0.02,12824,6.21,'New York','French',319,8586,2,'Foodies','2021-01-22',0.624599615631006,17.0051282051282),
(23,'NexGen Systems','Social Media','Women 35-44','15 days','YouTube',0.13,8699,2.12,'Miami','French',646,3841,5,'Health & Wellness','2021-01-23',0.0371535057069648,40.2006269592476),
(24,'Innovate Industries','Email','Women 25-34','15 days','Facebook',0.04,17608,7.31,'Miami','Spanish',764,2157,8,'Health & Wellness','2021-01-24',0.168185368393647,13.4659442724458),
(25,'NexGen Systems','Social Media','Men 18-24','60 days','YouTube',0.07,8773,6.03,'Miami','Mandarin',527,1733,1,'Fashionistas','2021-01-25',0.354195642095503,23.0471204188482),
(26,'NexGen Systems','Search','Women 25-34','45 days','Instagram',0.04,14756,6.23,'Houston','English',809,8236,10,'Health & Wellness','2021-01-26',0.304096941719561,16.6470588235294),
(27,'Alpha Innovations','Email','Women 25-34','45 days','Facebook',0.09,9182,6.03,'Houston','English',953,6916,5,'Fashionistas','2021-01-27',0.0982272948033026,18.2398022249691),
(28,'TechCorp','Email','Men 25-34','30 days','YouTube',0.07,6601,3.29,'New York','Spanish',604,2420,3,'Foodies','2021-01-28',0.137796414112204,9.63483735571878),
(29,'TechCorp','Influencer','Men 18-24','60 days','Email',0.09,11552,7.12,'Chicago','Spanish',384,7620,7,'Tech Enthusiasts','2021-01-29',0.249586776859504,10.9288079470199),
(30,'TechCorp','Social Media','Women 25-34','30 days','Email',0.09,11608,3.61,'Los Angeles','Spanish',952,4055,1,'Tech Enthusiasts','2021-01-30',0.0503937007874016,30.0833333333333),
(31,'Innovate Industries','Search','Men 25-34','45 days','Instagram',0.07,13124,2.77,'Houston','Mandarin',512,4837,4,'Tech Enthusiasts','2021-01-31',0.234771886559803,12.1932773109244);
select * from marketing_campaign;
SELECT campaign_type, AVG(roi) AS avg_roi
FROM marketing_campaign
GROUP BY campaign_type
ORDER BY avg_roi DESC;

SELECT channel,
       SUM(clicks) AS total_clicks,
       AVG(roi) AS avg_roi
FROM marketing_campaign
GROUP BY channel;

SELECT campaign_type, ctr
FROM marketing_campaign
ORDER BY ctr DESC
LIMIT 5;

SELECT campaign_type, AVG(cpc) AS avg_cpc
FROM marketing_campaign
GROUP BY campaign_type
ORDER BY avg_cpc ASC;

SELECT MONTH(date) AS month,
       AVG(roi) AS avg_roi
FROM marketing_campaign
GROUP BY month
ORDER BY month;