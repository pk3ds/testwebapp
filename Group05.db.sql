-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 02:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_print`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `ID` int(10) NOT NULL,
  `UserID` varchar(255) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `Submission_Date` date DEFAULT NULL,
  `End_Date` date NOT NULL,
  `File` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`ID`, `UserID`, `Title`, `Message`, `Submission_Date`, `End_Date`, `File`, `Status`) VALUES
(1, 'arun', 'How to Order', 'This announcement is to show how customer can order.', NULL, '2021-08-31', 'banner1.jpg', 'Accepted'),
(2, 'arun', 'Calendar', 'Let customer know that they can design their own calendar', NULL, '2020-03-04', 'banner2.png', 'Accepted'),
(34, 'zikri', 'How to pay', 'go to website payment to pay', '2020-02-20', '2020-12-31', 'banner3.png', 'Declined');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `UserID` varchar(255) NOT NULL,
  `Phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`UserID`, `Phone`) VALUES
('123', '+1 01110100119'),
('Rishi', '+1 01110100120');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `ID` int(10) NOT NULL,
  `UserID` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Company` varchar(255) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`ID`, `UserID`, `Name`, `Email`, `Phone`, `Company`, `Message`) VALUES
(1, 'guest', 'Wong', 'Wong@gmail.com', '01110100119', 'kau pehal', 'semua tak ok'),
(2, 'guest', 'Muhammad Amirul Aiman Azhari', 'pendakwah92@gmail.com', '0111010011', 'Student', '123123123'),
(3, 'guest', 'new', 'arunprasath570@yahoo.com', '1213131411', 'new', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ID` int(10) NOT NULL,
  `CustomerUserID` varchar(255) NOT NULL,
  `voucherID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Payment_Status` varchar(255) DEFAULT NULL,
  `Payment_Details` varchar(255) DEFAULT NULL,
  `Billing_Address` varchar(255) DEFAULT NULL,
  `Shipping_Address` varchar(255) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ID`, `CustomerUserID`, `voucherID`, `Date`, `Payment_Status`, `Payment_Details`, `Billing_Address`, `Shipping_Address`, `Price`, `Status`) VALUES
(222, '123', NULL, '2020-02-05', 'ddd', 'dasdas', 'dasdas\r\n\r\ntest', 'dasdas', 213123, 'dsadas'),
(1268, 'Rishi', NULL, '2020-02-18', 'paid', NULL, '18, Jalan dart 13/22 seksyen 13 40100 shah alam selangor', '18, Jalan dart 13/22 seksyen 13 40100 shah alam selangor', 200, 'Pending'),
(1269, 'Rishi', NULL, '2020-02-17', 'paid', NULL, '18, Jalan dart 13/22 seksyen 13 40100 shah alam selangor', '18, Jalan dart 13/22 seksyen 13 40100 shah alam selangor', 1200, 'Pending'),
(1272, 'Rishi', NULL, '2020-02-20', 'Unpaid', NULL, NULL, NULL, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Catchphrase` varchar(255) DEFAULT NULL,
  `Details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Catchphrase`, `Details`) VALUES
