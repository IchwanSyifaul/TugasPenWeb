-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 04:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speakless`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pertanyaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `krisar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `email`, `pertanyaan`, `krisar`, `created_at`, `updated_at`) VALUES
(1, 'Impedit quia occaecati nisi ex tempora.', 'lwaskita@example.org', 'Magnam minus quae repudiandae cumque nulla quia veritatis dolore.', '<p>Error culpa quidem ullam nam cupiditate earum. Laborum dolor officiis voluptas odit dolores. Incidunt et adipisci porro nulla enim rerum aut neque.</p><p>Ex in et necessitatibus aspernatur nulla nesciunt voluptatum excepturi. Voluptas et laudantium omnis eos repudiandae itaque optio. Repellat sit et quia eius cum. Non illo impedit at quibusdam a odit quidem et.</p>', '2021-11-23 04:19:36', '2021-11-23 04:19:36'),
(2, 'Quae quia provident perspiciatis.', 'prasetyo.nardi@example.org', 'Accusantium alias deserunt facilis.', '<p>Dolorem sunt qui reiciendis dolore vitae. Saepe harum minima dolorem quod accusantium. Architecto vel itaque eos qui nulla neque recusandae.</p><p>Eaque cumque et aspernatur et sed et consequatur. Dolorem tempora ut qui eos et. Eos optio repellat vel voluptatibus totam alias.</p><p>Qui reprehenderit quasi vel inventore quibusdam. Necessitatibus adipisci explicabo libero magnam velit. Veniam qui dolorem omnis dolores ea impedit corrupti aliquam.</p><p>Adipisci perspiciatis atque officia suscipit. Quo neque est tempore asperiores. Consequatur dolores iste quo.</p><p>Consectetur fugiat at ut officiis aut nostrum. Molestiae sunt nostrum maiores aliquid non qui non est. Nihil reprehenderit adipisci soluta sed ea magnam. Delectus quaerat repudiandae aliquam et. A nisi voluptatem cupiditate omnis sed qui illum.</p>', '2021-11-23 04:19:36', '2021-11-23 04:19:36'),
(3, 'Fuga iure iure fugit fuga.', 'prasetyo.jasmin@example.com', 'Tempore est dolorum ut dolore.', '<p>Labore impedit iusto officiis voluptatum ut minima vitae officiis. Rerum deleniti omnis voluptates numquam laudantium omnis. Dolorem non similique libero cum nesciunt incidunt.</p><p>Harum quis ut possimus iure dolores et. Ratione et eaque aperiam sapiente enim soluta voluptates et. Ratione dolores saepe quasi perferendis omnis qui. Possimus odit illum velit veritatis quaerat vel ut.</p><p>Et cum fugiat quia consequuntur tempore eligendi. Quisquam minus incidunt repellat sit impedit. Beatae laboriosam dolorem dolorum impedit alias. Sed tenetur aperiam ipsam quidem et culpa.</p>', '2021-11-23 04:19:36', '2021-11-23 04:19:36'),
(4, 'Omnis repellat vitae.', 'suryono.ellis@example.com', 'Perferendis deserunt quibusdam.', '<p>Dicta vel reiciendis temporibus dolorem. Eius aut quia deleniti rerum quia voluptas ut. Et expedita voluptatem magnam non. Facilis similique molestiae dolor tempore voluptatum.</p><p>Amet et aperiam ea rerum non est. Neque recusandae quo rerum aut rem. Asperiores quas adipisci ducimus numquam illum.</p><p>Quod temporibus alias eius ea. Sit doloremque odio illo perspiciatis et maxime ut. Totam numquam temporibus eligendi omnis praesentium temporibus recusandae. Pariatur in similique commodi qui perspiciatis libero.</p><p>Molestiae tempore cumque neque dolores. Est eum repellendus facilis cum. Est et nam et velit.</p><p>Est qui consequatur sunt ut. Odio ab alias odio qui velit perferendis. Mollitia aut qui vitae corrupti laboriosam nostrum tempore. Distinctio quia sed quibusdam laboriosam.</p>', '2021-11-23 04:19:36', '2021-11-23 04:19:36'),
(5, 'Dignissimos qui laborum quam.', 'saka68@example.com', 'Dolor qui accusamus maiores necessitatibus veniam tenetur dolorem porro corporis tenetur et repellendus.', '<p>Saepe laboriosam autem inventore explicabo quaerat est sunt. Ea maxime perspiciatis dolorem aut. Et consequatur facere officiis aut dignissimos ipsam in. Maiores qui iure veniam eveniet fuga.</p><p>Nisi provident ut et sit. Suscipit ut voluptatum enim impedit dolorem sunt odit.</p><p>Totam omnis reprehenderit sed ullam doloremque qui aspernatur. Praesentium et voluptatem neque adipisci eaque voluptatem. Distinctio expedita iusto sed doloribus qui deleniti non.</p><p>Voluptatibus vitae voluptatem fuga rerum ullam minima ipsam. Ipsam consectetur sequi explicabo dolore. Esse nihil ex et.</p>', '2021-11-23 04:19:36', '2021-11-23 04:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
(21, 1, 'Dalam Hal Pelayanan Kesehatan, Anak Berkebutuhan Khusus Punya Hak yang Sama Seperti Non Disabilitas', 'dalam-hal-pelayanan-kesehatan-anak-berkebutuhan-khusus-punya-hak-yang-sama-seperti-non-disabilitas', 'blog-images/yqDeyj7dnoobphSPkMkRts1nFJrsMfoYA8lcM7Yn.jpg', 'Liputan6.com, Jakarta Penanganan dan pencegahan penyebaran virus COVID-19 khususnya kepada anak berkebutuhan khusus (ABK) membutuhkan upaya dan perhatian lebih, yang berbeda dengan anak pada umumnya....', '<div>Liputan6.com, Jakarta Penanganan dan pencegahan penyebaran virus COVID-19 khususnya kepada anak berkebutuhan khusus (ABK) membutuhkan upaya dan perhatian lebih, yang berbeda dengan anak pada umumnya. Guna memastikan perlindungan kesehatan bagi mereka pada masa yang penuh tantangan ini, pemerintah mendorong kerja sama berbagai pihak.<br><br></div><div>Plt. Dirjen Kesehatan Masyarakat Kementerian Kesehatan Kartini Rustandi menegaskan, setiap anak, termasuk mereka yang berkebutuhan khusus, memiliki hak yang sama, seperti hak untuk bertumbuh kembang, mendapatkan perlindungan, pendidikan, serta pengasuhan yang baik.<br><br>“Mereka juga merupakan generasi penerus bangsa yang dapat memberikan sesuatu bagi Indonesia, karena di balik keterbatasannya, mereka pasti memiliki kelebihan,” tutur Kartini dalam Dialog RabuUtama Forum Merdeka Barat 9 (FMB 9) - KPCPEN (20/9/2021).<br><br></div><div>Pelayanan kesehatan bagi ABK, kata Kartini, penanganannya secara umum sama seperti masyarakat pada umumnya. Hanya saja, dalam pelaksanaannya, para tenaga kesehatan harus memperhitungkan kondisi, riwayat kesehatan, serta apa yang boleh dan tidak boleh dilakukan terhadap mereka.<br><br></div><div>“Bagi ABK yang terinfeksi COVID-19, tenaga kesehatan akan memberikan obat serta tindakan yang sama dengan masyarakat umum. Namun tentu saja tenaga kesehatan akan mempertimbangkan banyak hal, karena anak-anak ini membutuhkan perlakuan khusus,” ujarnya.<br><br><strong><br>Percepatan vaksinasi<br></strong><br></div><div>Percepatan vaksinasi bagi ABK termasuk penyandang disabilitas, menjadi salah satu prioritas pemerintah. Di antaranya, dengan memanfaatkan vaksin produksi Sinopharm hibah Raja Uni Emirat Arab yang dialokasikan khusus bagi kelompok rentan ini.<br><br></div><div>Kendati demikian, Kartini menjelaskan, tidak tertutup kemungkinan bagi ABK untuk mendapatkan suntikan vaksin merek lainnya, karena semua vaksin COVID-19 di Indonesia memiliki fungsi yang sama dalam meningkatkan imunitas tubuh terhadap virus tersebut.<br><br></div><div>“Untuk vaksinasi ABK, dapat mengakses langsung ke Puskesmas atau sentra vaksinasi seperti masyarakat pada umumnya. Di lokasi tersebut, pendamping harus menyampaikan kepada petugas tentang kondisi ABK yang didampingi,” ujar Kartini.<br><br></div><div>Hal ini sejalan dengan pengalaman dari Founder London School Center For Autism Awareness, Prita Kemal Gani. Putri Prita adalah seorang ABK, yakni anak autistik, dan telah mendapatkan suntikan vaksin merek Sinovac di sentra vaksinasi Gelora Bung Karno (GBK), Jakarta. Menurutnya, pelayanan vaksinasi bagi ABK di Indonesia sudah baik.<br><br></div><div>“Waktu itu, begitu ada pengumuman bahwa anak 12-17 tahun boleh disuntik vaksin, kami mengajak anak kami ke GBK, walaupun pada waktu itu vaksinasi diperuntukkan bagi masyarakat umum (bukanuntuk ABK, red.). Di sana kami sampaikan bahwa anak kami adalah ABK. Setelah itu, kami langsung mendapatkan jalur khusus,” papar Prita.<br><br></div><div>Ia sangat menghargai layanan tersebut, mengingat ABK cenderung memiliki tingkat keresahan tinggi, tidak bisa menunggu atau berkumpul bersama banyak orang, juga mempunyai kesulitan komunikasi verbal.<br><br></div><div>Ketersediaan akses khusus tersebut tidak hanya berlaku bagi ABK. Prita menjelaskan, pada bulan April pihaknya mendapatkan undangan vaksinasi untuk kaum difabel di GBK. Ia memberangkatkan 75 orang kaum difabel dewasa secara bertahap. Menurutnya, sentra vaksinasi GBK memberikan tenda dan jalur khusus, serta kemudahan akses bagi para kelompok difabel.<br><br></div><div>Tidak berhenti di upaya vaksinasi, ikhtiar memberikan edukasi protokol kesehatan bagi ABK jugadinilai sangat penting dan dapat dilakukan dengan metode tertentu.<br><br></div><div>“Anak-anak autistik sangat menyukai repetisi. Karena itu edukasi protokol kesehatan seperti memakai masker dan cuci tangan harus terus-menerus dilakukan. Setelah paham dan menjadikan itu sebagai kebiasaan yang diulang-ulang, mereka akan disiplin serta konsisten melaksanakan kegiatan tersebut,” jelas Prita.<br><br><strong><br>Dukungan swasta<br></strong><br></div><div>Perlindungan kesehatan bagi kaum difabel, terutama ABK menuntut sinergi banyak elemen masyarakat, baik dari komunitas, lembaga kesehatan, juga pihak swasta.<br><br></div><div>Salah satu lembaga yang giat melaksanakan layanan vaksinasi bagi kaum difabel adalah i-SERVEVaccine YCAB yang membuka sentra vaksinasi secara lantatur (drive thru).<br><br></div><div>Ketua Umum i-SERVEVaccine YCAB James Revelino menyatakan, pihaknya telah membantu vaksinasi lebih dari seribu orang ABK berusia 12-17 tahun, bekerja sama dengan Puskesmas Kebon Jeruk, Jakarta Barat.<br><br></div><div>“Kami menyediakan metode drive thru, ruang vaksin terpisah, dan jalur khusus bagi para kaum difabel yang sulit melakukan vaksinasi bersama dengan masyarakat umum. Kami juga memberikanlayanan antar jemput bagi mereka, bekerja sama dengan Blue Bird,” papar James.<br><br></div><div>Sebelum pelaksanaan vaksinasi, pihaknya selalu melakukan persiapan diskusi dengan petugas dan pendamping, guna mendapatkan informasi tentang kondisi ABK yang akan disuntik. Sebelum divaksin, para relawan dan tenaga kesehatan berusaha membuat ABK merasa nyaman. Kemudian, setelah vaksinasi selesai, petugas juga terus melakukan pemantauan kondisi kesehatan ABK yang bersangkutan.<br><br></div><div>Semua upaya ini dilakukan, agar setiap ABK bisa mendapatkan hak perlindungan kesehatan seperti anak-anak pada umumnya. Begitu pula hak atas pendidikan dan kesempatan untuk berkembang, yang harus diwujudkan tidak hanya oleh keluarga dan orang tua, melainkan dengan bantuan pemerintah dan seluruh masyarakat.<br><br>Sumber : https://www.liputan6.com/disabilitas/read/4665368/dalam-hal-pelayanan-kesehatan-anak-berkebutuhan-khusus-punya-hak-yang-sama-seperti-non-disabilitas</div>', '2021-11-23 06:58:59', '2021-11-23 06:58:59'),
(22, 1, 'Membangun Masa Depan Anak Berkebutuhan Khusus', 'membangun-masa-depan-anak-berkebutuhan-khusus', 'blog-images/qq3aPFxgdvzbFXANkSVd1V1u497Jo38AOP3PrWjT.jpg', 'Sahabat perempuan dan anak, tahukah anda jika Anak Berkebutuhan Khusus (ABK) masuk dalam 15 kelompok anak yang rentan mengalami kekerasan? Bentuk-bentuk kekerasan yang rentan dialami pun sangat beraga...', '<div>Sahabat perempuan dan anak, tahukah anda jika Anak Berkebutuhan Khusus (ABK) masuk dalam 15 kelompok anak yang rentan mengalami kekerasan? Bentuk-bentuk kekerasan yang rentan dialami pun sangat beragam, seperti kekerasan fisik, psikis, hingga hambatan-hambatan sosial seperti pelabelan negatif dan diskriminasi. Sayangnya, diskriminasi terhadap ABK telah berlangsung sejak lama. Namun mengapa hal ini masih saja terjadi? Persoalannya adalah, selama ini lingkungan di sekitar ABK masih belum ramah terhadap mereka. Apa itu lingkungan yang ramah Anak Berkebutuhan Khusus? Lingkungan yang ramah ABK merupakan lingkungan di mana semua anak memiliki hak untuk tumbuh dan berkembang secara wajar, dan dapat mengembangkan semua potensi yang dimilikinya seoptimal mungkin di dalam lingkungan yang nyaman dan terbuka. Menjadi “ramah” apabila keterlibatan dan partisipasi semua pihak dalam pemenuhan hak-hak anak berkebutuhan khusus tercipta secara alami dengan baik. Namun, kondisi lingkungan yang ramah terhadap ABK di Indonesia masih belum terwujud secara massif, hal ini salah satunya disebabkan oleh bentuk penanganan terhadap ABK yang justru tidak menggunakan perspektif ABK itu sendiri, contohnya seperti penanganan berbasis karitas yang cenderung justru melanggengkan pelabelan negatif dan hambatan sosial pada ABK. Sekarang, mari kita coba membuka cara pandang untuk menciptakan pola asuh dan interaksi yang ramah terhadap Anak Berkebutuhan Khusus, dengan membaca lebih lanjut artikel ini.<br><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Anak berkebutuhan khusus (ABK), adalah anak yang mengalami keterbatasan keluarbiasaaan baik fisik, mental-intelektual, sosial, maupun emosional yang berpengaruh signifikan dalam proses pertumbuhan dan perkembangannya dibandingkan dengan anak-anak lain seusianya, seperti yang termuat dalam Peraturan Menteri Pemberdayaan Perempuan dan Perlindungan Anak Republik Indonesia, Nomor&nbsp; 10 tahun 2011 tentang Kebijakan Penanganan Anak Berkebutuhan Khusus, yang terdiri dari 12 kategori yaitu: anak tunanetra, anak tunarungu, anak tunagrahita, anak tunadaksa, anak tunalaras, anak dengan gangguan pemusatan perhatian dan hiperaktivitas, anak dengan gangguan spectrum autism, anak tunaganda, anak lamban belajar (<em>slow learner</em>), anak dengan kesulitan belajar khusus, anak dengan gangguan komunikasi, dan anak dengan potensi kecerdasan dan/atau bakat istimewa.<br><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Salah satu kisah dituturkan oleh seorang Ibu di Jakarta yang menceritakan pengalamannya memiliki ABK tunanetra. Respon pertama yang dirasakan ketika mengetahui anaknya terlahir dengan kondisi berbeda adalah sedih dan menangis berlarut-larut, saling menuduh dan menganggap keadaan anaknya sebagai suatu kutukan, hingga menyalahkan diri sendiri dan orang lain dalam waktu yang cukup lama. Ketidakterimaan orangtua terhadap kondisi anak yang tidak dapat melihat, nyatanya membawa mereka pada fase pengabaian anak itu sendiri sehingga anak jadi terabaikan. Dimana pada usia itu, anak berkebutuhan khusus justru sedang membutuhkan sosok orang yang dapat dipercaya dan memberikan pengasuhan yang layak dan baik. Namun, setelah mendapat pengertian dari orangtuanya, sang Ibu akhirnya menerima kondisi anaknya, dan bertekad untuk membesarkannya dengan cinta dan kasih serta mendukung potensi yang dimiliki anaknya. Hasilnya mengesankan, anak tersebut saat ini tengah menginjak usia remaja, tumbuh dengan bahagia bahkan telah mengukir berbagai prestasi hingga tingkat Nasional.<br><br></div><div>Kondisi tersebut menunjukkan bahwa di Indonesia, tidak dapat dipungkiri jika masih banyak masyarakat yang berpandangan negatif terhadap kehadiran anak berkebutuhan khusus, bahkan masih ada penolakan dengan kehadirannya. Tidak hanya penolakan dari masyarakat dan lingkungan sekitar, penolakan bahkan justru berasal dari lingkungan paling dekat dengan anak, yakni keluarga dan orangtua. Namun, dari penuturan orangtua ABK tersebut juga memunculkan fakta bahwa bentuk penangan paling tepat terhadap ABK justru datang dari tingkatan paling kecil yakni orangtua dan keluarga. Penerimaan orangtua akan kehadiran ABK dalam keluarga menjadi poin utama dan mendasar bagi ABK dapat tumbuh dan berkembang secara baik. Hal ini juga berkorelasi positif dengan motivasi dan penerimaan diri oleh ABK itu sendiri. Penerimaan terhadap ABK, akan memunculkan pola asuh dengan cinta dan kasih oleh orangtua sehingga anak tidak dianggap sebagai beban bagi orangtua. Disamping tentu saja, sudah menjadi hak ABK untuk tumbuh kembang, berpartisipasi dan mendapatkan perlindungan dari lingkungan sama seperti anak-anak lainnya.<br><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Terkait dengan hal tersebut, maka pemahaman tentang keberadaan anak berkebutuhan khusus terhadap masyarakat, dan utamanya orangtua dan keluarga perlu ditingkatkan, guna mendukung terciptanya lingkungan yang ramah ABK. Asisten Deputi Perlindungan anak Bidang Anak Berkebutuhan Khusus, Indra Gunawan, menyebutkan terdapat beberapa langkah-langkah guna menuju lingkungan yang ramah terhadap ABK, diantaranya. Pertama, masyarakat memahami apa itu ABK. Kedua, masyarakat tidak menggunakan istilah-istilah yang menyinggung atau bahkan merendahkan. Ketiga, masyarakat menyediakan sarana dan prasaran yang dapat diakses bagi ABK. Keempat, ABK diberdayakan melalui rehabilitasi seperti kesehatan, pendidikan, mata pencaharian, dan sosial.<br><br></div><div>Pendekatan yang utama dan terpenting dalam menjamin pemenuhan hak ABK dimulai dari tangan orangtua dan keluarga. Lingkungan keluarga diharapkan hadir sebagai benteng pertama membangun kemandirian Anak Berkebutuhan Khusus, sehingga memberikan ruang bagi mereka untuk dapat membangun kepercayaan diri dan mengembangkan potensi yang dimilikinya serta membangun mental ABK yang tangguh dan siap berpartisipasi dalam lingkungan masyarakat. Membangun masa depan Anak Berkebutuhan Khusus, dimulai dari keluarga.(ach)<br><br>Sumber : https://www.kemenpppa.go.id/index.php/page/read/31/1621/membangun-masa-depan-anak-berkebutuhan-khusus</div>', '2021-11-23 07:01:30', '2021-11-23 07:01:30'),
(23, 2, 'Polsek Tanjung Morawa Melaksanakan Kegiatan Sosial Memberikan Bantuan Kepada ABK Desa Buntu Bedimbar', 'polsek-tanjung-morawa-melaksanakan-kegiatan-sosial-memberikan-bantuan-kepada-abk-desa-buntu-bedimbar', 'blog-images/QArrtmcDkKsJqYIxlZkajF8iYVv0fpKZ5deWeohR.jpg', 'Deli Sedang, Kongkrit.com—Polsek Tanjung Morawa Membantu kepada masyarakat di Bedimbar Kecamatan Tanjung Morawa. Kabupaten Deli Serdang Rabu (17 / 11/2021).Kapolsek Tanjung Morawa Akp Sawangin, SH diw...', '<div>Deli Sedang, Kongkrit.com—Polsek Tanjung Morawa Membantu kepada masyarakat di Bedimbar Kecamatan Tanjung Morawa. Kabupaten Deli Serdang Rabu (17 / 11/2021).<br><br></div><div>Kapolsek Tanjung Morawa Akp Sawangin, SH diwakilkan Kanit Binmas Polsek Tanjung Morawa Ipda LINDAWATI BARUS Memberikan bantuan kepada keluarga yang memiliki anak berkebutuhan khusus (ABK). Bantuan yang diberikan berupa 1 kotak Supermie dan 1 goni beras berat 5 kilo gram.<br><br></div><div>Turut Hadir dalam giat tersebut<br>Kapolsek Tanjung Morawa Sawangin, SH yang diwakilkan oleh Kanit Binmas Polsek Tanjung Morawa Ipda LINDAWATI BARUS Kades Buntu Bedimbar bapak Mus Mulyadi Bhabinkamtibmas Desa Buntu Bedimbar Aiptu Dian Irianto<br>Bripda Daut Pane Bintara Remaja beserta Jajaran polsek Tanjung Morawa bersama para Perangkat Desa Buntu Bedimbar. Dan Para kadus Desa Buntu Bedimbar kegiatan dimulai pada Pukul 10.30 wib, dan Rombongan Kanit Binmas dan Bhabinkamtibmas Buntu Bedimbar serta kepala desa dan perangkat desa langsung mobile kerumah masing masing Anak Berkebutuhan khusus (ABK).<br><br></div><div>Yang dapat di kunjungi Kanit Binmas dan rombongan ada 10 ABK, yang mana semuanya hampir penderita Autis, Tunawicara, Tunarungu dan cacat kaki bawaan lahir. Dari kunjungan ke rumah warga Buntu Bedimbar yang memiliki ABK anak berkebutuhan khusus sangat mengapresiasi akan kepedulian pemerintah kepada mereka karena permerintah desa sudah memperhatikan anak mereka dengan menerbitkan kartu Indonesia Sehat KIS dan di berikan bantuan dari pemerintah jenis BLTDD.<br><br></div><div>Ada beberapa ABK yang memerlukan bantuan pemerintah berupa beasiswa yang dapat membantu untuk bisa bersekolah di sekolah luar biasa (SLB) yang Biayanya tidak mampu mereka bayar.<br><br></div><div>Kapolsek Tanjung Morawa melalui Kanit Bimas mengatakan beliau sangat sedih dan prihatin Kepada anak anak generasi bangsa ini semoga pemerintah Bisa mendengarkan keluh kesahnya agar bisa dapat di bantu dari pemerintah. kita yakin.pemerintah bisa membantu mengenai masalah pendidikan yang Mereka hadapi sekarang ujarnya<br>adapun ABK yang hari ini dikunjungi Kanit Binmas Polsek Tanjung Morawa bersama rombongan meninjau<br>Ke Jaratum Jainah (Autis) dusun I Tidak tumbuh sesuai umur, Tidak bisa bergaul dengan teman yang Seusinya karena kadang dapat melakukan hal hal yang menyakiti Orang lain.<br><br></div><div>Bagus Pratama (Tunawicara) Dari dusun 3 Buntu Bedimbar<br>tidak tumbuh sesuai umur<br>Aulia Salma Ambarita (Sindrom) Dari Dusun 3 buntu bedimbar<br>Tidak bisa bicara dan mendengar<br>Bunga Natasya (Tunarungu) warga Dusun 3 Buntu Bedimbar<br>Badannya tidak sesuai umur,<br>Tidak bisa berjalan tetapi tidak bisa bicara.<br><br></div><div>Annisa Muzadillah Batubara Cacat Kaki warga Dusun 7 Bisa bicara, cacat kaki dan tdk sekolah, jalan bengkok, didada ada cairan, Adinda Sukma Dewi (Autis) warga Dusun 8 Buntu Bedimbar<br>Tidak bisa bicara bisa jalan tdk bisa mendengar, Guntur Setiawan (Autis) warga Dusun 8 Bisa jalan tidak bisa bicara Ifan Imanuel Siburian (Autis) warga Dusun 8 Buntu Bedimbar Tidak bisa jalan, dan bisa mendengar tidak bisa bicara dan pertumbuhan tidak sesuai umur. Kecesiaa Elisabeth Sitorus (Autis) Dusun 8 Buntu BedimbarT Tidaksesuai umur badannya Tidak mendengar dan bisa jalan Sudah di bawa berobat oleh orang tuanya sampai ke Penang tdk ditemukan penyakitnya Melinda Br.Damanik (Autis) Dusun 13 Buntu Bedimbar tidak bisa jalan dan tidak bisa bicara dan cenderung pemalu.<br><br></div><div>Harapan para orang tua agar Dinas kesehatan dapat memberikan bantuan yang dapat di terima tiap bulannya karena ABK (Anak Berkebutuhan khusus) membuat salah satu orang tua tidak dapat melaksanakan pekerjaan lain selain menjaga para ABK di rumah Tersebut. (Iren)<br><br>Sumber : https://kongkrit.com/polsek-tanjung-morawa-melaksanakan-kegiatan-sosial-memberikan-bantuan-kepada-anak-berkebutuhan-khusus-abk-desa-buntu-bedimbar-di-wilkum-polsek-tanjung-morawa/</div>', '2021-11-23 07:04:46', '2021-11-23 07:05:59'),
(24, 2, 'Arfhila Choirunisa, Siswa Berkebutuhan Khusus yang Karyanya Diakui', 'arfhila-choirunisa-siswa-berkebutuhan-khusus-yang-karyanya-diakui', 'blog-images/0vW93Xy6DC5LmTG3Qr3z7WL2nYTHBGsdNoCUEls7.jpg', 'RADARSOLO.ID – Keterbatasan fisik bukan berarti menghalangi seseorang meraih prestasi tertinggi. Arfhila Choirunisa yang menyandang tuli dan tunawicara ini mampu menorehkan karya di bidang seni lukis....', '<div><strong>RADARSOLO.ID – </strong>Keterbatasan fisik bukan berarti menghalangi seseorang meraih prestasi tertinggi. Arfhila Choirunisa yang menyandang tuli dan tunawicara ini mampu menorehkan karya di bidang seni lukis.<br><br></div><div><strong>SEPTIAN REFVINDA</strong>, <em>Solo, Radar Solo<br></em><br></div><div>Arfhila Choirunisa tak kehilangan sinarnya. Remaja 20 tahun ini tampil menunjukkan bakat di dunia seni lukis. Anak pasangan Boby Rochmadi dan Sugiyanti ini, sudah menghasilkan puluhan lukisan dalam kurun waktu singkat.<br><br>Banyak karya lukisnya yang berhasil menyabet juara di tingkat provinsi dan nasional. Salah satunya yaitu lukisan bertema: ABK Berseri. Hasil karyanya ini sempat mendapatkan juara dua di tingkat nasional pada 2020 lalu.<br><br></div><div>“Saya memang hobi melukis dari SD. Melukis bisa membuat saya senang dan tenang. Kalau ada waktu saya selalu melukis berbagai hal sesuai dengan suasana hati saya,” terangnya lewat wawancara via <em>chat</em> kepada <em>Jawa Pos Radar Solo</em>, kemarin (1/11).<br><br></div><div>Prestasi lainnya yang pernah diraih oleh Arfhila yaitu: juara 1 lomba lukis nasional (SD),&nbsp; juara 2 lukis ABK Berseri tingkat nasional (2020), juara 2 lomba barang bekas tingkat provinsi (2018), juara 1 lomba kecantikan LKSN Jateng (2021), juara 1 lomba melukis FLS2N Jateng (2021).<br><br></div><div>Hampir setiap hari remaja kelahiran 26 April 2001 ini melukis dengan berbagai gaya bebas. Dia menuangkan pikiran dan imajinasinya ke dalam lukisan yang dibuat. “Kalau melukis, biasanya harus tenang. Awalnya hanya suka mencoret-coret di kertas lama-lama bisa sendiri,” imbuhnya.<br><br></div><div>Melukis menjadi cara Arfhila mengekspresikan imajinasi dan perasaannya yang mungkin susah diungkapkan lewat komunikasi verbal biasa. Melalui lukisannya dia berusaha menyampaikan apa yang ingin dia ungkapkan.<br><br></div><div>“Kadang saya minder ketemu orang lain, karena saya tuna rungu dan sulit berbicara. Tapi sekarang sudah tidak lagi,” ungkapnya.<br><br></div><div>Arfhila mengaku tidak pernah ikut kursus melukis. Kemahirannya melukis dia dapatkan secara otodidak. Selain melukis, dia juga mengaku menyukai berbagai hobi lainnya, seperti<em> make up</em> dan olahraga renang. Selain melukis di kanvas, dia juga mahir melukis di wajah.<br><br></div><div>“Untuk tahun ini saya ikut lomba kecantikan, yaitu <em>make up</em> atau melukis di wajah,” paparnya.<br><br></div><div>Rosida, guru pendamping Arfhila mengatakan, melukis memiliki andil besar dalam pembentukan karakter seorang anak. Tak hanya anak berkebutuhan khusus, tetapi juga anak umumnya. Melukis, dapat melatih konsentrasi, kemampuan motorik halus, melatih pengambilan keputusan, pencarian solusi, dan menuangkan visi dan misi.<br><br></div><div>“Kebanyakan anak tunarungu itu sulit berkomunikasi dengan orang lain. Mungkin dengan melukis mereka bisa menungkan ide dan gagasannnya. Secara sederhananya mereka berkomunikasi lewat karya lukisnya,” terangnya.<br><br></div><div>Karena itu, Rosida mendukung penuh keterampilan peserta didiknya untuk mengenal dunia lukis. Dia meyakini semuanya bisa dimulai dengan secarik kertas dan pensil. Rosida menegaskan bahwa anak dengan keterbatasan pasti memiliki suatu yang istimewa tergantung bagaimana orang tua menyikapinya.<br><br></div><div>“Semua anak itu terlahir istimewa. Pasti memiliki kelebihannya masing-masing. Tergantung bagaimana orang tua dan orang terdekatnya menyikapi. Perlu digaris bawahi bahwa kekurangan tidak akan menghalangi seseorang untuk berprestasi,” ujarnya.&nbsp;<br><br>Sumber : https://radarsolo.jawapos.com/features/02/11/2021/arfhila-choirunisa-siswa-berkebutuhan-khusus-yang-karyanya-diakui/</div>', '2021-11-23 07:08:40', '2021-11-23 07:08:40'),
(25, 5, 'Sukses Fasilitasi Pameran Kreasi Difabel, DPRD Kota Malang Bakal Buka Pojok UMKM', 'sukses-fasilitasi-pameran-kreasi-difabel-dprd-kota-malang-bakal-buka-pojok-umkm', 'blog-images/hLFaPPz3cWgF9w7374c1phY4jSSCm7oQ0dJXbQg8.jpg', 'Tugumalang.id – DPRD Kota Malang telah memfasilitasi kegiatan pameran kreasi anak berkebutuhan khusus atau disabilitas, di Gedung DPRD Kota Malang, mulai 19 hingga 21 November 2021. Setelah kegiatan i...', '<div>Tugumalang.id – DPRD Kota Malang telah memfasilitasi kegiatan pameran kreasi anak berkebutuhan khusus atau disabilitas, di Gedung DPRD Kota Malang, mulai 19 hingga 21 November 2021. Setelah kegiatan itu sukses, DPRD Kota Malang berencana akan memfasilitasi kreasi anak-anak disabilitas Kota Malang.<br><br></div><div>Ketua DPRD Kota Malang, I Made Riandiana Kartika menuturkan bahwa kegiatan tersebut mewadahi kreasi disabilitas mulai hasil produk UMKM, lomba mewarna topeng, hingga penampilan seni tari dan musik. Disebutkan, potensi anak-anak berkebutuhan khusus itu cukup mengagumkan.<br><br>“Saya lihat produk-produk yang mereka hasilkan juga bagus. Ada sulaman, anyaman, batik, hingga makanan. Sehingga ini patut kita wadahilah. Tidak hanya berhenti di sini, nanti kita wadahi juga untuk pemasarannya,” ucapnya, pada Minggu (21/11/2021).Untuk itu, pihaknya berencana akan terus mewadahi potensi difabel tersebut. Salah satunya melalui Pojok UMKM yang rencananya akan disediakan di Gedung DPRD Kota Malang, khusus untuk para disabilitas.<br><br></div><div>“Kami juga menyiapkan Pojok UMKM yang akan kami khususkan untuk anak berkebutuhan khusus di Kota Malang. Karena kalau mereka bersaing dengan UMKM profesional itu berat,” ujarnya.<br><br></div><div><br></div><div>“Sehingga Pojok UMKM itu akan menjadi fasilitasi untuk mereka dalam memasarkan produk-produknya. Nanti rencananya di gedung dewan ini, di pojok belakang yang saat ini sedang kita bangun,” imbuhnya.<br><br></div><div><br></div><div>Made menjelaskan bahwa nantinya tamu-tamu DPRD Kota Malang juga akan diarahkan minimal untuk melihat atau bahkan membeli produk kreasi disabilitas tersebut.<br><br></div><div>Pihaknya juga mempersilahkan disabilitas tersebut memasarkan produk mereka mulai Senin hingga Jumat di Gedung DPRD Kota Malang.<br><br></div><div><br></div><div>“Untuk pendaftaran di Pojok UMKM nanti bisa langsung berkoordinasi dengan Sekwan. Nanti juga dikoordinasikan dengan guru atau pembina yayasannya, biar mereka nanti bisa berbagi hari,” paparnya.<br><br></div><div>Disebutkan, Pojok UMKM itu nantinya juga bisa digunakan untuk wadah disabilitas dalam menampilkan atau berlatih seni tari maupun musik. Dengan demikian, potensi anak-anak berkebutuhan khusus tersebut bisa terus berkembang.<br><br></div><div><br></div><div>“Kami melihat kreasi anak-anak ini ternyata luar biasa. Saya baru kali ini melihat anak tuna rungu maupun tuna wicara yang bisa menari tanpa mendengar musik. Jadi mereka bisa pas mengikuti irama musik,” jelasnya.<br><br></div><div>Selain fasilitas Pojok UMKM tersebut, DPRD Kota Malang juga berencana akan menampilkan kreasi anak-anak berkebutuhan khusus tersebut dalam kegiatan paripurna DPRD Kota Malang.<br><br></div><div>“Kami nanti juga akan menampilkan mereka pada saat paripurna pengesahan Perda Pengelolaan Sampah. Jadi sebelum paripurna akan kami tampilkan mereka di pembukaan paripurna itu,” tandasnya.<br><br>Sumber : https://tugumalang.id/sukses-fasilitasi-pameran-kreasi-difabel-dprd-kota-malang-bakal-buka-pojok-umkm/</div>', '2021-11-23 07:14:26', '2021-11-23 07:14:26'),
(26, 5, 'Perhatian! Beasiswa LPDP untuk Kelompok Berkebutuhan Khusus Dibuka', 'perhatian-beasiswa-lpdp-untuk-kelompok-berkebutuhan-khusus-dibuka', 'blog-images/tiKUoXkhSeNWySyEdpc9GFbdWXWQyr7QeGeWH9ZG.png', 'Jakarta - Kabar baik untuk teman-teman difabel atau kelompok berkebutuhan khusus, Lembaga Pengelola Dana Pendidikan (LPDP) membuka pendaftaran beasiswa LPDP untuk kelompok berkebutuhan khusus atau dif...', '<div>Jakarta - Kabar baik untuk teman-teman difabel atau kelompok berkebutuhan khusus, Lembaga Pengelola Dana Pendidikan (LPDP) membuka pendaftaran beasiswa LPDP untuk kelompok berkebutuhan khusus atau difabel mulai 8 Mei sampai 4 Juni 2021. Beasiswa ini merupakan bagian dari Beasiswa Afirmasi LPDP tahun 2021.<br>Beasiswa Kelompok Berkebutuhan Khusus/Difabel diperuntukkan bagi masyarakat berkebutuhan khusus atau difabel yang memenuhi persyaratan LPDP, khususnya penyandang tuna netra atau low vision, tuna rungu, tuna wicara, tuna daksa, dan tuna laras.<br><br>Beasiswa Kelompok Berkebutuhan Khusus/Difabel disediakan untuk jenjang pendidikan:<br>1. Magister satu gelar (single degree) dengan durasi studi paling lama 24 (dua puluh empat) bulan; dan<br>2. Doktor satu gelar (single degree) dengan durasi studi paling lama 48 (empat puluh delapan) bulan.<br><br>Pendaftar Beasiswa Kelompok Berkebutuhan Khusus/Difabel yang telah mempunyai dan mengunggah LoA Unconditional (Letter of<br>Acceptance) atau surat diterima di perguruan tinggi tujuan dengan tanpa syarat wajib memilih satu Perguruan Tinggi Tujuan Dalam ataupun Luar Negeri sesuai dengan daftar Perguruan Tinggi LPDP.<br><br>Sementara pendaftar Beasiswa Kelompok Berkebutuhan Khusus/Difabel yang belum memiliki LoA Unconditional wajib memilih tiga Perguruan Tinggi Tujuan Dalam Negeri atau Luar Negeri yang ada dalam daftar Perguruan Tinggi LPDP dengan program studi yang sama, sejenis, atau serumpun.<br><br>Adapun pendaftar Beasiswa Kelompok Berkebutuhan Khusus/Difabel yang ditetapkan lulus seleksi sebagai Calon Penerima Beasiswa dapat mengikuti Program Pengayaan.<br><br>Berikut ketentuan dan persyaratan beasiswa LPDP untuk Kelompok Berkebutuhan Khusus/Difabel:<br><br>Komponen biaya yang diberikan<br><br>1.Biaya Pendidikan<br><br>- Biaya Pendaftaran<br>- Biaya SPP/Tuition Fee<br>- Tunjangan Buku<br>- Biaya Penelitian Tesis/Disertasi<br>- Biaya Seminar Internasional<br>- Biaya Publikasi Jurnal Internasional<br><br>2. Biaya Pendukung<br><br>- Transportasi<br>- Aplikasi Visa/Residence Permit<br>- Asuransi Kesehatan<br>- Biaya Hidup Bulanan<br>- Biaya Kedatangan<br>- Biaya keadaan darurat (jika diperlukan)<br>- Tunjangan keluarga (Khusus Doktor)<br>- Biaya pendukung pendamping penerima beasiswa kelompok berkebutuhan khusus/difabel sesuai ketentuan LPDP yang berlaku.<br><br>3. Biaya Pengayaan<br><br>Persyaratan umum pendaftaran Beasiswa Kelompok Berkebutuhan Khusus/Difabel<br><br>1. Warga Negara Indonesia<br><br>2. Telah menyelesaikan studi program diploma empat (D4) atau sarjana (S1) untuk beasiswa magister; program magister (S2) untuk beasiswa doktor; atau diploma empat (D4)/sarjana (S1) langsung doktor dengan ketentuan sebagai berikut:<br><br>- Perguruan tinggi dalam negeri yang terakreditasi oleh Badan Akreditasi<br>Nasional Perguruan Tinggi (BAN-PT),<br>- Perguruan tinggi kedinasan dalam negeri, atau<br>- Perguruan tinggi luar negeri yang diakui oleh Direktorat Jenderal Pendidikan Tinggi Kementerian Pendidikan dan Kebudayaan Republik Indonesia atau Kedutaan Besar Republik Indonesia di negara asal perguruan tinggi.<br><br>3. Tidak sedang menempuh studi (on going) program magister ataupun doktor baik di Perguruan Tinggi dalam negeri maupun Perguruan Tinggi di luar negeri;<br><br>4. Pendaftar yang telah menyelesaikan studi magister (S2) tidak diizinkan mendaftar pada program beasiswa magister dan pendaftar yang telah menyelesaikan studi doktor (S3) tidak diizinkan mendaftar pada program beasiswa doktor.<br><br>5. Melampirkan Surat Rekomendasi dari akademisi bagi yang belum bekerja atau dari atasan bagi yang sudah bekerja.<br><br>6. Memilih Perguruan Tinggi tujuan dan program studi sesuai dengan ketentuan LPDP;<br><br>7. Beasiswa hanya diperuntukkan untuk kelas reguler dan tidak diperuntukkan untuk kelas-kelas sebagai berikut:<br><br>- Kelas Eksekutif;<br>- Kelas Khusus;<br>- Kelas Karyawan;<br>- Kelas Jarak Jauh;<br>- Kelas yang diselenggarakan bukan di perguruan tinggi induk;<br>- Kelas Internasional khusus tujuan Dalam Negeri;<br>- Kelas yang diselenggarakan di lebih dari 1 negara perguruan tinggi; atau<br>- Kelas lainnya yang tidak memenuhi ketentuan LPDP<br><br>8. Mengisi profil diri pada formulir pendaftaran online;<br><br>9. Menulis Personal Statement;<br><br>10. Menulis komitmen kembali ke Indonesia dan rencana kontribusi di Indonesia pasca studi;<br><br>11. Menulis Proposal Penelitian bagi pendaftar program pendidikan doktor.<br><br>Persyaratan khusus pendaftaran Beasiswa Kelompok Berkebutuhan Khusus/Difabel<br>1. Pendaftar merupakan kelompok berkebutuhan khusus/difabel berkategori:<br><br>a. Tuna Netra atau Low Vision,<br>b. Tuna Rungu,<br>c. Tuna Wicara,<br>d. Tuna Daksa, atau<br>e. Tuna Laras.<br><br>2. Melampirkan surat keterangan berkebutuhan khusus/difabel dari rumah sakit atau klinik tumbuh kembang.<br><br>3. Bersedia menandatangani surat pernyataan (format terlampir di situs resmi).<br><br>4. Memenuhi ketentuan batas usia pendaftar per 31 Desember di tahun pendaftaran sebagai berikut:<br>- pendaftar jenjang magister paling tinggi 42 (empat puluh dua) tahun.<br>- pendaftar jenjang doktor paling tinggi 47 (empat puluh tujuh) tahun.<br><br>5. Mengunggah dokumen Indeks Prestasi Kumulatif (IPK) dengan ketentuan sebagai berikut:<br><br>- Pendaftar jenjang magister memiliki Indeks Prestasi Kumulatif (IPK) pada<br>jenjang studi sebelumnya sekurang-kurangnya 2,5 pada skala 4 atau yang<br>setara yang dibuktikan dengan transkrip nilai asli atau salinan yang telah dilegalisir.<br><br>- Pendaftar jenjang doktor memiliki Indeks Prestasi Kumulatif (IPK) pada jenjang studi sebelumnya sekurang-kurangnya 3,0 pada skala 4 atau yang setara yang dibuktikan dengan transkrip nilai asli atau salinan yang telah dilegalisir.<br><br>- Khusus untuk pendaftar jenjang Doktor dari program magister penelitian tanpa IPK, wajib melampirkan surat keterangan dari perguruan tinggi asal.<br><br>6. Mengunggah dokumen sertifikat kemampuan bahasa Inggris yang masih berlaku dan diterbitkan oleh ETS (www.ets.org), PTE Academic (www.pearsonpte.com), IELTS (www.ielts.org), Duolingo English Test (englishtest.duolingo.com), atau Test of English Proficiency/TOEP (plti.co.id) dengan ketentuan sebagai berikut:<br><br>- Pendaftar program magister dalam negeri skor minimal kemampuan bahasa Inggris TOEFL ITP® 400, TOEFL iBT® 33, PTE Academic 30, IELTS™ 4.5, Duolingo English Test 65, TOEP 36.<br>- Pendaftar program magister luar negeri, skor minimal kemampuan bahasa Inggris TOEFL ITP® 500, TOEFL iBT 61, PTE Academic 50, IELTS™ 6.0, Duolingo English Test 95, TOEP 66.<br>- Pendaftar program doktor dalam negeri skor minimal kemampuan bahasa Inggris TOEFL ITP® 450, TOEFL iBT® 45, PTE Academic 36, IELTS™ 5.0, Duolingo English Test 75, TOEP 46.<br>- Pendaftar program doktor luar negeri skor minimal kemampuan bahasa Inggris TOEFL ITP® 500, TOEFL iBT® 61, PTE Academic 50, IELTS™ 6.0, Duolingo English Test 95, TOEP 66.<br>- Sertifikat TOEFL ITP yang berlaku harus berasal dari lembaga resmi penyelenggara tes TOEFL ITP di Indonesia.<br><br>7. Mengunggah surat keterangan menunda memulai studi dari Perguruan Tinggi Tujuan bagi pendaftar yang memiliki LoA Unconditional dengan waktu mulai studi yang tidak sesuai dengan ketentuan LPDP.<br><br>Sumber :&nbsp;&nbsp;<a href=\"https://www.detik.com/edu/beasiswa/d-5564799/perhatian-beasiswa-lpdp-untuk-kelompok-berkebutuhan-khusus-dibuka\">https://www.detik.com/edu/beasiswa/d-5564799/perhatian-beasiswa-lpdp-untuk-kelompok-berkebutuhan-khusus-dibuka</a>.</div>', '2021-11-23 07:16:30', '2021-11-23 07:16:30'),
(27, 5, 'Antusias Pelajar SLB Di Cawas Jalani Vaksinasi Kedua', 'antusias-pelajar-slb-di-cawas-jalani-vaksinasi-kedua', 'blog-images/QvRFtMjjTbI8SovHYFsGBsUnqUc6xR9fTXnuKVHr.jpg', 'KLATEN- Pelajar Sekolah Luar Biasa (SLB) Panca Bakti Mulia Cawas, sangat antusias untuk melaksanakan Vaksinasi.Terbukti Suyati, Kepala Sekolah SLB Panca Bakti Mulia menyampaikan bahwa anak-anak sudah...', '<div>KLATEN- Pelajar Sekolah Luar Biasa (SLB) Panca Bakti Mulia Cawas, sangat antusias untuk melaksanakan Vaksinasi.<br>Terbukti Suyati, Kepala Sekolah SLB Panca Bakti Mulia menyampaikan bahwa anak-anak sudah menerima dosis kedua pada hari ini Kamis (30/09/2021) yakni anak-anak berkebutuhan khusus, seperti anak-anak tuna grahita atau golongan C , kemudian tuna runggu dan tuna wicara golongan B.<br><br></div><div>“Berjalan dengan lancar, Setelah divaksin tidak ada masalah. Buktinya anak-anak pada kesini lagi” ujarnya<br><br></div><div>Ia menegaskan bahwa antusias anak-anak saat setelah vaksinasi pertama, melalui grup di Gawai. Banyak yang bertanya kapan untuk vaksinasi lagi dan walaupun anak luar biasa mereka sangat aktif termasuk yang terkena mental tidak ada masalah.<br><br></div><div><br>“Daritadi pelaksanaan lancar tidak ada yang nangis. Cuman tadi ada yang suhunya tinggi dikarenakan tadi dari sawah” ungkapnya<br><br></div><div>Ia juga menyampaikan bahwa sejumlah delapan orang pelajar SLB yang divaksinasi itu berasal dari tiga Kabupaten yaitu dari Sukoharjo, Klaten, Gunungkidul. Usianya rata-rata berumur<br>18 tahun, 19 tahun dan 21 tahun.<br><br></div><div>Baca Juga:&nbsp; ASN Klaten Beli Beras Srinar-Srinuk, Jamin Panen Petani Rojolele Terserap</div><div>“Ya pasti, sangat mendukung (pelaksanaan program vaksinasi)” pungkasnya<br><br></div><div>Tim Pemberitaan Diskominfo Klaten<br><br><br>Sumber : https://klatenkab.go.id/antusias-pelajar-slb-di-cawas-jalani-vaksinasi-kedua/</div>', '2021-11-23 07:20:33', '2021-11-23 07:20:33'),
(28, 6, 'Satu Juta Anak Berkebutuhan Khusus Tak Bisa Sekolah', 'satu-juta-anak-berkebutuhan-khusus-tak-bisa-sekolah', 'blog-images/SZl4NY6mgSA2EOtyPBFk21Nk1JrpFNDJFZOBvewU.jpg', 'Bandung, CNN Indonesia -- Jumlah anak usia pendidikan dasar dan menengah yang tidak sekolah masih tinggi di Indonesia. Survei Sosial Ekonomi Nasional Badan Pusat Statistik pada 2016 menunjukkan, dari...', '<div>Bandung, CNN Indonesia -- Jumlah anak usia pendidikan dasar dan menengah yang tidak sekolah masih tinggi di Indonesia. Survei Sosial Ekonomi Nasional Badan Pusat Statistik pada 2016 menunjukkan, dari 4,6 juta anak yang tidak sekolah, satu juta di antaranya adalah anak-anak berkebutuhan khusus.<br><br>Selama ini, penyelenggaraan pendidikan bagi anak-anak berkebutuhan khusus atau anak dengan disabilitas lebih banyak dilakukan di satuan pendidikan khusus atau Sekolah Luar Biasa (SLB). Padahal, tidak semua daerah di Indonesia memiliki SLB.<br><br>Data Kementerian Pendidikan dan Kebudayaan menyebutkan, dari total 514 kabupaten/kota di Indonesia, 62 di antaranya tidak memiliki SLB. Jumlah 1,6 juta anak berkebutuhan khusus di Indonesia pun baru 10 persen yang bersekolah di SLB.<br><br>Project Manager Yayasan Sayangi Tunas Cilik Wiwied Triesnadi mengatakan, ada beberapa penyebab yang melatari persoalan itu. Sekitar 2.000 SLB yang ada di Indonesia, 75 persennya merupakan SLB swasta yang menarik biaya lebih mahal.<br><br>Selain itu, penyebaran SLB menurut dia juga sangat terbatas. Lokasi SLB pada umumnya berada di daerah perkotaan. Hal ini berdampak pada akses pendidikan bagi anak berkebutuhan khusus.<br><br>\"Anak-anak yang kemampuan ekonomi keluarganya lemah terpaksa tidak bersekolah karena faktor biaya dan jarak,\" ujar Wiwied saat ditemui di Bandung, Jawa Barat, Senin (28/8).<br><br>Dia berpendapat, salah satu solusi meningkatkan angka partisipasi anak berkebutuhan khusus di dunia pendidikan adalah menyelenggarakan sekolah inklusif.<br><br>Sekolah ini dianggap mampu mengakomodasi setiap anak dari beragam karakteristik untuk berpartisipasi secara bermakna dan belajar bersama teman sebayanya di satuan pendidikan reguler, bukan satuan pendidikan khusus seperti SLB.<br><br>Sekolah inklusif ini menerapkan metode pendidikan yang ditujukan untuk menjawab kebutuhan belajar semua anak dengan fokus khusus yang rentan terhadap marginalisasi dan pengucilan.<br><br>Pemerintah Indonesia, sejak awal tahun 2000 sebenarnya sudah mengembangkan konsep pendidikan inklusif dengan mengikuti kecenderungan dunia dalam mengadopsi konsep ini.<br><br>Program ini merupakan kelanjutan dari program pendidikan integratif atau terpadu yang pernah diluncurkan di Indonesia pada 1980-an, tetapi kemudian kurang berkembang.<br><br>Bentuk program pendidikan integratif saat itu adalah sekolah reguler yang menampung anak berkebutuhan khusus, dengan kurikulum, guru, sarana<br>pengajaran, dan kegiatan belajar mengajar yang sama dengan anak lain.<br><br><strong>Banyak Sekolah Keberatan</strong><br><br>Meski begitu, kata Wiwied, konsep pendidikan inklusif di Indonesia seringkali masih dipahami sebatas pada pendidikan terhadap anak-anak berkebutuhan khusus semata.<br><br>Perkembangan pendidikan inklusif kurang menggembirakan karena banyak sekolah reguler yang keberatan menerima anak berkebutuhan khusus. Pihaknya pun meminta Kemendikbud merevisi Permen 70/2009.<br><br>\"Kalau dulu sekolah yang ditunjuk sebagai sekolah inklusif hanya satu per satu kecamatan, sekarang kami dorong agar semua sekolah supaya penerapannya bisa lebih baik lagi,\" ucapnya<br><br>Peraturan Menteri Pendidikan Nasional Nomor 70 Tahun 2009 tentang Pendidikan Inklusif pun hanya mengatur pendidikan inklusif bagi peserta didik dengan kelainan dan potensi kecerdasan atau bakat istimewa.<br><br>Deskripsi peserta didik dengan kelainan menurut Permendiknas tersebut hanya meliputi penderita tunanetra, tunarungu, tunawicara, tunagrahita, tunadaksa, tunalaras, berkesulitan belajar, lamban belajar, autis, memiliki gangguan motorik, menjadi korban penyalahgunaan narkoba, obat terlarang, dan zat adiktif lainnya, maupun tunaganda.<br><br>Wiwied menilai, hal ini cenderung membatasi pendidikan inklusif pada peserta didik yang memiliki keterbatasan karena faktor internal saja. Sementara ada pula peserta didik yang memiliki keterbatasan karena faktor eksternal.<br><br>Faktor eksternal adalah sesuatu yang ada di luar diri anak yang mengakibatkan anak menjadi terhambat proses perkembangan dan belajarnya. Mereka bisa berasal dari anak-anak yang datang dari kelompok bahasa, etnis, atau budaya minoritas, yang bekerja atau tinggal di jalan, hingga anak-anak yang terdampak oleh krisis, konflik, dan bencana.<br><br>\"Tantangan lainnya, para guru sering kali menganggap semua peserta didik itu punya kemampuan yang sama. Tapi ia pribadi tidak pernah mendalami kebutuhan belajar anak-anak,\" kata Wiwied.<br><br>Salah satu contohnya, kata Wiwied, ada anak yang selama ini dianggap bodoh tapi gurunya tidak mengetahui anak tersebut pengidap disleksia (gangguan dalam perkembangan baca-tulis). Akhirnya anak itu sering mendapat hukuman. \"Ini suatu hal yang mengkhawatirkan,\" katanya.<br><br>Perhatian pemerintah tertuju pada anak-anak yang memiliki keterbatasan secara fisik, seperti mempunyai hambatan gerak, hambatan penglihatan, hambatan pendengaran.<br>Lihat juga:Anak Autis Dianjurkan Masuk Sekolah Umum<br>Sementara menurut Wiwied anak-anak disleksia, diskalkulia (gangguan belajar yang mempengaruhi kemampuan memecahkan persoalan matematika), hiperaktif belum jadi perhatian.<br><br>Laporan global yang diluncurkan Save The Children mengenai negara-negara terbaik sebagai tempat tumbuh kembang anak pada 2017 menunjukkan, Indonesia menempati posisi 101 dari 172 negara di dunia. Tertinggal jauh dari Singapura di posisi 33 dan Malaysia di posisi 65, bahkan Thailand yang berada di posisi 84.<br><br>Sumber : https://www.cnnindonesia.com/nasional/20170829083026-20-237997/satu-juta-anak-berkebutuhan-khusus-tak-bisa-sekolah</div>', '2021-11-23 07:33:51', '2021-11-23 07:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(7, 'Akhiran', 'akhiran', 'category-images/Ci28Zla9SWQ9p65Zkw3i0WpacFucOJEWxsPvdTnA.jpg', '2021-11-23 05:00:02', '2021-11-23 05:00:02'),
(8, 'Alfabet', 'alfabet', 'category-images/bWsxOffTMtNcNbRZUjhpjPBDAEzNFnOjy2ewuHDn.jpg', '2021-11-23 05:02:26', '2021-11-23 05:02:26'),
(9, 'Angka', 'angka', 'category-images/CgV5JBHiJ1VIcqJil27LEIkSvJE2mIH6mTvAaMh1.jpg', '2021-11-23 05:03:35', '2021-11-23 05:03:35'),
(10, 'Buah', 'buah', 'category-images/Bgr53gG3CmY0XLf1yCt1hotFgQk822FZTFyKZo7U.jpg', '2021-11-23 05:04:38', '2021-11-23 05:04:38'),
(12, 'Kata Kerja', 'kata-kerja', 'category-images/pGdlL6TzEbZwZFAKNL61hfyTdmB6xhdg7bJ848gP.jpg', '2021-11-23 05:11:33', '2021-11-23 05:11:33'),
(13, 'Orang', 'orang', 'category-images/oJCwQW9p9d9nfi7uThb4M9b2et4VeqUjIubEmH8j.png', '2021-11-23 05:11:44', '2021-11-23 05:11:44'),
(15, 'Kata Benda', 'kata-benda', 'category-images/rP5enwiWO8tSiis9n7fz1eZETSqQw7tWnmRQqPNm.jpg', '2021-11-23 06:19:21', '2021-11-23 06:19:21'),
(16, 'Makanan', 'makanan', 'category-images/0hpx6kpadQtbfR9PaOwcg5VgX8Ta13d1htxaQX3H.jpg', '2021-11-23 06:22:12', '2021-11-23 06:22:12'),
(17, 'Minuman', 'minuman', 'category-images/rrVY0FpciBk3Gc6a78KEPRfdGOEa6R8xramRd7mv.jpg', '2021-11-23 06:23:44', '2021-11-23 06:23:44'),
(18, 'Nama Bulan', 'nama-bulan', 'category-images/uRBXXNKPGPpXYONMynNOwyLblIFxWIuUCsgxd2Zb.jpg', '2021-11-23 06:26:19', '2021-11-23 06:26:19'),
(19, 'Nama Hari', 'nama-hari', 'category-images/9AaLqlGDPwTb3Z3JTpP3Ywz5vuf2YYu1OiJp5dhl.jpg', '2021-11-23 06:28:29', '2021-11-23 06:28:29'),
(20, 'Warna', 'warna', 'category-images/oGAUjHUKAy3t2o5J6jvceW6BYbyZIkoFAZVkRQI5.jpg', '2021-11-23 06:29:38', '2021-11-23 06:29:38'),
(21, 'Sayur', 'sayur', 'category-images/iVG56yJ30Xg4QBchDiuiP3iQqPIE7LR9CWjvr4VU.jpg', '2021-11-23 06:30:27', '2021-11-23 06:30:27'),
(25, 'Hewan', 'hewan', 'category-images/WcJrayCy6kBUaaBHjCZTmBPy5V9fu56XtJ8YMCBA.jpg', '2021-11-23 23:49:24', '2021-11-23 23:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_24_140213_create_posts_table', 1),
(6, '2021_10_25_120957_create_categories_table', 1),
(7, '2021_11_13_123712_add_is_admin_to_users_table', 1),
(8, '2021_11_15_015226_create_blogs_table', 1),
(9, '2021_11_16_131212_create_abouts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(21, 13, 1, 'Adik', 'adik', 'post-images/q62OzpVTtTsZkMVGXvybs1HVn4aValnUKh2zLVxr.bmp', '<div>Menggerakkan tangan ke bawah</div>', NULL, '2021-11-23 05:14:06', '2021-11-23 05:14:06'),
(23, 13, 1, 'Ibu', 'ibu', 'post-images/S2ue9kJaD2BGJGdi1VyVX77WeCyzVHSC2c35bMwY.bmp', NULL, NULL, '2021-11-23 05:15:13', '2021-11-23 05:15:13'),
(24, 13, 1, 'Bapak', 'bapak', 'post-images/v24gdDjsabCsrEFi8P22MdBEDhOJCrQ1IuC4mNZG.bmp', NULL, NULL, '2021-11-23 05:15:46', '2021-11-23 05:15:46'),
(25, 13, 1, 'Kasih', 'kasih', 'post-images/Q2DBSM1Xswpx57h39QxtVnxfodUlMfCZiJ801jXt.bmp', NULL, NULL, '2021-11-23 05:16:53', '2021-11-23 05:16:53'),
(26, 13, 1, 'Kakek', 'kakek', 'post-images/RDHLBog7yUYW4WoCUH5KCNxP4wHCb0YbshDWwpRY.bmp', NULL, NULL, '2021-11-23 05:17:14', '2021-11-23 05:17:14'),
(27, 8, 1, 'Z', 'z', 'post-images/g1F7oM1trOP2aKfc0nbQbaUOfJqOH1xg8cS5fqDb.jpg', NULL, NULL, '2021-11-23 05:18:23', '2021-11-23 05:18:23'),
(28, 8, 1, 'Y', 'y', 'post-images/nSn661l58DX7x2Qw47hezlqQ5ZwJXDdzOBliMVg2.jpg', NULL, NULL, '2021-11-23 05:18:46', '2021-11-23 05:18:46'),
(29, 8, 1, 'X', 'x', 'post-images/WL2FnuxZHM14rALDPZRNNlZNCwM2RpR0cY6KqvED.jpg', NULL, NULL, '2021-11-23 05:19:22', '2021-11-23 05:19:22'),
(30, 8, 1, 'W', 'w', 'post-images/H3nPrHKnRBeygytygUULKmnTpClfevwPl38Cvmzl.jpg', NULL, NULL, '2021-11-23 05:19:45', '2021-11-23 05:19:45'),
(31, 8, 1, 'V', 'v', 'post-images/qdbun9P2RYyr0DsV550hQtl7pqwYUhhqYA4YExM2.jpg', NULL, NULL, '2021-11-23 05:20:08', '2021-11-23 05:20:08'),
(32, 8, 1, 'U', 'u', 'post-images/krDmeeOozRAEr4KTp8YEQv2yc1dG4GRCFaY1LrLs.jpg', NULL, NULL, '2021-11-23 05:20:49', '2021-11-23 05:20:49'),
(33, 8, 1, 'T', 't', 'post-images/M6HRXZybV8Ero59jwGdXzR9BR4e3LTDb9U8aYnGZ.bmp', NULL, NULL, '2021-11-23 05:21:22', '2021-11-23 05:21:22'),
(34, 8, 1, 'S', 's', 'post-images/sPsnbakS5RWWpnKieI8QVYpMv6NccVRH16FcuUkj.bmp', NULL, NULL, '2021-11-23 05:22:00', '2021-11-23 05:22:00'),
(35, 8, 1, 'R', 'r', 'post-images/zyLGunLFlsdXHDYy0PyYbGOutDwrMAZGoqNFD3xp.bmp', NULL, NULL, '2021-11-23 05:22:46', '2021-11-23 05:22:46'),
(36, 8, 1, 'Q', 'q', 'post-images/6FGuCm8tau6MnIkRxTVWZ3Nmh1QDIPvwL9AOIE6S.bmp', NULL, NULL, '2021-11-23 05:23:06', '2021-11-23 05:23:06'),
(37, 8, 1, 'P', 'p', 'post-images/usC3OhlzWVoSyywwpzpLiT3AQGWIHiG3oliPryy7.bmp', NULL, NULL, '2021-11-23 05:23:32', '2021-11-23 05:23:32'),
(38, 8, 1, 'O', 'o', 'post-images/pEiBLlZjoWvPn7ezEr4925NrELls5yGau0cyWQ7t.bmp', NULL, NULL, '2021-11-23 05:23:59', '2021-11-23 05:23:59'),
(39, 8, 1, 'N', 'n', 'post-images/smhIJX2beaQewd1yBJBraLjGf40spX87YeH5jy9F.bmp', NULL, NULL, '2021-11-23 05:24:21', '2021-11-23 05:24:21'),
(40, 8, 1, 'M', 'm', 'post-images/1UWPD2BPbDKECxMyD05uw5r47bdzRpbAQAIB9qAM.bmp', NULL, NULL, '2021-11-23 05:24:37', '2021-11-23 05:24:37'),
(41, 8, 1, 'L', 'l', 'post-images/9eqZyZQ5rEROdcFMxXZRFDhJiOmimbx8t3XCaR58.bmp', NULL, NULL, '2021-11-23 05:25:23', '2021-11-23 05:25:23'),
(42, 8, 1, 'K', 'k', 'post-images/U0uIUCJ8SZXZVPuYcALjE98spYXKcE8ji8lgoLhw.bmp', NULL, NULL, '2021-11-23 05:25:39', '2021-11-23 05:25:39'),
(43, 8, 1, 'J', 'j', 'post-images/Vzva8JUBGI30QJISAkHMfQpkb5vCNI6YQQxUlh1O.bmp', NULL, NULL, '2021-11-23 05:26:00', '2021-11-23 05:26:00'),
(44, 8, 1, 'I', 'i', 'post-images/JNpjd40HQOBKQ64NAWHWGIRNcIzUOZQxI9e6KWlc.bmp', NULL, NULL, '2021-11-23 05:27:01', '2021-11-23 05:27:01'),
(45, 8, 1, 'H', 'h', 'post-images/xcOqotfFQFVACepULk3a7SyFoTQ7V1bfs9x0Ai05.bmp', NULL, NULL, '2021-11-23 05:27:23', '2021-11-23 05:27:23'),
(46, 8, 1, 'G', 'g', 'post-images/qhonXm4LsdKiRSL9r7f8uBcSBEuXIMgzhF88Q2oH.bmp', NULL, NULL, '2021-11-23 05:27:42', '2021-11-23 05:27:42'),
(47, 8, 1, 'F', 'f', 'post-images/1MAuT5Nw1vzSGPoBzNYJmEmYBDKWxM3PJtOkpR1O.bmp', NULL, NULL, '2021-11-23 05:28:03', '2021-11-23 05:28:03'),
(48, 8, 1, 'E', 'e', 'post-images/fetMMUShd8NHx4vQrWPvAQ2NlJ14EuSMELAj4upn.bmp', NULL, NULL, '2021-11-23 05:28:32', '2021-11-23 05:28:32'),
(49, 8, 1, 'D', 'd', 'post-images/dxJJE56dYqKXBFQL9IiaKAl8TqJ1UaNP8RfGYlJQ.bmp', NULL, NULL, '2021-11-23 05:28:50', '2021-11-23 05:28:50'),
(50, 8, 1, 'C', 'c', 'post-images/y9V081je7tKTBBo7fT3WrcM8IhRIGv5Kt3LL2TTO.bmp', NULL, NULL, '2021-11-23 05:29:09', '2021-11-23 05:29:09'),
(51, 8, 1, 'B', 'b', 'post-images/XdUHERtwwPhYXyFxUmXilLVlFoRBRcOkuWFR1rhU.bmp', NULL, NULL, '2021-11-23 05:29:27', '2021-11-23 05:29:27'),
(52, 8, 1, 'A', 'a', 'post-images/dCYiTFcQN3Jv4Yp60aAYoECGdNIQ4M6SHekisC4c.jpg', NULL, NULL, '2021-11-23 05:29:44', '2021-11-23 05:29:44'),
(53, 9, 1, '1', '1', 'post-images/OXn63jn3HSubFuUt0EkV3NosK0DTrET24POA3ddx.png', NULL, NULL, '2021-11-23 05:36:34', '2021-11-23 05:36:34'),
(54, 7, 1, '-i', 'i-2', 'post-images/uJzDxIfZrhnRciL9aRNy9MOunsUUV62ii9XVCBMc.bmp', '<div>Tangan kanan I yang tegak menghadap ke depan di hadapan dada, digerakkan mendatar ke kanan<br><br>Contoh : Tolong dekat<em>i </em>anak itu pelan-pelan!</div>', NULL, '2021-11-23 23:25:20', '2021-11-23 23:27:06'),
(55, 7, 1, '-kan', 'kan', 'post-images/W5U7q4PB5ZtfRXaNyT3478HJJenju9MUDkTlyA5z.bmp', '<div>Tangan kanan K yang tegak menghadap ke depan di hadapan dada, digerakkan mendatar ke kanan.<br><br>Contoh : Kata<em>kan</em> dimana rumahmu!</div>', NULL, '2021-11-23 23:26:36', '2021-11-23 23:26:36'),
(56, 7, 1, '-man', 'man', 'post-images/DimDDknrPJSWKYWDu013LGwIWG4PzMi35Re8pMT1.bmp', '<div>Tangan kanan M yang tegak menghadap ke depan di hadapan dada, digerakkan mendatar ke kanan.<br><br>Contoh : Dia seorang seni<em>man</em>&nbsp;terkenal.</div>', NULL, '2021-11-23 23:28:24', '2021-11-23 23:28:24'),
(57, 7, 1, '-wan', 'wan', 'post-images/E8l1TvJxMVFHUg7MRqmHd5T1LsQ3Guhj0zjtXSex.bmp', '<div>Tangan kanan W yang tegak menghadap ke depan di hadapan dada, digerakkan mendatar ke kanan.<br><br>Contoh : Banyak rela<em>wan</em>&nbsp;membantu masyarakat yang terkena benana banjir.</div>', NULL, '2021-11-23 23:29:31', '2021-11-23 23:29:31'),
(58, 9, 1, '2', '2', 'post-images/xcVuuFUs2tAyLbUzyFujbGBMepfX6tEV0tVYjoBa.jpg', NULL, NULL, '2021-11-23 23:33:47', '2021-11-23 23:33:47'),
(59, 9, 1, '3', '3', 'post-images/LOPpEurQkRbHlJvCtwKuT5Be5KKPvCI7yPnzn0vy.jpg', NULL, NULL, '2021-11-23 23:33:59', '2021-11-23 23:33:59'),
(60, 9, 1, '4', '4', 'post-images/MnIfUtujDxb5J8CKfiGbbWShLDbejyVT4GlrOEgW.jpg', NULL, NULL, '2021-11-23 23:34:12', '2021-11-23 23:34:12'),
(61, 9, 1, '5', '5', 'post-images/bHExZo4K00E0pNSfQvjo8FLah3kt1emCRZL295TS.jpg', NULL, NULL, '2021-11-23 23:34:28', '2021-11-23 23:34:28'),
(62, 18, 1, 'Agustus', 'agustus', 'post-images/tyh1jetQXtK3D22qlSpKID7bIzBYKbS3kLres65f.bmp', NULL, NULL, '2021-11-23 23:37:29', '2021-11-23 23:37:29'),
(63, 19, 1, 'Ahad', 'ahad', 'post-images/llQbDBpVyvQjWWNId4rGQVs4P4cT2Smliq3I9oIk.bmp', NULL, NULL, '2021-11-23 23:37:52', '2021-11-23 23:37:52'),
(64, 15, 1, 'Aku (ku)', 'aku', 'post-images/MyDr7dqkiBlO4NP9t9ptHiMyoS1b10H6IIKY8rD2.bmp', NULL, NULL, '2021-11-23 23:38:48', '2021-11-23 23:38:48'),
(65, 15, 1, 'Akuarium', 'akuarium', 'post-images/MXR9BDhXhMa5DfvicRtuhIc5HrNHEPMQ7n7sSXq0.bmp', NULL, NULL, '2021-11-23 23:39:12', '2021-11-23 23:39:12'),
(66, 10, 1, 'Apel', 'apel', 'post-images/CmkZmS0QhTVHbEu89CqU1As0oALl6dNGZLDiU9B0.bmp', NULL, NULL, '2021-11-23 23:40:00', '2021-11-23 23:40:00'),
(67, 10, 1, 'Buah', 'buah', 'post-images/3HDytAFEcCx4utg8p2cfLSbeCUgQEejnv4rZTI6E.bmp', NULL, NULL, '2021-11-23 23:40:26', '2021-11-23 23:40:26'),
(68, 10, 1, 'jeruk', 'jeruk', 'post-images/YjEYAPL3PuHWvZLsSendj55pLjfGe1GPB5rCFXSY.bmp', NULL, NULL, '2021-11-23 23:41:02', '2021-11-23 23:41:02'),
(69, 12, 1, 'Baca', 'baca', 'post-images/SvdLfRN0W6VF28rjpgzZYAChVoUNh0OlZIFBAvj9.bmp', NULL, NULL, '2021-11-23 23:42:10', '2021-11-23 23:42:10'),
(70, 12, 1, 'Makan', 'makan', 'post-images/h8aKAkHJc20tm1tLNzrPW55zWt5aEXMqDpcqeDOZ.bmp', NULL, NULL, '2021-11-23 23:42:39', '2021-11-23 23:42:39'),
(71, 13, 1, 'Mahasiswa', 'mahasiswa', 'post-images/68uAWoKE85TD4Q8ahGBWg0qPTRx3V2fFrxFEdXuO.bmp', NULL, NULL, '2021-11-23 23:42:56', '2021-11-23 23:42:56'),
(72, 16, 1, 'Nasi', 'nasi', 'post-images/ebkKfw2Dp4PpodXtsv50Bwd5dTSY9eCrkZQu0FzV.bmp', NULL, NULL, '2021-11-23 23:43:25', '2021-11-23 23:43:25'),
(73, 19, 1, 'Senin', 'senin', 'post-images/RFyYM2lgSJMrzRBkXuVGAbHJem5gX9nvydfoYsGE.bmp', NULL, NULL, '2021-11-23 23:43:56', '2021-11-23 23:43:56'),
(74, 19, 1, 'Selasa', 'selasa', 'post-images/FqEsaHr37aDo0wSwlfMKSF4njWfSajpFttcVMbqU.bmp', NULL, NULL, '2021-11-23 23:44:12', '2021-11-23 23:44:12'),
(75, 19, 1, 'Rabu', 'rabu', 'post-images/p1izDHDpEa0ENXxJayC1vaojwGFedWYUn1qxlATR.bmp', NULL, NULL, '2021-11-23 23:44:36', '2021-11-23 23:44:36'),
(76, 19, 1, 'Kamis', 'kamis', 'post-images/t54bByfvIabz3ceHbepyMhBfEOueSbFzxoQFymBD.bmp', NULL, NULL, '2021-11-23 23:44:59', '2021-11-23 23:44:59'),
(77, 19, 1, 'Jum\'at', 'jum-at', 'post-images/Kb6KGPNhiNQ0INoBTB67NTgQWxqpzCetTsxkaN4f.bmp', NULL, NULL, '2021-11-23 23:45:22', '2021-11-23 23:45:22'),
(78, 19, 1, 'Sabtu', 'sabtu', 'post-images/OTRhzU0toUUM5XcI5PJmrefB8CpfdPEInLqK67VW.bmp', NULL, NULL, '2021-11-23 23:45:42', '2021-11-23 23:45:42'),
(79, 19, 1, 'Minggu', 'minggu', 'post-images/cFI4B4WMQgRdC4L9JCojQdvZi3ugsanQaU3wlki6.bmp', NULL, NULL, '2021-11-23 23:46:03', '2021-11-23 23:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Siti Rosalina', 'sitirosalina29', 'sitirosalina29@gmail.com', NULL, '$2y$10$SNKPPtJAbBYthFLlNu2gXOcdXM1ASvG2jg3BTwfR5GFwQTQk3YhuG', NULL, '2021-11-23 04:19:36', '2021-11-23 04:19:36', 1),
(2, 'Jati Gunarto', 'drahmawati', 'prima38@gmail.com', '2021-11-23 04:19:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8M8GifOAofDt6kDrfqpQ4GC9lwL8dixwbNuxe2tCGR8nBWwkpPkd8H25yHpQ', '2021-11-23 04:19:36', '2021-11-23 04:19:36', 0),
(3, 'Yessi Yulianti', 'puti90', 'bhalimah@example.net', '2021-11-23 04:19:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZlJHTaiLU5', '2021-11-23 04:19:36', '2021-11-23 04:19:36', 0),
(4, 'Gadang Surya Situmorang', 'anggriawan.cemani', 'galuh.haryanti@example.net', '2021-11-23 04:19:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SUdWF5RCsN', '2021-11-23 04:19:36', '2021-11-23 04:19:36', 0),
(5, 'Siti Halimatus', 'sitihalimatus', 'sitihalimatus00@gmail.com', NULL, '$2y$10$TnaFhhy1Xp5HgR2nQIegCOGwkGcqqOncRYWsal6gF4KnaYM1YW/6a', NULL, '2021-11-23 07:12:17', '2021-11-23 07:12:17', 0),
(6, 'Ichwan Syifaul', 'ichwanSyifaul', 'ichwansyifaul@gmail.com', NULL, '$2y$10$GugC.GlEcsczOhkXqZGij.t4auAXywKc6OKRjb5Or8vStFUPTDdm.', NULL, '2021-11-23 07:24:25', '2021-11-23 07:24:25', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
