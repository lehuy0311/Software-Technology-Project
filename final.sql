-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 07:37 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbl5`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `icon_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liked_post` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `name`, `username`, `password`, `phonenumber`, `email`, `icon_image`, `liked_post`) VALUES
('AD1', 'Le Huy', 'lehuy1234', '123456', '0901962492', 'lehuy0311@gmail.com', 'man3.png', NULL),
('AD2', 'Khai Chuong', 'chuong546', '123456', '9317298312', 'chuong123@gmail.com', '', NULL),
('AD3', 'Minh Hieu', 'hieu123', '123456', '0901962492', 'hieu@gmail.com', '', NULL),
('AD4', 'Quoc Bao', 'bao456', '123456', '9317298312', 'bao@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_cmt` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_post` varchar(50) NOT NULL,
  `id_parent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_cmt`, `id_user`, `id_post`, `id_parent`, `time`, `content`) VALUES
('1', 'CU1', '1', NULL, '2022-06-11 03:19:53', 'Đưa thuốc hoặc pay acc'),
('2', 'CU2', '1', NULL, '2022-06-11 03:19:53', 'Hay quá, thật tuyệt vời và ý nghĩa.'),
('3', 'CU9', '1', '2', '2022-06-14 09:14:17', '凄いですね！素晴らしいですね！'),
('5', 'CU1 ', '1 ', NULL, '2022-06-16 10:52:49', 'alo'),
('6', 'CU1 ', '1 ', '2 ', '2022-06-16 10:53:21', 'loa'),
('7', 'DR1 ', '1 ', NULL, '2022-06-20 05:49:11', 'alo minna'),
('8', 'DR1 ', '1 ', '1 ', '2022-06-20 05:49:24', 'thanks');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_user` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `icon_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liked_post` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_user`, `name`, `username`, `password`, `phonenumber`, `email`, `icon_image`, `liked_post`) VALUES
('CU1', 'Mai Van Ha', 'ha1234', '123456', '4534253253', 'ha@gmail.com', 'man1.png', '2, 4 '),
('CU10', 'quang', 'qang1234', '123414', '231512521521', 'quang@gmail.com', '', 'null'),
('CU2', 'Minh Tien', 'tien1234', '123456', '9317298312', 'tien@gmail.com', '', 'null'),
('CU3', 'Song Han', 'han1234', '123456', '423432523', 'han@gmail.com', '', 'null'),
('CU4', 'Ngoc Anh', 'anh1234', '123456', '151251425', 'anh@gmail.com', '', 'null'),
('CU5', 'Bui Quoc', 'quoc1234', '1111123', '134324234', 'quoc@gmail.com', '', 'null'),
('CU6', 'Long', 'long1234', '123456', '147548454', 'long@gmail.com', '', 'null'),
('CU7', 'Son', 'son1234', '123456', '92834298808', 'Son@gmail.com', '', 'null'),
('CU8', 'Phuc', 'phuc1234', '123456', '3422225342', 'phuc@gmail.com', '', 'null'),
('CU9', 'Nguyen', 'nguyen12423', '123456', '3252346234', 'nguyen@gmail.com', 'man3.png', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id_dr` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `icon_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tag` varchar(50) NOT NULL,
  `dr_high` tinyint(1) DEFAULT NULL,
  `sum_like` text DEFAULT NULL,
  `image_prove` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `want_high` tinyint(1) DEFAULT NULL,
  `id_rank` varchar(50) DEFAULT NULL,
  `liked_post` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id_dr`, `name`, `username`, `password`, `phonenumber`, `email`, `icon_image`, `id_tag`, `dr_high`, `sum_like`, `image_prove`, `want_high`, `id_rank`, `liked_post`) VALUES
('DR1', 'Le Huy', 'huy123', '123456', '4534253253', 'lehuy0311@gmail.com', 'man2.png', '1', 1, '0', 'authority.png', 0, '0', '4, 2 '),
('DR10', 'Quynh', 'quynh12312', '324234', '32423424', 'quynh@gmail.com', '', '2', 1, '999', '', 0, '1', NULL),
('DR11', 'Loi', 'loi123', '12321312', '312312312', 'loi@gmail.com', '', '3', 1, '888', '', 0, '2', NULL),
('DR12', 'Tho', 'tho123', '3123121312', '31231231', 'tho@gmail.com', '', '4', 1, '777', '', 0, '3', NULL),
('DR13', 'Trong', 'trong123', '312321', '214143143', 'trong@gmail.com', '', '5', 1, '666', '', 0, '4', NULL),
('DR14', 'Chien', 'chien124', '12324123123123', '31231231', 'chien@gmail.com', '', '3', 0, '555', '', 1, '5', NULL),
('DR15', 'Nghia', 'nghia123', '123123', '43414323', 'nghia@gmail.com', '', '2', 0, '444', '', 0, '6', NULL),
('DR16', 'Dat', 'dat1234', '31231313', '3123131', 'dat@gmail.com', 'man1.png', '3', 0, '328', '', 0, '7', '1, '),
('DR17', 'Thinh', 'thinh1231', '31231313', '12312313', 'thinh@gmail.com', 'man3.png', '1', 0, '223', '', 1, '8', NULL),
('DR18', 'Diep', 'diep12321', '3123131', '3123131', 'diep@gmail.com', 'man2.png', '2', 0, '204', '', 1, '9', NULL),
('DR19', 'Thai', 'thai12432', '31231312312', '3123131', 'thai@gmail.com', '', '5', 0, '111', '', 0, '10', NULL),
('DR2', 'Thanh', 'thanh123', '123456', '324234234', 'thanh@gmail.com', '', '4', 0, '50', '', 1, '', NULL),
('DR20', 'Minh', 'minh123123', '3123131', '31231313', 'minh@gmail.com', '', '3', 0, '0', '', 0, '', NULL),
('DR3', 'Danh', 'danh123', '123456', '43143242', 'danh@gmail.com', '', '5', 0, '0', '', 0, '', NULL),
('DR4', 'Linh', 'linh1223', '1223456', '23432423123', 'linh@gmail.com', '', '1', 0, '0', '', 0, '', NULL),
('DR5', 'Quan', 'quan1234', '123456', '8372462784', 'quan@gmail.com', '', '4', 0, '0', '', 0, '', NULL),
('DR6', 'Hieu', 'hieu123', '123456', '7657575757', 'hieu@gmail.com', '', '2', 0, '0', '', 0, '', NULL),
('DR7', 'Phuc', 'phuc123', '123456', '4324242', 'phuc@gmail.com', 'drListLogo.png', '4', 0, '1', '', 0, '', '2, 3 '),
('DR8', 'Phuong', 'phuong123', '12324265', '423687424', 'phuong@gmail.com', '', '1', 0, '0', '', 0, '', NULL),
('DR9', 'Hoi', 'Hoi123', '12324324', '4324242442', 'hoi@gmail.com', '', '5', 0, '0', '', 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id_msg` int(11) NOT NULL,
  `id_sender` varchar(50) NOT NULL,
  `id_receiver` varchar(50) NOT NULL,
  `ava1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ava2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` varchar(50) NOT NULL,
  `id_dr` varchar(50) NOT NULL,
  `id_tag` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `title` varchar(50) DEFAULT NULL,
  `content` text NOT NULL,
  `liked` text DEFAULT NULL,
  `dr_check` varchar(50) NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `id_dr`, `id_tag`, `time`, `title`, `content`, `liked`, `dr_check`, `image_path`) VALUES