(1, 'A4', 'A4 is a paper size that is used for a wide range of documents, including magazines, catalogs, letters and forms.', '\r\n				<div class=\"tab-content\"><!--Dynamic tab content-->\r\n					<div id=\"description\" class=\"container tab-pane active\"><br>\r\n						<div class=\"table-responsive-sm\"><!--Only visible on 768px and up screen-->\r\n							<table class=\"table table-striped\">\r\n								<tr>\r\n									<th scope=\"row\">Color</th>\r\n									<td>Black and white<br>Color</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Size</th>\r\n									<td>A4</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Material</th>\r\n									<td>	128gsm Art Paper<br>157gsm Art Paper</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Binding</th>\r\n									<td>Staple / Perfect Bind</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Lead Time</th>\r\n									<td>3 - 5 Business Days</td>\r\n								</tr>\r\n							</table>\r\n						</div>\r\n						<br>\r\n						<b>Artwork Specified:</b>\r\n						<ul>\r\n							<li>\r\n								Resolution: At least 300 dpi.\r\n							</li>\r\n							<li>\r\n								Color model: CMYK.\r\n							</li>\r\n							<li>\r\n								Bleeding size: 3mm bleeds all sides.\r\n							</li>\r\n							<li>\r\n								Artwork size: 100MB or less.\r\n							</li>\r\n							<li>\r\n								Artwork format: PDF.\r\n							</li>\r\n							<li>\r\n								Onlineprint will not give any prior notification if the files submitted do not match the required specifications.\r\n							</li>\r\n						</ul><br>\r\n						<b>Delivery Turnaround:</b>\r\n						<ul>\r\n							<li>\r\n								Delivery turnaround will commence from the date of artwork and payment confirmation.\r\n							</li>\r\n							<li>\r\n								Turnaround lead-time based on working business days, excluding Saturdays, Sundays and Public Holidays.\r\n							</li>\r\n						</ul><br>\r\n						<b>Payment:</b>\r\n						<ul>\r\n							<li>\r\n								All prices in Ringgit Malaysia.\r\n							</li>\r\n							<li>\r\n								Payment modes are Online Banking, ATM transfers.\r\n							</li>\r\n							<li>\r\n								All payments must be made within 24 hours upon placement of orders.\r\n							</li>\r\n							<li>\r\n								All successful orders will be accompanied with an invoice via email. \r\n							</li>\r\n						</ul>\r\n				\r\n					</div>\r\n					<div id=\"pricing\" class=\"container tab-pane fade\"><br><!--fade effect to container-->\r\n						<div class=\"table-responsive-sm\"><!--Table realign only to sm and screen-->\r\n							<table class=\"table table-striped\"><!--Make the table striped-->\r\n								<tr>\r\n									<th>Color</th>\r\n									<th>Quantity</th>\r\n									<th>Price per Page</th>\r\n								</tr>\r\n								<tr>\r\n									<td>Black and white</td>\r\n									<td>1-100</td>\r\n									<td>RM0.20</td>\r\n								</tr>\r\n								<tr>\r\n									<td>Black and white</td>\r\n									<td>100-300</td>\r\n									<td>RM0.15</td>\r\n								</tr>\r\n								<tr>\r\n									<td>Black and white</td>\r\n									<td>300++</td>\r\n									<td>RM0.10</td>\r\n								</tr>\r\n								<tr>\r\n									<td>Color</td>\r\n									<td>1-100</td>\r\n									<td>RM1.00</td>\r\n								</tr>\r\n								<tr>\r\n									<td>Color</td>\r\n									<td>100-300</td>\r\n									<td>RM0.80</td>\r\n								</tr>\r\n								<tr>\r\n									<td>Color</td>\r\n									<td>300++</td>\r\n									<td>RM0.60</td>\r\n								</tr>\r\n							</table>\r\n						</div>\r\n					</div>'),
(2, 'Banner', 'Banner for advertisements.', '\r\n				<div class=\"tab-content\">\r\n					<div id=\"description\" class=\"container tab-pane active\"><br>\r\n						<div class=\"table-responsive-sm\">\r\n							<table class=\"table table-striped\">\r\n								<tr>\r\n									<th scope=\"row\">Color</th>\r\n									<td>4C/0C (Four colors front, blank back) CMYK\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Size</th>\r\n									<td>29.5\" (W) x 78\" (H)</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Material</th>\r\n									<td>	PP Sythetic Paper+No Lamination<br>PP Sythetic Paper+Matt Lamination<br>PP Sythetic Paper+Gloss Lamination</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Banner Type</th>\r\n									<td>Roll Up Stand</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Lead Time</th>\r\n									<td>3 - 5 Business Days</td>\r\n								</tr>\r\n							</table>\r\n						</div>\r\n						<br>\r\n						<b>Artwork Specified:</b>\r\n						<ul>\r\n							<li>\r\n								Resolution: At least 300 dpi.\r\n							</li>\r\n							<li>\r\n								Color model: CMYK.\r\n							</li>\r\n							<li>\r\n								Bleeding size: 3mm bleeds all sides.\r\n							</li>\r\n							<li>\r\n								Artwork size: 100MB or less.\r\n							</li>\r\n							<li>\r\n								Artwork format: PDF.\r\n							</li>\r\n							<li>\r\n								Onlineprint will not give any prior notification if the files submitted do not match the required specifications.\r\n							</li>\r\n						</ul><br>\r\n						<b>Delivery Turnaround:</b>\r\n						<ul>\r\n							<li>\r\n								Delivery turnaround will commence from the date of artwork and payment confirmation.\r\n							</li>\r\n							<li>\r\n								Turnaround lead-time based on working business days, excluding Saturdays, Sundays and Public Holidays.\r\n							</li>\r\n						</ul><br>\r\n						<b>Payment:</b>\r\n						<ul>\r\n							<li>\r\n								All prices in Ringgit Malaysia.\r\n							</li>\r\n							<li>\r\n								Payment modes are Online Banking, ATM transfers.\r\n							</li>\r\n							<li>\r\n								All payments must be made within 24 hours upon placement of orders.\r\n							</li>\r\n							<li>\r\n								All successful orders will be accompanied with an invoice via email. \r\n							</li>\r\n						</ul>\r\n				\r\n					</div>\r\n					<div id=\"pricing\" class=\"container tab-pane fade\"><br>\r\n						<div class=\"table-responsive-sm\">\r\n							<table class=\"table table-striped\">\r\n								<tr>\r\n									<th>Size</th>\r\n									<th>Quantity Form</th>\r\n									<th>Quantity To</th>									\r\n									<th>Price</th>		\r\n								</tr>\r\n								<tr>\r\n									<td>29.5\" (W) x 78\" (H)</td>\r\n									<td>1</td>\r\n									<td>9999</td>\r\n									<td>RM 30/unit</td>\r\n								</tr>\r\n\r\n							</table>\r\n						</div>\r\n					</div>'),
(3, 'Brochure', 'Brochure is a a small book or magazine containing pictures and information about a product or service.', '\r\n                    <div class=\"tab-content\"><!--Dynamic tab content-->\r\n                        <div id=\"description\" class=\"container tab-pane active\">\r\n                            <br />\r\n                            <div class=\"table-responsive-sm\"><!--Only visible on 768px and up screen-->\r\n                                <table class=\"table table-striped\">\r\n                                    <tr>\r\n                                        <th scope=\"row\">Color</th>\r\n										<td>Black and white<br>Color</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Size</th>\r\n										<td>x 3 (628mm x 297mm) A4 x 4 (838mm x 297mm) </td>\r\n									</tr>\r\n									<tr>\r\n										<th scope=\"row\">Material</th>\r\n										<td>	128gsm Art Paper<br>157gsm Art Paper</td>\r\n									</tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Finishing Option</th>\r\n										<td>2 fold-3 panel ( C / Z Fold) / 3 fold-4 panel ( C / Z Fold)</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Lead Time</th>\r\n                                        <td>3 - 5 Business Days</td>\r\n                                    </tr>\r\n                                </table>\r\n                            </div>\r\n                            <br />\r\n                            <b>Artwork Specified:</b>\r\n                            <ul>\r\n                                <li>\r\n									Resolution: At least 300 dpi.\r\n								</li>\r\n								<li>\r\n									Color model: CMYK.\r\n								</li>\r\n								<li>\r\n									Bleeding size: 3mm bleeds all sides.\r\n								</li>\r\n								<li>\r\n									Artwork size: 100MB or less.\r\n								</li>\r\n								<li>\r\n									Artwork format: PDF.\r\n								</li>\r\n								<li>\r\n									Onlineprint will not give any prior notification if the files submitted do not match the required specifications.\r\n								</li>\r\n                            </ul>\r\n                            <br />\r\n                            <b>Delivery Turnaround:</b>\r\n                            <ul>\r\n                                <li>Delivery turnaround will commence from the date of artwork and payment confirmation.</li>\r\n                                <li>Turnaround lead-time based on working business days, excluding Saturdays, Sundays and Public\r\n                                Holidays.</li>\r\n                            </ul>\r\n                            <br />\r\n                            <b>Payment:</b>\r\n                            <ul>\r\n                                <li>All prices in Ringgit Malaysia.</li>\r\n                                <li>Payment modes are Online Banking, ATM transfers.</li>\r\n                                <li>All payments must be made within 24 hours upon placement of orders.</li>\r\n                                <li>All successful orders will be accompanied with an invoice via email.</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div id=\"pricing\" class=\"container tab-pane fade\"><!--fade effect to container-->\r\n                            <br />\r\n                            <div class=\"table-responsive-sm\"><!--Table realign only to sm and screen-->\r\n                                <table class=\"table table-striped\"><!--Make the table striped-->\r\n                                    <tr>\r\n										<th>Size</th>\r\n										<th>Quantity</th>\r\n										<th>Price</th>\r\n									</tr>\r\n									<tr>\r\n										<td>A4 x 3</td>\r\n										<td>300</td>\r\n										<td>RM330</td>\r\n									</tr>\r\n									<tr>\r\n										<td></td>\r\n										<td>500</td>\r\n										<td>RM510</td>\r\n									</tr>\r\n									<tr>\r\n										<td></td>\r\n										<td>1000</td>\r\n										<td>RM950</td>\r\n									</tr>\r\n									<tr>\r\n										<td></td>\r\n										<td>2000</td>\r\n										<td>RM1900</td>\r\n									</tr>\r\n									<tr>\r\n										<td></td>\r\n										<td>3000</td>\r\n										<td>RM2850</td>\r\n									</tr>\r\n									<tr>\r\n										<td></td>\r\n										<td>4000</td>\r\n										<td>RM3800</td>\r\n									</tr>\r\n                                </table>\r\n                            </div>\r\n                        </div>'),
(4, 'Calendar', 'Printable calendar for 2020 or 2021!', '<!--Description of calendar and it is a dynamic tab content-->\r\n				<div class=\"tab-content\">\r\n					<div id=\"description\" class=\"container tab-pane active\"><br/>\r\n						<div class=\"table-responsive-sm\">\r\n							<table class=\"table table-striped\">\r\n								<tr>\r\n									<th scope=\"row\">Color</th>\r\n									<td colspan=\"2\">4cx4c (Full color print front & back), CMYK</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Size</th>\r\n									<td>152mm (H) x 210mm (L) - Portrait</td>\r\n									<td>210mm (H) x 152mm (L) - Landscape</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Material</th>\r\n									<td>Inlay: 210gsm Art Card</td>\r\n									<td>Stand - Black Linmaster wrap into 700gsm Hard Board</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Binding</th>\r\n									<td colspan=\"2\">Wire O (black / white)</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Finishing option</th>\r\n									<td colspan=\"2\">No finishing / 1s uv / Trim to size</td>\r\n								</tr>\r\n								<tr>\r\n									<th scope=\"row\">Lead Time</th>\r\n									<td colspan=\"2\">5 - 7 business days</td>\r\n								</tr>\r\n							</table>\r\n						</div>\r\n						<!--Policies and regulations-->\r\n						<ul>\r\n							<li>\r\n								<b>No Colour Proof Provided.</b>\r\n							</li>\r\n						</ul><br/>\r\n						<b>Artwork Specified:</b>\r\n						<ul>\r\n							<li>\r\n								Resolution: At least 300 dpi.\r\n							</li>\r\n							<li>\r\n								Color model: CMYK.\r\n							</li>\r\n							<li>\r\n								Bleeding size: 3mm bleeds all sides.\r\n							</li>\r\n							<li>\r\n								Artwork size: 100MB or less.\r\n							</li>\r\n							<li>\r\n								Artwork format: PDF.\r\n							</li>\r\n							<li>\r\n								Onlineprint will not give any prior notification if the files submitted do not match the required specifications.\r\n							</li>\r\n						</ul><br/>\r\n						<b>Delivery Turnaround:</b>\r\n						<ul>\r\n							<li>\r\n								Delivery turnaround will commence from the date of artwork and payment confirmation.\r\n							</li>\r\n							<li>\r\n								Turnaround lead-time based on working business days, excluding Saturdays, Sundays and Public Holidays.\r\n							</li>\r\n						</ul><br/>\r\n						<b>Payment:</b>\r\n						<ul>\r\n							<li>\r\n								All prices in Ringgit Malaysia.\r\n							</li>\r\n							<li>\r\n								Payment modes are Online Banking, ATM transfers.\r\n							</li>\r\n							<li>\r\n								All payments must be made within 24 hours upon placement of orders.\r\n							</li>\r\n							<li>\r\n								All successful orders will be accompanied with an invoice via email. \r\n							</li>\r\n						</ul>\r\n				\r\n					</div>\r\n					<!--Price of a calendar-->\r\n					<div id=\"pricing\" class=\"container tab-pane fade\"><br/>\r\n						<div class=\"table-responsive-sm\">\r\n							<table class=\"table table-striped\">\r\n								<tr>\r\n									<th>Size</th>\r\n									<th>Quantity</th>\r\n									<th>Price</th>\r\n								</tr>\r\n								<tr>\r\n									<td>152mm x 210mm (Portrait)</td>\r\n									<td>100</td>\r\n									<td>RM 10.00/unit</td>\r\n								</tr>\r\n								<tr>\r\n									<td></td>\r\n									<td>200</td>\r\n									<td>RM 9.00/unit</td>\r\n								</tr>\r\n								<tr>\r\n									<td></td>\r\n									<td>300</td>\r\n									<td>RM 8.00/unit</td>\r\n								</tr>\r\n							</table>\r\n						</div>\r\n					</div>'),
(5, 'Namecard', 'Marketing material to boost your business!', '<div class=\"tab-content\">                                       \r\n                        <div id=\"description\" class=\"container tab-pane active\">         \r\n                            <br />\r\n                            <div class=\"table-responsive-sm\">                        <!--Only visible on 768px and up screen-->\r\n                                <table class=\"table table-striped\">                  <!--Bootstrap class for striped table-->\r\n                                    <tr>\r\n                                        <th scope=\"row\">Color</th>\r\n                                        <td>4cx4c (Full color print, blank back), CMYK only</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Size</th>\r\n                                        <td>89mm x 54mm</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Material</th>\r\n                                        <td>260gsm Art Card</td>\r\n                                    </tr>\r\n                                   <tr>\r\n									<th rowspan=\"4\" scope=\"row\">Finishing option</th>\r\n									<td>Trim to size</td>\r\n								<tr>\r\n								<td>Matt Lamination</td>\r\n								</tr>\r\n								<tr>\r\n								<td>Matt Lamination + 1 Side Spot UV</td>\r\n								</tr>\r\n								<tr>\r\n								<td>Matt Lamination + 2 Side Spot UV</td>\r\n								</tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Lead Time</th>\r\n                                        <td>3 - 5 Business Days</td>\r\n                                    </tr>\r\n                                </table>\r\n                            </div>\r\n                            <ul>\r\n                                <li>\r\n                                    <b>No Colour Proof Provided.</b>\r\n                                </li>\r\n                            </ul>\r\n                            <br />\r\n                            <b>Artwork Specified:</b>\r\n                            <ul>\r\n                                <li>Resolution: At least 300 dpi.</li>\r\n                                <li>Color model: CMYK.</li>\r\n                                <li>Bleeding size: 3mm bleeds all sides.</li>\r\n                                <li>Artwork size: 100MB or less.</li>\r\n                                <li>Artwork format: PDF.</li>\r\n                                <li>Onlineprint will not give any prior notification if the files submitted do not match the\r\n                                required specifications.</li>\r\n                            </ul>\r\n                            <br />\r\n                            <b>Delivery Turnaround:</b>\r\n                            <ul>\r\n                                <li>Delivery turnaround will commence from the date of artwork and payment confirmation.</li>\r\n                                <li>Turnaround lead-time based on working business days, excluding Saturdays, Sundays and Public\r\n                                Holidays.</li>\r\n                            </ul>\r\n                            <br />\r\n                            <b>Payment:</b>\r\n                            <ul>\r\n                                <li>All prices in Ringgit Malaysia.</li>\r\n                                <li>Payment modes are Online Banking, ATM transfers.</li>\r\n                                <li>All payments must be made within 24 hours upon placement of orders.</li>\r\n                                <li>All successful orders will be accompanied with an invoice via email.</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div id=\"pricing\" class=\"container tab-pane fade\">     <!--fade effect to container-->\r\n                            <br />\r\n                            <div class=\"table-responsive-sm\">                  <!--Bootstrap class for responsive table-->\r\n                                <table class=\"table table-striped\">            <!--Bootstrap class for striped table-->\r\n                                    <tr>\r\n                                        <th>Size</th>\r\n                                        <th>Quantity</th>\r\n                                        <th>Price</th>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>89mm x 54mm</td>\r\n                                        <td>200</td>\r\n                                        <td>RM 0.50/piece</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td></td>\r\n                                        <td>300</td>\r\n                                        <td>RM 0.40/piece</td>\r\n                                    </tr>\r\n                                </table>\r\n                            </div>\r\n                        </div>'),
(6, 'Poster', 'Marketing material to boost your publicity!', '\r\n                    <div class=\"tab-content\"><!--Dynamic tab content-->\r\n                        <div id=\"description\" class=\"container tab-pane active\">\r\n                            <br />\r\n                            <div class=\"table-responsive-sm\"><!--Only visible on 768px and up screen-->\r\n                                <table class=\"table table-striped\">\r\n                                    <tr>\r\n                                        <th scope=\"row\">Color</th>\r\n                                        <td>4cx0c (Full color print, blank back), CMYK only</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Size</th>\r\n                                        <td>20&quot; x 30&quot;</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Material</th>\r\n                                        <td>128gsm Art Paper / 157gsm Art Paper</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Finishing option</th>\r\n                                        <td>No finishing</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <th scope=\"row\">Lead Time</th>\r\n                                        <td>3 - 5 Business Days</td>\r\n                                    </tr>\r\n                                </table>\r\n                            </div>\r\n                            <ul>\r\n                                <li>\r\n                                    <b>No Colour Proof Provided.</b>\r\n                                </li>\r\n                            </ul>\r\n                            <br />\r\n                            <b>Artwork Specified:</b>\r\n                            <ul>\r\n                                <li>Resolution: At least 300 dpi.</li>\r\n                                <li>Color model: CMYK.</li>\r\n                                <li>Bleeding size: 3mm bleeds all sides.</li>\r\n                                <li>Artwork size: 100MB or less.</li>\r\n                                <li>Artwork format: PDF.</li>\r\n                                <li>Onlineprint will not give any prior notification if the files submitted do not match the\r\n                                required specifications.</li>\r\n                            </ul>\r\n                            <br />\r\n                            <b>Delivery Turnaround:</b>\r\n                            <ul>\r\n                                <li>Delivery turnaround will commence from the date of artwork and payment confirmation.</li>\r\n                                <li>Turnaround lead-time based on working business days, excluding Saturdays, Sundays and Public\r\n                                Holidays.</li>\r\n                            </ul>\r\n                            <br />\r\n                            <b>Payment:</b>\r\n                            <ul>\r\n                                <li>All prices in Ringgit Malaysia.</li>\r\n                                <li>Payment modes are Online Banking, ATM transfers.</li>\r\n                                <li>All payments must be made within 24 hours upon placement of orders.</li>\r\n                                <li>All successful orders will be accompanied with an invoice via email.</li>\r\n                            </ul>\r\n                        </div>\r\n                        <div id=\"pricing\" class=\"container tab-pane fade\"><!--fade effect to container-->\r\n                            <br />\r\n                            <div class=\"table-responsive-sm\"><!--Table realign only to sm and screen-->\r\n                                <table class=\"table table-striped\"><!--Make the table striped-->\r\n                                    <tr>\r\n                                        <th>Size</th>\r\n                                        <th>Quantity</th>\r\n                                        <th>Price</th>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td>20&quot; x 30&quot;</td>\r\n                                        <td>10</td>\r\n                                        <td>RM 5/per unit</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td></td>\r\n                                        <td>20</td>\r\n                                        <td>RM 4.5/per unit</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td></td>\r\n                                        <td>30</td>\r\n                                        <td>RM 4.30/per unit</td>\r\n                                    </tr>\r\n                                    <tr>\r\n                                        <td></td>\r\n                                        <td>40</td>\r\n                                        <td>RM 4.00/per unit</td>\r\n                                    </tr>\r\n                                </table>\r\n                            </div>\r\n                        </div>');

