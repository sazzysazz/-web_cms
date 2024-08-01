-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: May 30, 2024 at 06:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `pk_id` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `pk_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followus`
--

CREATE TABLE `followus` (
  `pk_id` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `icon_header` varchar(255) DEFAULT NULL,
  `icon_footer` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `status`, `thumbnail`) VALUES
(1, 'footer', '250524060750-20240121040310-logo.png'),
(3, 'Header', '250524060147-20240121040310-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `view` bigint(20) NOT NULL DEFAULT 0,
  `create_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `author_id`, `title`, `type`, `category`, `banner`, `thumbnail`, `description`, `view`, `create_at`) VALUES
(1, 1, 'អ្នកខ្លះ ពេលទូរសព្ទចូលទឹក ដាក់សម្ងួត​ក្នុងធុងអង្ករ! ឥឡូវ Apple ព្រមាន​ថា ធ្វើអ៊ីចឹងអាច​ខ្ទេចទូរសព្ទតែម្តង', 'National', 'Social', '260524105606-', '250524110723-65d711c993fba_1708593600_medium.jpg  ', '<p>តើលោកអ្នកធ្លាប់​យកទូរសព្ទដែលចូលទឹក ទៅដាក់សម្ងួត​ក្នុងបាវ ឬធុង​អង្ករ​ដែរទេ? ព្រោះថា វា​ជាទម្លាប់តៗគ្នាដែល​គ្មាន​បច្ចេកទេស​ច្បាស់លាស់នោះទេ ដោយគេជឿថា អង្ករ​នឹង​ស្រូបទឹក​ចេញពីទូរសព្ទ</p>\r\n<p>តាម​រយៈការ​ស្រាវជ្រាវ​ជាច្រើនឆ្នាំ អំពីការដាក់សម្ងួត​ទូរសព្ទ​ក្នុងអង្ករនេះ បានបង្ហាញ​ថា ការពិត​អង្ករ​មិនអាច​សម្ងួត​ទឹកចេញពីទូរសព្ទបានទេ ហើយថែមទាំងមិនអាចឱ្យទូរសព្ទឆាប់ស្ងួតទៀតផង ជាហេតុ​ធ្វើឱ្យទូរសព្ទ​ប្រឈមនឹង​ការឆាប់ខូចជាងមុន។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/Samphy-2024/Feb/Week-(32)/65d711c993fba_1708593600.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/Samphy-2024/Feb/Week-(32)/65d711c993fba_1708593600_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/Samphy-2024/Feb/Week-(32)/65d711c993fba_1708593600_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/Samphy-2024/Feb/Week-(32)/65d711c993fba_1708593600_small.jpg\" media=\"(min-width: 320px)\"></picture></div>\r\n<div class=\"content-grp-img\">\r\n<p>ន្ទឹមនេះ ឯកសារ​ថ្មីមួយក្នុងឆ្នាំ​២០២៤នេះ ពីក្រុមហ៊ុន Apple បាន​បញ្ជាក់ច្បាស់ៗ​ និងក្រឿនរំលឹក​កុំឱ្យដាក់​ទូរសព្ទសម្ងួត​ក្នុងអង្ករ ព្រោះវា​អាចឱ្យកម្ទេចអង្ករចូលទៅបំផ្លាញ​ iPhone របស់អ្នកបាន។ ជំនួស​មកវិញ Apple បានផ្តល់ការណែនាំមួយចំនួនដូចខាងក្រោម៖</p>\r\n<div id=\"gax-inpage-async-1706848478\"></div>\r\n<p>១. ជូតទូរសព្ទថ្នមៗ​ (តែកុំជូត​ក្នុងរន្ធ USB) និង​ទុកនៅកន្លែងស្ងួតជាមួយការបាញ់ផ្លុំខ្យល់ខ្លះៗ (តែហាមបាញ់ខ្យល់ក្តៅខ្លាំង)។ យល់ល្អ គួរតែបិទទូរសព្ទតែម្តង។</p>\r\n<p>២. ក្រោយទុកបានរយៈពេល ៣០នាទី សាកល្បងសាកថ្ម បើឃើញ​សាកចូលធម្មតា មានន័យថា វាអស់បញ្ហាហើយ។</p>\r\n<p>៣. បើដោតហើយ បែរ​ជាសាកមិនចូល ឬចេញសញ្ញា Alert អ្វីមួយ នោះ​បញ្ជាក់​ថា វានៅមាន​ជ្រាបទឹកនៅឡើយ។ ដូច្នេះ ត្រូវបន្តបាញ់ផ្លុំខ្យល់ និងទុកចោលពេញ ១ថ្ងៃ រួចសាកល្បងដោតសាកថ្មម្តងទៀត។</p>\r\n<p>៤. បើទុកចោលពេញ១ថ្ងៃហើយ នៅតែសាកថ្មមិនចូលទៀត សូមដកខ្សែ និងឆ្នាំងសាក ចេញទាំងអស់សិន ហើយ​ចាំដោតចូលវិញទាំងអស់៕</p>\r\n</div>\r\n<p>&gt;</p>\r\n<p>&gt;</p>', 2, NULL),
(4, 1, ' ក្រុមហ៊ុន រ៉ូតូ (ROHTO) និង អង្គការមូលនិធិកុមារកម្ពុជា Cambodian Children’s Fund បន្តសហការរៀបចំកម្មវិធីសប្បុរសធម៌ដល់សិស្សក្រីក្', 'National', 'Social', '260524105538-', '260524105538-65d9cc6785665_1708772400_medium.jpg', '<p>នេះជាការបរិច្ចាគលើកទី២ ក្នុងការទ្រទ្រង់ដល់ថ្នាក់សិក្សារបស់ សិស្សានុសិស្សថ្នាក់ទី៧ ចំនួន ១ថ្នាក់នៃឆ្នាំសិក្សា ២០២៤នេះ។ សកម្មភាពសប្បុរសធម៌នេះផងដែរមានគោលបំណង ចូលរួមចំណែកជាមួយរាជរដ្ឋាភិបាលក្នុងការអភិវឌ្ឍធនធានមនុស្ស តាមរយៈការផ្តល់អោយនូវការអប់រំប្រកបដោយគុណភាពជូនដល់កុមារក្នុងព្រះរាជាណាចក្រកម្ពុជា។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6785665_1708772400.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6785665_1708772400_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6785665_1708772400_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6785665_1708772400_small.jpg\" media=\"(min-width: 320px)\"><img></picture></div>\r\n<div id=\"gax-inpage-async-1700714337\"></div>\r\n<p>កម្មវិធីនេះបានប្រព្រឹត្តិទៅកាលពីថ្ងៃទី ២២ ខែ កុម្ភៈ ២០២៤ កន្លងទៅ នៅសាលា ធូម័ររូអាខាដាមី (Tomorrow Academy)។ កម្មវិធីនេះដំណើរការទៅបានក្រោមអធិបតីភាពដ៏ខ្ពង់ខ្ពស់ពីថ្នាក់ដឹកនាំក្រុមហ៊ុន រ៉ូតូ (ខេមបូឌា) លោក Shunsuke Shinoda ដែលជានាយកប្រតិបត្តិក្រុមហ៊ុន លោក ចាប ឆៃហ៊ាង អនុប្រធានគ្រប់គ្រងទូទៅ និងអមដំណើរដោយក្រុមការងារក្រុមហ៊ុនរ៉ូតូផងដែរ។ ក្រៅពីនេះ ក៏មានការចូលរួមពីស្ថាបនិក និងនាយកប្រតិបត្តិអង្គការមូលនិធិកុមារកម្ពុជា លោក ស្កុត និសិន និងលោកគ្រូអ្នកគ្រូក៏ដូចជាសិស្សានុសិស្សដែលកំពុងសិក្សានៅទីនោះផងដែរ។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6a92f56_1708772400.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6a92f56_1708772400_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6a92f56_1708772400_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6a92f56_1708772400_small.jpg\" media=\"(min-width: 320px)\"></picture></div>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6860801_1708772400.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6860801_1708772400_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6860801_1708772400_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Ent-Int/Others/Other-90/65d9cc6860801_1708772400_small.jpg\" media=\"(min-width: 320px)\"></picture></div>\r\n<p>&nbsp;</p>\r\n<p>&gt;</p>\r\n<p>&gt;</p>', 2, '2024-05-25'),
(5, 1, 'DIGITAL ឆ្នាំ២០២៤ នឹងមានបង្ហាញ និងបើកឲ្យសាកល្បងឧបករណ៍បច្ចេកវិទ្យាទំនើបៗ', 'National', 'Entertainment', '270524055310-', '250524041100-65d6b553eed99_1708569900_medium (1).jpg ', '<p>រាជរដ្ឋាភិបាលកម្ពុជា នឹងរៀបចំវេទិការដ្ឋាភិបាលឌីជីថល ឆ្នាំ២០២៤ ក្រោមប្រធានបទ &ldquo;ការអភិវឌ្ឍប្រកបដោយចីរភាព និងបរិយាបន្នតាមរយៈការអនុវត្តគោលនយោបាយឌីជីថល&rdquo; និង&ldquo;ពិព័រណ៍រដ្ឋាភិបាលឌីជីថល និងបច្ចេកវិទ្យាឌីជីថលកម្ពុជា-អន្តរជាតិ&rdquo; រយៈពេល ៣ថ្ងៃ ចាប់ពីថ្ងៃទី១១ ដល់ថ្ងៃទី១៣ ខែមីនា នៅមជ្ឈមណ្ឌលសន្និបាតនិងពិព័រណ៍កោះពេជ្រ រាជធានីភ្នំពេញ។</p>\r\n<p>&nbsp;</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/Chin-Sopheak/CS-33/CS-39/65d6b553eed99_1708569900.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/Chin-Sopheak/CS-33/CS-39/65d6b553eed99_1708569900_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/Chin-Sopheak/CS-33/CS-39/65d6b553eed99_1708569900_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/Chin-Sopheak/CS-33/CS-39/65d6b553eed99_1708569900_small.jpg\" media=\"(min-width: 320px)\"></picture></div>\r\n<p>&gt;</p>', 6, '2024-05-25'),
(9, 1, 'ខំស្លៀកឈុតក្រហមឲ្យលេចធ្លោ តែ Kelly Rowland បែរមកក្ដៅក្រហាយក្នុងមហោស្រព Cannes', 'International', 'Entertainment', '270524040706-665003b6efbe7_1716519840_large.jpg', '270524040706-665003eeb4bd4_1716519900_large.png', '<p>កាលពីថ្ងៃទី ២១ ខែឧសភា ឆ្នាំ ២០២៤ សារព័ត៌មាន&nbsp;<strong>Page Six</strong>&nbsp;បាន​ធ្វើសេចក្ដីរាយការណ៍ឲ្យដឹងថា តារាចម្រៀង&nbsp;<strong>Kelly Rowland</strong>&nbsp;បាន​បង្ហាញវត្តមាន​ក្នុងមហោស្រពភាពយន្ត&nbsp;<strong>Cannes Film Festival</strong>&nbsp;ដើម្បីចូលរួម​ការចាក់បញ្ចាំងជាផ្លូវការរឿង&nbsp;<strong>\"Marcello Mio&rdquo;</strong>។នៅក្នុងកម្មវិធី&nbsp;<strong>Kelly</strong> បាន​គ្រងនូវឈុតរ៉ូបពណ៌ក្រហមឆ្អិនឆ្អៅ ជាមួយនឹង​គ្រឿងអលង្ការដ៏មាន​តម្លៃថ្លៃ លម្អខ្លួន និង​លើកសម្រស់នាង​កាន់តែស្រស់ស្អាត។ ទោះជាយ៉ាងណា គ្រប់យ៉ាង​បាន​ប្រព្រឹត្តិទៅយ៉ារលូនទៅហើយ ស្រាប់តែមាន​បញ្ហាល្អក់កករក្នុងមួយពព្រិចភ្នែកទៅវិញ ដោយនាង​បាន​ឈ្លោះគ្នាជាមួយនឹង​ក្រុមការងារអ្នកសម្របសម្រួលកម្មវិធី។ស្របពេល​កំពុង​ញញឹមលើកដៃដាក់កាមេរ៉ា និងអ្នកទស្សនាជា​ច្រើននាក់ នាងប្រែមុខជាមិនសប្បាយចិត្ត អំឡុងពេល​ដើរឡើងកាំជណ្ដើរ។ មិនមាន​ការបញ្ជាក់ច្បាស់ការណាមួយត្រូវបានលើកឡើងឡើងថាពេលនោះ ក្រុមការងារស្រីម្នាក់ដែលឈរសម្រួលនោះនិយាយអ្វីទៅកាន់&nbsp;<strong>Kelly Rowland</strong> រហូត​នាងខឹងសម្បារខ្លាំង​បែបនេះ។</p>', 0, '2024-05-27'),
(10, 1, 'ដំបូង! Elon Musk ថា ទាល់តែមានរនាំងពាណិជ្ជកម្ម​ទើប​ទប់ទល់ក្រុមហ៊ុនឡានចិនបាន ឥឡូវលោកប្រែសម្តីបែបនេះទៅវិញ', 'International', 'Social', '270524040842-', '270524040825-66505b3c4b681_1716542220_large.jpg ', '<p>នៅចាំបានទេ កាលពីខែមករា ឆ្នាំ​២០២៤ ស្ថាបនិកក្រុមហ៊ុន Tesla លោក Elon Musk បាន​ព្រមាន​ថា ប្រសិន​បើគ្មាន​រនាំងពាណិជ្ជកម្មណាមួយទេនោះ ក្រុមហ៊ុន​រថយន្តចិន​​នឹងកម្ទេច​ក្រុមហ៊ុន​រថយន្ត​ពិភពលោកច្រើនបំផុត។</p>\r\n<p>&nbsp;</p>\r\n<p>អ្វីដែល​គួរឱ្យភ្ញាក់ផ្អើលបំផុត​នោះ កាលពី​ពាក់កណ្តាលខែឧសភា ឆ្នាំ​២០២៤កន្លងទៅ ​ប្រធានាធិបតីអាមេរិក លោក ចូ បៃឌិន បាន​ប្រកាស​ដំឡើងពន្ធគយ ៤ដង លើការនាំចូល​រថយន្ត​អគ្គិសនី​ចិន ពោលគឺ​ដំឡើងពី ២៥% ដល់ ១០០% ឯណោះ។ វិធានការ​នេះ ហាក់ដូចជាការចង់បាន​របស់លោក Elon Musk ខាងលើនេះដែរ។</p>\r\n<p>ប៉ុន្តែយ៉ាងណាមិញ ក្នុង​សន្និសីទ​បច្ចេកវិទ្យាមួយ​នៅក្រុង​ប៉ារីសតាមរយៈវីដេអូខល នៅថ្ងៃទី២៤ ខែឧសភា ឆ្នាំ​២០២៤ មេ Tesla រូបនេះ បែរជានិយាយថា លោកជំទាស់​នឹង​ការដំឡើង​ពន្ធគយរបស់រដ្ឋាភិបាលអាមេរិកទៅវិញ។</p>\r\n<p>លោកបញ្ជាក់​ថា ទាំងក្រុមហ៊ុន Tesla និងរូបលោក មិន​បានស្នើឱ្យមានការដាក់ពន្ធបែបនេះឡើយ។ លោកមានការភ្ញាក់ផ្អើលខ្លាំង​ចំពោះការប្រកាស​របស់​ប្រធានាធិបតីអាមេរិក។ លោកអះអាងថា Tesla អាច​ប្រកួតប្រជែង​បានយ៉ាងល្អ​នៅទីផ្សារប្រទេស​ចិន ដោយគ្មាន​ពន្ធគយ ពោលគឺ​លោកពេញ​ចិត្ត​នឹង​ការមិនយកពន្ធ៕</p>\r\n<div id=\"gax-inpage-async-1706848478\">\r\n<div id=\"NRh2ecpd6SA5q2icj9XDDz8K2snb2ey1iOmyHCd7qWw4859416805\"></div>\r\n</div>\r\n<p>&gt;</p>', 1, '2024-05-27'),
(11, 1, 'Foden បន្ត​ឡើង​តម្លៃ​ខ្លួន​មិន​ធម្មតា​ក្រោយ​ចប់​​រដូវកាល​ឆ្នាំ​២០២៣/២៤​', 'International', 'Sport', '280524044653-6655c46d7bb6e_1716896820_large.jpg', '280524044653-6655c46e70f87_1716896820_large.jpg', '<p>Foden បន្ត​ឡើង​តម្លៃ​ខ្លួន​មិន​ធម្មតា​ក្រោយ​ចប់​​រដូវកាល​ឆ្នាំ​២០២៣/២៤​</p>\r\n<p>ខ្សែបម្រើ​ Phil Foden បាន​បន្ត​ឡើង​តម្លៃ​មិន​ធម្មតា​ជា​បន្ត​បន្ទាប់​ក្រោយ​ចប់​រដូវកាល​ឆ្នាំ​២០២៣​/២៤ មិន​បាន​ប៉ុន្មាន​ផង​។ នេះ​បើ​យោង​តាម​ស្ថិតិ​របស់​ Transfermarkt កាល​ពី​ពេល​ថ្មីៗ​នេះ​។</p>\r\n<p>សម្រាប់​រដូវ​កាល​ឆ្នាំ​២០២៣​/២៤នេះ​ Foden បាន​ឡើង​តម្លៃ​ខ្លួន​រហូត​ទៅ​ដល់​៣ដង​ទៅ​ហើយ​ តាំង​ពី​តម្លៃ​ខ្លួន​ ១១០អ៊ឺរ៉ូ​ រហូត​ដល់​ ១៥០លាន​អ៊ឺរ៉ូ​ក្រោយ​ចប់​រដូវកាល​បាន​បន្តិច​។</p>\r\n<div id=\"gax-inpage-async-1700714337\">\r\n<div id=\"EiVenqblr1Qx9Ht8c1X1EErrSsx2BCip3tZd3_jNIhE2353614566\"></div>\r\n</div>\r\n<p>នៅ​ក្នុង​រដូវកាល​ឆ្នាំ​២០២៣/២៤​នេះ​ កាល​ពី​ចុង​ឆ្នាំ​២០២៣​កន្លង​ទៅ​​ កីឡាករ​នេះ​មាន​តម្លៃ​ខ្លួន​ប្រមាណ​ ១១០លាន​អ៊ឺរ៉ូ​ប៉ុណ្ណោះ​ ប៉ុន្តែ​ក្រោយ​មាន​បច្ចុប្បន្ន​ភាព​ទីផ្សារ​កីឡាករ​កល​ពី​ពាក់​កណ្ដាល​ខែ​មីនា​ ឆ្នាំ​២០២៤​តម្លៃ​ខ្លួន​របស់​គេ​បាន​កើន​ឡើង​រហូត​ទៅ​ដល់​ ១៣០លាន​អ៊ឺរ៉ូ​ និង​ការ​ធ្វើ​បច្ចុប្បន្ន​កាល​ពី​ពេល​ថ្មីៗ​នេះ​ កីឡាករ​នេះ​ក៏​បាន​ឡើង​រហូត​ទៅ​ទៅ​ដល់​ ១៥០លាន​អ៊ឺរ៉ូ​។ Foden ជា​កីឡាករ​បណ្ដុះបណ្ដាល​ដោយ​ Man City ផ្ទាល់​ដោយ​គេ​មក​លេង​ក្នុង​ក្រុម​ឈុត​ធំ​នៅ​ឆ្នាំ​២០១៨ ក្នុង​តម្លៃ​ខ្លួន​៥លាន​អ៊ឺរ៉ូ​ រហូត​មក​ដល់​តម្លៃ​ខ្លួន​ ១៥០លាន​អ៊ឺរ៉ូ​នេះ​។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c46d7bb6e_1716896820.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c46d7bb6e_1716896820_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c46d7bb6e_1716896820_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c46d7bb6e_1716896820_small.jpg\" media=\"(min-width: 320px)\"></picture></div>', 2, '2024-05-28'),
(12, 1, 'Luka Modric ចង់​ចូល​និវត្តន៍​នៅ​ Real Madrid', 'International', 'Sport', '280524045043-6655c386cb7cd_1716896640_large.jpg', '280524045043-6655c3863e95f_1716896640_large.jpg', '<p>ខ្សែបម្រើ​ Luka Modric និយាយ​ទៅ​កាន់​សារព័ត៌មាន​កាល​ពី​ពេល​ថ្មីៗ​នេះ​ថា​ គេ​ចង់​បញ្ចប់​អាជីព​បាល់ទាត់​ចូល​និវត្តន៍​នៅ​ក្លឹប​ Real Madrid នេះ​តែ​ម្ដង​។​ បើ​យោង​តាម​ការ​ចុះ​ផ្សាយ​របស់​កំពូល​អ្នក​កាសែត​&nbsp;<a title=\"Opens in a new window\" href=\"https://www.facebook.com/fabrizioromanoherewego/posts/pfbid025vcvgg3yPq6hPknfuz6r4cFtvUjPP2DyU8v3Wt2DZ8b8HNTw6CUpyrMXVJmfVM2Zl?__cft__%5B0%5D=AZXpRJ4IZGDuPzAkEAffX7K9d1oUkPxjtw5MdZ9vbb5hGHuJU4O1i02YaWqV8GaiPaQw9Wlw_KvpjuSb1boBUG67uDCZELNzt9hFLT7vyhvk2eOjM5G-XpDbmCxjdzHDtgjxMSeYjqEk8KdqXiHR9wVu9EaRfwmLs7Qjn3SOeQxVNHTAVoXv_gCItVz5IIMJK1PAaExoFDyVgqa8W1ZhijwO&amp;__tn__=%2CO%2CP-R\" target=\"_blank\" rel=\"noopener\">Fabrizio Romano</a>&nbsp;។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c386cb7cd_1716896640.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c386cb7cd_1716896640_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c386cb7cd_1716896640_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c386cb7cd_1716896640_small.jpg\" media=\"(min-width: 320px)\"><img></picture></div>\r\n<div class=\"content-grp-img\">\r\n<div class=\"ad-wrapper\">&nbsp;</div>\r\n</div>\r\n<p>Modric បាន​និយាយ​ថា​៖\" ខ្ញុំ​ចង់​និវត្តន៍​នៅ​ក្លឹប​ Real Madrid នេះ​តែ​ម្ដង​។ ក្លឹប​នេះ​ដូច​ជា​ទៅ​នឹង​ជីវិត​ខ្ញុំ​អញ្ចឹង​។ ការ​សម្រេច​ចិត្ត​ទាក់ទង​នឹង​អនាគត​របស់​ខ្ញុំ​គឺ​បាន​សម្រេច​រួច​រាល់​ហើយ​ ប៉ុន្តែ​ខ្ញុំ​មិន​ទាន់​អាច​ប្រាប់​បាន​នៅ​ឡើយ​ទេ​។ អ្នក​នឹង​ដឹង​បន្ទាប់​ពី​ប្រកួត​ UEFA Champions League វគ្គ​ផ្ដាច់​ព្រ័ត្រ​ \"។</p>\r\n<p>កីឡាករ​នេះ​បន្ត​ថា​៖\" ខ្ញុំ​តែង​តែ​និយាយ​ថា​ ខ្ញុំ​ចង់​ចូល​និវត្តន៍​នៅ​ក្លឹប​មួយ​នេះ​ នេះ​ជា​អ្វី​ដែល​ខ្ញុំ​ចង់​បាន​។ វា​ដូច​ជា​សុបិន​អញ្ចឹង​ ខ្ញុំ​ចាត់​ទុក​ទី​នេះ​ជា​ផ្ទះ​របស់​ខ្ញុំ​។ Real Madrid នៅ​តែ​ជា​ក្លឹប​នៃ​ជីវិត​របស់​ខ្ញុំ​។ ខ្ញុំ​ចង់​បាន​ Farewell ដូច​ Toni Kroos ដែរ​ ពិត​ជា​អស្ចារ្យ​មែន​ទែន​ \"។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c3863e95f_1716896640.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c3863e95f_1716896640_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c3863e95f_1716896640_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/Freelancer-Sport/football(126)/6655c3863e95f_1716896640_small.jpg\" media=\"(min-width: 320px)\"><img></picture></div>\r\n<div id=\"gax-inpage-async-1706848478\">\r\n<div id=\"GPaeIhPSQ-r_u_ug9W0Zak66jmElcbf84h1xqGv-PWc4824639525\">\r\n<div data-demo-link=\"https://damrei.sfo3.cdn.digitaloceanspaces.com/app/2024/may/stargrow/underlay/index.html?ver=2023\" data-link=\"https://clk.ambientdsp.com/track/clk?vc=gaj&amp;tagid=1700714337&amp;brs=149041345640986550&amp;uid=1eslgugllzzc&amp;suid=1eslgugllzzc&amp;ae=1&amp;as=640x1386&amp;ctr=KH&amp;cty=KRONG_KEP&amp;os=WINDOWS&amp;brw=chrome&amp;dvt=2&amp;dom=news.sabay.com.kh&amp;aid&amp;abdl&amp;fid=1714543202&amp;did=gax-hy7ejb8a6ezf&amp;crid=1714544149&amp;ts=1716907793&amp;rnd=10dtf5xcuo&amp;tok=-r001n8787r22&amp;redir=https%3A%2F%2Fwww.facebook.com%2FSTARGROWCAMBODIA\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>បើ​ប្រភព​ដដែល​នេះ​បាន​ឲ្យ​ដឹង​ Luka Modric បាន​ប្រាប់​ Real Madrid ថា​គេ​ចង់​នៅ​បន្ត​ជា​មួយ​ក្លឹប​មួយ​រដូវកាល​បន្ត​ទៀត​ យ៉ាង​ណា​ការ​សម្រេច​ជា​ផ្លូវ​ការ​យ៉ាងណា​នោះ​មិន​ទាន់​ធ្វើ​ការ​សម្រេច​នោះ​ទេ​ដោយ​រង់​ការ​ជួប​ពិភាក្សា​គ្នា​។</p>', 3, '2024-05-28'),
(13, 1, 'កែវ ស្រេងលីហួរ ប្រាប់​មូល​ហេតុ​គេ​ប៉ះសេ​មិន​បាន​ល្អ​ក្នុងជំនួប​មិត្តភាព U20', 'National', 'Sport', '280524045157-6655687973384_1716873300_large.jpg', '280524045157-6655687973384_1716873300_large.jpg', '<p>ក្រុម​​បាល់ទះ​ជម្រើសជាតិ​កម្ពុជា​អាយុ​ក្រោម​២០​ឆ្នាំ​ កាល​ពី​ថ្ងៃ​ទី​២៤ ខែឧសភា ឆ្នាំ​២០២៤ បាន​ធ្វើ​ការ​ប្រកួត​មិត្តភាព​ជាមួយ​ក្លឹប​បាល់ទះ​ស្នងការដ្ឋាន​នគរបាល​រាជធានី​ភ្នំពេញ ដោយ​ក្រុម U20 កម្ពុជា​ចាញ់​​ក្នុង​លទ្ធផល​៣-១ (U20 កម្ពុជា​ឈ្នះ​សិត​ទី​៣​)។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/6655687973384_1716873300.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/6655687973384_1716873300_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/6655687973384_1716873300_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/6655687973384_1716873300_small.jpg\" media=\"(min-width: 320px)\"><img></picture>\r\n<div class=\"caption\">កែវ ស្រេងលីហួរ និងអ្នកប៉ះសេបារាំង Thomas Gill</div>\r\n</div>\r\n<div class=\"content-grp-img\">\r\n<div class=\"ad-wrapper\">&nbsp;</div>\r\n</div>\r\n<p>ក្នុង​ជំនួប​​នេះ​ កែវ ស្រេងលីហួរ ត្រូវ​បាន​​លោក លីជុន ផ្ដល់​ទំនុក​ចិត្ត​ដាក់​ឱ្យ​លេង​ជម្រើស​៦​នាក់​ដំបូង។ នៅ​ដើម​តង់​​សិត​ទី​១ក្រុម U20 កម្ពុជា​ធ្វើ​បាន​ល្អ ប៉ុន្តែ​បន្តិច​ក្រោយ​មក​ហាក់​បី​លេង​មិន​សូវ​ត្រូវ​គ្នា ជាពិសេស​ការ​ចែក​បាល់​របស់ កែវ ស្រេងលីហួរ មិន​សូវ​បាន​ល្អ​ឡើយ ហើយ​រូប​គេ​ត្រូវ​បាន​គ្រូ​បង្វឹក​ជនជាតិ​ចិន​ប្ដូរ​ចេញ​ភ្លាមៗ ជំនួស​មក​វិញ​ដោយកីឡាករ​ស្នងការ​រាជធានីភ្នំពេញ យុន ខេមរះ ។</p>\r\n<div id=\"gax-inpage-async-1700714337\">\r\n<div id=\"MudPx3SKbbMa72Bd4F7Fx2uz0ezrv3QKEPqMcKNZM7A1707054352\">\r\n<div data-demo-link=\"https://damrei.sfo3.cdn.digitaloceanspaces.com/app/2024/may/sting/index.html?ver=2023\" data-link=\"https://clk.ambientdsp.com/track/clk?vc=gaj&amp;tagid=1706848478&amp;brs=149041388449136812&amp;uid=1eslgugllzzc&amp;suid=1eslgugllzzc&amp;ae=1&amp;as=640x1386&amp;ctr=KH&amp;cty=KRONG_KEP&amp;os=WINDOWS&amp;brw=chrome&amp;dvt=2&amp;dom=news.sabay.com.kh&amp;aid&amp;abdl&amp;fid=1715263045&amp;did=gax-zza61rabv251&amp;crid=1715262520&amp;ts=1716907875&amp;rnd=hehcvm3mdm&amp;tok=-v1gwuvxtq70d&amp;redir=https%3A%2F%2Faeononlineshopping.com%2Faeon-phnom-penh-aeon1%2Fbrand%2Fsting\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>អ្វី​ជា​កត្តា​ធ្វើ​ឱ្យ​អតីត​យុវជន​ក្លឹប​បាល់ទះ​វិសាខា​ធ្វើ​មិន​បាន​ល្អ​នា​ថ្ងៃ​នោះ? ក្នុង​កិច្ច​សម្ភាសន៍​ខ្លី​មួយ​ យុវជន​អាយុ​១៩​ឆ្នាំ បាន​ឆ្លើយ​ប្រាប់​ Sabay ថា មក​ពី​កត្តា​បី​​យ៉ាង​រួម​មាន​កត្តា​​ទី​១ កីឡាករ​ថ្មី​មិន​មាន​បទពិសោធន៍​ច្រើន កត្តា​ទី​២ ហ្វឹកហាត់​ជាមួយ​គ្នា​បាន​តិច​តួច និង​កត្តា​ទី​៣ ចាប់​សេវា​មិន​សូវ​បាន​។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/66556871c484c_1716873300.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/66556871c484c_1716873300_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/66556871c484c_1716873300_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/66556871c484c_1716873300_small.jpg\" media=\"(min-width: 320px)\"><img></picture>\r\n<div class=\"caption\">កែវ ស្រេងលីហួរ និង ផុល រតនៈ</div>\r\n</div>\r\n<div id=\"gax-inpage-async-1706848478\">\r\n<div id=\"xf9UJ6H_O3qYno1YSfNToknC8px41rkE16D53NrBQSk1658511119\">\r\n<div data-demo-link=\"https://damrei.sfo3.cdn.digitaloceanspaces.com/app/2024/may/sting/index.html?ver=2023\" data-link=\"https://clk.ambientdsp.com/track/clk?vc=gaj&amp;tagid=1700714337&amp;brs=149041388400328768&amp;uid=1eslgugllzzc&amp;suid=1eslgugllzzc&amp;ae=1&amp;as=640x1386&amp;ctr=KH&amp;cty=KRONG_KEP&amp;os=WINDOWS&amp;brw=chrome&amp;dvt=2&amp;dom=news.sabay.com.kh&amp;aid&amp;abdl&amp;fid=1715263045&amp;did=gax-zza61rabv251&amp;crid=1715262520&amp;ts=1716907874&amp;rnd=1b6r4gzmtq&amp;tok=1qyx39i6un866&amp;redir=https%3A%2F%2Faeononlineshopping.com%2Faeon-phnom-penh-aeon1%2Fbrand%2Fsting\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>\"បាទ​បង! ចំពោះ​ខ្ញុំ​ប៉ះដូច​អត់​សូវ​​កើត ទើប​លោក​គ្រូ​គាត់​ដូរ​ចេញ​ ប៉ុន្តែ​ខ្ញុំ​សារក្រោយ​បើ​មាន​ឱកាស​ខ្ញុំ​នឹង​ខំប្រឹងប្រែង កត្តា​ទី​១ ខាង​ខ្ញុំ​លេង​បាន​ច្រើន​តែ​ពីរ​បី​នាក់​ទេ ចឹង​អ្នក​អត់​បាន​លេង​រៀង​ភ័យៗ​ហើយ​កត្តា​ទី​២​ ចាប់​សឺវីស ចាប់​សឺវីស​អត់​សូវ​បាន​ តែ​ពេល​សិត​ទី​១​ដំបូង​ពួកយើង​ធ្វើ​បាន​ល្អ​ តែ​ដល់​ពេល​ពាក់​កណ្ដាល​សិត ពួកយើង​ចាប់​សឺវីសអត់​សូវ​បាន​ យើង​ឡាក​ទៅ​ហ្មង ហើយ​ណា​មួយ​​ទើប​តែ​ហាត់​អត់​​ទាន់​បាន​មួយ​ខែ ចឹង​លេង​អត់​ទាន់​សង់តង់​&raquo;។ នេះ​បើ​តាម​ការ​បញ្ជាក់​​បន្ថែម​ពី​ កែវ ស្រេងលីហួរ។</p>\r\n<p>អតីត​យុវជន​របស់​ក្លឹប​បាល់​ទះ​វិសាខា​រូប​នេះ បាន​ធ្វើតេស្ត​ជាប់​ជម្រើស​ជាតិ​ទាំង​ U20 និង​ឈុត​ធំ ហើយ​ការ​ប្រកួត​មិត្ត​ភាព​កាល​ពី​ពេល​ថ្មីៗ​នេះ គឺ​ដើម្បី​ត្រៀម​ប្រកួត​ជម្រុះ​ដណ្ដើមពាន​រង្វាន់​បាល់​ទះ​ជើងឯក​អាស៊ី​អាយុ​ក្រោម​២០​ឆ្នាំ​នា​ពេល​ខាង​មុខ។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/66556874c7789_1716873300.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/66556874c7789_1716873300_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/66556874c7789_1716873300_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Volleyball(2)/U20/66556874c7789_1716873300_small.jpg\" media=\"(min-width: 320px)\"><img></picture></div>\r\n<p>គួរ​បញ្ជាក់​ដែរ​ថា បើ​មិន​មាន​ការប្រែប្រួល​ទេក្រុម​បាល់​ទះ​ជម្រើសជាតិ​កម្ពុជា​អាយុ​ក្រោម​២០​ឆ្នាំ នឹង​ធ្វើ​ដំណើរ​ទៅ​កាន់​​ទឹកដី​កណ្ដាល​ប្រទេស​ថៃ នៅ​ថ្ងៃ​ទី​២៤​ ខែ​មិថុនា ឆ្នាំ​២០២៤ ដើម្បី​ប្រកួត​ជាមួយ​ U20 វៀតណាម​។ ក្រុម​ណា​ឈ្នះ​នឹង​ឡើង​ទៅ​ប្រកួត​​វគ្គ​ផ្ដាច់ព្រ័ត្រ​នៅ​ប្រទេសឥណ្ឌូណេស៊ីនាថ្ងៃទី២៣ ខែកក្តដា ឆ្នាំ​២០២៤​៕​​​​​​​​​</p>', 3, '2024-05-28'),
(14, 1, 'លោក ឡាយ គឹមហុង៖ ខ្ញុំមានមុខរបរជាច្រើនក្នុងដៃហើយ តែមុខរបរប្រេងរឹតមួយនេះខ្ញុំមិនបោះបង់ទេ ព្រោះជារមតកតជំនាន់១០០ឆ្នាំមកហើយ', 'National', 'Entertainment', '280524045344-64e32065c09e4_1692606540_large.jpg', '280524045344-64e32065c09e4_1692606540_large.jpg', '<p>ជាស្ថាបនិក និងជាអ្នករកស៊ីមួយរូបមានមុខរបរជាច្រើនក្នុងដៃ លោក ឡាយ គឹមហុង បានលើកឡើងថា &laquo;ទោះខ្ញុំបរាជ័យច្រើនដងប៉ុណ្ណា តែខ្ញុំនៅប្រឹងបន្តទៀត ដើម្បីថែរក្សាមុខរបរពីដូនតារបស់ខ្ញុំ ព្រោះជាមរតកតជំនាន់ប្រមាណ១០០ឆ្នាំមកហើយ&raquo; ។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/KevPumsen/Suin33/64e32065c09e4_1692606540.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e32065c09e4_1692606540_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e32065c09e4_1692606540_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e32065c09e4_1692606540_small.jpg\" media=\"(min-width: 320px)\"><img></picture></div>\r\n<div class=\"content-grp-img\">\r\n<div class=\"ad-wrapper\">&nbsp;</div>\r\n</div>\r\n<p>លោក ឡាយ គឹមហុង គឺជាអគ្គនាយកនៃក្រុមហ៊ុន ហ្គោលដែនត្រាហ្គន ខូអិលធីឌី ដែលជាក្រុមហ៊ុនផលិតប្រេងរឹតនាគមាស លោកបានប្រាប់ Sabay ថាលោកបានចាប់ផ្ដើមអាជីវកម្មមួយនេះ ក្នុងឆ្នាំ២០២០ មកម្លេះ និងបានដំណើរការទាំងស្រុងប្រមាណជា១ឆ្នាំកន្លេះនេះប៉ុណ្ណោះ ។ ដោយឡែកលោក ថាតាមពិតទៅប្រេងរឹតដែលលោកផលិតនេះ គឺមានរូបមន្តតាំងពីរាប់រយឆ្នាំមុនមកម្លេះ ដោយលោកបានបន្តមរតកមួយនេះពីប៉ារបស់លោកផ្ទាល់ ។ លោកបន្ថែមទៀតថា ព្រោះតែចង់រក្សាទ្រព្យដំណែលរបស់ឪពុក ទោះខ្ញុំត្រូវជួបឧបសគ្គ និងបរាជ័យជាច្រើនដងលើអាជីវកម្មមួយនេះក៏ដោយ តែខ្ញុំនៅតែបន្ត ។</p>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/KevPumsen/Suin33/64e3206679a57_1692606540.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e3206679a57_1692606540_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e3206679a57_1692606540_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e3206679a57_1692606540_small.jpg\" media=\"(min-width: 320px)\"><img></picture></div>\r\n<div id=\"gax-inpage-async-1700714337\">\r\n<div id=\"reIW1WRqX6u1J7vn-HQV5nEX-d3-NTdk768a5XRHQx43570974060\">\r\n<div data-demo-link=\"https://damrei.sfo3.cdn.digitaloceanspaces.com/app/2024/may/acnes/underlay/v1/index.html?ver=2023\" data-link=\"https://clk.ambientdsp.com/track/clk?vc=gaj&amp;tagid=1706848478&amp;brs=149041445962580391&amp;uid=1eslgugllzzc&amp;suid=1eslgugllzzc&amp;ae=1&amp;as=640x1386&amp;ctr=KH&amp;cty=KRONG_KEP&amp;os=WINDOWS&amp;brw=chrome&amp;dvt=2&amp;dom=news.sabay.com.kh&amp;aid&amp;abdl&amp;fid=1714651806&amp;did=gax-ex8bc3qd5fq4&amp;crid=1714647650&amp;ts=1716907985&amp;rnd=eu8cmplxuh&amp;tok=1j3xdcegwpo0f&amp;redir=https%3A%2F%2Fwww.facebook.com%2FCambodiaAcnes\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"content-grp-img\"><picture class=\"lozad\" data-iesrc=\"//media.sabay.com/media/KevPumsen/Suin33/64e320645ad24_1692606540.jpg\" data-alt=\"\" data-loaded=\"true\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e320645ad24_1692606540_large.jpg\" media=\"(min-width: 1920px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e320645ad24_1692606540_medium.jpg\" media=\"(min-width: 980px)\"><source srcset=\"https://cdn.sabay.com/cdn/media.sabay.com/media/KevPumsen/Suin33/64e320645ad24_1692606540_small.jpg\" media=\"(min-width: 320px)\"><img></picture></div>\r\n<p>ក្នុងកិច្ចសម្ភាសន៍ជាមួយកម្មវិធី Starting Up លោក ឡាយ គឹមហុង សហគ្រិនដ៏ឆ្នើមរូបនេះ បានចែករំលែកនូវបទពិសោធន៍ជីវិតមួយចំនួន ក្នុងនាមជាអ្នកជំនួញដែលលោកបានឆ្លងកាត់កន្លងមក។ ជាងនេះទៀតលោកបាន ផ្ដល់នូវតិចនិច គន្លិះ ក៏ដូចជាយុទ្ធសាស្ត្រជាច្រើន សម្រាប់អ្នកដែលមានបំណងចង់ចាប់ផ្ដើមរកស៊ី ធ្វើអាជីវកម្មថ្មីថ្មោងផងដែរ។</p>\r\n<div id=\"gax-inpage-async-1706848478\">\r\n<div id=\"yi0eIQ9MHUOGT4-pBp_xD4dZtBaDzJM95_U8lHZd8_k5654548145\">\r\n<div data-demo-link=\"https://damrei.sfo3.cdn.digitaloceanspaces.com/app/2024/may/sting/index.html?ver=2023\" data-link=\"https://clk.ambientdsp.com/track/clk?vc=gaj&amp;tagid=1700714337&amp;brs=149041445917848657&amp;uid=1eslgugllzzc&amp;suid=1eslgugllzzc&amp;ae=1&amp;as=640x1386&amp;ctr=KH&amp;cty=KRONG_KEP&amp;os=WINDOWS&amp;brw=chrome&amp;dvt=2&amp;dom=news.sabay.com.kh&amp;aid&amp;abdl&amp;fid=1715263045&amp;did=gax-zza61rabv251&amp;crid=1715262520&amp;ts=1716907985&amp;rnd=1kb85nbd4g&amp;tok=-18fv1341wz6id&amp;redir=https%3A%2F%2Faeononlineshopping.com%2Faeon-phnom-penh-aeon1%2Fbrand%2Fsting\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>សូមទស្សនាវីដេអូពេញខាងក្រោម :</p>\r\n<p><iframe src=\"https://www.facebook.com/plugins/video.php?height=314&amp;href=https%3A%2F%2Fwww.facebook.com%2FSabayNewsSocial%2Fvideos%2F1366361777424992%2F&amp;show_text=false&amp;width=560&amp;t=0\" width=\"560\" height=\"314\" frameborder=\"0\" scrolling=\"no\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowfullscreen=\"allowfullscreen\"></iframe></p>', 1, '2024-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `profile`) VALUES
(1, 'sazz', 'sazz@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '240524072523-649b75c2c6a74_1687909800_medium.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `followus`
--
ALTER TABLE `followus`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followus`
--
ALTER TABLE `followus`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
