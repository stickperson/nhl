-- MySQL dump 10.13  Distrib 5.6.10, for osx10.8 (x86_64)
--
-- Host: localhost    Database: nhl_salaries
-- ------------------------------------------------------
-- Server version	5.6.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_player`
--

DROP TABLE IF EXISTS `app_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `position` varchar(2) NOT NULL,
  `cap_hit` int(11) NOT NULL,
  `capgeek_id` varchar(5) NOT NULL,
  `team_id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_player_95e8aaa1` (`team_id`),
  CONSTRAINT `team_id_refs_id_5933d0ac` FOREIGN KEY (`team_id`) REFERENCES `app_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_player`
--

LOCK TABLES `app_player` WRITE;
/*!40000 ALTER TABLE `app_player` DISABLE KEYS */;
INSERT INTO `app_player` VALUES (1,' Alex','Ovechkin','RW',9538462,'847',1,' Alex Ovechkin'),(2,' Nicklas','Backstrom','C',6700000,'844',1,' Nicklas Backstrom'),(3,' Mike','Green','D',6083333,'853',1,' Mike Green'),(4,' Brooks','Laich','LW',4500000,'845',1,' Brooks Laich'),(5,' Martin','Erat','RW',4500000,'1043',1,' Martin Erat'),(6,' John','Carlson','D',3966667,'1248',1,' John Carlson'),(7,' Troy','Brouwer','LW',3666667,'255',1,' Troy Brouwer'),(8,' Mikhail','Grabovski','C',3000000,'178',1,' Mikhail Grabovski'),(9,' Joel','Ward','RW',3000000,'1046',1,' Joel Ward'),(10,' Karl','Alzner','D',2800000,'865',1,' Karl Alzner'),(11,' Michal','Neuvirth','G',2500000,'876',1,' Michal Neuvirth'),(12,' Marcus','Johansson','C',2000000,'1748',1,' Marcus Johansson'),(13,' John','Erskine','D',1962500,'863',1,' John Erskine'),(14,' Braden','Holtby','G',1850000,'1253',1,' Braden Holtby'),(15,' Jason','Chimera','LW',1750000,'596',1,' Jason Chimera'),(16,' Eric','Fehr','RW',1500000,'859',1,' Eric Fehr'),(17,' Jay','Beagle','C',900000,'878',1,' Jay Beagle'),(18,' Tom','Wilson','RW',894167,'2335',1,' Tom Wilson'),(19,' Jack','Hillen','D',700000,'1095',1,' Jack Hillen'),(20,' Aaron','Volpatti','LW',575000,'1650',1,' Aaron Volpatti'),(21,' Dmitry','Orlov','D',690000,'1916',1,' Dmitry Orlov'),(22,' Connor','Carrick','D',636667,'2586',1,' Connor Carrick'),(23,' Tyson','Strachan','D',550000,'985',1,' Tyson Strachan'),(24,' Casey','Wellman','C',550000,'1631',1,' Casey Wellman'),(25,' Patrick','Kane','RW',6300000,'245',2,' Patrick Kane'),(26,' Jonathan','Toews','C',6300000,'246',2,' Jonathan Toews'),(27,' Patrick','Sharp','LW',5900000,'251',2,' Patrick Sharp'),(28,' Brent','Seabrook','D',5800000,'256',2,' Brent Seabrook'),(29,' Duncan','Keith','D',5538462,'252',2,' Duncan Keith'),(30,' Marian','Hossa','RW',5275000,'291',2,' Marian Hossa'),(31,' Bryan','Bickell','LW',4000000,'1482',2,' Bryan Bickell'),(32,' Niklas','Hjalmarsson','D',3500000,'263',2,' Niklas Hjalmarsson'),(33,' Johnny','Oduya','D',3383333,'782',2,' Johnny Oduya'),(34,' Nick','Leddy','D',2700000,'1830',2,' Nick Leddy'),(35,' Corey','Crawford','G',2666667,'273',2,' Corey Crawford'),(36,' Michal','Rozsival','D',2200000,'629',2,' Michal Rozsival'),(37,' Nikolai','Khabibulin','G',1700000,'265',2,' Nikolai Khabibulin'),(38,' Kris','Versteeg','RW',2200000,'247',2,' Kris Versteeg'),(39,' Marcus','Kruger','C',1325000,'1800',2,' Marcus Kruger'),(40,' Sheldon','Brookbank','D',1250000,'330',2,' Sheldon Brookbank'),(41,' Michal','Handzus','C',1000000,'1006',2,' Michal Handzus'),(42,' Brandon','Saad','LW',764167,'2125',2,' Brandon Saad'),(43,' Antti','Raanta','G',925000,'2521',2,' Antti Raanta'),(44,' Mike','Kostka','D',625000,'1433',2,' Mike Kostka'),(45,' Andrew','Shaw','C',577500,'2153',2,' Andrew Shaw'),(46,' Brandon','Bollig','LW',575000,'1674',2,' Brandon Bollig'),(47,' Ben','Smith','RW',562500,'1697',2,' Ben Smith'),(48,' Brandon','Pirri','C',618333,'1869',2,' Brandon Pirri'),(49,' Evgeni','Malkin','C',8700000,'475',3,' Evgeni Malkin'),(50,' Sidney','Crosby','C',8700000,'476',3,' Sidney Crosby'),(51,' Marc-Andre','Fleury','G',5000000,'506',3,' Marc-Andre Fleury'),(52,' James','Neal','RW',5000000,'693',3,' James Neal'),(53,' Paul','Martin','D',5000000,'779',3,' Paul Martin'),(54,' Pascal','Dupuis','RW',3750000,'485',3,' Pascal Dupuis'),(55,' Brooks','Orpik','D',3750000,'489',3,' Brooks Orpik'),(56,' Chris','Kunitz','LW',3725000,'490',3,' Chris Kunitz'),(57,' Kris','Letang','D',3500000,'482',3,' Kris Letang'),(58,' Rob','Scuderi','D',3375000,'491',3,' Rob Scuderi'),(59,' Matt','Niskanen','D',2300000,'694',3,' Matt Niskanen'),(60,' Jussi','Jokinen','LW',2100000,'533',3,' Jussi Jokinen'),(61,' Brandon','Sutter','C',2066667,'536',3,' Brandon Sutter'),(62,' Tomas','Vokoun','G',2000000,'837',3,' Tomas Vokoun'),(63,' Tanner','Glass','LW',1100000,'841',3,' Tanner Glass'),(64,' Beau','Bennett','LW',900000,'2236',3,' Beau Bennett'),(65,' Olli','Maatta','D',894167,'2365',3,' Olli Maatta'),(66,' Taylor','Pyatt','LW',1550000,'673',3,' Taylor Pyatt'),(67,' Jayson','Megna','C',925000,'2366',3,' Jayson Megna'),(68,' Craig','Adams','C',700000,'504',3,' Craig Adams'),(69,' Robert','Bortuzzo','D',600000,'1216',3,' Robert Bortuzzo'),(70,' Deryk','Engelland','D',566667,'1359',3,' Deryk Engelland'),(71,' Joe','Vitale','C',550000,'515',3,' Joe Vitale'),(72,' Chuck','Kobasew','RW',550000,'219',3,' Chuck Kobasew'),(73,' Jeff','Zatkoff','G',537500,'1037',3,' Jeff Zatkoff'),(74,' Chris','Conner','RW',550000,'701',3,' Chris Conner'),(75,' Andrew','Ebbett','C',550000,'317',3,' Andrew Ebbett'),(76,' Brian','Gibbons','C',550000,'1967',3,' Brian Gibbons'),(77,' Dion','Phaneuf','D',6500000,'442',4,' Dion Phaneuf'),(78,' Phil','Kessel','RW',5400000,'214',4,' Phil Kessel'),(79,' Joffrey','Lupul','LW',5250000,'744',4,' Joffrey Lupul'),(80,' David','Clarkson','RW',5250000,'780',4,' David Clarkson'),(81,' James','Van Riemsdyk','LW',4250000,'803',4,' James Van Riemsdyk'),(82,' Tyler','Bozak','C',4200000,'739',4,' Tyler Bozak'),(83,' Dave','Bolland','C',3375000,'250',4,' Dave Bolland'),(84,' Carl','Gunnarsson','D',3150000,'1212',4,' Carl Gunnarsson'),(85,' Jonathan','Bernier','G',2900000,'1032',4,' Jonathan Bernier'),(86,' Nazem','Kadri','C',2900000,'1295',4,' Nazem Kadri'),(87,' Nikolai','Kulemin','RW',2800000,'181',4,' Nikolai Kulemin'),(88,' Tim','Gleason','D',4000000,'532',4,' Tim Gleason'),(89,' Cody','Franson','D',2000000,'1071',4,' Cody Franson'),(90,' James','Reimer','G',1800000,'1247',4,' James Reimer'),(91,' Jay','McClement','C',1500000,'968',4,' Jay McClement'),(92,' Mason','Raymond','LW',1000000,'670',4,' Mason Raymond'),(93,' Paul','Ranger','D',1000000,'894',4,' Paul Ranger'),(94,' Colton','Orr','RW',925000,'641',4,' Colton Orr'),(95,' Morgan','Rielly','D',894167,'2346',4,' Morgan Rielly'),(96,' Jake','Gardiner','D',875000,'1930',4,' Jake Gardiner'),(97,' Frazer','McLaren','LW',700000,'160',4,' Frazer McLaren'),(98,' Carter','Ashton','RW',840000,'1590',4,' Carter Ashton'),(99,' Peter','Holland','C',870000,'1672',4,' Peter Holland'),(100,' Trevor','Smith','C',550000,'1104',4,' Trevor Smith'),(101,' Troy','Bodie','LW',600000,'336',4,' Troy Bodie'),(102,' Greg','McKegg','C',660000,'1972',4,' Greg McKegg'),(103,' Pavel','Datsyuk','C',6700000,'280',5,' Pavel Datsyuk'),(104,' Henrik','Zetterberg','LW',6083333,'281',5,' Henrik Zetterberg'),(105,' Jimmy','Howard','G',5291667,'310',5,' Jimmy Howard'),(106,' Stephen','Weiss','C',4900000,'812',5,' Stephen Weiss'),(107,' Niklas','Kronwall','D',4750000,'300',5,' Niklas Kronwall'),(108,' Johan','Franzen','LW',3954545,'292',5,' Johan Franzen'),(109,' Kyle','Quincey','D',3775000,'1008',5,' Kyle Quincey'),(110,' Daniel','Alfredsson','RW',3500000,'408',5,' Daniel Alfredsson'),(111,' Jonathan','Ericsson','D',3250000,'306',5,' Jonathan Ericsson'),(112,' Jakub','Kindl','D',2400000,'307',5,' Jakub Kindl'),(113,' Darren','Helm','C',2125000,'284',5,' Darren Helm'),(114,' Todd','Bertuzzi','RW',2075000,'443',5,' Todd Bertuzzi'),(115,' Justin','Abdelkader','RW',1800000,'285',5,' Justin Abdelkader'),(116,' Danny','Cleary','LW',1750000,'288',5,' Danny Cleary'),(117,' Jonas','Gustavsson','G',1500000,'1284',5,' Jonas Gustavsson'),(118,' Drew','Miller','LW',1350000,'322',5,' Drew Miller'),(119,' Brendan','Smith','D',1262500,'1767',5,' Brendan Smith'),(120,' Patrick','Eaves','RW',1200000,'530',5,' Patrick Eaves'),(121,' Danny','DeKeyser','D',925000,'2415',5,' Danny DeKeyser'),(122,' Joakim','Andersson','C',732500,'1702',5,' Joakim Andersson'),(123,' Brian','Lashoff','D',725000,'1224',5,' Brian Lashoff'),(124,' Gustav','Nyquist','LW',950000,'1949',5,' Gustav Nyquist'),(125,' Tomas','Tatar','RW',630000,'1578',5,' Tomas Tatar'),(126,' Riley','Sheahan','LW',785000,'2224',5,' Riley Sheahan'),(127,' Luke','Glendening','C',575000,'2549',5,' Luke Glendening'),(128,' Tomas','Jurco','RW',709167,'2344',5,' Tomas Jurco'),(129,' Joe','Thornton','C',7000000,'103',6,' Joe Thornton'),(130,' Patrick','Marleau','LW',6900000,'126',6,' Patrick Marleau'),(131,' Dan','Boyle','D',6666667,'116',6,' Dan Boyle'),(132,' Brent','Burns','RW',5760000,'933',6,' Brent Burns'),(133,' Martin','Havlat','RW',5000000,'244',6,' Martin Havlat'),(134,' Marc-Edouard','Vlasic','D',4250000,'135',6,' Marc-Edouard Vlasic'),(135,' Joe','Pavelski','C',4000000,'138',6,' Joe Pavelski'),(136,' Antti','Niemi','G',3800000,'269',6,' Antti Niemi'),(137,' Brad','Stuart','D',3600000,'301',6,' Brad Stuart'),(138,' Logan','Couture','C',2875000,'142',6,' Logan Couture'),(139,' Tyler','Kennedy','RW',2350000,'481',6,' Tyler Kennedy'),(140,' Raffi','Torres','LW',2000000,'600',6,' Raffi Torres'),(141,' Adam','Burish','C',1850000,'260',6,' Adam Burish'),(142,' Jason','Demers','D',1500000,'155',6,' Jason Demers'),(143,' Justin','Braun','D',1250000,'1661',6,' Justin Braun'),(144,' Scott','Hannan','D',1000000,'568',6,' Scott Hannan'),(145,' Matt','Irwin','D',1000000,'1648',6,' Matt Irwin'),(146,' Tomas','Hertl','C',925000,'2505',6,' Tomas Hertl'),(147,' James','Sheppard','C',830000,'934',6,' James Sheppard'),(148,' Tommy','Wingels','C',775000,'1774',6,' Tommy Wingels'),(149,' Andrew','Desjardins','C',750000,'1620',6,' Andrew Desjardins'),(150,' Matt','Nieto','LW',759167,'2420',6,' Matt Nieto'),(151,' Mike','Brown','RW',736667,'331',6,' Mike Brown'),(152,' Alex','Stalock','G',625000,'171',6,' Alex Stalock'),(153,' Eriah','Hayes','RW',655000,'2433',6,' Eriah Hayes'),(154,' Bracken','Kearns','C',550000,'1813',6,' Bracken Kearns'),(155,' Tuukka','Rask','G',7000000,'237',7,' Tuukka Rask'),(156,' Zdeno','Chara','D',6916667,'216',7,' Zdeno Chara'),(157,' Milan','Lucic','LW',6000000,'220',7,' Milan Lucic'),(158,' David','Krejci','C',5250000,'213',7,' David Krejci'),(159,' Patrice','Bergeron','C',5000000,'221',7,' Patrice Bergeron'),(160,' Brad','Marchand','LW',4500000,'241',7,' Brad Marchand'),(161,' Loui','Eriksson','LW',4250000,'689',7,' Loui Eriksson'),(162,' Marc','Savard','C',4027143,'212',7,' Marc Savard'),(163,' Johnny','Boychuk','D',3366667,'239',7,' Johnny Boychuk'),(164,' Dennis','Seidenberg','D',3250000,'527',7,' Dennis Seidenberg'),(165,' Chris','Kelly','C',3000000,'414',7,' Chris Kelly'),(166,' Jarome','Iginla','RW',1800000,'438',7,' Jarome Iginla'),(167,' Gregory','Campbell','C',1600000,'822',7,' Gregory Campbell'),(168,' Adam','McQuaid','D',1566667,'243',7,' Adam McQuaid'),(169,' Daniel','Paille','LW',1300000,'384',7,' Daniel Paille'),(170,' Shawn','Thornton','RW',1100000,'230',7,' Shawn Thornton'),(171,' Carl','Soderberg','LW',1008333,'2455',7,' Carl Soderberg'),(172,' Torey','Krug','D',916667,'2188',7,' Torey Krug'),(173,' Reilly','Smith','RW',900000,'2231',7,' Reilly Smith'),(174,' Dougie','Hamilton','D',894167,'2143',7,' Dougie Hamilton'),(175,' Matt','Bartkowski','D',650000,'1715',7,' Matt Bartkowski'),(176,' Jordan','Caron','RW',640000,'1680',7,' Jordan Caron'),(177,' Chad','Johnson','G',600000,'1530',7,' Chad Johnson'),(178,' Kevan','Miller','D',550000,'2135',7,' Kevan Miller'),(179,' Kimmo','Timonen','D',6000000,'746',8,' Kimmo Timonen'),(180,' Mark','Streit','D',5250000,'1076',8,' Mark Streit'),(181,' Chris','Pronger','D',4941429,'316',8,' Chris Pronger'),(182,' Scott','Hartnell','LW',4750000,'743',8,' Scott Hartnell'),(183,' Braydon','Coburn','D',4500000,'747',8,' Braydon Coburn'),(184,' Vincent','Lecavalier','C',4500000,'884',8,' Vincent Lecavalier'),(185,' Jakub','Voracek','RW',4250000,'589',8,' Jakub Voracek'),(186,' Andrej','Meszaros','D',4000000,'891',8,' Andrej Meszaros'),(187,' Wayne','Simmonds','RW',3975000,'1011',8,' Wayne Simmonds'),(188,' Claude','Giroux','C',3750000,'748',8,' Claude Giroux'),(189,' Luke','Schenn','D',3600000,'187',8,' Luke Schenn'),(190,' Nicklas','Grossmann','D',3500000,'703',8,' Nicklas Grossmann'),(191,' Steve','Downie','RW',2650000,'899',8,' Steve Downie'),(192,' Ray','Emery','G',1650000,'1157',8,' Ray Emery'),(193,' Steve','Mason','G',1500000,'622',8,' Steve Mason'),(194,' Erik','Gustafsson','D',1000000,'1669',8,' Erik Gustafsson'),(195,' Sean','Couturier','C',925000,'2115',8,' Sean Couturier'),(196,' Matt','Read','RW',900000,'1942',8,' Matt Read'),(197,' Brayden','Schenn','C',870000,'1624',8,' Brayden Schenn'),(198,' Zac','Rinaldo','C',750000,'1559',8,' Zac Rinaldo'),(199,' Michael','Raffl','LW',792500,'2519',8,' Michael Raffl'),(200,' Hal','Gill','D',700000,'493',8,' Hal Gill'),(201,' Jay','Rosehill','LW',675000,'1275',8,' Jay Rosehill'),(202,' Adam','Hall','C',600000,'895',8,' Adam Hall'),(203,' Steven','Stamkos','C',7500000,'885',9,' Steven Stamkos'),(204,' Martin','St. Louis','RW',5625000,'883',9,' Martin St. Louis'),(205,' Matt','Carle','D',5500000,'750',9,' Matt Carle'),(206,' Valtteri','Filppula','LW',5000000,'282',9,' Valtteri Filppula'),(207,' Ryan','Malone','LW',4500000,'886',9,' Ryan Malone'),(208,' Teddy','Purcell','RW',4500000,'1012',9,' Teddy Purcell'),(209,' Victor','Hedman','D',4000000,'1307',9,' Victor Hedman'),(210,' Eric','Brewer','D',3875000,'979',9,' Eric Brewer'),(211,' Sami','Salo','D',3750000,'669',9,' Sami Salo'),(212,' Mattias','Ohlund','D',3607143,'668',9,' Mattias Ohlund'),(213,' Ben','Bishop','G',2300000,'996',9,' Ben Bishop'),(214,' Anders','Lindback','G',1800000,'1757',9,' Anders Lindback'),(215,' Nate','Thompson','C',1600000,'1097',9,' Nate Thompson'),(216,' Brian','Lee','D',1150000,'422',9,' Brian Lee'),(217,' B.J.','Crombeen','RW',1150000,'973',9,' B.J. Crombeen'),(218,' Radko','Gudas','D',991667,'1865',9,' Radko Gudas'),(219,' Keith','Aulie','D',975000,'474',9,' Keith Aulie'),(220,' Alexander','Killorn','C',875000,'2184',9,' Alexander Killorn'),(221,' Tyler','Johnson','C',756667,'1920',9,' Tyler Johnson'),(222,' J.T.','Brown','RW',874125,'2209',9,' J.T. Brown'),(223,' Mark','Barberio','D',605000,'1773',9,' Mark Barberio'),(224,' Tom','Pyatt','LW',600000,'1259',9,' Tom Pyatt'),(225,' Ondrej','Palat','LW',579167,'2142',9,' Ondrej Palat'),(226,' Nikita','Kucherov','RW',711667,'2364',9,' Nikita Kucherov'),(227,' Jean-Philippe','Cote','D',550000,'2716',9,' Jean-Philippe Cote'),(228,' Cedrick','Desjardins','G',650000,'107',9,' Cedrick Desjardins'),(229,' Daniel','Sedin','LW',6100000,'658',10,' Daniel Sedin'),(230,' Henrik','Sedin','C',6100000,'659',10,' Henrik Sedin'),(231,' Roberto','Luongo','G',5333333,'683',10,' Roberto Luongo'),(232,' Ryan','Kesler','C',5000000,'660',10,' Ryan Kesler'),(233,' Alexander','Edler','D',5000000,'664',10,' Alexander Edler'),(234,' Kevin','Bieksa','D',4600000,'663',10,' Kevin Bieksa'),(235,' Jason','Garrison','D',4600000,'839',10,' Jason Garrison'),(236,' Alexandre','Burrows','RW',4500000,'662',10,' Alexandre Burrows'),(237,' Dan','Hamhuis','D',4500000,'1048',10,' Dan Hamhuis'),(238,' David','Booth','LW',4250000,'813',10,' David Booth'),(239,' Chris','Higgins','LW',2500000,'73',10,' Chris Higgins'),(240,' Chris','Tanev','D',1500000,'1775',10,' Chris Tanev'),(241,' Jannik','Hansen','RW',1350000,'672',10,' Jannik Hansen'),(242,' Brad','Richardson','RW',1150000,'1021',10,' Brad Richardson'),(243,' Zack','Kassian','RW',870000,'1895',10,' Zack Kassian'),(244,' Tom','Sestito','LW',750000,'723',10,' Tom Sestito'),(245,' Eddie','Lack','G',750000,'1692',10,' Eddie Lack'),(246,' Andrew','Alberts','D',600000,'752',10,' Andrew Alberts'),(247,' Jordan','Schroeder','C',600000,'1645',10,' Jordan Schroeder'),(248,' Yannick','Weber','D',650000,'91',10,' Yannick Weber'),(249,' Mike','Santorelli','C',550000,'1066',10,' Mike Santorelli'),(250,' Ryan','Stanton','D',550000,'1625',10,' Ryan Stanton'),(251,' Zac','Dalpe','C',550000,'1635',10,' Zac Dalpe'),(252,' Raphael','Diaz','D',1225000,'2019',10,' Raphael Diaz'),(253,' Kellan','Lain','C',600000,'2400',10,' Kellan Lain'),(254,' Frank','Corrado','D',591111,'2117',10,' Frank Corrado'),(255,' Marian','Gaborik','RW',7500000,'936',11,' Marian Gaborik'),(256,' Sergei','Bobrovsky','G',5625000,'1730',11,' Sergei Bobrovsky'),(257,' James','Wisniewski','D',5500000,'320',11,' James Wisniewski'),(258,' Nathan','Horton','RW',5300000,'815',11,' Nathan Horton'),(259,' R.J.','Umberger','LW',4600000,'588',11,' R.J. Umberger'),(260,' Fedor','Tyutin','D',4500000,'591',11,' Fedor Tyutin'),(261,' Jack','Johnson','D',4357143,'1017',11,' Jack Johnson'),(262,' Brandon','Dubinsky','LW',4200000,'627',11,' Brandon Dubinsky'),(263,' Artem','Anisimov','C',3283333,'645',11,' Artem Anisimov'),(264,' Nick','Foligno','LW',3083333,'412',11,' Nick Foligno'),(265,' Nikita','Nikitin','D',2150000,'1794',11,' Nikita Nikitin'),(266,' Mark','Letestu','C',1250000,'1357',11,' Mark Letestu'),(267,' Cam','Atkinson','RW',1150000,'1954',11,' Cam Atkinson'),(268,' Jared','Boll','RW',1050000,'602',11,' Jared Boll'),(269,' Derek','MacKenzie','C',1000000,'616',11,' Derek MacKenzie'),(270,' Blake','Comeau','LW',1000000,'1083',11,' Blake Comeau'),(271,' Matt','Calvert','LW',987500,'1637',11,' Matt Calvert'),(272,' Ryan','Murray','D',894167,'2340',11,' Ryan Murray'),(273,' Ryan','Johansen','C',870000,'1873',11,' Ryan Johansen'),(274,' Boone','Jenner','C',778333,'2201',11,' Boone Jenner'),(275,' David','Savard','D',709275,'1791',11,' David Savard'),(276,' Curtis','McElhinney','G',600000,'469',11,' Curtis McElhinney'),(277,' Tim','Erixon','D',900000,'2058',11,' Tim Erixon'),(278,' Corey','Tropp','RW',577500,'1812',11,' Corey Tropp'),(279,' Ryan','Craig','C',600000,'900',11,' Ryan Craig'),(280,' Cody','Goloubef','D',826875,'1718',11,' Cody Goloubef'),(281,' Eric','Staal','C',8250000,'518',12,' Eric Staal'),(282,' Alexander','Semin','RW',7000000,'858',12,' Alexander Semin'),(283,' Cam','Ward','G',6300000,'544',12,' Cam Ward'),(284,' Jordan','Staal','C',6000000,'477',12,' Jordan Staal'),(285,' Jeff','Skinner','LW',5725000,'1881',12,' Jeff Skinner'),(286,' Tuomo','Ruutu','C',4750000,'519',12,' Tuomo Ruutu'),(287,' Joni','Pitkanen','D',4500000,'525',12,' Joni Pitkanen'),(288,' Andrej','Sekera','D',2750000,'389',12,' Andrej Sekera'),(289,' John-Michael','Liles','D',3875000,'553',12,' John-Michael Liles'),(290,' Ron','Hainsey','D',2000000,'344',12,' Ron Hainsey'),(291,' Jiri','Tlusty','RW',1600000,'194',12,' Jiri Tlusty'),(292,' Jay','Harrison','D',1500000,'201',12,' Jay Harrison'),(293,' Patrick','Dwyer','RW',900000,'541',12,' Patrick Dwyer'),(294,' Justin','Faulk','D',840000,'1992',12,' Justin Faulk'),(295,' Anton','Khudobin','G',800000,'956',12,' Anton Khudobin'),(296,' Elias','Lindholm','C',925000,'2547',12,' Elias Lindholm'),(297,' Mike','Komisarek','D',700000,'72',12,' Mike Komisarek'),(298,' Drayson','Bowman','LW',600000,'649',12,' Drayson Bowman'),(299,' Brett','Bellemore','D',600000,'1472',12,' Brett Bellemore'),(300,' Radek','Dvorak','RW',600000,'819',12,' Radek Dvorak'),(301,' Riley','Nash','C',575000,'1828',12,' Riley Nash'),(302,' Nathan','Gerbe','LW',550000,'398',12,' Nathan Gerbe'),(303,' Manny','Malhotra','C',600000,'590',12,' Manny Malhotra'),(304,' Justin','Peters','G',537500,'651',12,' Justin Peters'),(305,' Drew','Doughty','D',7000000,'1010',13,' Drew Doughty'),(306,' Anze','Kopitar','C',6800000,'1003',13,' Anze Kopitar'),(307,' Jonathan','Quick','G',5800000,'1029',13,' Jonathan Quick'),(308,' Mike','Richards','C',5750000,'741',13,' Mike Richards'),(309,' Jeff','Carter','C',5272727,'740',13,' Jeff Carter'),(310,' Slava','Voynov','D',4166667,'1035',13,' Slava Voynov'),(311,' Justin','Williams','RW',3650000,'1023',13,' Justin Williams'),(312,' Willie','Mitchell','D',3500000,'671',13,' Willie Mitchell'),(313,' Jarret','Stoll','C',3250000,'1007',13,' Jarret Stoll'),(314,' Dustin','Brown','RW',3175000,'1005',13,' Dustin Brown'),(315,' Robyn','Regehr','D',3000000,'455',13,' Robyn Regehr'),(316,' Matt','Greene','D',2950000,'1014',13,' Matt Greene'),(317,' Trevor','Lewis','C',1325000,'1024',13,' Trevor Lewis'),(318,' Alec','Martinez','D',1100000,'1374',13,' Alec Martinez'),(319,' Kyle','Clifford','LW',1075000,'1579',13,' Kyle Clifford'),(320,' Jake','Muzzin','D',1000000,'1605',13,' Jake Muzzin'),(321,' Colin','Fraser','C',825000,'257',13,' Colin Fraser'),(322,' Dwight','King','LW',750000,'1375',13,' Dwight King'),(323,' Jordan','Nolan','C',700000,'1893',13,' Jordan Nolan'),(324,' Tyler','Toffoli','C',716667,'1997',13,' Tyler Toffoli'),(325,' Matt','Frattin','RW',437500,'1975',13,' Matt Frattin'),(326,' Martin','Jones','G',550000,'1038',13,' Martin Jones'),(327,' Jeff','Schultz','D',700000,'855',13,' Jeff Schultz'),(328,' Tobias','Enstrom','D',5750000,'346',14,' Tobias Enstrom'),(329,' Blake','Wheeler','RW',5600000,'218',14,' Blake Wheeler'),(330,' Evander','Kane','LW',5250000,'1536',14,' Evander Kane'),(331,' Dustin','Byfuglien','D',5200000,'254',14,' Dustin Byfuglien'),(332,' Zach','Bogosian','D',5142857,'349',14,' Zach Bogosian'),(333,' Bryan','Little','C',4700000,'342',14,' Bryan Little'),(334,' Olli','Jokinen','C',4500000,'452',14,' Olli Jokinen'),(335,' Andrew','Ladd','LW',4400000,'249',14,' Andrew Ladd'),(336,' Ondrej','Pavelec','G',3900000,'365',14,' Ondrej Pavelec'),(337,' Devin','Setoguchi','RW',3000000,'133',14,' Devin Setoguchi'),(338,' Michael','Frolik','RW',2333333,'816',14,' Michael Frolik'),(339,' Grant','Clitsome','D',2066667,'725',14,' Grant Clitsome'),(340,' Mark','Stuart','D',1700000,'225',14,' Mark Stuart'),(341,' Jim','Slater','C',1600000,'350',14,' Jim Slater'),(342,' Jacob','Trouba','D',894167,'2430',14,' Jacob Trouba'),(343,' Chris','Thorburn','RW',866667,'351',14,' Chris Thorburn'),(344,' Mark','Scheifele','C',863333,'2123',14,' Mark Scheifele'),(345,' Paul','Postma','D',712500,'372',14,' Paul Postma'),(346,' Eric','Tangradi','LW',675000,'367',14,' Eric Tangradi'),(347,' Matt','Halischuk','RW',650000,'795',14,' Matt Halischuk'),(348,' James','Wright','C',650000,'1583',14,' James Wright'),(349,' Keaton','Ellerby','D',735000,'842',14,' Keaton Ellerby'),(350,' Al','Montoya','G',601000,'1147',14,' Al Montoya'),(351,' Anthony','Peluso','RW',562500,'1443',14,' Anthony Peluso'),(352,' Adam','Pardy','D',600000,'454',14,' Adam Pardy'),(353,' Zach','Redmond','D',715000,'1973',14,' Zach Redmond'),(354,' Eric','O\'Dell','C',630000,'1785',14,' Eric O\'Dell'),(355,' Jay','Bouwmeester','D',6680000,'817',15,' Jay Bouwmeester'),(356,' Alex','Pietrangelo','D',6500000,'989',15,' Alex Pietrangelo'),(357,' David','Backes','C',4500000,'961',15,' David Backes'),(358,' Kevin','Shattenkirk','D',4250000,'1705',15,' Kevin Shattenkirk'),(359,' T.J.','Oshie','C',4175000,'966',15,' T.J. Oshie'),(360,' Chris','Stewart','RW',4150000,'560',15,' Chris Stewart'),(361,' Derek','Roy','C',4000000,'375',15,' Derek Roy'),(362,' Jaroslav','Halak','G',3750000,'80',15,' Jaroslav Halak'),(363,' Alexander','Steen','LW',3362500,'969',15,' Alexander Steen'),(364,' Patrik','Berglund','C',3250000,'964',15,' Patrik Berglund'),(365,' Barret','Jackman','D',3166667,'971',15,' Barret Jackman'),(366,' Roman','Polak','D',2750000,'975',15,' Roman Polak'),(367,' Jordan','Leopold','D',2250000,'457',15,' Jordan Leopold'),(368,' Brian','Elliott','G',1800000,'435',15,' Brian Elliott'),(369,' Brenden','Morrow','LW',1500000,'699',15,' Brenden Morrow'),(370,' Vladimir','Sobotka','C',1300000,'233',15,' Vladimir Sobotka'),(371,' Magnus','Paajarvi','LW',1200000,'1787',15,' Magnus Paajarvi'),(372,' Maxim','Lapierre','C',1100000,'85',15,' Maxim Lapierre'),(373,' Vladimir','Tarasenko','RW',900000,'2314',15,' Vladimir Tarasenko'),(374,' Jaden','Schwartz','LW',830000,'2169',15,' Jaden Schwartz'),(375,' Ian','Cole','D',825000,'1653',15,' Ian Cole'),(376,' Ryan','Reaves','RW',600000,'1439',15,' Ryan Reaves'),(377,' Carlo','Colaiacovo','D',550000,'967',15,' Carlo Colaiacovo'),(378,' Zach','Parise','LW',7538462,'773',16,' Zach Parise'),(379,' Ryan','Suter','D',7538462,'1044',16,' Ryan Suter'),(380,' Dany','Heatley','LW',7500000,'410',16,' Dany Heatley'),(381,' Mikko','Koivu','C',6750000,'925',16,' Mikko Koivu'),(382,' Jason','Pominville','RW',4505000,'376',16,' Jason Pominville'),(383,' Niklas','Backstrom','G',3416667,'952',16,' Niklas Backstrom'),(384,' Kyle','Brodziak','C',2833333,'29',16,' Kyle Brodziak'),(385,' Jared','Spurgeon','D',2666667,'1882',16,' Jared Spurgeon'),(386,' Matt','Cooke','LW',2500000,'483',16,' Matt Cooke'),(387,' Torrey','Mitchell','C',1900000,'129',16,' Torrey Mitchell'),(388,' Josh','Harding','G',1900000,'951',16,' Josh Harding'),(389,' Mike','Rupp','RW',1500000,'790',16,' Mike Rupp'),(390,' Keith','Ballard','D',1500000,'820',16,' Keith Ballard'),(391,' Clayton','Stoner','D',1050000,'957',16,' Clayton Stoner'),(392,' Marco','Scandella','D',1025000,'1193',16,' Marco Scandella'),(393,' Charlie','Coyle','C',900000,'2158',16,' Charlie Coyle'),(394,' Mikael','Granlund','C',900000,'2261',16,' Mikael Granlund'),(395,' Jonas','Brodin','D',894167,'2089',16,' Jonas Brodin'),(396,' Nino','Niederreiter','RW',870000,'1887',16,' Nino Niederreiter'),(397,' Nate','Prosser','D',825000,'1636',16,' Nate Prosser'),(398,' Justin','Fontaine','RW',600000,'1994',16,' Justin Fontaine'),(399,' Erik','Haula','LW',900000,'2452',16,' Erik Haula'),(400,' Jason','Zucker','LW',771667,'2219',16,' Jason Zucker'),(401,' Darcy','Kuemper','G',776667,'2039',16,' Darcy Kuemper'),(402,' Stephane','Veilleux','LW',587500,'937',16,' Stephane Veilleux'),(403,' Corey','Perry','RW',8625000,'312',17,' Corey Perry'),(404,' Ryan','Getzlaf','C',8250000,'311',17,' Ryan Getzlaf'),(405,' Jonas','Hiller','G',4500000,'337',17,' Jonas Hiller'),(406,' Cam','Fowler','D',4000000,'1832',17,' Cam Fowler'),(407,' Sheldon','Souray','D',3666667,'21',17,' Sheldon Souray'),(408,' Francois','Beauchemin','D',3500000,'328',17,' Francois Beauchemin'),(409,' Bryan','Allen','D',3500000,'835',17,' Bryan Allen'),(410,' Viktor','Fasth','G',2900000,'2260',17,' Viktor Fasth'),(411,' Saku','Koivu','C',2500000,'13',17,' Saku Koivu'),(412,' Andrew','Cogliano','C',2390000,'25',17,' Andrew Cogliano'),(413,' Luca','Sbisa','D',2175000,'755',17,' Luca Sbisa'),(414,' Dustin','Penner','LW',2000000,'10',17,' Dustin Penner'),(415,' Teemu','Selanne','RW',2000000,'315',17,' Teemu Selanne'),(416,' Daniel','Winnik','LW',1800000,'1135',17,' Daniel Winnik'),(417,' Kyle','Palmieri','RW',1466667,'1863',17,' Kyle Palmieri'),(418,' Matt','Beleskey','LW',1350000,'335',17,' Matt Beleskey'),(419,' Ben','Lovejoy','D',1100000,'508',17,' Ben Lovejoy'),(420,' Mathieu','Perreault','C',1050000,'1203',17,' Mathieu Perreault'),(421,' Mark','Fistric','D',900000,'713',17,' Mark Fistric'),(422,' Hampus','Lindholm','D',894167,'2331',17,' Hampus Lindholm'),(423,' Jakob','Silfverberg','RW',863333,'2063',17,' Jakob Silfverberg'),(424,' Frederik','Andersen','G',925000,'2326',17,' Frederik Andersen'),(425,' Nick','Bonino','C',700000,'1642',17,' Nick Bonino'),(426,' Patrick','Maroon','LW',575000,'808',17,' Patrick Maroon'),(427,' Tim','Jackman','RW',612500,'1089',17,' Tim Jackman'),(428,' David','Steckel','C',550000,'849',17,' David Steckel'),(429,' Carey','Price','G',6500000,'81',18,' Carey Price'),(430,' Andrei','Markov','D',5750000,'78',18,' Andrei Markov'),(431,' Tomas','Plekanec','C',5000000,'74',18,' Tomas Plekanec'),(432,' Brian','Gionta','RW',5000000,'777',18,' Brian Gionta'),(433,' Max','Pacioretty','LW',4500000,'95',18,' Max Pacioretty'),(434,' Daniel','Briere','C',4000000,'749',18,' Daniel Briere'),(435,' Josh','Gorges','D',3900000,'83',18,' Josh Gorges'),(436,' David','Desharnais','C',3500000,'98',18,' David Desharnais'),(437,' Rene','Bourque','LW',3333333,'444',18,' Rene Bourque'),(438,' P.K.','Subban','D',2875000,'1074',18,' P.K. Subban'),(439,' Brandon','Prust','LW',2500000,'1144',18,' Brandon Prust'),(440,' Alexei','Emelin','D',2000000,'2023',18,' Alexei Emelin'),(441,' Travis','Moen','LW',1850000,'130',18,' Travis Moen'),(442,' Francis','Bouillon','D',1500000,'70',18,' Francis Bouillon'),(443,' Douglas','Murray','D',1500000,'136',18,' Douglas Murray'),(444,' Peter','Budaj','G',1400000,'574',18,' Peter Budaj'),(445,' Lars','Eller','C',1325000,'998',18,' Lars Eller'),(446,' George','Parros','RW',937500,'321',18,' George Parros'),(447,' Alex','Galchenyuk','C',925000,'2339',18,' Alex Galchenyuk'),(448,' Ryan','White','RW',700000,'1258',18,' Ryan White'),(449,' Brendan','Gallagher','RW',685000,'2139',18,' Brendan Gallagher'),(450,' Michael','Bournival','C',660000,'2147',18,' Michael Bournival'),(451,' Davis','Drewiske','D',637500,'1381',18,' Davis Drewiske'),(452,' Nathan','Beaulieu','D',925000,'2276',18,' Nathan Beaulieu'),(453,' Christian','Thomas','LW',808333,'2025',18,' Christian Thomas'),(454,' Dale','Weise','RW',750000,'1323',18,' Dale Weise'),(455,' Travis','Zajac','C',5750000,'776',19,' Travis Zajac'),(456,' Patrik','Elias','C',5500000,'774',19,' Patrik Elias'),(457,' Ryane','Clowe','LW',4850000,'120',19,' Ryane Clowe'),(458,' Martin','Brodeur','G',4500000,'801',19,' Martin Brodeur'),(459,' Anton','Volchenkov','D',4250000,'425',19,' Anton Volchenkov'),(460,' Cory','Schneider','G',4000000,'685',19,' Cory Schneider'),(461,' Adam','Henrique','C',4000000,'1601',19,' Adam Henrique'),(462,' Michael','Ryder','RW',3500000,'215',19,' Michael Ryder'),(463,' Bryce','Salvador','D',3166667,'785',19,' Bryce Salvador'),(464,' Dainius','Zubrus','C',3100000,'778',19,' Dainius Zubrus'),(465,' Andy','Greene','D',3000000,'791',19,' Andy Greene'),(466,' Marek','Zidlicky','D',3000000,'930',19,' Marek Zidlicky'),(467,' Damien','Brunner','RW',2500000,'2306',19,' Damien Brunner'),(468,' Jaromir','Jagr','RW',2000000,'1910',19,' Jaromir Jagr'),(469,' Mark','Fayne','D',1300000,'1861',19,' Mark Fayne'),(470,' Peter','Harrold','D',800000,'1015',19,' Peter Harrold'),(471,' Ryan','Carter','C',775000,'324',19,' Ryan Carter'),(472,' Steve','Bernier','RW',775000,'665',19,' Steve Bernier'),(473,' Andrei','Loktionov','C',725000,'1036',19,' Andrei Loktionov'),(474,' Jacob','Josefson','C',725000,'1743',19,' Jacob Josefson'),(475,' Jon','Merrill','D',840000,'2484',19,' Jon Merrill'),(476,' Stephen','Gionta','RW',562500,'1875',19,' Stephen Gionta'),(477,' Rick','Nash','LW',7800000,'586',20,' Rick Nash'),(478,' Henrik','Lundqvist','G',6875000,'643',20,' Henrik Lundqvist'),(479,' Brad','Richards','C',6666667,'690',20,' Brad Richards'),(480,' Ryan','McDonagh','D',4700000,'1814',20,' Ryan McDonagh'),(481,' Ryan','Callahan','RW',4275000,'628',20,' Ryan Callahan'),(482,' Marc','Staal','D',3975000,'634',20,' Marc Staal'),(483,' Dan','Girardi','D',3325000,'631',20,' Dan Girardi'),(484,' Derick','Brassard','C',3200000,'593',20,' Derick Brassard'),(485,' Derek','Stepan','C',3075000,'1806',20,' Derek Stepan'),(486,' Carl','Hagelin','LW',2250000,'1993',20,' Carl Hagelin'),(487,' Anton','Stralman','D',1700000,'188',20,' Anton Stralman'),(488,' Brian','Boyle','C',1700000,'1020',20,' Brian Boyle'),(489,' Derek','Dorsett','RW',1633333,'608',20,' Derek Dorsett'),(490,' Benoit','Pouliot','LW',1300000,'940',20,' Benoit Pouliot'),(491,' Kevin','Klein','D',2900000,'1054',20,' Kevin Klein'),(492,' Mats','Zuccarello','LW',1150000,'1777',20,' Mats Zuccarello'),(493,' Dominic','Moore','C',1000000,'396',20,' Dominic Moore'),(494,' Justin','Falk','D',975000,'955',20,' Justin Falk'),(495,' John','Moore','D',840000,'1541',20,' John Moore'),(496,' Chris','Kreider','C',800000,'2226',20,' Chris Kreider'),(497,' Cameron','Talbot','G',562500,'1687',20,' Cameron Talbot'),(498,' Daniel','Carcillo','LW',825000,'757',20,' Daniel Carcillo'),(499,' Kari','Lehtonen','G',5900000,'360',21,' Kari Lehtonen'),(500,' Tyler','Seguin','C',5750000,'1862',21,' Tyler Seguin'),(501,' Shawn','Horcoff','C',5500000,'11',21,' Shawn Horcoff'),(502,' Jamie','Benn','LW',5250000,'735',21,' Jamie Benn'),(503,' Sergei','Gonchar','D',5000000,'488',21,' Sergei Gonchar'),(504,' Alex','Goligoski','D',4600000,'487',21,' Alex Goligoski'),(505,' Ray','Whitney','LW',4500000,'517',21,' Ray Whitney'),(506,' Erik','Cole','RW',4500000,'529',21,' Erik Cole'),(507,' Stephane','Robidas','D',3300000,'696',21,' Stephane Robidas'),(508,' Trevor','Daley','D',3300000,'697',21,' Trevor Daley'),(509,' Rich','Peverley','RW',3250000,'345',21,' Rich Peverley'),(510,' Vernon','Fiddler','C',1800000,'1050',21,' Vernon Fiddler'),(511,' Aaron','Rome','D',1500000,'613',21,' Aaron Rome'),(512,' Valeri','Nichushkin','RW',925000,'2529',21,' Valeri Nichushkin'),(513,' Dan','Ellis','G',900000,'1067',21,' Dan Ellis'),(514,' Alex','Chiasson','RW',866667,'2196',21,' Alex Chiasson'),(515,' Brenden','Dillon','D',743333,'1915',21,' Brenden Dillon'),(516,' Jordie','Benn','D',700000,'2086',21,' Jordie Benn'),(517,' Kevin','Connauton','D',683333,'1716',21,' Kevin Connauton'),(518,' Antoine','Roussel','LW',612500,'2313',21,' Antoine Roussel'),(519,' Ryan','Garbutt','C',575000,'2087',21,' Ryan Garbutt'),(520,' Cody','Eakin','C',572778,'1602',21,' Cody Eakin'),(521,' Dustin','Jeffrey','LW',625000,'499',21,' Dustin Jeffrey'),(522,' Mike','Smith','G',5666667,'917',22,' Mike Smith'),(523,' Mike','Ribeiro','C',5500000,'688',22,' Mike Ribeiro'),(524,' Oliver','Ekman-Larsson','D',5500000,'1755',22,' Oliver Ekman-Larsson'),(525,' Shane','Doan','RW',5300000,'1116',22,' Shane Doan'),(526,' Keith','Yandle','D',5250000,'1121',22,' Keith Yandle'),(527,' Zbynek','Michalek','D',4000000,'1123',22,' Zbynek Michalek'),(528,' Antoine','Vermette','C',3750000,'603',22,' Antoine Vermette'),(529,' Martin','Hanzal','C',3100000,'1120',22,' Martin Hanzal'),(530,' Radim','Vrbata','RW',3000000,'898',22,' Radim Vrbata'),(531,' Derek','Morris','D',2750000,'640',22,' Derek Morris'),(532,' Mikkel','Boedker','LW',2550000,'1122',22,' Mikkel Boedker'),(533,' Lauri','Korpikoski','LW',2500000,'635',22,' Lauri Korpikoski'),(534,' David','Moss','RW',2100000,'446',22,' David Moss'),(535,' David','Schlemko','D',1187500,'1142',22,' David Schlemko'),(536,' Michael','Stone','D',1150000,'1617',22,' Michael Stone'),(537,' Kyle','Chipchura','C',875000,'77',22,' Kyle Chipchura'),(538,' David','Rundblad','D',785000,'1792',22,' David Rundblad'),(539,' Thomas','Greiss','G',750000,'149',22,' Thomas Greiss'),(540,' Paul','Bissonnette','LW',737500,'505',22,' Paul Bissonnette'),(541,' Rob','Klinkhammer','C',625000,'1320',22,' Rob Klinkhammer'),(542,' Tim','Kennedy','LW',700000,'400',22,' Tim Kennedy'),(543,' Jeff','Halpern','C',600000,'889',22,' Jeff Halpern'),(544,' Connor','Murphy','D',863333,'2106',22,' Connor Murphy'),(545,' Shea','Weber','D',7857143,'1042',23,' Shea Weber'),(546,' Pekka','Rinne','G',7000000,'1063',23,' Pekka Rinne'),(547,' David','Legwand','C',4500000,'1045',23,' David Legwand'),(548,' Patric','Hornqvist','RW',4250000,'1058',23,' Patric Hornqvist'),(549,' Mike','Fisher','C',4200000,'413',23,' Mike Fisher'),(550,' Roman','Josi','D',4000000,'1766',23,' Roman Josi'),(551,' Matt','Cullen','C',3500000,'522',23,' Matt Cullen'),(552,' Paul','Gaustad','C',3250000,'382',23,' Paul Gaustad'),(553,' Viktor','Stalberg','LW',3000000,'1246',23,' Viktor Stalberg'),(554,' Eric','Nystrom','LW',2500000,'453',23,' Eric Nystrom'),(555,' Colin','Wilson','C',2000000,'1068',23,' Colin Wilson'),(556,' Craig','Smith','C',2000000,'2101',23,' Craig Smith'),(557,' Nick','Spaling','C',1500000,'1073',23,' Nick Spaling'),(558,' Michael','Del Zotto','D',2550000,'1158',23,' Michael Del Zotto'),(559,' Seth','Jones','D',925000,'2539',23,' Seth Jones'),(560,' Mattias','Ekholm','D',900000,'2018',23,' Mattias Ekholm'),(561,' Ryan','Ellis','D',840000,'1597',23,' Ryan Ellis'),(562,' Devan','Dubnyk','G',1750000,'49',23,' Devan Dubnyk'),(563,' Gabriel','Bourque','LW',775000,'1699',23,' Gabriel Bourque'),(564,' Victor','Bartley','D',666667,'2033',23,' Victor Bartley'),(565,' Carter','Hutton','G',550000,'1760',23,' Carter Hutton'),(566,' Richard','Clune','LW',537500,'1377',23,' Richard Clune'),(567,' Taylor','Beck','LW',660000,'1870',23,' Taylor Beck'),(568,' Jordan','Eberle','RW',6000000,'65',24,' Jordan Eberle'),(569,' Taylor','Hall','LW',6000000,'1811',24,' Taylor Hall'),(570,' Ales','Hemsky','RW',5000000,'12',24,' Ales Hemsky'),(571,' Sam','Gagner','C',4800000,'23',24,' Sam Gagner'),(572,' David','Perron','LW',3812500,'962',24,' David Perron'),(573,' Nick','Schultz','D',3500000,'941',24,' Nick Schultz'),(574,' Andrew','Ference','D',3250000,'227',24,' Andrew Ference'),(575,' Boyd','Gordon','C',3000000,'856',24,' Boyd Gordon'),(576,' Ryan','Smyth','LW',2250000,'551',24,' Ryan Smyth'),(577,' Ilya','Bryzgalov','G',2266234,'1141',24,' Ilya Bryzgalov'),(578,' Jeff','Petry','D',1750000,'1659',24,' Jeff Petry'),(579,' Ryan','Jones','RW',1500000,'1051',24,' Ryan Jones'),(580,' Jesse','Joensuu','LW',950000,'1098',24,' Jesse Joensuu'),(581,' Ryan','Nugent-Hopkins','C',925000,'2077',24,' Ryan Nugent-Hopkins'),(582,' Justin','Schultz','D',925000,'2305',24,' Justin Schultz'),(583,' Nail','Yakupov','RW',925000,'2338',24,' Nail Yakupov'),(584,' Anton','Belov','D',925000,'2513',24,' Anton Belov'),(585,' Philip','Larsen','D',1025000,'736',24,' Philip Larsen'),(586,' Matt','Hendricks','LW',1850000,'578',24,' Matt Hendricks'),(587,' Corey','Potter','D',775000,'642',24,' Corey Potter'),(588,' Luke','Gazdic','LW',635000,'1404',24,' Luke Gazdic'),(589,' Mark','Fraser','D',1275000,'1511',24,' Mark Fraser'),(590,' Martin','Marincin','D',730000,'2016',24,' Martin Marincin'),(591,' Ben','Scrivens','G',550000,'1717',24,' Ben Scrivens'),(592,' Ryan','Miller','G',6250000,'405',25,' Ryan Miller'),(593,' Tyler','Myers','D',5500000,'728',25,' Tyler Myers'),(594,' Ville','Leino','LW',4500000,'290',25,' Ville Leino'),(595,' Cody','Hodgson','C',4250000,'732',25,' Cody Hodgson'),(596,' Christian','Ehrhoff','D',4000000,'121',25,' Christian Ehrhoff'),(597,' Drew','Stafford','RW',4000000,'379',25,' Drew Stafford'),(598,' Henrik','Tallinder','D',3375000,'392',25,' Henrik Tallinder'),(599,' Steve','Ott','C',2950000,'691',25,' Steve Ott'),(600,' Tyler','Ennis','C',2812500,'1572',25,' Tyler Ennis'),(601,' Matt','Moulson','LW',3133333,'1027',25,' Matt Moulson'),(602,' Jamie','McBain','D',1800000,'650',25,' Jamie McBain'),(603,' Mike','Weber','D',1666667,'403',25,' Mike Weber'),(604,' Jhonas','Enroth','G',1250000,'406',25,' Jhonas Enroth'),(605,' Cody','McCormick','C',1200000,'567',25,' Cody McCormick'),(606,' Zemgus','Girgensons','C',894167,'2332',25,' Zemgus Girgensons'),(607,' Marcus','Foligno','LW',826667,'2035',25,' Marcus Foligno'),(608,' John','Scott','LW',750000,'950',25,' John Scott'),(609,' Brian','Flynn','RW',637500,'2198',25,' Brian Flynn'),(610,' Alexander','Sulzer','D',725000,'1065',25,' Alexander Sulzer'),(611,' Zenon','Konopka','C',925000,'913',25,' Zenon Konopka'),(612,' Chad','Ruhwedel','D',925000,'2459',25,' Chad Ruhwedel'),(613,' Matt','D\'Agostini','RW',550000,'76',25,' Matt D\'Agostini'),(614,' Linus','Omark','LW',600000,'1686',25,' Linus Omark'),(615,' Matt','Ellis','C',550000,'391',25,' Matt Ellis'),(616,' Phil','Varone','C',586667,'2181',25,' Phil Varone'),(617,' Jason','Spezza','C',7000000,'409',26,' Jason Spezza'),(618,' Erik','Karlsson','D',6500000,'470',26,' Erik Karlsson'),(619,' Bobby','Ryan','LW',5100000,'314',26,' Bobby Ryan'),(620,' Milan','Michalek','LW',4333333,'128',26,' Milan Michalek'),(621,' Kyle','Turris','C',3500000,'1126',26,' Kyle Turris'),(622,' Clarke','MacArthur','LW',3250000,'381',26,' Clarke MacArthur'),(623,' Craig','Anderson','G',3187500,'836',26,' Craig Anderson'),(624,' Jared','Cowen','D',3100000,'1611',26,' Jared Cowen'),(625,' Chris','Phillips','D',3083333,'415',26,' Chris Phillips'),(626,' Marc','Methot','D',3000000,'601',26,' Marc Methot'),(627,' Patrick','Wiercioch','D',2000000,'1678',26,' Patrick Wiercioch'),(628,' Chris','Neil','RW',1900000,'424',26,' Chris Neil'),(629,' Zack','Smith','C',1887500,'432',26,' Zack Smith'),(630,' Erik','Condra','RW',1250000,'1280',26,' Erik Condra'),(631,' Joe','Corvo','D',900000,'523',26,' Joe Corvo'),(632,' Cory','Conacher','LW',871250,'2160',26,' Cory Conacher'),(633,' Robin','Lehner','G',870000,'1668',26,' Robin Lehner'),(634,' Colin','Greening','LW',816667,'1711',26,' Colin Greening'),(635,' Mika','Zibanejad','C',894167,'2090',26,' Mika Zibanejad'),(636,' Matt','Kassian','LW',575000,'1451',26,' Matt Kassian'),(637,' Cody','Ceci','D',894167,'2356',26,' Cody Ceci'),(638,' Eric','Gryba','D',562500,'1677',26,' Eric Gryba'),(639,' Stephane','Da Costa','C',825000,'1963',26,' Stephane Da Costa'),(640,' Mark','Stone','RW',603333,'2114',26,' Mark Stone'),(641,' Mike','Cammalleri','LW',6000000,'439',27,' Mike Cammalleri'),(642,' Dennis','Wideman','D',5250000,'217',27,' Dennis Wideman'),(643,' Mark','Giordano','D',4020000,'450',27,' Mark Giordano'),(644,' Jiri','Hudler','LW',4000000,'287',27,' Jiri Hudler'),(645,' David','Jones','RW',4000000,'563',27,' David Jones'),(646,' Matt','Stajan','C',3500000,'177',27,' Matt Stajan'),(647,' Ladislav','Smid','D',3500000,'36',27,' Ladislav Smid'),(648,' Karri','Ramo','G',2750000,'916',27,' Karri Ramo'),(649,' Curtis','Glencross','LW',2550000,'445',27,' Curtis Glencross'),(650,' Lee','Stempniak','RW',2500000,'210',27,' Lee Stempniak'),(651,' T.J.','Brodie','D',2125000,'1537',27,' T.J. Brodie'),(652,' Chris','Butler','D',1700000,'395',27,' Chris Butler'),(653,' Mikael','Backlund','C',1500000,'466',27,' Mikael Backlund'),(654,' Kris','Russell','D',1500000,'599',27,' Kris Russell'),(655,' T.J.','Galiardi','LW',1250000,'570',27,' T.J. Galiardi'),(656,' Sean','Monahan','C',925000,'2556',27,' Sean Monahan'),(657,' Brian','McGrattan','RW',750000,'1148',27,' Brian McGrattan'),(658,' Reto','Berra','G',850000,'2463',27,' Reto Berra'),(659,' Joe','Colborne','C',600000,'1665',27,' Joe Colborne'),(660,' Lance','Bouma','C',577500,'1594',27,' Lance Bouma'),(661,' Paul','Byron','C',643500,'1166',27,' Paul Byron'),(662,' Christopher','Breen','D',577500,'1770',27,' Christopher Breen'),(663,' Kevin','Westgarth','RW',725000,'1030',27,' Kevin Westgarth'),(664,' Ben','Street','C',575000,'2317',27,' Ben Street'),(665,' Paul','Stastny','C',6600000,'554',28,' Paul Stastny'),(666,' Ryan','O\'Reilly','C',5000000,'1576',28,' Ryan O\'Reilly'),(667,' P-A','Parenteau','RW',4000000,'1278',28,' P-A Parenteau'),(668,' Erik','Johnson','D',3750000,'1198',28,' Erik Johnson'),(669,' Alex','Tanguay','LW',3500000,'79',28,' Alex Tanguay'),(670,' Matt','Duchene','C',3500000,'1527',28,' Matt Duchene'),(671,' Jan','Hejda','D',3250000,'598',28,' Jan Hejda'),(672,' Semyon','Varlamov','G',2833333,'873',28,' Semyon Varlamov'),(673,' Ryan','Wilson','D',2250000,'1384',28,' Ryan Wilson'),(674,' Cory','Sarich','D',2000000,'449',28,' Cory Sarich'),(675,' Jamie','McGinn','LW',1750000,'141',28,' Jamie McGinn'),(676,' Jean-Sebastien','Giguere','G',1500000,'338',28,' Jean-Sebastien Giguere'),(677,' Maxime','Talbot','C',1750000,'486',28,' Maxime Talbot'),(678,' Cody','McLeod','LW',1150000,'559',28,' Cody McLeod'),(679,' John','Mitchell','C',1100000,'183',28,' John Mitchell'),(680,' Patrick','Bordeleau','LW',1000000,'2070',28,' Patrick Bordeleau'),(681,' Gabriel','Landeskog','LW',925000,'2103',28,' Gabriel Landeskog'),(682,' Nathan','MacKinnon','C',925000,'2538',28,' Nathan MacKinnon'),(683,' Andre','Benoit','D',900000,'1303',28,' Andre Benoit'),(684,' Tyson','Barrie','D',715000,'1947',28,' Tyson Barrie'),(685,' Nick','Holden','D',600000,'724',28,' Nick Holden'),(686,' Nate','Guenin','D',600000,'766',28,' Nate Guenin'),(687,' Marc-Andre','Cliche','RW',537500,'1372',28,' Marc-Andre Cliche'),(688,' Sami','Aittokallio','G',683333,'2253',28,' Sami Aittokallio'),(689,' John','Tavares','C',5500000,'1520',29,' John Tavares'),(690,' Thomas','Vanek','LW',5750000,'377',29,' Thomas Vanek'),(691,' Lubomir','Visnovsky','D',4750000,'26',29,' Lubomir Visnovsky'),(692,' Travis','Hamonic','D',3857143,'1765',29,' Travis Hamonic'),(693,' Josh','Bailey','C',3300000,'1084',29,' Josh Bailey'),(694,' Evgeni','Nabokov','G',3250000,'137',29,' Evgeni Nabokov'),(695,' Michael','Grabner','RW',3000000,'733',29,' Michael Grabner'),(696,' Kyle','Okposo','RW',2800000,'1077',29,' Kyle Okposo'),(697,' Cal','Clutterbuck','RW',2750000,'938',29,' Cal Clutterbuck'),(698,' Frans','Nielsen','C',2750000,'1079',29,' Frans Nielsen'),(699,' Matt','Carkner','D',1500000,'433',29,' Matt Carkner'),(700,' Matt','Martin','LW',1000000,'1569',29,' Matt Martin'),(701,' Brock','Nelson','C',900000,'2225',29,' Brock Nelson'),(702,' Casey','Cizikas','C',793333,'2051',29,' Casey Cizikas'),(703,' Brian','Strait','D',775000,'1299',29,' Brian Strait'),(704,' Peter','Regin','C',750000,'428',29,' Peter Regin'),(705,' Matt','Donovan','D',875000,'1956',29,' Matt Donovan'),(706,' Thomas','Hickey','D',675000,'1034',29,' Thomas Hickey'),(707,' Colin','McDonald','RW',637500,'54',29,' Colin McDonald'),(708,' Calvin','de Haan','D',870000,'1729',29,' Calvin de Haan'),(709,' Kevin','Poulin','G',577500,'1747',29,' Kevin Poulin'),(710,' Eric','Boulton','LW',550000,'352',29,' Eric Boulton'),(711,' Andrew','MacDonald','D',550000,'1110',29,' Andrew MacDonald'),(712,' Radek','Martinek','D',600000,'1090',29,' Radek Martinek'),(713,' Brian','Campbell','D',7142875,'248',30,' Brian Campbell'),(714,' Tomas','Fleischmann','LW',4500000,'850',30,' Tomas Fleischmann'),(715,' Ed','Jovanovski','D',4125000,'1119',30,' Ed Jovanovski'),(716,' Scottie','Upshall','RW',3500000,'1129',30,' Scottie Upshall'),(717,' Tomas','Kopecky','LW',3000000,'294',30,' Tomas Kopecky'),(718,' Sean','Bergenheim','LW',2750000,'1085',30,' Sean Bergenheim'),(719,' Tim','Thomas','G',2500000,'236',30,' Tim Thomas'),(720,' Dmitry','Kulikov','D',2500000,'1587',30,' Dmitry Kulikov'),(721,' Shawn','Matthias','C',1750000,'833',30,' Shawn Matthias'),(722,' Marcel','Goc','C',1700000,'122',30,' Marcel Goc'),(723,' Scott','Clemmensen','G',1200000,'802',30,' Scott Clemmensen'),(724,' Mike','Weaver','D',1100000,'978',30,' Mike Weaver'),(725,' Brad','Boyes','RW',1000000,'960',30,' Brad Boyes'),(726,' Aleksander','Barkov','C',925000,'2544',30,' Aleksander Barkov'),(727,' Tom','Gilbert','D',900000,'22',30,' Tom Gilbert'),(728,' Scott','Gomez','C',900000,'624',30,' Scott Gomez'),(729,' Erik','Gudbranson','D',900000,'2093',30,' Erik Gudbranson'),(730,' Jonathan','Huberdeau','LW',894167,'2130',30,' Jonathan Huberdeau'),(731,' Nick','Bjugstad','C',900000,'2439',30,' Nick Bjugstad'),(732,' Krystofer','Barch','RW',750000,'707',30,' Krystofer Barch'),(733,' Jesse','Winchester','C',600000,'419',30,' Jesse Winchester'),(734,' Mike','Mottau','D',700000,'786',30,' Mike Mottau'),(735,' Dylan','Olsen','D',738333,'1909',30,' Dylan Olsen'),(736,' Jimmy','Hayes','RW',654167,'1955',30,' Jimmy Hayes');
/*!40000 ALTER TABLE `app_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_team`
--

DROP TABLE IF EXISTS `app_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `cap_total` int(11) NOT NULL,
  `center_cap` int(11) NOT NULL,
  `lw_cap` int(11) NOT NULL,
  `rw_cap` int(11) NOT NULL,
  `d_cap` int(11) NOT NULL,
  `g_cap` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `primary_color` varchar(6) NOT NULL,
  `secondary_color` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_team`
--

LOCK TABLES `app_team` WRITE;
/*!40000 ALTER TABLE `app_team` DISABLE KEYS */;
INSERT INTO `app_team` VALUES (1,'Washington','capitals',64813463,13150000,10491667,19432629,17389167,4350000,'Capitals','CF132B','00214E'),(2,'Chicago','blackhawks',65685962,9820833,11239167,14337500,24996795,5291667,'Blackhawks','E3263A','000000'),(3,'Pittsburgh','penguins',69490001,22741667,9375000,9850000,19985834,7537500,'Penguins','D1BD80','000000'),(4,'Toronto','mapleleafs',64189167,14055000,11800000,15215000,18419167,4700000,'Maple Leafs','003777','000000'),(5,'Detroit','redwings',63698712,15032500,14872878,9914167,17087500,6791667,'Red Wings','EC1F26','000000'),(6,'San Jose','sharks',67407501,19555000,9659167,14501667,19266667,4425000,'Sharks','05535D','000000'),(7,'Boston','bruins',66086311,18877143,17058333,4440000,18110835,7600000,'Bruins','FFC422','000000'),(8,'Philadelphia','flyers',66028929,11395000,6217500,11775000,33491429,3150000,'Flyers','F47940','000000'),(9,'Tampa Bay','lightning',64025436,10731667,10679167,12860792,25003810,4750000,'Lightning','013E7D','000000'),(10,'Vancouver','canucks',64769444,13400000,13600000,7870000,23816111,6083333,'Canucks','07346F','047A4A'),(11,'Columbus','bluejackets',63292459,7781666,13870833,15577500,19837460,6225000,'Blue Jackets','E03A3E','00285C'),(12,'Carolina','hurricanes',62477500,21100000,6875000,10100000,16765000,7637500,'Hurricanes','E03A3E','000000'),(13,'Los Angeles','kings',63493561,24639394,1825000,7262500,23416667,6350000,'Kings','AFB7BA','000000'),(14,'Winnipeg','jets',64298024,12943333,10325000,13012500,23516191,4501000,'Jets','002E62','A8A9AD'),(15,'St. Louis','blues',63389167,18325000,6892500,5650000,26971667,5550000,'Blues','0546A0','FFC325'),(16,'Minnesota','wild',62148592,13283333,19797629,7475000,15499296,6093334,'Wild','025736','BF2B37'),(17,'Anaheim','ducks',62793334,15440000,5725000,13567500,19735834,8325000,'Ducks','91764B','000000'),(18,'Montreal','canadiens',63461666,15410000,12991666,8072500,19087500,7900000,'Canadiens','BF2F38','213770'),(19,'New Jersey','devils',59619167,20575000,4850000,9337500,16356667,8500000,'Devils','E03A3E','000000'),(20,'New York','rangers',61527500,16441667,13325000,5908333,18415000,7437500,'Rangers','E6393F','0161AB'),(21,'Dallas','stars',61353611,14197778,10987500,9541667,19826666,6800000,'Stars','006A4E','000000'),(22,'Phoenix','coyotes',59240000,14450000,6487500,10400000,21485833,6416667,'Coyotes','8E0028','000000'),(23,'Nashville','predators',59711310,20950000,7472500,4250000,17738810,9300000,'Predators','FDBB2F','002E62'),(24,'Edmonton','oilers',54618734,8725000,15497500,13425000,14155000,2816234,'Oilers','E66A20','003777'),(25,'Buffalo','sabres',54657501,14168334,9810000,5187500,17991667,7500000,'Sabres','FDBB2F','002E62'),(26,'Ottawa','senators',56903750,14106667,14946250,3753333,20040000,4057500,'Senators','E4173E','000000'),(27,'Calgary','flames',52368500,8321000,13800000,7975000,18672500,3600000,'Flames','FFC758','E03A3E'),(28,'Colorado','avalanche',50819166,18875000,8325000,4537500,14065000,5016666,'Avalanche','01548A','8B2942'),(29,'New York','islanders',48760476,13993333,7300000,9187500,14452143,3827500,'Islanders','F57D31','00529B'),(30,'Florida','panthers',45629542,6775000,11144167,5904167,18106208,3700000,'Panthers','D59C05','C8213F');
/*!40000 ALTER TABLE `app_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add migration history',7,'add_migrationhistory'),(20,'Can change migration history',7,'change_migrationhistory'),(21,'Can delete migration history',7,'delete_migrationhistory'),(22,'Can add team',8,'add_team'),(23,'Can change team',8,'change_team'),(24,'Can delete team',8,'delete_team'),(25,'Can add player',9,'add_player'),(26,'Can change player',9,'change_player'),(27,'Can delete player',9,'delete_player');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$hZtPydr7K0wu$skrm9Q007d3vcXvYQAMRjjjdHyIawSkR/tFB3j2MLT4=','2014-02-03 18:35:19',1,'joemeissler','','','',1,1,'2014-02-03 18:35:19');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'migration history','south','migrationhistory'),(8,'team','app','team'),(9,'player','app','player');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'app','0001_initial','2014-02-03 18:50:24'),(2,'app','0002_auto__add_field_player_full_name__chg_field_player_first_name__chg_fie','2014-02-05 22:58:16'),(3,'app','0003_auto__add_field_team_full_name__chg_field_team_name__chg_field_team_lo','2014-02-07 23:29:27'),(4,'app','0004_auto__add_field_team_primary_color__add_field_team_secondary_color','2014-02-08 00:51:23');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-19 15:04:41
