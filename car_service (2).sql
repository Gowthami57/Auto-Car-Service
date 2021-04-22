-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 09:08 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_users`
--

CREATE TABLE `car_users` (
  `username` varchar(10) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `centerName` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_users`
--

INSERT INTO `car_users` (`username`, `password`, `email`, `phone`, `centerName`) VALUES
('Abhishek', '$2y$10$k7vjIOTUoqtP8Fw31Y/zpuc/DbxUeVUjneygzJ7CqWM97DnCV6XMO', 'abhishek@gmail.com', 7018706099, NULL),
('shubu', '$2y$10$nmyzU7zK/rEXuwZcDM.At.HxoQoAwv3J9ZP9npIUKHZb7YOtdqB.K', 'shubham@gmail.com', 7018072877, 'center1'),
('Kunal', '$2y$10$nmyzU7zK/rEXuwZcDM.At.HxoQoAwv3J9ZP9npIUKHZb7YOtdqB.K', 'kunal@gmail.com', 7018706090, NULL),
('abhijeet', '$2y$10$nmyzU7zK/rEXuwZcDM.At.HxoQoAwv3J9ZP9npIUKHZb7YOtdqB.K', 'abhi@gmail.com', 8696518834, NULL),
('Gowthami', '$2y$10$ar1IT7PD7QCky7j/m3ZvE.0ni6aIn3mc7AZtt1ruRIvcSdgQ8qsuq', 'gowthamisetty57@gmail.com', 7760902124, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chatbox`
--

CREATE TABLE `chatbox` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbox`
--

INSERT INTO `chatbox` (`id`, `sender`, `receiver`, `message`) VALUES
(1, '7018706040', 'soodheena0001@gmail.com', 'hello'),
(2, 'soodheena0001@gmail.com', '7018706040', 'how are you'),
(3, '7018706040', 'soodheena0001@gmail.com', 'how have you been'),
(15, 'soodheena0001@gmail.com', '9816987720', 'okay which car service do you want us to do ? '),
(20, 'soodheena0001@gmail.com', '7018706040', 'okay'),
(13, '7018706040', 'soodheena0001@gmail.com', 'hi'),
(14, '9816987720', 'soodheena0001@gmail.com', 'i need a car service'),
(21, 'soodheena0001@gmail.com', '7018706040', 'kkkk'),
(19, '7018706040', 'soodheena0001@gmail.com', 'i need a wheel alignment service from you '),
(22, 'soodheena0001@gmail.com', '9816987720', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `centerName` varchar(50) NOT NULL,
  `discount` varchar(10) NOT NULL,
  `startDate` varchar(50) NOT NULL,
  `endDate` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `centerName`, `discount`, `startDate`, `endDate`) VALUES
(1, 'center1', '', '', ''),
(2, 'center2', '', '', ''),
(3, 'center3', '', '', ''),
(4, 'center4', '', '', ''),
(5, 'center5', '', '', ''),
(6, 'center6', '20', '2021-04-01', '2021-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `ourfeedback`
--

CREATE TABLE `ourfeedback` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `feedback` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ourfeedback`
--

INSERT INTO `ourfeedback` (`id`, `name`, `feedback`) VALUES
(5, 'Gowthami', 'Great Experience with the website :) they helped me to pick the best option for my car.'),
(4, 'Abhijeet', 'I got my car serviced within a short period of time and with the best deals i could have. I am very happy with my car service'),
(3, 'Veera', 'Had a great experience using this website. I would recommend this site to everyone who want the car service at jaipur '),
(2, 'Sonali', 'Loved the Got amazing deals'),
(1, 'Heena', 'the quality of car service was good. This site helped me to pick the best option for my car service '),
(15, 'Abhishek', 'amazing services'),
(6, 'Shubham', 'mmm'),
(16, 'Lucky', 'website was awsome');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `umail` varchar(50) NOT NULL,
  `centerName` varchar(20) NOT NULL,
  `rating` decimal(10,1) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`umail`, `centerName`, `rating`, `description`) VALUES
('heena@gmail.com', 'center4', '4.0', ''),
('gowthami@gmail.com', 'center1', '3.0', ''),
('gowthami@gmail.com', 'center4', '5.0', ''),
('heena@gmail.com', 'center1', '3.0', ''),
('abhijeet@gmail.com', 'center4', '3.0', ''),
('abhijeet@gmail.com', 'center1', '5.0', ''),
('sonali@gmail.com', 'center5', '4.6', ''),
('sonali@gmail.com', 'center6', '4.4', ''),
('abhijeet@gmail.com', 'center6', '3.5', ''),
('heena@gmail.com', 'center6', '3.3', ''),
('gowthami@gmail.com', 'center2', '4.2', ''),
('heena@gmail.com', 'center5', '4.3', ''),
('heena@gmail.com', 'center2', '3.0', ''),
('abhijeet@gmail.com', 'center3', '5.0', ''),
('sonali@gmail.com', 'center3', '3.3', ''),
('gowthami@gmail.com', 'center3', '4.2', ''),
('heena@gmail.com', 'center5', '4.6', ''),
('gowthamisetty57@gmail.com', 'center1', '0.0', 'hghgjkg\r\n                        '),
('gowthamisetty57@gmail.com', 'center1', '0.0', '\r\n                        dsfdsf'),
('gowthamisetty57@gmail.com', 'center1', '0.0', '\r\n                        dsfdsf'),
('gowthamisetty57@gmail.com', 'center1', '2.6', '\r\n                        trgtrt'),
('gowthamisetty57@gmail.com', 'center1', '2.6', '\r\n                        trgtrt'),
('gowthamisetty57@gmail.com', 'center1', '5.0', '\r\n                        Awesome service'),
('gowthamisetty57@gmail.com', 'center1', '0.0', '\r\n                        '),
('gowthamisetty57@gmail.com', 'center1', '3.5', '\r\n                awesome        ');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(255) NOT NULL,
  `centerName` varchar(50) NOT NULL,
  `serviceName` varchar(50) NOT NULL,
  `description` varchar(1200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `normal` varchar(50) NOT NULL,
  `suv` varchar(50) NOT NULL,
  `luxury` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `centerName`, `serviceName`, `description`, `image`, `normal`, `suv`, `luxury`) VALUES
(1, 'DEV AUTOMOTIVES', 'PAID SERVICE', 'This service is a regular service which generally required after a year or 12000 Km. However if your drive your car frequently, you should consider getting your car serviced more often. ', 'images/paid.jpg', '1000-1800', '2000-4000', '5000-12000'),
(2, 'DEV AUTOMOTIVES', 'FR BREAK PAD REPLACEMENT', 'This service On average, brake pads should be replaced every 40,000 to 50,000 miles, but that number can differ depending on driving conditions and styles. The good news is, you will likely experience minor symptoms when your brake pads are getting towards their end of life', 'images/breakpad.jpg', '300-400', '600-800', '1000-12000'),
(3, 'DEV AUTOMOTIVES', 'CAR WASHING', 'Car washing can be of multiple types which including car wash from outside, inside, both and polishing of car. and prices will very according to users need.Chemical car wash, also known as waterless car wash, uses chemicals to wash and polish car surface. Claims to be an eco-friendly car,', 'images/washing.jpg', '250-300', '400-500', '700-1500'),
(4, 'DEV AUTOMOTIVES', 'WHEEL ALIGNMENT', 'An alignment essentially requires squaring a cars wheels and axles with each other so that they are moving in the same direction. The mechanic adjusts the various suspension angles -- known as toe, thrust, camber and caster -- that influence tire movement and position. ', 'images/wheel.jpg', '250-300', '400-500', '600-800'),
(5, 'DEV AUTOMOTIVES', 'PRIMEIUM CAR SERVICE ', 'A car service can involve up to 50 or more components, systems checks and adjustments including: An engine oil change and/or filter replacement. Checking lights, tyres, exhaust and operations of brakes and steering. Ensuring your engine is tuned to run in its peak condition. ', 'images/primeum.jpg', '2500-3000', '4000-6000', '8000-12000'),
(6, 'DEV AUTOMOTIVES', 'AC LEVEL 1 ', 'Level 1 AC is 120v. The maximum power you can get with a level 1 charger is 1.9 kw. When we service a car air conditioner, we evacuate all refrigerant, clean it and remove the trapped oil and moisture. We then reuse that refrigerant plus the amount needed for a full charge. ', 'images/AC1.jpg', '3000-4000', '5000-6000', '7000- 10000'),
(7, 'DEV AUTOMOTIVES', 'AC LEVEL 2  ', 'A Level 2 charging unit is a specific charging unit, generally firmly mounted on a wall and facilitating efficiently the electric vehicle owners. Level 2 charging units possess around 240 charging volts and 40 Amp circuit.', 'images/AC2.jpg', '4500-5800', '7000-8000', '10000- 20000'),
(8, 'DEV AUTOMOTIVES', 'TOING CHARGES ', 'to pull a car, boat, etc. along, fastened behind another vehicle or boat: ... to take away a vehicle that has been parked illegally using an official truck, to a place from which the driver has to pay to pick it up: You are not allowed to park here - your car will be towed away .', 'images/towing.jpg', '1500-1800', '1800-2000', '2000- 2200'),
(9, 'DEV AUTOMOTIVES', 'HEAD OVERHAUL  ', 'Overhauling your engine is not a simple task. It consist of deconstructing of the engine and having new internal components such as new pistons. It consist of deconstructing of the engine and having new internal components such as new pistons, piston rings, main bearings, valves.', 'images/head.jpg', '5000-6000', '7000-10000', '12000- 22000'),
(10, 'DEV AUTOMOTIVES', 'GEAR OVERHOUL ', 'A transmission overhaul (also known as rebuilding a transmission) requires the removal and disassembly of the transmission in its entirety. Every part of the transmission is inspected for wear and damage, and then it is cleaned in a special cleaning solution or replace with other part .', 'images/gear.jpg', '4500-5500', '7000-10000', '12000- 22000'),
(11, 'DEV AUTOMOTIVES', 'OIL SUMP REPLACEMENT ', 'An oil sump is simply the space in the oil pan where the pickup for the oil pump is located. ... Other cars, you have to remove other stuff or even lift the engine some to get the oil pan out. The more stuff you have to move to get the oil pan out, the more expensive the repair will be.', 'images/oil.jpg', '1000-2000', '3000-5000', '6000- 10000'),
(12, 'DEV AUTOMOTIVES', 'FRONT WINDSHILD GLASS CHANGE  ', 'Windshields protect the vehicles occupants from wind and flying debris such as dust, insects, and rocks, and provide an aerodynamically formed window towards the front. UV coating may be applied to screen out harmful ultraviolet radiation. However, this is usually unnecessary.', 'images/windshild.jpg', '1000-2000', '3000-4000', '6000- 10000'),
(13, 'DEV AUTOMOTIVES', 'CLUTCH SET REPLACEMENT', 'A clutch kit includes a new or remanufactured clutch disc, pressure plate and release bearing. A kit is the best way to go because all of the parts are sourced from the same supplier and are matched so the installed height will be correct. Mismatched parts can sometimes cause engagement.', 'images/clutch.jpg', '1000-2000', '2500-3500', '4000- 8000'),
(14, 'DEV AUTOMOTIVES', 'TIMING CHAIN REPLACEMENT ', 'If the timing chain is worn, it is usually replaced as a kit with a new tensioner, guides, and other parts of the chain drive mechanism. Many cars have two or even three chains in their motors and often your auto repair shop may recommend replacing all the chains at once.', 'images/timingchain.jpg', '2000-3500', '4000-7000', '8000- 12000'),
(15, 'DEV AUTOMOTIVES', 'PANEL PAINTING CHARGES ', 'Panel painting, painting executed on a rigid support,ordinarily wood or metal,as distinct from painting done on canvas. Before canvas came into general use at the end of the 16th century, the panel was the support most often used for easel painting.', 'images/panelpainting.jpg', '3500-5500', '6000-8000', '9000- 13000'),
(16, 'DEV AUTOMOTIVES', 'FR BUMPER REPLACEMENT', 'A bumper cover is a fitting, typically made from plastic or fiberglass, that fits over the actual bumper of a vehicle. Bumper covers are available in a variety of colors and styles to fit specific types of vehicles.', 'images/bumper.jpg', '3500-5000', '6000-8000', '9000- 10000'),
(17, 'Shree auto parts', 'PAID SERVICE', 'A car service is a maintenance check-up that is carried out at set time intervals (at least every year) or after the vehicle has travelled a certain number of miles. The car manufacturer specifies the service intervals by creating a service schedule that you should aim to follow.', 'images/paid.jpg', '1300-2000', '2500-4000', '4500-6000'),
(18, 'Shree auto parts', 'CAR WASH', 'car wash is a facility used to clean the exterior and, in some cases, the i18nterior of motor vehicles. Car washes can be self-serve, fully automated, or full-service with attendants who wash the vehicle.', 'images/washing.jpg', '300-400', '500-700', '800-1200'),
(19, 'Shree auto parts', 'AC SERVICE', 'When we service a car air conditioner, we evacuate all refrigerant, clean it and remove the trapped oil and moisture. We then reuse that refrigerant plus the amount needed for a full charge. You pay only for the additional amount needed.', 'images/AC2.jpg', '3000-4000', '4500-6000', '6500-9000'),
(20, 'Shree auto parts ', 'CAR DRY CLEANING', 'Dry cleaning is any cleaning process for clothing and textiles using a solvent other than water. ... Alternative solvents are 1-bromopropane and petroleum spirits.', 'images/drycleaning.jpg', '1500-2000', '2500-3000', '3100-4000'),
(21, 'Shree auto parts', 'CAR PAINTING', 'Our end to end  painting solutions include car scratch repair, car paint repair. MFCS have trained technicians and equipment technology to restore your paint jobs original look and feel with high quality and cost effective', 'images/carpainting.jpg', '25000- 35000', '40000-50000', '60000-80000'),
(22, 'Shree auto parts', 'TOwING CHARGES', 'Our end to end painting solutions include car scratch repair, car paint repair. MFCS have trained technicians and equipment technology to restore your paint jobs original look and feel with high quality and cost effective', 'images/towing.jpg', '1350 per km', '1400 per km', '1500 per km'),
(24, 'Shree auto parts', 'SCRAPING', 'A scrap car means a old or damaged car that can not run completely on the road. Such cars are banned by RTO. These cars buy scrap dealer and they have to be reprocessed again.\r\nWe Consider  all type of cars for recycling including van, 4x4, SUVs ', 'images/scapping.jpg', '1500 per panel', '1800 per panel ', '2000 per panel'),
(25, 'Shree auto parts', 'GEAR SERVICE', 'The gearbox is responsible for efficient driving. By changing gears, you ensure that the RPM’s (Revolutions per Minute) are kept low so that the engine is not overloaded and that fuel consumption is lowered. The transmission is responsible for converting both speed and momentum into power that then gets the entire car moving and its main aim is to make the engine as efficient as possible by reducing the amount of fuel consumption whilst getting the best amount of power.', 'images/gear.jpg', '3000-4000', '4500-6000', '6500-8000'),
(26, 'Shree auto parts', 'OIL FILTERING', 'An oil filter is a mechanical device that removes contaminant, dirt, and unburned fuel from circulating. The component allows just the circulation of fresh oil into the engine and it keeps the dirt. ... an oil filter is equipped on other vehicle hydraulic systems, such as automatic transmissions, and power steering', 'images/oilfiltering.jpg', '115-200', '300-400', '500-1000'),
(27, 'Shree auto parts', 'AIR FILTERING', '\r\nAn air filter includes the air intake that is able to keep the air going into the engine clean of contaminants. The screen keeps out bugs, water, road grime, pollen, dirt and everything else that blows into your vehicles grill', 'images/airfiltering.jpg', '370-600', '700-800 ', '900-1000'),
(28, 'Shree auto parts', 'BREAK PADS', 'Brake pads are a key part of your vehicles brake system; they sit between your brake shoe (the part that clamps down, slowing the tires rotation) and your brake drum. Without functioning brake pads, other elements of your vehicle, such as the discs, rotors, and calipers will begin to wear away.', 'images/car3.jpeg', '590 - 770', '800-900', '1000-1200'),
(29, 'Shree auto parts', 'BUMPER REPLACEMENT', 'A bumper is meant to protect the car, other bodywork, and occupants during a collision. A bumper cover covers the actual bumper. It may be designed for additional safety, performance, or for aesthetic reasons.', 'images/bumper.jpg', '10000-12000', '15000-18000', '20000-40000'),
(30, 'Shree auto parts', 'LAMP REPLACEMENT', '\r\nLamp replacement includes Unscrew the old headlight and Screw in the new headlight bulb. and the price of bulb will very according to your car', 'images/lamp.jpg', '1500-2000', '2100-3000 ', '4000-8000'),
(31, 'CLUSTER AUTOMOTIVES', ' ENGINE CYLINDER BLOCK', 'A cylinder block is the structure which contains the cylinder, plus any cylinder sleeves and coolant passages. In the earliest decades of internal combustion engine development, cylinders were usually cast individually, so cylinder blocks were usually produced individually for each cylinder', 'images/engine.jpg', '11,390-14,390', '15600-22500', '24500-30000'),
(32, 'CLUSTER AUTOMOTIVES', ' GASKET, CYLINDER HEAD', 'A head gasket performs the task of a seal between the engine block and cylinder head. ... Simply put, the purpose of a head gasket is the sealing of the cylinders to ensure maximum compression is obtained. The head gasket of a car is exposed to several elements of a vehicle, which are water, oil, exhaust gases, and fuel.', 'images/gas.jpg', '250-330', '500-600', '600-1000'),
(33, 'CLUSTER AUTOMOTIVES', ' PISTON RINGS (STD) ', 'A piston ring is a metallic split ring that is attached to the outer diameter of a piston in an internal combustion engine or steam engine. The main functions of piston rings in engines are: ... Regulating engine oil consumption by scraping oil from the cylinder walls back to the sump.', 'images/piston.jpg', '3800-4800', '5000-6000', '6000-8000'),
(34, 'CLUSTER AUTOMOTIVES', ' PANEL ASSY, HEAD LAMP\r\nSUPPORT ', 'A headlamp is a lamp attached to the front of a vehicle to illuminate the road ahead. Headlamps are also often called headlights, but in the most precise usage, headlamp is the term for the device itself and headlight is the term for the beam of light produced and distributed by the device.', 'images/headlamp.jpg', '2,544-3050', '4000-5000', '6000-8000'),
(35, 'CLUSTER AUTOMOTIVES', ' RAIL, BUMPER (FR)', 'A bumper is a structure attached to or integrated with the front and rear ends of a motor vehicle, to absorb impact in a minor collision, ideally minimizing repair costs. ... Bumpers ideally minimize height mismatches between vehicles and protect pedestrians from injury', 'images/rail.jpg', '1325-1650', '1800-2000', '3000-5000'),
(36, 'CLUSTER AUTOMOTIVES', ' LAMP ASSY, HEAD (WITH\r\nMOTOR, LH) ', 'tour bus\r\nThe lighting system of a motor vehicle consists of lighting and signalling devices mounted or integrated to the front, rear, sides, and in some cases the top of a motor vehicle. This lights the roadway for the driver and increases the visibility of the vehicle, allowing other drivers and pedestrians to see a vehicles presence, position, size, direction of travel, and the drivers intentions regarding direction and speed of travel.', 'images/lampassy.jpg', '1582-1870', '2150-4000', '5000-8000'),
(37, 'CLUSTER AUTOMOTIVES', ' RADIATOR ASSY', 'All radiators, in vehicles or other applications, do the same job. They dissipate heat from the liquid flowing through them into the atmosphere. The purpose of a radiator in a car is to lower the temperature of the hot liquid coming from your engine & return it cooled. This then reduces the heat that is produced through the normal running of the motor. The cooling is achieved by air flowing over the large surface area of the radiator itself.', 'images/radiator.jpg', '1600-2050', '3000-5000', '6000-8000'),
(38, 'CLUSTER AUTOMOTIVES', ' CONDENSOR ASSY, A/C', 'When you take your car for a car AC service, the technician starts by checking the cabin temperature while operating the AC (should be approx 5-10°C). He then proceeds to check the level of the refrigerant present in the system. A low refrigerant level is the most common cause reported for a low cooling car AC. Using a pressure gauge and a precision AC gas recharging machine, the refrigerant level is flushed and topped-up to the recommended level.\r\nWhile working on this, a possible leak or crack in the AC line and hoses is also checked for. The technician may use a UV dye to better pinpoint a possible leak in the system.', 'images/condensor.jpg', '3050-3900', '4000-6100', '6200-8050'),
(39, 'CLUSTER AUTOMOTIVES', ' FAN ASSY, RADIATOR', 'The design of new vehicles with smaller front grids and smaller space under the bonnet has reinforced the need to force air flow. The fan system provides an efficient air flow and optimizes the heat exchange to the radiator. It is usually located at the front of the vehicle, either in front or behind the radiator.', 'images/fanassy.jpg', '2800-3600', '4000-6000', '7000-9000'),
(40, 'CLUSTER AUTOMOTIVES', 'COVER, TIMING CHAIN', 'The timing cover/Timing belt cover is an important equipment made to guard the timing chain of your vehicle from debris, dirt, and grit. The timing chain or belt of your vehicle controls the spinning of the crankshaft and camshafts in the internal ignition engine.', 'images/cover.jpg', '175-230', '250-300', '400-800'),
(41, 'CLUSTER AUTOMOTIVES', 'BONNET/HOOD ASSY', 'A car hood, also referred to as a bonnet in some other countries, is the hinged cover that rests over the engine of a front-engine vehicle. Its purpose is to provide access to the engine for repair and maintenance. A concealed latch is typically used to hold down the hood.', 'images/bonnet.jpg', '1800-2400', '2500-3000', '4000-8000'),
(43, 'CLUSTER AUTOMOTIVES', 'LATCH, BONNET/HOOD ', 'The hood latch mechanism in a car is a simple device. ... At the front of the vehicle, a safety latch retains the hood. Locating and releasing the safety latch releases its hold on the hood and then the hood is allowed to open', 'images/latch.jpg', '230-400', '500-900', '1000-2000'),
(44, 'CLUSTER AUTOMOTIVES', 'BUMPER (FR)', 'Your vehicles bumper may seem like an afterthought but the simple structure actually plays an important role protecting your car during a collision. Bumpers absorb most of the impact during low speed collisions to help protect you, your vehicle, and passengers from more serious damage.', 'images/bumper.jpg', '962-1300', '1500-2500', '3000-4000'),
(45, 'CLUSTER AUTOMOTIVES', 'GRILLE, BUMPER (LOWER)', 'A grille covers an opening in the body of a vehicle to allow air to enter or exit. Most vehicles feature a grille at the front of the vehicle to protect the radiator and engine.', 'images/grill.jpg', '250-300', '400-450', '500-770'),
(46, 'CLUSTER AUTOMOTIVES', 'OIL, ENGINE ', 'If the oil service light comes on while you are driving, it means the oil pressure in the engine of your car has dropped. An engine requires a constant supply of oil typically when moving for its parts to get lubricated.', 'images/engine.jpg', '400-1350', '1500-2500', '2500-4000'),
(47, 'CLUSTER AUTOMOTIVES', 'FILTER, OIL ', 'The filters job is to remove all impurities or contaminating bodies from your engine oil. ... The oil filter on your car is there so that this doesnot happen. It helps to clean all of the engine oil to remove all of these impurities before they can go on to cause major damage to the working parts of the engine', 'images/oilfiltering.jpg', '53-67', '90-100', '150-300'),
(48, 'CLUSTER AUTOMOTIVES', ' AIR CLEANER ASSY', 'A air filter allows your vehicles engine to get clean air, a key component in the combustion process. The air filter prevents airborne contaminants such as dirt, dust and leaves from getting pulled into your cars engine and potentially damaging it.', 'images/aircleaner.jpg', '820-1050', '1150-2000', '2500-3000'),
(49, 'CLUSTER AUTOMOTIVES', 'TUBE LIQUID  ', 'Pfz is a liquid fluid which being pumped or poured into the tyre and repair hole after hole during the entire life of the tyre. ... Pfz works on both tube and tubeless tyres. Increase your companys profit- use pfz in your tyres. You will avoid air leaks, rim leaks and punctures for all future', 'images/tube.jpg', '3086-3950', '4000-5000', '6000-9000'),
(50, 'CLUSTER AUTOMOTIVES', ' HOSE, RADIATOR (TOP) ', 'When your engine is running, it produces tremendous amounts of heat. Your cooling system is responsible for keeping this heat in check and preventing your engine from overheating. One of the most important parts of your cooling system is your radiator. Radiators store and cool your engine coolant. Your radiator is controlled by a special thermostat which constantly watches your engine’s temperature. When the engine gets too hot, the thermostat releases engine coolant, or antifreeze, from your radiator into your engine. The antifreeze travels through the engine’s pipes and passageways to absorb heat and cool the engine. Then, the antifreeze returns to the radiator to be cooled.', 'images/radiator.jpg', '62-100', '150-200', '250-300'),
(53, 'Pitstop Car Service', 'car washing', 'car wash is a facility used to clean the exterior and, in some cases, the i18nterior of motor vehicles. Car washes can be self-serve, fully automated, or full-service with attendants who wash the vehicle.', 'images/washing.jpg', '300-400', '500-600', '900-1100'),
(52, 'Pitstop Car Service', 'Paid Service', 'This service is a regular service which generally required after a year or 12000 Km. However if your drive your car frequently, you should consider getting your car serviced more often. ', 'images/paid.jpg', '900-1500', '1700-3500', '4000-10000'),
(54, 'Pitstop Car Service', 'wheel alignment', 'An alignment essentially requires squaring a cars wheels and axles with each other so that they are moving in the same direction. The mechanic adjusts the various suspension angles -- known as toe, thrust, camber and caster -- that influence tire movement and position. ', 'images/wheel.jpg', '400-500', '500-700', '1000-1500'),
(55, 'Pitstop Car Service', 'AC Service', 'Level 1 AC is 120v. The maximum power you can get with a level 1 charger is 1.9 kw. When we service a car air conditioner, we evacuate all refrigerant, clean it and remove the trapped oil and moisture. We then reuse that refrigerant plus the amount needed for a full charge. ', 'images/AC1.jpg', '2500-3500', '4000-5500', '7000-13000'),
(56, 'Pitstop Car Service', 'Car Painting', 'Our end to end  painting solutions include car scratch repair, car paint repair. MFCS have trained technicians and equipment technology to restore your paint jobs original look and feel with high quality and cost effective', 'images/carpainting.jpg', '20000-25000', '30000-40000', '40000-55000'),
(57, 'Pitstop Car Service', 'Gear Service', 'The gearbox is responsible for efficient driving. By changing gears, you ensure that the RPM’s (Revolutions per Minute) are kept low so that the engine is not overloaded and that fuel consumption is lowered. The transmission is responsible for converting both speed and momentum into power that then gets the entire car moving and its main aim is to make the engine as efficient as possible by reducing the amount of fuel consumption whilst getting the best amount of power.', 'images/gear.jpg', '3000-4000', '5000-8000', '9000-15000'),
(58, 'Pitstop Car Service', 'towing charge', 'Our end to end painting solutions include car scratch repair, car paint repair. MFCS have trained technicians and equipment technology to restore your paint jobs original look and feel with high quality and cost effective ', 'images/towing.jpg', '700rs per km', '700rs per Km', '1500rs per km'),
(59, 'Pitstop Car Service', 'Oil Filtering', 'An oil filter is a mechanical device that removes contaminant, dirt, and unburned fuel from circulating. The component allows just the circulation of fresh oil into the engine and it keeps the dirt. ... an oil filter is equipped on other vehicle hydraulic systems, such as automatic transmissions, and power steering ', 'images/oilfiltering.jpg', '350-650', '500-1150', '1500-3500'),
(60, 'Pitstop Car Service', 'Scraping', 'A scrap car means a old or damaged car that can not run completely on the road. Such cars are banned by RTO. These cars buy scrap dealer and they have to be reprocessed again.\r\nWe Consider  all type of cars for recycling including van, 4x4, SUVs ', 'images/scrapping.jpg', '1800 per panel', '2500 per panel', '4000 per panel'),
(61, 'Pitstop Car Service', 'Head Overhaul', 'Overhauling your engine is not a simple task. It consist of deconstructing of the engine and having new internal components such as new pistons. It consist of deconstructing of the engine and having new internal components such as new pistons, piston rings, main bearings, valves. ', 'images/head.jpg', '6000-7500', '7500-11000', '15000-25000'),
(62, 'Pitstop Car Service', 'Clutch Set replacement', 'A clutch kit includes a new or remanufactured clutch disc, pressure plate and release bearing. A kit is the best way to go because all of the parts are sourced from the same supplier and are matched so the installed height will be correct. Mismatched parts can sometimes cause engagement. ', 'images/clutch.jpg', '1700-2800', '3000-5500', '5500-9000'),
(63, '7th Gear Automotive', 'custom Service', 'An engine oil change and/or filter replacement.\r\nChecking lights, tyres, exhaust and operations of brakes and steering.\r\nEnsuring your engine is tuned to run in its peak condition.\r\nChecking hydraulic fluid and coolant levels.\r\nChecking the cooling system (from radiators in your car to pumps and hoses)\r\nSuspension checks.', 'images/custom.jpg', '300-500', '500-900', '600-1000'),
(64, '7th Gear Automotive', 'Detailing service', 'Car detailing involves a few cosmetic touch-ups here and there to repair your cars paintwork. The aim of detailing is to make sure that your car looks as good as new when you take it out of the detailing workshop by removing the scratch and swirl marks on the car. ', 'images/detail.jpg', '3000-16000', '5000-20000', '7000-28000'),
(65, '7th Gear Automotive', 'engine oil replacement', 'Regular oil changes improve your cars gas mileage. As the fresh oil moves through the engine, the lubrication of the metal parts increases your engins performance and helps it run more efficiently with less work so it doesnt eat up as much gas. ', 'images/engine.jpg', '400-600', '500-1100', '1500-3500'),
(66, '7th Gear Automotive', 'air filter replacement', '\r\nAn air filter includes the air intake that is able to keep the air going into the engine clean of contaminants. The screen keeps out bugs, water, road grime, pollen, dirt and everything else that blows into your vehicles grill', 'images/airfiltering.jpg', '300-700', '500-900', '1000-4000'),
(68, '7th Gear Automotive', 'fuel filter checking', 'f the fuel pressure is lower than it should be or if it fluctuates, one of the causes could be clogged filter. If you remove the fuel filter you can check it for blockages by blowing air through it. To do this carefully attach a hose to one end of the air filter and then slowly blow through it.\r\n', 'images/fuelfilter.jpg', '200-400', '500-600', '700-1300'),
(73, '7th Gear Automotive', 'Wheel balancing', ' for enhancing the life and performance of your tires. Wheel balancing should be performed more frequently, while a wheel alignment should not be needed as often. Wheels lose balance over time, so wheel balancing service is necessary to restore proper balance. ', 'images/wheelBalancing.jpg', '600-800', '700-900', '1300-2500'),
(70, '7th Gear Automotive', 'coolant top up', 'Only refill your engine coolant when the engine is cold.Park your vehicle on a flat surface before checking engine coolant level.Use the correct type of coolant for your car. Also, dont mix coolants. Blending different types can produce dangerous chemicals.', 'images/coolant.jpg', '600-2000', '800-3000', '1800-6000'),
(71, '7th Gear Automotive', 'Car wash', 'Car washing can be of multiple types which including car wash from outside, inside, both and polishing of car. and prices will very according to users need.Chemical car wash, also known as waterless car wash, uses chemicals to wash and polish car surface. Claims to be an eco-friendly car,. ', 'images/washing.jpg', '250-400', '300-500', '500-700'),
(72, '7th Gear Automotive', 'break fluid topup', 'If you have a low brake fluid level, topping up is really simple. Park your vehicle on a flat surface. Clean the brake fluid reservoir cap if its dirty, so no debris falls into the reservoir. ... Slowly and carefully add brake fluid to the reservoir until the level reaches the maximum fill marker. ', 'images/breakpad.jpg', '300-500', '400-700', '700-1300'),
(74, '7th Gear Automotive', 'Wheel alignment', 'An alignment essentially requires squaring a cars wheels and axles with each other so that they are moving in the same direction. The mechanic adjusts the various suspension angles -- known as toe, thrust, camber and caster -- that influence tire movement and position. ', 'images/wheel.jpg', '1100-1500', '1300-1900', '1300-2500'),
(75, '7th Gear Automotive', 'gear oil topup', 'In normal driving conditions, most cars can hit up to 80,000 miles before needing a gear oil change. However, this number is a maximum, and most manufacturers recommend changing your gear oil between 50,000 and 60,000 miles.  ', 'images/gear.jpg', '150-500', '500-800', '1300-2500'),
(76, 'Car Point', 'Car wash', 'Car washing can be of multiple types which including car wash from outside, inside, both and polishing of car. and prices will very according to users need.Chemical car wash, also known as waterless car wash, uses chemicals to wash and polish car surface. Claims to be an eco-friendly car, ', 'images/washing.jpg', '300-400', '500-700', '900-1500'),
(77, 'Car Point', 'Scanning', 'Car computer scanning goes beyond detecting issues with your cars mechanics. It will also detect inefficiencies and irregularities with the electronics, which include the lighting systems, audio systems, air conditioning systems, and even the ignition', 'images/scanning.jpg', '250-400', '300-450', '600-900'),
(78, 'Car Point', 'Break fluid topup', 'If you have a low brake fluid level, topping up is really simple. Park your vehicle on a flat surface. Clean the brake fluid reservoir cap if its dirty, so no debris falls into the reservoir. ... Slowly and carefully add brake fluid to the reservoir until the level reaches the maximum fill marker. ', 'images/breakTop.jpg', '300-500', '400-700', '700-1300'),
(79, 'Car Point', 'Wheel alignment', 'An alignment essentially requires squaring a cars wheels and axles with each other so that they are moving in the same direction. The mechanic adjusts the various suspension angles -- known as toe, thrust, camber and caster -- that influence tire movement and position. ', 'images/wheel.jpg', '1100-1500', '1300-1900', '3000-7000'),
(80, 'Car Point', 'Paid Service', 'This service is a regular service which generally required after a year or 12000 Km. However if your drive your car frequently, you should consider getting your car serviced more often. ', 'images/paid.jpg', '900-1500', '1700-3500', '4000-10000'),
(81, 'Car Point', 'AC Service', 'Level 1 AC is 120v. The maximum power you can get with a level 1 charger is 1.9 kw. When we service a car air conditioner, we evacuate all refrigerant, clean it and remove the trapped oil and moisture. We then reuse that refrigerant plus the amount needed for a full charge. ', 'images/AC1.jpg', '2500-3500', '4000-5500', '7000-13000'),
(82, 'Car Point', 'Car Painting', 'Our end to end  painting solutions include car scratch repair, car paint repair. MFCS have trained technicians and equipment technology to restore your paint jobs original look and feel with high quality and cost effective', 'images/painting.jpg', '20000-25000', '30000-40000', '40000-550000'),
(83, 'Car Point', 'gear service', 'Car computer scanning goes beyond detecting issues with your cars mechanics. It will also detect inefficiencies and irregularities with the electronics, which include the lighting systems, audio systems, air conditioning systems, and even the ignition', 'images/gear.jpg', '3000-4000', '5000-8000', '9000-15000'),
(84, 'Car Point', 'towing charge', 'Our end to end painting solutions include car scratch repair, car paint repair. MFCS have trained technicians and equipment technology to restore your paint jobs original look and feel with high quality and cost effective', 'images/towing.jpg', '700rs per km', '800rs per km', '1500rs per km'),
(85, 'Car Point', 'Oil Filtering', 'An oil filter is a mechanical device that removes contaminant, dirt, and unburned fuel from circulating. The component allows just the circulation of fresh oil into the engine and it keeps the dirt. ... an oil filter is equipped on other vehicle hydraulic systems, such as automatic transmissions, and power steering', 'images/oilfiltering.jpg', '350-650', '500-1150', '1500-3500'),
(86, 'Car Point', 'Scraping', 'A scrap car means a old or damaged car that can not run completely on the road. Such cars are banned by RTO. These cars buy scrap dealer and they have to be reprocessed again.We Consider  all type of cars for recycling including van, 4x4, SUVs ', 'images/scrapping.jpg', '1800per panel', '2500per panel', '4000per panel'),
(87, 'Car Point', 'head overhaul', 'Overhauling your engine is not a simple task. It consist of deconstructing of the engine and having new internal components such as new pistons. It consist of deconstructing of the engine and having new internal components such as new pistons, piston rings, main bearings, valves.', 'images/head.jpg', '600-7500', '3000-5500', '5500-9000'),
(88, 'Car Point', 'Clutch set replacement', 'A clutch kit includes a new or remanufactured clutch disc, pressure plate and release bearing. A kit is the best way to go because all of the parts are sourced from the same supplier and are matched so the installed height will be correct. Mismatched parts can sometimes cause engagement.', 'images/clutch.jpg', '1700-2800', '3000-5500', '5500-9000'),
(89, 'DEV AUTOMOTIVES', 'Paid', '\r\n             gsgs           ', 'images/paid.jpg', '234', '3333', '4444');

-- --------------------------------------------------------

--
-- Table structure for table `service_center`
--

CREATE TABLE `service_center` (
  `centerName` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `rating` decimal(10,1) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_center`
--

INSERT INTO `service_center` (`centerName`, `description`, `rating`, `address`, `phone`, `email`) VALUES
('center1', 'description about center 1            ', '3.7', '', '7018706040', 'soodheena0001@gmail.com'),
('center2', 'description about center 2', '3.6', '', '7018706040', 'center2@gmail.com'),
('center3', 'description about center 3', '4.2', '', '', 'center3@gmail.com'),
('center4', 'description about center 4', '4.0', '', '', 'center4@gmail.com'),
('center5', 'description about center 5', '4.5', '', '', 'center5@gmail.com'),
('center6', 'description about center 6', '3.7', '', '', 'center6@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `slot_booking`
--

CREATE TABLE `slot_booking` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `services` varchar(500) NOT NULL,
  `date` varchar(50) NOT NULL,
  `car_type` varchar(50) NOT NULL,
  `time` varchar(100) NOT NULL,
  `centerName` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlocation`
--

CREATE TABLE `userlocation` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `latitude` decimal(60,5) NOT NULL,
  `longitute` decimal(60,5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `centerName` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlocation`
--

INSERT INTO `userlocation` (`id`, `phone`, `latitude`, `longitute`, `name`, `centerName`) VALUES
(4, '7018706040', '12.97940', '77.57496', 'Heena', ''),
(2, '9816987720', '31.09790', '77.26780', 'Shubham', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_users`
--
ALTER TABLE `car_users`
  ADD PRIMARY KEY (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `chatbox`
--
ALTER TABLE `chatbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourfeedback`
--
ALTER TABLE `ourfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD KEY `fk_centerName` (`centerName`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_center`
--
ALTER TABLE `service_center`
  ADD PRIMARY KEY (`centerName`);

--
-- Indexes for table `slot_booking`
--
ALTER TABLE `slot_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlocation`
--
ALTER TABLE `userlocation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbox`
--
ALTER TABLE `chatbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ourfeedback`
--
ALTER TABLE `ourfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `slot_booking`
--
ALTER TABLE `slot_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `userlocation`
--
ALTER TABLE `userlocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `fk_centerName` FOREIGN KEY (`centerName`) REFERENCES `service_center` (`centerName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
