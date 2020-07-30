-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-30 15:37:47
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `hackfes2020`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `frame_tbl`
--

CREATE TABLE `frame_tbl` (
  `frame_ai` int(12) NOT NULL,
  `frame_theme_ai` int(11) NOT NULL,
  `frame_class` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `frame_left` int(16) NOT NULL,
  `frame_top` int(11) NOT NULL,
  `frame_width` int(11) NOT NULL,
  `frame_height` int(11) NOT NULL,
  `frame_text` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `frame_color` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `frame_bgcolor` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `frame_tbl`
--

INSERT INTO `frame_tbl` (`frame_ai`, `frame_theme_ai`, `frame_class`, `frame_left`, `frame_top`, `frame_width`, `frame_height`, `frame_text`, `frame_color`, `frame_bgcolor`) VALUES
(120, 2, 'group', 55, 187, 582, 581, '不倫は悪い', '', ''),
(121, 2, 'group', 762, 184, 605, 584, '不倫は悪くない', '', ''),
(122, 2, 'opinion', 86, 250, 186, 29, '法律上も悪いのは明らか', '', ''),
(123, 2, 'opinion', 824, 235, 156, 27, '本人間の問題である', '', ''),
(124, 2, 'opinion', 826, 291, 246, 32, '他人が首を突っ込むことではない', '', ''),
(125, 2, 'opinion', 827, 359, 480, 29, '全然大丈夫（自分の彼女がそうなってもOK。ただしお金下さい）', '', ''),
(139, 1, 'group', 32, 180, 577, 547, '自然は保護されるべき', '', ''),
(140, 1, 'group', 767, 183, 611, 539, '開発は問題ない', '', ''),
(141, 1, 'opinion', 69, 234, 148, 28, '生態系を壊すから', '', ''),
(142, 1, 'opinion', 815, 233, 258, 30, '人間の生活のために開発すべき', '', ''),
(143, 1, 'opinion', 68, 283, 302, 29, '川辺ダムがないため今回の水害が起きた', '', ''),
(306, 102, 'group', 53, 167, 545, 510, '賛成', '', ''),
(307, 102, 'group', 822, 164, 547, 510, '反対', '', ''),
(308, 102, 'opinion', 89, 206, 95, 26, 'いいと思う', '', ''),
(309, 102, 'opinion', 886, 195, 124, 31, 'よくないと思う', '', ''),
(310, 104, 'group', 12, 160, 300, 500, '賛成', '', ''),
(311, 104, 'group', 803, 188, 300, 500, '反対', '', ''),
(312, 104, 'opinion', 41, 199, 156, 54, '楽しかった', '', ''),
(313, 105, 'group', 10, 170, 300, 500, '賛成', '', ''),
(314, 105, 'group', 863, 201, 300, 500, '反対', '', ''),
(315, 105, 'opinion', 25, 232, 156, 54, '楽しかった', '', ''),
(316, 106, 'group', 10, 170, 300, 500, 'する', '', ''),
(317, 106, 'group', 820, 183, 300, 500, 'しない', '', ''),
(318, 106, 'opinion', 85, 202, 156, 54, '楽しかった', '', ''),
(345, 107, 'group', 60, 166, 300, 500, 'する', '', ''),
(346, 107, 'group', 862, 188, 300, 500, 'しない', '', ''),
(347, 107, 'opinion', 100, 213, 156, 54, '楽しかった', '', ''),
(348, 108, 'group', 10, 170, 300, 500, 'する', '', ''),
(349, 108, 'group', 713, 170, 300, 500, 'しない', '', ''),
(350, 108, 'opinion', 52, 212, 156, 54, '楽しかった', '', ''),
(351, 109, 'group', 10, 170, 300, 500, 'する', '', ''),
(352, 109, 'group', 614, 168, 300, 500, 'しない', '', ''),
(353, 109, 'opinion', 76, 235, 156, 54, '楽しかった', '', ''),
(354, 110, 'group', 83, 169, 300, 500, 'する', '', ''),
(355, 110, 'group', 758, 181, 300, 500, 'しない', '', ''),
(356, 110, 'opinion', 155, 213, 156, 54, '楽しかった', '', ''),
(391, 101, 'group', 23, 188, 390, 541, '児玉さん', '', ''),
(392, 101, 'group', 439, 188, 369, 539, '四橋さん', '', ''),
(393, 101, 'group', 836, 190, 370, 535, '郁也くん', '', ''),
(394, 101, 'opinion', 449, 213, 110, 20, '馬場 浩乃', '', ''),
(395, 101, 'opinion', 618, 212, 110, 20, '岡田 さち', '', ''),
(396, 101, 'opinion', 31, 201, 110, 20, '井上 亜里沙', '', ''),
(397, 101, 'opinion', 28, 378, 110, 20, '田中 雅代', '', ''),
(398, 101, 'opinion', 26, 346, 110, 20, 'チン ミンセン', '', ''),
(399, 101, 'opinion', 448, 242, 110, 20, '北島 由美恵', '', ''),
(400, 101, 'opinion', 32, 233, 110, 20, '四橋 健', '', ''),
(401, 101, 'opinion', 450, 269, 110, 20, '榊 航也', '', ''),
(402, 101, 'opinion', 863, 391, 110, 20, '四方田 有香', '', ''),
(403, 101, 'opinion', 27, 319, 110, 20, '手島 英津子', '', ''),
(404, 101, 'opinion', 29, 291, 110, 20, '安部 大輔', '', ''),
(405, 101, 'opinion', 448, 324, 110, 20, '松浦 充', '', ''),
(406, 101, 'opinion', 29, 497, 110, 20, '田中 光大', '', ''),
(407, 101, 'opinion', 449, 295, 110, 20, '明瀬 智博', '', ''),
(408, 101, 'opinion', 862, 276, 110, 20, '中村 空海', '', ''),
(409, 101, 'opinion', 862, 306, 110, 20, '佐々木 紀人', '', ''),
(410, 101, 'opinion', 863, 363, 110, 20, '冨井 洋佑', '', ''),
(411, 101, 'opinion', 863, 417, 110, 20, '久保 一誠', '', ''),
(412, 101, 'opinion', 30, 614, 110, 20, '貞野 晧成', '', ''),
(413, 101, 'opinion', 27, 466, 110, 20, '七字 晃正', '', ''),
(414, 101, 'opinion', 28, 439, 110, 20, '宮田 正樹', '', ''),
(415, 101, 'opinion', 28, 409, 110, 20, '下田 浩之', '', ''),
(416, 101, 'opinion', 861, 245, 110, 20, '新嶋 雄一郎', '', ''),
(417, 101, 'opinion', 29, 586, 110, 20, '稲葉 光治', '', ''),
(418, 101, 'opinion', 29, 556, 110, 20, '藤井 みゆき', '', ''),
(419, 101, 'opinion', 29, 526, 110, 20, '浅野 泰輔', '', ''),
(420, 101, 'opinion', 29, 263, 110, 20, '城井 郁也', '', ''),
(421, 101, 'opinion', 862, 334, 110, 20, '吉嗣 弘邦', '', ''),
(422, 101, 'opinion', 863, 444, 110, 20, '行徳 郁美', '', ''),
(423, 101, 'opinion', 863, 213, 97, 22, '児玉さん', '', ''),
(424, 101, 'opinion', 1249, 232, 97, 22, 'タロ先生', '', ''),
(470, 5, 'group', 567, 183, 487, 336, '森林開発', '', ''),
(471, 5, 'group', 21, 235, 787, 459, 'ジェンダー', '', ''),
(472, 5, 'group', 55, 278, 237, 90, '優勝', '', ''),
(473, 5, 'group', 58, 373, 231, 88, '第２位', '', ''),
(474, 5, 'group', 54, 510, 231, 88, '第３位', '', ''),
(475, 5, 'opinion', 362, 555, 189, 45, 'リア充絶大に倒すMAN\'s\n城井 吉嗣', '', ''),
(476, 5, 'opinion', 69, 527, 189, 45, 'I❤︎me\n稲葉 藤井 浅野', '', ''),
(477, 5, 'opinion', 362, 482, 189, 46, 'bon脳\n久保 冨井 新嶋', '', ''),
(478, 5, 'opinion', 364, 413, 187, 43, 'ひとりでできるもん改\n七字 貞野', '', ''),
(479, 5, 'opinion', 364, 344, 187, 45, 'チームわくわくさん\n下田 宮田', '', ''),
(480, 5, 'opinion', 843, 251, 186, 43, 'のりそら\n中村　佐々木', '', ''),
(481, 5, 'opinion', 72, 397, 187, 47, 'たまご\n手嶋　安部　松浦　明瀬', '', ''),
(482, 5, 'opinion', 583, 417, 186, 43, 'ギャルーズ\n四方田　中原　行徳', '', ''),
(483, 5, 'opinion', 74, 304, 188, 43, 'JAWS\n岡田　馬場　四橋　榊', '', ''),
(484, 5, 'opinion', 363, 263, 189, 48, 'TPE/FUK\n北島　チン　田中　井上', '', ''),
(485, 5, 'opinion', 843, 362, 190, 45, 'じぇーたい\n田中', '', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `theme_tbl`
--

CREATE TABLE `theme_tbl` (
  `theme_ai` int(12) NOT NULL,
  `theme_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `theme_color` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `theme_bgcolor` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `theme_tbl`
--

INSERT INTO `theme_tbl` (`theme_ai`, `theme_name`, `theme_color`, `theme_bgcolor`) VALUES
(5, 'Hack Fes 2020 プロダクト', '', ''),
(101, '浮気しそうな人', '', ''),
(110, 'ハックフェスする？', '', '');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `frame_tbl`
--
ALTER TABLE `frame_tbl`
  ADD PRIMARY KEY (`frame_ai`);

--
-- テーブルのインデックス `theme_tbl`
--
ALTER TABLE `theme_tbl`
  ADD PRIMARY KEY (`theme_ai`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `frame_tbl`
--
ALTER TABLE `frame_tbl`
  MODIFY `frame_ai` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- テーブルのAUTO_INCREMENT `theme_tbl`
--
ALTER TABLE `theme_tbl`
  MODIFY `theme_ai` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