-- --------------------------------------------------------

--
-- Table structure for table `product_in_order`
--

CREATE TABLE `product_in_order` (
  `ID` int(10) NOT NULL,
  `OrderID` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `File` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Detail` varchar(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_in_order`
--

INSERT INTO `product_in_order` (`ID`, `OrderID`, `ProductID`, `File`, `Name`, `Price`, `Detail`, `Quantity`) VALUES
(1, 1268, 5, 'quote.txt', 'Business Card for company', 200, '<p><b>Size:</b> 89mm x 54mm</p>\r\n<p><b>Material + Finishing:</b> 260gsm Art card</p>\r\n<p><b>Colour:</b> 4C x 4C</p>\r\n<p><b>Process Day:</b> 3 to 5 Business Days</p>', 200),
(2, 1269, 6, 'quote.txt', 'No smoking poster', 236, '<p><b>Size:</b> 20\" x 30\"</p>\r\n<p><b>Material:</b> 128gsm Art Paper</p>\r\n<p><b>Colour:</b> 4C x 0C</p>\r\n<p><b>Process Day:</b> 3 to 5 Business Days</p>', 10),
(3, 1269, 1, 'eStatement-201912.pdf', 'efs', 50, '<br>efs<br>Size: A4<br>Color: Black and White<br>Material: 128gsm Art Paper<br>Process Day: 3 to 5 Business Day<br>on<br>Submit', 100),
(7, 1269, 1, 'eStatement-201912.pdf', 'fa', 50, '<br>fa<br>Size: A4<br>Color: Black and White<br>Material: 128gsm Art Paper<br>Process Day: 3 to 5 Business Day<br>on<br>Submit', 100),
(8, 1269, 1, 'Product_Template_business-card-2x3_5.pdf', 'hi', 50, '<br>hi<br>Size: A4<br>Color: Black and White<br>Material: 128gsm Art Paper<br>Process Day: 3 to 5 Business Day<br>on<br>Submit', 100),
(10, 222, 2, 'Product_Template_business-card-2x3_5.pdf', 'nj', 3000, '<br>nj<br>Size: 29.5(W)X70(H)<br>Material: Synthetic paper<br>1<br>Print: 4C x 0C<br>Process Day: 3 to 5 Business Day<br>on<br>Submit', 100);

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `ID` int(10) NOT NULL,
  `CustomerUserID` varchar(255) NOT NULL,
  `Date` date DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Product_Type` varchar(255) DEFAULT NULL,
  `Product_Name` varchar(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Shipping` varchar(255) DEFAULT NULL,
  `Size` varchar(255) DEFAULT NULL,
  `Paper_Type` varchar(255) DEFAULT NULL,
  `Side_Pages` varchar(255) DEFAULT NULL,
  `Coating` varchar(255) DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL,
  `Lamination` varchar(255) DEFAULT NULL,
  `Add_Details` varchar(255) DEFAULT NULL,
  `File` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`ID`, `CustomerUserID`, `Date`, `Title`, `Product_Type`, `Product_Name`, `Quantity`, `Shipping`, `Size`, `Paper_Type`, `Side_Pages`, `Coating`, `Color`, `Lamination`, `Add_Details`, `File`) VALUES
