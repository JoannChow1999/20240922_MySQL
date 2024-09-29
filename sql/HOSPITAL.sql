BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "HOSPITAL" (
	"序號"	INTEGER,
	"直轄市或省轄縣市"	TEXT,
	"醫療機構名稱"	TEXT,
	"市話"	TEXT,
	"分機"	TEXT,
	"聯絡人"	TEXT,
	"地址"	TEXT
);
INSERT INTO "HOSPITAL" VALUES (1,'臺北市','國立臺灣大學醫學院附設醫院','(02)23123456','67278','魏小姐','臺北市常德街1號(環境職業醫學部)');
INSERT INTO "HOSPITAL" VALUES (2,'臺北市','臺北榮民總醫院','(02)28757364','533','黃小姐','臺北市北投區石牌路201號');
INSERT INTO "HOSPITAL" VALUES (3,'新北市','國泰醫療財團法人汐止國泰綜合醫院','(02)26482121','3676','李先生','新北市汐止區建成路59巷2號');
INSERT INTO "HOSPITAL" VALUES (4,'新北市','佛教慈濟醫療財團法人台北慈濟醫院','(02)66289779','3520','馮小姐','新北市新店區建國路289號');
INSERT INTO "HOSPITAL" VALUES (5,'新北市','衛生福利部臺北醫院','(02)22765566','1128','張小姐','新北市新莊區思源路127號');
INSERT INTO "HOSPITAL" VALUES (6,'宜蘭縣','醫療財團法人羅許基金會羅東博愛醫院','(03)9543131','3315','游小姐','宜蘭縣羅東鎮南昌街83號');
INSERT INTO "HOSPITAL" VALUES (7,'宜蘭縣','天主教靈醫會醫療財團法人羅東聖母醫院','(03)9544106','8322','李先生','宜蘭縣羅東鎮中正南路160號');
INSERT INTO "HOSPITAL" VALUES (8,'宜蘭縣','國立陽明交通大學附設醫院','(03)9325192','71293','劉小姐','宜蘭市校舍路169號');
INSERT INTO "HOSPITAL" VALUES (9,'桃園市','長庚醫療財團法人林口長庚紀念醫院','(03)3281200','2171','張小姐','桃園市龜山區公西里復興街5號、5之7號');
INSERT INTO "HOSPITAL" VALUES (10,'桃園市','衛生福利部桃園醫院','(03)3699721','1225','林小姐','桃園市桃園區中山路1492號');
INSERT INTO "HOSPITAL" VALUES (11,'桃園市','敏盛綜合醫院','(03)3179599','8808','許先生','桃園市桃園區經國路168號');
INSERT INTO "HOSPITAL" VALUES (12,'新竹市','國立臺灣大學醫學院附設醫院新竹臺大分院新竹醫院','(03)5326151','52350','何小姐','新竹市北區金華里經國路一段442巷25號');
INSERT INTO "HOSPITAL" VALUES (13,'苗栗縣','大千綜合醫院','(037)357125','75200','邱先生','苗栗市恭敬路36號');
INSERT INTO "HOSPITAL" VALUES (14,'臺中市','中山醫學大學附設醫院','(04)36097852',NULL,'林小姐','臺中市南區建國北路一段110號');
INSERT INTO "HOSPITAL" VALUES (15,'臺中市','中國醫藥大學附設醫院','(04)22052121','12246','許先生','臺中市北區育德路二號');
INSERT INTO "HOSPITAL" VALUES (16,'臺中市','童綜合醫療社團法人童綜合醫院','(04)26626161','56235','江小姐','臺中市沙鹿區成功西街8號2樓(職能復健中心)');
INSERT INTO "HOSPITAL" VALUES (17,'臺中市','臺中榮民總醫院','(04)23592525','3688','王小姐','臺中市西屯區台灣大道四段1650號');
INSERT INTO "HOSPITAL" VALUES (18,'彰化縣','彰化基督教醫療財團法人彰化基督教醫院','(04)7238595','7424','簡小姐','彰化縣彰化市南校街135號');
INSERT INTO "HOSPITAL" VALUES (19,'南投縣','埔基醫療財團法人埔里基督教醫院','(049)2912151','4508','李小姐','南投縣埔里鎮鐵山路1號');
INSERT INTO "HOSPITAL" VALUES (20,'雲林縣','國立臺灣大學醫學院附設醫院雲林分院','(05)6330002','57432','廖先生','雲林縣斗六市雲林路2段579號雲林縣虎尾鎮學府路95號');
INSERT INTO "HOSPITAL" VALUES (21,'嘉義市','戴德森醫療財團法人嘉義基督教醫院','(05)2765041','3064','李小姐','嘉義市東區忠孝路539號');
INSERT INTO "HOSPITAL" VALUES (22,'嘉義市','臺中榮民總醫院嘉義分院','(05)2359630','2801','王先生','嘉義市西區劉厝里世賢路二段600號');
INSERT INTO "HOSPITAL" VALUES (23,'嘉義市','天主教中華聖母修女會醫療財團法人天主教聖馬爾定醫院','(05)2756000','3830','邱小姐','嘉義市東區大雅路二段565號');
INSERT INTO "HOSPITAL" VALUES (24,'臺南市','國立成功大學醫學院附設醫院','(06)2353535','3817','康小姐','臺南市勝利路138號(職能治療中心)');
INSERT INTO "HOSPITAL" VALUES (25,'臺南市','奇美醫療財團法人奇美醫院','(06)2812811','55030','張小姐','臺南市永康區中華路901號');
INSERT INTO "HOSPITAL" VALUES (26,'臺南市','奇美醫療財團法人柳營奇美醫院','(06)6226999','71098','邱小姐','臺南市柳營區太康里太康201號');
INSERT INTO "HOSPITAL" VALUES (27,'臺南市','臺南市立安南醫院(委託中國醫藥大學興建經營)','(06)3553111','2145','曾小姐','臺南市安南區長和路二段66號');
INSERT INTO "HOSPITAL" VALUES (28,'高雄市','長庚醫療財團法人高雄長庚紀念醫院','(07)7317123','8555','張先生','高雄市鳥松區大埤路123號');
INSERT INTO "HOSPITAL" VALUES (29,'高雄市','高雄榮民總醫院','(07)3422121','75152','朱小姐','高雄市左營區大中一路386號(職業醫學科)');
INSERT INTO "HOSPITAL" VALUES (30,'高雄市','財團法人私立高雄醫學大學附設中和紀念醫院','(07)3121101','5965','林小姐','高雄市三民區自由一路100號(復健科)');
INSERT INTO "HOSPITAL" VALUES (31,'高雄市','高雄市立小港醫院(委託財團法人私立高雄醫學大學經營)','(07)8036783','3530','林小姐','高雄市小港區山明里山明路482號B1之10樓');
INSERT INTO "HOSPITAL" VALUES (32,'高雄市','義大醫療財團法人義大醫院','(07)6150011','2350','陳先生','高雄市燕巢區義大路1號');
INSERT INTO "HOSPITAL" VALUES (33,'屏東縣','衛生福利部屏東醫院','(08)7363011','2019','陳小姐','屏東縣屏東市自由路270號');
INSERT INTO "HOSPITAL" VALUES (34,'澎湖縣','天主教靈醫會醫療財團法人惠民醫院','(06)9272318','130','方小姐','澎湖縣馬公市樹德路14號');
INSERT INTO "HOSPITAL" VALUES (35,'花蓮縣','佛教慈濟醫療財團法人花蓮慈濟醫院','(03)8561825','13281','洪先生','花蓮縣花蓮市中央路3段707號');
INSERT INTO "HOSPITAL" VALUES (36,'臺東縣','佛教慈濟醫療財團法人關山慈濟醫院','(089)814880','681','邁達爾小姐','台東縣關山鎮和平路125-5號');
COMMIT;
