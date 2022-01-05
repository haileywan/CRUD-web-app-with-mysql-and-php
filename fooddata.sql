-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2022 at 12:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fooddata`
--

-- --------------------------------------------------------

--
-- Table structure for table `dessertdetail`
--

CREATE TABLE `dessertdetail` (
  `id` int(11) NOT NULL,
  `foodname` varchar(50) NOT NULL,
  `fooddescpirtion` varchar(255) NOT NULL,
  `pdate` date NOT NULL DEFAULT current_timestamp(),
  `edate` date NOT NULL,
  `foodquantity` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `foodimage` varchar(255) DEFAULT NULL,
  `seller` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'dessert'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dessertdetail`
--

INSERT INTO `dessertdetail` (`id`, `foodname`, `fooddescpirtion`, `pdate`, `edate`, `foodquantity`, `price`, `foodimage`, `seller`, `type`) VALUES
(1, '冰糖燕窩燉雪梨', '潤肺養顏，潤燥、益氣補中，促進細胞再生，增強免疫力。', '2021-10-24', '2021-11-24', 5, 45, 'https://img.cook1cook.com/upload/cover/201906/63/137250-1560101287_thumb.jpg', 'user1', 'dessert'),
(2, '紅棗蘋果桂圓燉桃膠', '潤肺養顏，潤燥、益氣補中，促進細胞再生，增強免疫力。', '2021-10-17', '2021-10-19', 2, 39, 'https://img.cook1cook.com/upload/cover/201902/90/137250-1550336009_thumb.jpg', 'user1', 'dessert'),
(6, '椰汁冰糖燉燕窩', '\"潤肺養顏，潤燥、益氣補中，促進細胞再生，增強免疫力。\r\n椰汁是我們經常喝的一種飲品,它也非常的受女士們喜歡。椰汁裏面含有豐富的蛋白質、糖類、鈣、磷和多種維生素。燕窩中含有很多種的氨基酸,它是人們進補非常好的食物。它對女人來說在妊娠期可以補胎,在生產之後可以進補身體。燕窩作為進補營養品倍受人們的喜歡。\"', '2021-10-17', '2021-10-19', 2, 99, 'http://www.baobao001.com/uploadfile/2013/0531/20130531035730809.jpg', 'user2', 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `dishdetail`
--

CREATE TABLE `dishdetail` (
  `id` int(11) NOT NULL,
  `foodname` varchar(50) NOT NULL,
  `fooddescpirtion` varchar(255) NOT NULL,
  `pdate` date NOT NULL DEFAULT current_timestamp(),
  `edate` date NOT NULL,
  `foodquantity` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `foodimage` varchar(255) DEFAULT NULL,
  `seller` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'dish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishdetail`
--

INSERT INTO `dishdetail` (`id`, `foodname`, `fooddescpirtion`, `pdate`, `edate`, `foodquantity`, `price`, `foodimage`, `seller`, `type`) VALUES
(1, '牛油鹽焗黃油奄仔', '\"做法：\r\n1、燒紅白鑊，倒入一包粗鹽（約600克），把鹽翻炒至灼熱，加一湯匙五香粉炒勻，將蟹的捆繩拆開後迅速放入，蟹肚向上埋在鹽堆中，加蓋，中大火焗5分鐘後，轉小火再焗20至25分鐘（視乎蟹的大小）。\r\n2、把蟹取出，剝去蟹掩，把蟹連蟹蓋斬開兩邊即可。\"', '2021-10-25', '2021-11-17', 5, 35, 'https://img.cook1cook.com/upload/cover/202110/53/47185-1634535316_thumb.jpg', 'user1', 'dish'),
(2, '醃醬蜜汁烤豬仔髀', '豬仔脾(豬寸骨) 是個非常好吃的食材，肉質很爽滑~煎焗燒均可，而且很易做，只要醃好放入焗爐焗好便可上碟，啱晒想偷下懶的我，今次用上美式的煙煄燒烤醃醬加上甜甜的蜜汁的味道，香噴噴很滋味呢 ! 揚ma 試之前過用叉燒醬、南乳醬當醃醬，或不用醃醬，西式的可用香草蒜鹽醃，中式的用生抽、鹽糖、玫瑰露酒醃好再烤，也一樣滋味。', '2021-10-26', '2021-10-28', 2, 55, 'https://img.cook1cook.com/upload/cover/202009/58/105560-1599572799_thumb.jpg', 'user2', 'dish'),
(5, '鮑汁炆柚皮鵝掌', '在柚子皮入饌的菜式中，炆鵝掌堪稱最為經典。柚子皮是「瘦物」，在炆煮的過程中，吸收了醬汁的味道及鵝掌的膠質，配合本身的清香，盡顯美味，而且身價亦大幅提升，搖身一邊成為宴客或造節的名貴菜式！', '2021-10-25', '2021-10-29', 3, 88, 'https://img.cook1cook.com/upload/cover/202109/83/33364-1631776379_thumb.jpg', 'user3', 'dish'),
(6, '佛跳牆', '傳說有個皇帝吃膩了山珍海味，勒令御廚若再做不出口味翻新的菜餚就要砍掉他的頭。御廚冥思苦想，翻遍各種烹飪大全，又請教不少民間美食專家，可還是沒有好的解決辦法。最後他只好準備捲舖蓋潛逃。反正也做不下去了，御廚在最後一次掌勺時，索性把各色素葷菜料揀好的放進鍋裏，在烹調上又使出了渾身解數。沒想到這鍋菜異香撲鼻，引得隔壁修行多年的老和尚爬牆張望。因此而未被砍頭的御廚就把這道菜叫做「佛跳牆」。', '2021-10-03', '2021-10-07', 1, 150, 'http://p3.toutiaoimg.com/large/pgc-image/0a22b9469b9f47b9b03794fa4ef94218?from=detail&index=0', 'user2', 'dish');

-- --------------------------------------------------------

--
-- Table structure for table `soupdetail`
--

CREATE TABLE `soupdetail` (
  `id` int(11) NOT NULL,
  `foodname` varchar(20) NOT NULL,
  `fooddescpirtion` varchar(255) DEFAULT NULL,
  `pdate` date NOT NULL DEFAULT current_timestamp(),
  `edate` date DEFAULT current_timestamp(),
  `foodquantity` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `foodimage` varchar(255) DEFAULT NULL,
  `seller` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'soup'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soupdetail`
--

INSERT INTO `soupdetail` (`id`, `foodname`, `fooddescpirtion`, `pdate`, `edate`, `foodquantity`, `price`, `foodimage`, `seller`, `type`) VALUES
(1, '鮮人參淮山竹絲雞湯', '\"補益氣血—天氣寒冷，最適合煲些養生保健湯作調理。\r\n\r\n鮮人參又稱水參，是人參苗種4-6年栽培後收穫， 採取後沒經任何加工程式，含有70%-75%水分，是所有人參加工製品的原材料。有健脾益氣，提高免疫加作用，對氣虛體弱人士十分適合。但由於鮮人參有濃烈甘澀味，最好配些淮山、杞子、紅棗、圓肉一類有甘甜味的材料，加點雞或豬展同燉，能大補氣血，改善畏寒肢冷，心悸氣短症狀。\"', '2021-10-17', '2021-10-28', 3, 50, 'https://img.cook1cook.com/php/upload/cover/202012/95/162607-1608642842_thumb.jpg', 'user3\n', 'soup'),
(6, '黑靈芝南棗黨參湯', '\"所有材料功效：\r\n黑靈芝 Black Ganoderma Lucidum – 具有補腎、潤肺通氣、增強免疫力和改善面色的功效\r\n杞子 Wolfberries – 具有補肝益腎、養顏明目的功效\r\n黨參 Dang Shen – 具有健脾益肺，養血生津的功效，特別適合脾肺氣虛，咳嗽虛喘，氣血不足，面色萎黃，心悸氣短人仕食用\r\n南棗 Black Dates – 具有健脾補腎的功效，補而不燥，補血功效較紅棗高\"', '2021-10-25', '0000-00-00', 5, 60, 'https://img.cook1cook.com/php/upload/cover/202105/83/162607-1621179113_thumb.jpg', 'user2', 'soup'),
(21, '霸王花煲豬𦟌骨', '滋補養顏、清熱潤肺，清暑解熱、清熱痰、肺燥咳、除積熱、止氣痛、理痰火、痰火核、除痰止咳、口乾舌燥、内火旺盛、痄腮', '2021-10-25', '2021-11-25', 20, 65, 'https://img.cook1cook.com/upload/cover/202108/49/152889-1628644124_thumb.jpeg', 'user1', 'soup'),
(25, 'soup', 'soup', '2022-01-08', '2022-01-09', 1, 2, '?', '?', 'soup'),
(26, 'a', 'a', '2022-01-07', '2022-01-15', 2, 3, '?', '?', 'soup');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dessertdetail`
--
ALTER TABLE `dessertdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishdetail`
--
ALTER TABLE `dishdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soupdetail`
--
ALTER TABLE `soupdetail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dessertdetail`
--
ALTER TABLE `dessertdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishdetail`
--
ALTER TABLE `dishdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `soupdetail`
--
ALTER TABLE `soupdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
