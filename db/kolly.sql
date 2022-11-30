-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2022 lúc 04:02 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kolly`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `id_order_user` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id_cart`, `id_order_user`, `id_product`) VALUES
(8, 3, 1),
(9, 3, 2),
(10, 8, 3),
(11, 8, 4),
(12, 1, 9),
(13, 1, 6),
(14, 1, 7),
(15, 7, 5),
(16, 7, 3),
(17, 7, 10),
(18, 7, 8),
(19, 9, 9),
(20, 9, 4),
(21, 9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `login_user`
--

INSERT INTO `login_user` (`id`, `username`, `email`, `pass`) VALUES
(1, 'nynh', 'nynh@gmail.com', 'nynh123'),
(2, 'check', 'check123@gmail.com', 'check123'),
(3, 'huynhpro', 'huynhpro@gmail.com', 'huynhpro'),
(4, 'tttam123', 'tam@gmail.com', 'tttam123'),
(7, 'ducvu', 'ducvu25@gmail.com', 'ducvu2525'),
(8, 'phuonganh10', 'pa2010@gmail.com', 'phuonganh1010'),
(9, 'vinhtd123', 'vinhtd11@gmail.com', 'vinhtd123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id_order` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id_order`, `id_pro`, `quantity`, `price`) VALUES
(1, 1, 1, 170000),
(1, 2, 1, 80000),
(1, 4, 1, 50000),
(2, 2, 1, 80000),
(2, 3, 1, 130000),
(2, 4, 1, 50000),
(3, 2, 1, 80000),
(3, 4, 1, 50000),
(4, 1, 1, 170000),
(4, 2, 1, 80000),
(5, 3, 1, 130000),
(5, 4, 1, 50000),
(6, 6, 1, 80000),
(6, 7, 1, 200000),
(6, 9, 1, 160000),
(7, 3, 1, 130000),
(7, 5, 1, 140000),
(7, 8, 1, 70000),
(7, 10, 1, 70000),
(8, 1, 1, 170000),
(8, 4, 1, 50000),
(8, 9, 1, 160000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_order_user` int(255) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `amount` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id_order`, `id_order_user`, `fullname`, `email`, `phone_number`, `address`, `note`, `date_order`, `amount`) VALUES
(1, 1, 'Nguyễn Thùy Linh', 'nynh@gmail.com', '0963072693', '144 Xuân Thủy Cầu Giấy Hà Nội', 'che tên sp', '2022-11-18', NULL),
(2, 1, 'Nguyễn Thùy Linh', 'nynh@gmail.com', '0973652820', '136 Phạm Văn Đồng Hà Nội', 'ko', '2022-11-18', NULL),
(3, 4, 'Trần Thị Ngọc Tâm', 'tam123@gmail.com', '0973625222', 'số 9 ngõ 97 Đan Phượng Hoài Đức Hà Nội', '', '2022-11-18', NULL),
(4, 3, 'Lê Văn Huỳnh', 'huynhpro@gmail.com', '093628193', 'số 134 ngõ 56 đường Nguyễn Hoàng Cầu Giấy HN', '', '2022-11-18', NULL),
(5, 8, 'Nguyễn Phương Anh', 'phuonganh10@gmail.com', '09873628292', 'Số 8 trần quốc hoàn , cầu giấy , HN', '', '2022-11-18', NULL),
(6, 1, 'Nguyễn Hương Giang', 'danganh@gmail.com', '0938357362', 'hà nội', 'giao hàng buổi chiều', '2022-11-18', NULL),
(7, 7, 'Vũ Trung Đức', 'ducvu25@gmail.com', '0937276182', 'số 6 Nam Từ Liêm Hà Nội', '', '2022-11-19', NULL),
(8, 9, 'Tạ Đăng Vinh', 'vinhtd11@gmail.com', '0927364829', 'số 1 Đại Cồ Việt, Hai Bà Trưng Hà Nội', '', '2022-11-19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_pro` int(11) NOT NULL,
  `name_tree` varchar(100) DEFAULT NULL,
  `cost_current` varchar(50) DEFAULT NULL,
  `cost_old` varchar(50) DEFAULT NULL,
  `description_tree` text DEFAULT NULL,
  `img_main` varchar(255) DEFAULT NULL,
  `img_sub1` varchar(255) DEFAULT NULL,
  `img_sub2` varchar(255) DEFAULT NULL,
  `img_sub3` varchar(255) DEFAULT NULL,
  `img_sub4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_pro`, `name_tree`, `cost_current`, `cost_old`, `description_tree`, `img_main`, `img_sub1`, `img_sub2`, `img_sub3`, `img_sub4`) VALUES
(1, 'Cây trà hồng', '170000', '200000', 'Combo sen đá mini có các phân loại mà bạn có thể lựa chọn là:  - 5 cây, 12 cây, 30 cây, 40 cây và combo cây trồng chậu gỗ bao gồm 1 cây sen đá sedum vàng, 6 loại sen đá size mini, 1 cây sen đá size bé, 1 phụ kiện được xả đất và xử lý trước khi gửi và chậu gỗ Arabica siêu hot kèm đất trồng đủ dùng.  Với số lượng 5 cây bạn có thể lựa chọn thêm 1 số đặc điểm của combo mà bạn mong muốn như 5 cây sen đá có màu sắc sặc sỡ (không có màu xanh, trắng, đen...) hoặc 5 cây dạng đài tròn 📮  - Combo được lựa chọn ngẫu nhiên các loại sen đá mini từ hàng trăm loại sen đá theo mùa tại vườn 🌵', '1668765778_plant-product-01_500X620_crop_center.webp', '1668765778_plant-product-01-a_500X620_crop_center.webp', '1668765778_plant-product-01-a_500X620_crop_center.webp', '1668765778_plant-product-01-a_500X620_crop_center.webp', '1668765778_plant-product-01-a_500X620_crop_center.webp'),
(2, 'Sen đá ngọc thạch', '80000', '100000', '📮 Cam kết cây thuần mọi khí hậu, tự nhiên, không kích màu; khoẻ đẹp đẹp như ảnh nhưng sẽ không giống 100% vì mỗi cây mỗi vẻ, màu sắc có thể thay đổi chút do vận chuyển không có ánh sáng, dáng cây được chọn ngẫu nhiên.   🖼 Chính sách hỗ trợ: Khi vận chuyển khiến sản phẩm bị hư, khách hàng sẽ được hoàn tiền hoặc gửi bù và tặng quà ở đơn hàng tiếp theo.  🚕 Áp mã miễn phí vận chuyển ở Shopee voucher và các ưu đãi của shop tại Shop voucher.  🧧 Cây sản xuất tại SONDA Garden; phường 3, Đà Lạt, Lâm Đồng. ', '1668765858_plant-product-02-a_500X620_crop_center.webp', '1668765858_plant-product-12-b_500X620_crop_center.webp', '1668765858_plant-product-12-b_500X620_crop_center.webp', '1668765858_plant-product-12-b_500X620_crop_center.webp', '1668765858_plant-product-12-b_500X620_crop_center.webp'),
(3, 'Xương rồng thanh sơn', '130000', '150000', 'Sen đá, xương rồng thay đổi màu theo chế độ sáng nên có thể cây đi đường có thể màu sẽ bị nhạt đi, cây đủ ánh sáng, ít tưới sẽ lại đậm màu.  Đất trồng sen đá, xương rồng là loại đất đặc biệt, nếu sai thì cây sẽ dễ bệnh, nên sử dụng luôn đất tại shop.  Bạn có thể trộn theo công thức: xỉ than, phân bò, trấu hun, tỷ lệ 2:1:1 hoặc pumice, peatmoss, trùn quế, perlite tỷ lệ 4:2:2:1:1.   Cây đi đường sẽ không được tưới để không bị sốc nhiệt, nếu cây hơi héo là trạng thái bình thường của cây, các bạn chăm sẽ căng mọng lại liền.', '1668765929_plant-product-05_500X620_crop_center.webp', '1668765929_plant-product-05-a_500X620_crop_center.webp', '1668765929_plant-product-05-a_500X620_crop_center.webp', '1668765929_plant-product-05-a_500X620_crop_center.webp', '1668765929_plant-product-05-a_500X620_crop_center.webp'),
(4, 'Cỏ lá gừng', '50000', '70000', 'Khi mới mua sen về bạn hãy làm theo các bước sau đây:  1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm (trừ 1 số loại như sedum, aeonium, thài lài, sam, cỏ ngọc... cây thân cỏ, sen đá thân nhỏ mọc dạng bụi thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ, mát mẻ, thoáng gió tầm 3 ngày cho khô vết cắt.  2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây.  • Chậu trồng sen đá: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được.  Bạn nên mua đất tại shop vì chất lượng top 1 và thành phần trộn khá phức tạp.  3. Trồng xong các bạn để 3-4 ngày rồi mới tưới.', '1668766082_plant-product-03-a_500X620_crop_center.webp', '1668766082_plant-product-03_500X620_crop_center.webp', '1668766082_plant-product-03_500X620_crop_center.webp', '1668766082_plant-product-03_500X620_crop_center.webp', '1668766082_plant-product-03_500X620_crop_center.webp'),
(5, 'Cây lưỡi hổ', '140000', '160000', 'Cam kết cây thuần mọi khí hậu, tự nhiên, không kích màu; khoẻ đẹp đẹp như ảnh nhưng sẽ không giống 100% vì mỗi cây mỗi vẻ, màu sắc có thể thay đổi chút do vận chuyển không có ánh sáng, dáng cây được chọn ngẫu nhiên. 🖼 Chính sách hỗ trợ: Khi vận chuyển khiến sản phẩm bị hư, khách hàng sẽ được hoàn tiền hoặc gửi bù và tặng quà ở đơn hàng tiếp theo. 🚕 Áp mã miễn phí vận chuyển ở Shopee voucher và các ưu đãi của shop tại Shop voucher. 🧧 Cây sản xuất tại SONDA Garden; phường 3, Đà Lạt, Lâm Đồng.', '1668768332_plant-product-12-c_500X620_crop_center.webp', '1668768332_plant-product-06-a_500X620_crop_center.webp', '1668768332_plant-product-06-a_500X620_crop_center.webp', '1668768332_plant-product-06-a_500X620_crop_center.webp', '1668768332_plant-product-06-a_500X620_crop_center.webp'),
(6, 'Cây lan ý', '80000', '100000', 'Chuối cảnh hay còn được gọi là cây Đại Phú Gia, thuộc họ thiên điểu. Tàu lá chuối hình bầu dục trải dài, mọc thành từng tầng, nghiêng ra ngoài như những cánh quạt ba tiêu rất đẹp. Lá có màu xanh thẫm, bẹ lá ôm sát vào thân cây nhìn gần thấy rõ các đường gân.Nhiều người trồng cây không chỉ là thú vui mà còn do mệnh phong thủy. Cây chuối cảnh có ý nghĩa mang lại nhiều tài lộc, sự may mắn cho gia chủ. .Bố trí chuối cảnh vì nó giúp gia chủ luôn bình an, mang lại may mắn và tài lộc.', '1668768498_plant-product-10-c_500X620_crop_center.webp', '1668768498_plant-product-10_500X620_crop_center.webp', '1668768498_plant-product-10_500X620_crop_center.webp', '1668768498_plant-product-10_500X620_crop_center.webp', '1668768498_plant-product-10_500X620_crop_center.webp'),
(7, 'Cây bàng Singapore', '200000', '220000', 'Cây bàng sing mini để bàn chậu nhựa cao 15-20 cm Cây khỏe mạnh không sâu bệnh   Cây bàng Singapore là loại cây trồng trong nhà được rất nhiều người ưa chuộng bởi chúng vừa có khả năng thanh lọc không khí cực tốt vừa mang ý nghĩa phong thủy tốt lành. Shop đóng gói chắc chắn cẩn thận đảm bảo trong quá trình vận chuyển', '1668768645_plant-product-02-c.webp', '1668768645_plant-product-02_500X620_crop_center.webp', '1668768645_plant-product-02_500X620_crop_center.webp', '1668768645_plant-product-02_500X620_crop_center.webp', '1668768645_plant-product-02_500X620_crop_center.webp'),
(8, 'Sen đá thanh mai', '70000', '100000', 'Combo sen đá mini có các phân loại mà bạn có thể lựa chọn là: - 5 cây, 12 cây, 30 cây, 40 cây và combo cây trồng chậu gỗ bao gồm 1 cây sen đá sedum vàng, 6 loại sen đá size mini, 1 cây sen đá size bé, 1 phụ kiện được xả đất và xử lý trước khi gửi và chậu gỗ Arabica siêu hot kèm đất trồng đủ dùng. Với số lượng 5 cây bạn có thể lựa chọn thêm 1 số đặc điểm của combo mà bạn mong muốn như 5 cây sen đá có màu sắc sặc sỡ (không có màu xanh, trắng, đen...) hoặc 5 cây dạng đài tròn 📮 - Combo được lựa chọn ngẫu nhiên các loại sen đá mini từ hàng trăm loại sen đá theo mùa tại vườn 🌵', '1668769007_plant-product-12-b_500X620_crop_center.webp', '1668769007_plant-product-10_500X620_crop_center.webp', '1668769007_plant-product-10_500X620_crop_center.webp', '1668769007_plant-product-10_500X620_crop_center.webp', '1668769007_plant-product-10_500X620_crop_center.webp'),
(9, 'Cây lan ý', '160000', '170000', 'Khi mới mua sen về bạn hãy làm theo các bước sau đây: 1. Đối với sen đá và xương rồng bạn giũ sạch đất cũ tỉa hết rễ nhỏ, rễ to tỉa còn 2-3cm (trừ 1 số loại như sedum, aeonium, thài lài, sam, cỏ ngọc... cây thân cỏ, sen đá thân nhỏ mọc dạng bụi thì có thể trồng luôn) sau đó phơi cây ở chỗ sáng nhẹ, mát mẻ, thoáng gió tầm 3 ngày cho khô vết cắt. 2. Sau khi phơi bạn chuẩn bị giá thể và chậu để trồng cây. • Chậu trồng sen đá: bạn có thể dùng bất cứ loại chậu nào nếu không có lỗ thoát nước thì bạn tưới sẽ ít hơn thường chút là được. Bạn nên mua đất tại shop vì chất lượng top 1 và thành phần trộn khá phức tạp. 3. Trồng xong các bạn để 3-4 ngày rồi mới tưới.', '1668769118_plant-product-11_500X620_crop_center.webp', '1668769118_plant-product-02-b.webp', '1668769118_plant-product-02-b.webp', '1668769118_plant-product-02-b.webp', '1668769118_plant-product-02-b.webp'),
(10, 'Cây trầu bà', '70000', '100000', 'Sen đá, xương rồng thay đổi màu theo chế độ sáng nên có thể cây đi đường có thể màu sẽ bị nhạt đi, cây đủ ánh sáng, ít tưới sẽ lại đậm màu. Đất trồng sen đá, xương rồng là loại đất đặc biệt, nếu sai thì cây sẽ dễ bệnh, nên sử dụng luôn đất tại shop. Bạn có thể trộn theo công thức: xỉ than, phân bò, trấu hun, tỷ lệ 2:1:1 hoặc pumice, peatmoss, trùn quế, perlite tỷ lệ 4:2:2:1:1. Cây đi đường sẽ không được tưới để không bị sốc nhiệt, nếu cây hơi héo là trạng thái bình thường của cây, các bạn chăm sẽ căng mọng lại liền.', '1668769208_plant-product-07-c.webp', '1668769208_plant-product-07_500X620_crop_center.webp', '1668769208_plant-product-07_500X620_crop_center.webp', '1668769208_plant-product-07_500X620_crop_center.webp', '1668769208_plant-product-07_500X620_crop_center.webp');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `fk1` (`id_order_user`);

--
-- Chỉ mục cho bảng `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id_order`,`id_pro`),
  ADD KEY `fk4` (`id_pro`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `fk2` (`id_order_user`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_pro`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`id_order_user`) REFERENCES `login_user` (`id`);

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`id_pro`) REFERENCES `products` (`id_pro`),
  ADD CONSTRAINT `fk5` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`id_order_user`) REFERENCES `login_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