('1', 'DR16', '3', '2022-06-21 08:18:33', 'Chăm sóc da như thế nào?', '  Da cũng giống như lớp quần áo mặc hàng ngày của cơ thể, tiếp xúc với nhiều tác động của môi trường như nắng, bụi bẩn, tia UV,… Dù bạn không ra ngoài thì da vẫn bị tác động bởi ánh sáng xanh từ điện thoại, tivi, máy tính,…\n\n  Một trong những sai lầm phổ biến nhất là sử dụng sai thứ tự những sản phẩm chăm sóc da. Để có một làn da khỏe mạnh, bạn có thể tham khảo quy trình sau:\n\nBước 1: Tẩy trang\n  Đây là bước quan trọng nhất trong quy trình chăm sóc da. Nhiều người lầm tưởng chỉ cần tẩy trang khi make up nhưng thực tế, dù bạn để mặt mộc hay chỉ sử dụng kem chống nắng thì da cũng cần tẩy trang. Hiện nay trên thị trường đang có hai loại tẩy trang cơ bản là nước tẩy trang và dầu tẩy trang.\n\n  Nếu bạn chỉ dùng kem chống nắng hoặc để mặt mộc thì chỉ cần dùng nước tẩy trang. Tuy nhiên, nếu bạn có make up thì nên dùng dầu tẩy trang để làm sạch lớp trang điểm nhưng vẫn không bị khô da.\n\n  Nếu sử dụng dầu tẩy trang, sau khi massage bạn nên lấy ít nước rồi massage lần hai trước khi rửa mặt để lấy sạch dầu thừa trên mặt và da không bị bết dính. Đây còn được gọi là bước nhũ hóa.\n\nBước 2: Rửa mặt với sữa rửa mặt\n  Tẩy trang hay nhũ hóa đôi khi vẫn còn bụi bẩn bám trên khuôn mặt. Do đó, để làn da được sạch hoàn toàn, bạn cần dùng thêm sữa rửa mặt. Đây là bước bắt buộc trong quy trình chăm sóc da cơ bản. Nếu da bạn là da dầu hoặc da hỗn hợp thì nên dùng sữa rửa mặt tạo bọt. Nếu thuộc những loại da khác thì nên dùng dạng gel để da không bị lấy hết dầu và không bị khô da.\n\nBước 3: Tẩy da chết\n  Đối với bước tẩy da chết, bạn chỉ nên thực hiện 1 - 2 lần/tuần. Tẩy da chết sẽ làm da sạch sâu hơn, loại bỏ triệt để tế bào chết cũng như lớp sừng còn bám trên da để làm đều màu da, thông thoáng lỗ chân lông. \n\n  Việc tẩy da chết nên tiến hành sau khi rửa mặt. Vì sau khi tẩy da chết, da sẽ bước vào trạng thái sẵn sàng hấp thụ dưỡng chất.\n\nBước 4: Dùng Toner hoặc Lotion\n  Toner hoặc Lotion có tác dụng cân bằng độ pH, phục hồi da, đem lại cho bạn làn da mịn màng, mềm mại sau khi rửa mặt. Toner cũng có tác dụng làm sạch tuyệt đối những bụi bẩn còn bám trên gương mặt. Bạn chỉ cần cho Toner ra bông rồi thoa đều lên mặt, vỗ nhẹ rồi để dưỡng chất tự thẩm thấu.\n\nBước 5: Dùng Serum đặc trị\n  Đây là bước dành cho những bạn đang gặp vấn đề về da như mụn, nám,… Bạn cần dùng tới serum đặc trị sau khi sử dụng toner. Nếu serum của bạn chứa AHA, BHA hay Retinol thì nên để trên da 20 - 30 phút để thẩm thấu rồi sử dụng các bước tiếp theo. Trình tự sử dụng sản phẩm đặc trị được khuyên là từ sản phẩm dạng lỏng tới dạng đặc.\n\nBước 6: Dưỡng ẩm\n  Nếu da bạn không gặp nhiều vấn đề và không cần dùng serum đặc trị thì chỉ cần dùng kem dưỡng ẩm là đủ. Kem dưỡng lành tính là kem dưỡng chứa Hyaluronic acid. Khi dùng kem dưỡng ẩm, tinh chất sẽ thẩm thấu vào sâu bên trong, đem lại cho bạn làn da mịn màng và không bị bong tróc.\n\nBước 7: Dưỡng vùng da mắt\n  Đây là bước mà khá nhiều chị em bỏ qua. Da mắt là vùng da dễ bị quầng thâm, bọng mắt. Vì vậy, trong chu trình chăm sóc da cơ bản, chị em không nên bỏ qua bước này. Khi chăm sóc vùng da mắt, nên dùng ngón áp út để massage để không bị tổn thương do da ở vùng mắt khá mỏng.\n\nBước 8: Dùng kem chống nắng\n  Cách tốt nhất để bảo vệ da chính là dùng kem chống nắng. Nhiều chị em lầm tưởng rằng chỉ cần dùng kem chống nắng vào những khi trời nắng to. Thực tế, dù trời đang dịu mát thì tia UV vẫn hoạt động. Ngoài dùng kem chống nắng, bạn cần mặc quần áo dài tay, đội nón khi ra khỏi nhà để làn da hạn chế tiếp xúc với nắng và bụi bẩn. Khi chọn kem chống nắng, hãy nhớ chọn loại phù hợp với làn da của mình.                    ', '328', 'DR11', 'Da_lieu.jpg'),
('2', 'DR7', '4', '2022-06-21 08:09:35', 'Phòng chống ung thư', '  Hiện nay, bạn có thể dễ dàng tìm hiểu về những cách phòng chống ung thư trên Internet. Tuy nhiên, đôi khi chúng sẽ khiến bạn cảm thấy bối rối, vì một phương pháp cụ thể có thể được đề xuất trong bài báo khoa học nhưng lại bị bác bỏ trong một nghiên cứu khác.\r\n\r\n  Dù các chuyên gia vẫn đang tìm kiếm và phát triển những cách phòng ngừa ung thư tối ưu nhất có thể, bạn cần hiểu rõ một điều rằng, lối sống là yếu tố ảnh hưởng lớn nhất đến nguy cơ xuất hiện ung thư. Do đó, nếu bạn quan tâm đến việc làm thế nào để phòng ngừa ung thư hiệu quả, hãy bắt đầu với việc thay đổi những thói quen sinh hoạt theo chiều hướng tích cực.\r\n\r\n1: KHÔNG HÚT THUỐC\r\n  Dù bạn sử dụng bất kỳ loại thuốc lá nào, chẳng hạn như thuốc lào, thuốc lá Shisha… thì chúng đều có nguy cơ gây đột biến tế bào. Hút thuốc lá có mối liên hệ mật thiết với nhiều loại ung thư, bao gồm ung thư phổi, miệng, cổ họng, thanh quản, tuyến tụy, bàng quang, cổ tử cung và thận.\r\n\r\n  Ngoài ra, nhai thuốc lá còn liên quan đến ung thư khoang miệng và tuyến tụy. Ngay cả khi bạn không trực tiếp sử dụng thuốc lá, tiếp xúc với khói thuốc cũng được xem là hút thuốc lá gián tiếp và cũng có thể làm tăng nguy cơ ung thư phổi.\r\n\r\n  Để ngăn ngừa ung thư, cách tốt nhất là bạn nên tránh xa thuốc lá hoặc bỏ thuốc lá. Hãy hỏi bác sĩ về những sản phẩm hỗ trợ cai thuốc lá và một số kế hoạch bỏ thuốc lá hiệu quả.\r\n\r\n2: CHẾ ĐỘ ĂN UỐNG HỢP LÝ\r\n  Ăn nhiều trái cây cũng như rau củ quả đa dạng.\r\n  Ít tiêu thụ các loại thực phẩm chứa hàm lượng calo cao, chẳng hạn như đường tinh chế và chất béo từ các nguồn động vật để tránh thừa cân.\r\n  Nếu muốn dùng thức uống chứa cồn như bia, rượu…, bạn cần uống trong mức độ cho phép. Nồng độ cồn cùng với mức độ thường xuyên mà cơ thể hấp thụ tỷ lệ thuận với nguy cơ gây ung thư.\r\n  Hạn chế dùng thực phẩm chế biến sẵn.\r\n\r\n3: CHĂM TẬP THỂ DỤC THỂ THAO\r\n  Ngoài việc giúp bạn kiểm soát cân nặng, tập luyện thể dục thể thao có thể tăng cường sức khỏe, từ đó làm giảm nguy cơ mắc ung thư vú và ung thư ruột kết.\r\n\r\n  Người lớn tham gia vào bất kỳ hoạt động thể chất nào cũng đều đạt được một số lợi ích về sức khỏe. Tuy nhiên, để có thể đạt được lợi ích tối đa, bạn cần cố gắng tập ít nhất 150 phút mỗi tuần với các bài tập nhẹ. Đối với những hoạt động mạnh, thời gian tối thiểu cho mỗi tuần sẽ là 75 phút. Bạn cũng có thể thực hiện kết hợp hai loại vận động cùng lúc. Để làm được điều này, bạn hãy bắt đầu tập thói quen rèn luyện thể chất mỗi ngày 30 phút.\r\n\r\n4: TRÁNH TIẾP XÚC ÁNH NẮNG TRỰC TIẾP\r\n  Hạn chế tiếp xúc trực tiếp với ánh nắng mặt trời là cách phòng chống ung thư da đơn giản nhất, đây là một trong những loại ung thư phổ biến hiện nay. Bạn có thể:\r\n  + Tránh ra đường vào buổi trưa, đặc biệt trong khoảng thời gian từ 10 giờ sáng đến 4 giờ chiều – thời điểm số lượng các tia cực tím cao nhất.\r\n  + Trú trong bóng râm: khi ra đường, bạn hãy chọn dừng chân ở những nơi có bóng mát nhằm cản bớt một phần ánh nắng mặt trời.\r\n  + Bảo hộ cơ thể tốt: nếu phải ra đường vào thời điểm nắng gắt, bạn hãy tự trang bị cho mình những món đồ có thể che chắn phần nào các khu vực tiếp xúc trực tiếp với ánh nắng mặt trời, chẳng hạn như kính mát, mũ rộng vành, áo khoác, quần dài, giày thể thao… Ngoài ra, một số chuyên gia cho rằng quần áo màu sáng hoặc sẫm màu có thể phản xạ các tia cực tím tốt hơn so với quần áo tông màu nhạt.\r\n  + Hãy sử dụng kem chống nắng.\r\n\r\n5: TRÁNH CÁC HOẠT ĐỘNG CÓ NGUY CƠ CAO\r\n  Trong một số trường hợp đặc biệt, nhiễm trùng có nguy cơ dẫn đến ung thư. Do đó, nhiều chuyên gia cho rằng một “chiến thuật” phòng ngừa ung thư hiệu quả khác là tránh xa các hành vi nguy hiểm có thể dẫn đến nhiễm trùng, bao gồm:\r\n  + Hạn chế số lượng bạn tình cũng như sử dụng bao cao su \r\n  + Hạn chế sử dụng chung kim tiêm\r\n  + Tiêm phòng đầy đủ\r\n  + Khám sức khỏe định kỳ', '1', 'DR12', 'ung_thu.png'),
('3', 'DR17', '1', '2022-06-21 08:18:55', 'Tại sao thức khuya có hại cho mắt?', '  Trạng thái ngủ từ 0 đến 1 giờ sáng khiến cơ thể được nghỉ ngơi thực sự, giúp tinh thần sảng khoái, dung nhan tươi tắn khi tỉnh dậy. Nếu ngủ sau thời điểm đó và ngày hôm sau vẫn phải dậy đúng giờ sẽ làm bạn thiếu ngủ, ngủ không đủ giấc thì tất cả các cơ quan trong cơ thể đều mệt mỏi, não bộ mệt mỏi thì hệ thần kinh làm sao làm tốt chức năng của mình, trong đó có thần kinh thị giác. Bạn sẽ cảm thấy đôi mắt của mình bị sưng lên, cảm giác khó chịu khi mở mắt, vô tình mắt bạn sẽ gặp phải nguy cơ mắc bệnh “nghỉ bù” và hiện tượng này sẽ lặp đi lặp lại thường xuyên khiến bạn rất khó tập trung làm việc cho một ngày mới như chia sẻ của bạn H.A ở trên. Đồng thời, những người thức khuya luôn có đôi mắt “thiếu ngủ”, lờ đờ, xuất hiện nhiều quầng thâm xung quanh mắt. Điều này trông rất mất thẩm mỹ cho đôi mắt của bạn.\r\n\r\n  Bên cạnh đó, sau một ngày làm việc mệt mỏi, vào ban đêm là lúc mắt cần được nghỉ ngơi, nếu phải tiếp tục làm việc cộng với điều kiện ánh sáng không đủ lâu dần thị lực sẽ giảm đi đáng kể. Khi thị lực của bạn đang kém thì điều đó càng tồi tệ hơn nếu bạn tiếp tục thói quen thức khuya như thế này, ví dụ như một người cận thị ở mức độ nhẹ sau một thời gian làm việc vào ban đêm thì độ cận của bạn sẽ tăng lên nhanh chóng.\r\n\r\n  Ngoài ra, làm việc khuya cùng các thiết bị điện tử như màn hình máy tính, điện thoại đòi hỏi mắt phải tiết ra các chất lỏng bôi trơn. Càng nhìn lâu cộng thêm điều kiện ánh sáng không đáp ứng đủ, mắt càng phải tiết nhiều chất lỏng bôi trơn hơn, và đó cũng là nguyên nhân khiến mắt bị khô, mỏi.\r\n\r\n  Ánh sáng màn hình máy tính hay điện thoại được gọi là ánh sáng xanh. Khi bạn làm việc vào ban đêm mức độ tập trung càng cao thì mắt bạn sẽ tập trung vào lượng ánh sáng này rất nhiều. Ánh sáng xanh là ánh sáng có năng lượng lớn nhất trong số các ánh sáng nhìn thấy được. Do đó chúng có thể đâm xuyên qua các lớp lọc ánh sáng tự nhiên của nhãn cầu để đến đáy mắt và gây tổn thương võng mạc. Tổn thương do ánh sáng xanh gây ra là vĩnh viễn và sẽ tích lũy dần theo thời gian, cuối cùng có thể gây các bệnh mắt, đặc biệt là bệnh thoái hóa điểm vàng, một nguyên nhân hàng đầu gây mù lòa. Nếu như trước đây, tình trạng thoái hóa điểm vàng thường xảy ra ở người già do quá trình lão hóa thì nay căn bệnh đang dần trẻ hóa. Nhiều kết quả nghiên cứu cho thấy ánh sáng xanh là một tác nhân thúc đẩy bệnh.\r\n\r\nLời khuyên:\r\n\r\n  - Nên sắp xếp thời gian sinh học hợp lý cho bản thân, ngủ đủ một ngày 8 tiếng, đi ngủ trước 12 giờ đêm.\r\n  - Chống khô mắt bằng cách:\r\n       Chớp mắt thường xuyên (nhất là những người tiếp xúc với công nghệ nhiều thường rất ít nháy mắt, vậy trước khi làm việc nên dán một mẩu giấy nhớ “Hãy nháy mắt” vào bên cạnh thiết bị làm việc đề không quên!)\r\n       Dùng nước mắt nhân tạo: không chỉ những người sau khi phẫu thuật mới phải cần dùng mà ngay cả chúng ta cũng nên sử dụng để mang lại cho đôi mắt sự sáng khỏe dài lâu\r\n       Massage mắt: Hàng ngày, bạn nên massage nhẹ nhàng mí mắt, điều này giúp cải thiện lưu thông máu và giảm bớt sự căng cơ xung quanh vùng mắt. Chúng kích thích tuyến lệ, ngăn ngừa triệu chứng khô mắt.\r\n       Uống nhiều nước: Uống nước đầy đủ giúp giảm tình trạng khô mắt hiệu quả.\r\n       Ăn thực phẩm giàu omega -  3: Chế độ ăn thiếu acid béo omega - 3 có thể dẫn đến khô mắt. Vì vậy nên tăng cường ăn các thực phẩm giàu acid béo omega - 3 như cá, hạt lanh, óc chó, vitamin A để giảm khô mắt.\r\n  - Chống thâm quầng mắt: bằng cách dùng mặt nạ cho mắt như là đắp khoai tây, bã chè,...\r\n  - Cân bằng công việc , tránh các stress', '223', 'DR1', 'eyes.jpg'),
('4', 'DR18', '2', '2022-06-25 04:06:36', 'Bệnh tai mũi họng ở trẻ nhỏ', '  Cách phòng tránh các bệnh tai mũi họng\n  - Viêm mũi họng có thể phòng ngừa được bằng cách:\n\n    + Đeo khẩu trang cho trẻ mỗi khi ra đường, vì môi trường Việt Nam hiện tại bị ô nhiễm nặng nề do bụi xây dựng, xăng, hoá chất...\n\n    + Hạn chế đưa trẻ vào những chỗ đông người, vì dễ làm cho trẻ bị lây nhiễm khi cơ thể chưa đủ sức đề kháng.\n\n    + Giữ ấm vùng cổ, ngực và bụng cho trẻ khi trời lạnh.\n\n    + Tránh để trẻ ở những nơi có gió lùa.\n\n  - Hạn chế biến chứng của viêm mũi họng:\n\n    + Điều trị sớm mỗi khi trẻ xuất hiện các triệu chứng của mũi họng.\n\n    + Điều trị tốt các ổ viêm nhiễm ở mũi họng, răng miệng\n\n    + Điều trị đúng và triệt để các bệnh viêm đường hô hấp, hội chứng trào ngược dạ dày thực quản.\n\n    + Nâng cao thể trạng, tăng cường sức chống đỡ của niêm mạc mũi họng.\n\n    + Biết cách nhỏ mũi cho trẻ, hướng dẫn đúng cho trẻ cách xì mũi để không đẩy mủ và vi trùng lên tai giữa hoặc vào xoang.', '204', 'DR10', 'tai_mui_hong.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pre_doctor`
--

CREATE TABLE `pre_doctor` (
  `id_pre` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `icon_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tag` varchar(50) NOT NULL,
  `image_prove` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pre_doctor`
--

INSERT INTO `pre_doctor` (`id_pre`, `name`, `username`, `password`, `phonenumber`, `email`, `icon_image`, `id_tag`, `image_prove`) VALUES
('1', 'Newbie1', 'test1', '123', '012345678', NULL, NULL, '5', 'authority.png'),
('2', 'Intern Doc', 'test2', '123', '1234567890', NULL, NULL, '3', 'man1.png');

-- --------------------------------------------------------

--
-- Table structure for table `pre_post`
--

CREATE TABLE `pre_post` (
  `id_prepost` varchar(50) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `id_tag` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `content` text NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pre_post`
--

INSERT INTO `pre_post` (`id_prepost`, `id_user`, `id_tag`, `time`, `content`, `title`, `image_path`) VALUES
('1', 'DR17', '1', '2022-06-11 04:16:18', 'Nhìn ra được sự tinh giản, rút gọn, ngắn gọn của view FE', 'Vì 1 tầm nhìn Việt Nam hiện đại hơn', 'hh.png'),
('2', 'DR19', '5', '2022-06-16 05:00:04', '  Bệnh viêm phổi cần được điều trị sớm nhằm chữa nhiễm trùng và ngăn ngừa các biến chứng. Phương pháp điều trị cần phù hợp với từng triệu chứng và tình hình phát triển của bệnh. Tuy nhiên, trong một số trường hợp khi bệnh đã chuyển biến nặng, việc điều trị sẽ hết sức khó khăn. Các phương pháp điều trị bệnh viêm phổi bao gồm:\r\n\r\n  1. Điều trị triệu chứng\r\n    Sử dụng các thuốc hạ sốt/thuốc giảm đau (Paracetamol), thuốc ho, thuốc long đờm, thuốc giãn phế quản, nhằm kiểm soát tốt triệu chứng viêm phổi, giảm bớt cảm giác khó chịu cho người bệnh.\r\n\r\n  2. Điều trị nguyên nhân\r\n    Tùy theo tác nhân gây bệnh cũng như mức độ nghiêm trọng mà bác sĩ có thể đưa ra những cách điều trị khác nhau:\r\n\r\n    + Viêm phổi do vi khuẩn: Bác sĩ sẽ chỉ định kháng sinh tùy theo tình trạng viêm, có thể phải sử dụng kháng sinh đồ để chỉ định kháng sinh phù hợp. Nếu tình trạng không cải thiện, tùy từng nguyên nhân bác sĩ có thể đề nghị điều trị phối hợp kháng sinh.\r\n\r\n    + Viêm phổi do virus: Thuốc kháng sinh không được dùng để điều trị loại viêm phổi do virus. Các loại thuốc kháng virus có thể được chỉ định tùy vào từng loại virus và mức độ nghiêm trọng của các triệu chứng. Bệnh viêm phổi ở người khỏe mạnh có thể biến mất trong 7-14 ngày, nhưng triệu chứng ho và mệt mỏi có thể kéo dài vài tuần. Ngoài ra, một số thuốc khác cũng có thể được chỉ định để kiểm soát bệnh như: thuốc kháng viêm corticosteroid, liệu pháp oxy (2), bổ sung chất lỏng cho cơ thể và tăng cường làm ẩm không khí. Uống thuốc hạ sốt nếu bị sốt trên 38,5 độ hoặc thuốc ho nếu triệu chứng ho trở nên nghiêm trọng.\r\nViêm phổi do nhiễm nấm: trị tận gốc bằng cách dùng thuốc chống nấm thích hợp.\r\nNgười trưởng thành khi mắc viêm phổi nặng với biểu hiện khó thở nhiều, thở gắng sức cần được đưa đến bệnh viện điều trị kịp thời. Riêng với trẻ nhỏ dưới 2 tháng tuổi có các biểu hiện viêm phổi đều phải nhập viện cấp cứu ngay. Trẻ nhỏ từ 2-5 tuổi nếu không ăn uống, co giật, ngủ li bì – khó đánh thức, thở rít cũng phải lập tức nhập viện điều trị.\r\n\r\n  3. Điều trị tại nhà:\r\n    Hầu hết các triệu chứng viêm phổi sẽ giảm bớt trong vài ngày hoặc vài tuần, cảm giác mệt mỏi có thể kéo dài trong 1 tháng hoặc hơn. Khi điều trị tại nhà, người bệnh sẽ uống thuốc tại nhà theo chỉ định của bác sĩ. Đồng thời, cần ghi nhớ lịch hẹn tái khám theo chỉ định, hoặc đến bệnh viện ngay nếu có biến chứng khó thở, sốt cao không hạ…\r\n\r\n    Ngoài ra, để quá trình điều trị và phục hồi hiệu quả, người bệnh cần nghỉ ngơi đầy đủ, vận động hợp lý, có chế độ dinh dưỡng hợp lý, đảm bảo năng lượng để thúc đẩy nhanh quá trình lành bệnh.', 'Phương pháp điều trị bệnh viêm phổi', 'phoi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id_rank` varchar(50) NOT NULL,
  `name_rank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id_rank`, `name_rank`) VALUES
('1', 'Challenger'),
('2', 'Grand Master'),
('3', 'Master'),
('4', 'Elite'),
('5', 'Diamond'),
('6', 'Platinum'),
('7', 'Golden'),
('8', 'Silver'),
('9', 'Bronze'),
('10', 'Iron');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` varchar(50) NOT NULL,
  `name_tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `name_tag`) VALUES
('1', 'mắt'),
('2', 'tai mũi họng'),
('3', 'da liễu'),
('4', 'ung thư'),
('5', 'phổi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_cmt`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id_dr`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_msg`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `pre_doctor`
--
ALTER TABLE `pre_doctor`
  ADD PRIMARY KEY (`id_pre`);

--
-- Indexes for table `pre_post`
--
ALTER TABLE `pre_post`
  ADD PRIMARY KEY (`id_prepost`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