(12, '123', '0000-00-00', '12', '12', '12', 12, '12', '12', '12', '12', '121', '12', '12', '11', 'quote.txt'),
(17, 'Rishi', '2020-02-05', 'To continue project', 'A4', 'A4', 240, 'MMU, Cyberjaya', NULL, 'Glossy', NULL, NULL, 'Black and white', NULL, NULL, 'quote.txt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Last_Login` date DEFAULT NULL,
  `Date_Join` date DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Password`, `Role`, `Last_Login`, `Date_Join`, `Name`, `Email`, `Image`) VALUES
('111', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'customer', '2020-02-20', '2020-02-19', 'Muhammad Amirul Aiman Azhari', 'pendakwa@gmail.com', NULL),
('123', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'customer', NULL, NULL, '123', '123', '123'),
('12312312', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'customer', '2020-02-19', '2020-02-19', 'Muhammad Amirul Aiman Azhari', 'pendakwah921@gmail.com', NULL),
('aaa', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'client', '2020-02-20', '0000-00-00', 'aaa', '11111@gmail.com', 'user.png'),
('Aiman', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'client', '2020-02-20', '0000-00-00', 'Aiman', 'aiman@gmail.com', 'aiman.jpg'),
('Ammar', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'client', '2020-02-20', '0000-00-00', 'Ammar', 'ammar@yahoo.com', 'ammar.jpg'),
('arun', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'admin', '2020-02-20', '2020-02-02', 'Arun Prasath a/l Athappan', 'arunprasath218@gmail.com', 'arun.jpg'),
('guest', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'guest', '2020-02-19', '2020-02-19', 'guest', 'guest@guest.com', 'guest.jpg'),
('Rishi', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'customer', '2020-02-20', '2020-02-02', 'Rishi', 'rishi@yahoo.com', NULL),
('sriram', '$2y$10$4vPAi.AR89AwwnYzQe6iP.f6MvNwgSEkHOWLCN/mvNLtFrZQRoOvi', 'admin', '2020-02-20', '2020-02-12', 'Sri Ramalagapan', 'sri@gmail.com', 'sri.jpg'),
('zikri', '$2y$10$reOX5/OV9ASj94zbAZdKiubiYUVK2F4Cgm.ta2Q7Wns0Q5xvl2OS2', 'customer', '2020-02-20', '2020-02-20', 'Zikri', 'zikri@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Discount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKAnnounceme414689` (`UserID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKInquiry900289` (`UserID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKOrder321061` (`CustomerUserID`),
  ADD KEY `FKOrder8161` (`voucherID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product_in_order`
--
ALTER TABLE `product_in_order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKProduct_In225067` (`OrderID`),
  ADD KEY `FKProduct_In903355` (`ProductID`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKQuote373621` (`CustomerUserID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1273;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_in_order`
--
ALTER TABLE `product_in_order`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `FKAnnounceme414689` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FKCustomer697196` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `FKInquiry900289` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FKOrder321061` FOREIGN KEY (`CustomerUserID`) REFERENCES `customer` (`UserID`),
  ADD CONSTRAINT `FKOrder8161` FOREIGN KEY (`voucherID`) REFERENCES `voucher` (`ID`);

--
-- Constraints for table `product_in_order`
--
ALTER TABLE `product_in_order`
  ADD CONSTRAINT `FKProduct_In225067` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`),
  ADD CONSTRAINT `FKProduct_In903355` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`);

--
-- Constraints for table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `FKQuote373621` FOREIGN KEY (`CustomerUserID`) REFERENCES `customer` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
