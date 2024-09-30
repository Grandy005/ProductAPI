-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Sze 30. 08:45
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `shop`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `Id` varchar(36) COLLATE utf8_hungarian_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `CreatedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`Id`, `Name`, `Price`, `CreatedTime`) VALUES
('001d73d6-de0a-45b4-8046-20819c2dd161', 'Anchovy Fillets', 971, '2024-01-03'),
('00c60a51-36aa-4095-a892-8a552dd6175e', 'Chinese Foods - Pepper Beef', 571, '2024-07-11'),
('0216e910-02ac-4fe7-8a7e-56578d1b175d', 'Bread - Pita, Mini', 899, '2022-10-26'),
('0252ea6d-e28e-4345-8cb1-231c09f22b23', 'Squash - Sunburst', 502, '2024-02-26'),
('033cac94-c975-427b-8646-4b73b2659341', 'Browning Caramel Glace', 689, '2022-11-06'),
('04ad215f-5556-423f-bf64-d2c806c47b5a', 'Steamers White', 742, '2023-02-22'),
('04d156c4-2019-40e2-90b9-6876b62015eb', 'Oil - Margarine', 797, '2023-05-23'),
('0c0d26e9-1635-46a8-bc6b-f74ea6b9398a', 'Chocolate Liqueur - Godet White', 984, '2023-02-05'),
('0e398c51-8e0c-45a0-888c-a668b3a6e10a', 'Beans - Fava Fresh', 520, '2023-10-08'),
('0e3b3821-f421-4878-bdf6-673f1ff91d79', 'Muffin Mix - Chocolate Chip', 942, '2023-10-30'),
('0ec1fbec-a5be-4bc5-93ca-6a7ca463f989', 'Beef - Striploin', 951, '2022-11-28'),
('1145be14-a03f-4fa8-822b-e62701da7b01', 'Sprouts - Corn', 613, '2023-08-20'),
('1600b65e-b487-4d9d-aa33-a0cb75dabf52', 'Wine - Semi Dry Riesling Vineland', 638, '2024-01-14'),
('17ff8198-e4d7-423b-bd77-0fbc82672d2f', 'Pork - Loin, Bone - In', 539, '2022-12-28'),
('19e96109-4a7b-40d0-91eb-ef57fa3c954d', 'Turkey - Ground. Lean', 687, '2024-04-28'),
('1a324e37-eea0-4f3d-a125-d3739d7dcfbb', 'Bread - Raisin Walnut Oval', 865, '2022-11-14'),
('1f2526fa-c954-4e9a-9fc1-1bd318b087ea', 'Bread Foccacia Whole', 985, '2023-01-24'),
('21011adc-32cc-4981-9dbd-1652c57e58a8', 'Cherries - Frozen', 697, '2022-11-13'),
('212d27ab-15f1-4af6-948b-02e2bb48e531', 'Olives - Black, Pitted', 761, '2024-07-18'),
('21a20562-aae5-4498-804f-cf422a0d6a47', 'Tart Shells - Sweet, 4', 506, '2023-05-27'),
('23f67617-da94-4455-a5f0-d6c0af3a569c', 'Chicken - Soup Base', 994, '2023-02-15'),
('2557a451-4479-4294-b16a-d1f79cad679e', 'Nut - Walnut, Pieces', 669, '2024-09-25'),
('26391a80-8e1c-445d-b25a-ca10e0aa4692', 'Squid - Breaded', 649, '2024-09-16'),
('2792b877-10c1-4cca-88f7-937847a7e91c', 'Salmon - Atlantic, Fresh, Whole', 908, '2023-09-20'),
('2a0abb3d-f33f-4249-9b31-2e326bfcd6e4', 'Sea Bass - Whole', 630, '2024-08-04'),
('2be778fe-1a4d-4947-bc87-963ea6682e6d', 'Sparkling Wine - Rose, Freixenet', 951, '2023-01-17'),
('2cfeccdc-4a8d-4c8f-9ebc-b8293d9003e0', 'Wine - Sauvignon Blanc', 551, '2023-11-12'),
('2fafd6d3-db2f-4ce9-bcdc-998530b8342b', 'Chocolate - Unsweetened', 902, '2024-06-05'),
('315702aa-5d52-45b2-8738-66c4534d4ffe', 'Nut - Walnut, Chopped', 594, '2022-11-08'),
('32c8c148-3445-4285-9ca4-560bc9ef66df', 'Wine - Stoneliegh Sauvignon', 840, '2023-11-16'),
('34f8136d-793b-4571-aaeb-602e0360b57c', 'Star Fruit', 710, '2023-02-07'),
('36712b7e-1fe6-4559-9d82-15c93b76f648', 'Napkin - Beverage 1 Ply', 949, '2023-03-08'),
('3a687d7d-9714-4498-ac18-38e9354b4583', 'Saskatoon Berries - Frozen', 682, '2022-10-15'),
('3b42ad51-7ae0-47cf-b6cb-4bf12e2050e2', 'Milk 2% 500 Ml', 837, '2023-01-01'),
('3c208960-a720-4b63-bfde-ef2be4a8038b', 'Zucchini - Yellow', 698, '2022-12-04'),
('3cc0f9d5-1923-46bc-ad89-fd796e44c2fb', 'Tea - Honey Green Tea', 746, '2023-11-20'),
('3d5eac58-b7f1-485f-8ff0-ff94e5d5a871', 'Coffee Cup 8oz 5338cd', 951, '2023-04-11'),
('3d666666-4761-4622-88b8-82ad28ffe71b', 'Wine - Redchard Merritt', 854, '2023-11-10'),
('422a2a6f-6b30-4c78-9362-39089a03d2fb', 'Squash - Acorn', 942, '2022-12-14'),
('45d4c56a-17a5-432b-964d-8b61cb1c0f3d', 'Spinach - Spinach Leaf', 549, '2023-08-26'),
('4657959c-db6c-4593-ad0f-8500baf23f84', 'Salmon - Atlantic, Fresh, Whole', 994, '2022-09-27'),
('4a671296-6202-4e2c-9684-88f9947ac55c', 'Potatoes - Idaho 100 Count', 630, '2023-04-25'),
('4b26de20-92a8-4716-a66c-2623f79d7bdc', 'Wine - White, Antinore Orvieto', 648, '2023-04-27'),
('54f4ab4f-749d-4be9-80f3-24145dfee0e6', 'Garam Masala Powder', 840, '2023-05-06'),
('5807d12d-6de3-4d7a-98be-21e2468b6f4b', 'Chinese Foods - Chicken', 954, '2024-01-04'),
('594d9b68-5c97-4265-a3c7-a89aa8bef0cb', 'Salmon - Atlantic, Fresh, Whole', 617, '2024-08-03'),
('5b2c36ef-a576-4572-8f42-4d4baaf6fd34', 'Gelatine Leaves - Bulk', 738, '2023-01-04'),
('5d039e0a-1917-4d5d-967e-f5be09c28cc6', 'Corn - Mini', 898, '2022-11-14'),
('5f9d69fc-7af2-47b8-8126-1577a2cb5698', 'Wine - Chateauneuf Du Pape', 769, '2023-03-26'),
('61dd37c7-2cbe-45b3-88a0-f6c455efbfa3', 'Flower - Leather Leaf Fern', 723, '2023-06-26'),
('6221dadb-4ab8-407e-86dd-aeda726f4ddd', 'Oil - Olive, Extra Virgin', 952, '2023-03-18'),
('62db62cd-6364-489d-9dfd-a62b0b1d7c37', 'Gingerale - Schweppes, 355 Ml', 882, '2023-02-28'),
('63b21b21-0c71-4693-9a9c-b285c4e09a37', 'Bread Crumbs - Japanese Style', 669, '2023-01-14'),
('6a8a7594-491c-469c-aab2-7cdacbc48ec9', 'Soup - Base Broth Beef', 508, '2022-11-02'),
('6c1db6b4-c8c9-499a-96d0-2fe57486aa1a', 'Longos - Cheese Tortellini', 877, '2023-05-31'),
('6f386701-c5cd-40a8-8002-aa8d98164267', 'Lettuce - Sea / Sea Asparagus', 517, '2023-05-04'),
('7c2cec01-3f30-45c0-beee-4cf7ab49e8ef', 'Pepper - Green Thai', 687, '2023-10-11'),
('847af081-dd29-490b-8a18-2b0a3f1adf28', 'Petite Baguette', 843, '2023-07-12'),
('861067b8-af9d-400d-aaaa-c123bd952302', 'Coffee - Decaffeinato Coffee', 782, '2024-08-22'),
('884bf61a-61be-4de8-80e5-8192b0fdd22d', 'Soup - Campbells Pasta Fagioli', 575, '2024-01-13'),
('89fd7594-2192-4047-832b-9f68a0ea26cd', 'Gatorade - Cool Blue Raspberry', 989, '2022-11-03'),
('8a266102-3335-4841-88ff-8a503838fc8f', 'Wine - Beringer Founders Estate', 760, '2023-05-27'),
('8c8f3395-4e20-4809-a0c2-a9d59e1520a9', 'Cheese - Feta', 547, '2022-12-18'),
('908040fd-95b9-4073-94d1-f71868ed1eaf', 'Cheese - Cambozola', 871, '2022-12-15'),
('93e06c26-be4d-4760-97d3-e49dc48f5047', 'Chicken - Tenderloin', 669, '2023-06-07'),
('953f177b-c5d2-4f27-ae30-4cd072c6ad6f', 'Curry Paste - Green Masala', 636, '2023-12-12'),
('9da5963d-7660-495c-8e66-b4d22e2b62af', 'Dr. Pepper - 355ml', 987, '2023-12-01'),
('a15bfd5c-a6b5-405b-9740-9fb5bcfed373', 'Glycerine', 514, '2023-05-27'),
('a228ff54-7f9c-4408-b6e8-30fa61b5b056', 'Flour Dark Rye', 614, '2024-02-17'),
('a297932d-db25-48f0-90e5-a83b2f042aa8', 'Pie Filling - Cherry', 527, '2024-06-02'),
('a41e19e8-4581-4c8a-a698-2c2f8fde814f', 'Port - 74 Brights', 949, '2024-06-03'),
('a68389b6-7994-437a-bfec-aea31599b5f4', 'Parasol Pick Stir Stick', 569, '2023-03-19'),
('a70bbec6-e67c-46f9-bcd1-17b2369d3f2a', 'Pasta - Cheese / Spinach Bauletti', 606, '2023-09-23'),
('abdc44dd-ecd5-42cd-9d3e-69721a158d0b', 'Tomatillo', 801, '2023-04-10'),
('aeb53517-dd14-4652-b56b-6184b748d12b', 'Lettuce - Boston Bib', 971, '2023-09-04'),
('b2be6902-6d6f-4af7-9f1e-d470bc38779b', 'Soup - Boston Clam Chowder', 653, '2022-10-27'),
('b350846c-67e3-4a98-bc70-203652e354c8', 'Juice - Tomato, 48 Oz', 603, '2024-06-30'),
('b3cc3a74-ad72-44aa-8573-53fac195ad6e', 'Wine - Shiraz South Eastern', 700, '2023-04-14'),
('b486fc32-3e48-4e5e-aa06-ad31e5486f23', 'Pasta - Angel Hair', 554, '2024-08-08'),
('b858738d-7ec8-450d-bfab-490d262cc61f', 'Pate - Peppercorn', 729, '2023-03-04'),
('bb2df287-1be5-482f-8ab1-e7118c8b80c3', 'Cod - Black Whole Fillet', 977, '2024-06-09'),
('bc0dab52-75f1-4df7-b20a-88e048cd2f4d', 'Sauce - Apple, Unsweetened', 666, '2024-05-12'),
('bf8773c0-b51c-4a6b-8390-bd52dfc9283d', 'Pickerel - Fillets', 822, '2024-07-19'),
('c14d9798-ca08-48c6-a3a6-8a142cd6599c', 'Red Pepper Paste', 598, '2023-05-09'),
('c3d53ba3-79cf-4e9e-aa19-cc574c10a72d', 'Wine - Rosso Toscano Igt', 715, '2023-04-19'),
('c74043c9-5e79-4286-9390-70bf8a5d6d70', 'Tortillas - Flour, 10', 562, '2024-01-07'),
('c8a49420-a346-4700-944b-3427e9667509', 'Coke - Diet, 355 Ml', 608, '2024-02-28'),
('cde75ec6-cee6-4eec-9234-0ac96f39a061', 'Wine - Penfolds Koonuga Hill', 607, '2023-11-22'),
('cfa313ea-2d5f-4533-ba24-47b2e3395ee1', 'Cheese - Gouda Smoked', 752, '2023-03-09'),
('d4cb9536-bd82-47c7-9217-8c93d0069350', 'Syrup - Monin - Granny Smith', 768, '2022-12-20'),
('d5f5d5e6-4fa4-458e-b30f-60262bffa88b', 'Uniform Linen Charge', 928, '2024-08-17'),
('d5feaa54-1072-4e60-a439-1c6fa7e5f054', 'Onions - Dried, Chopped', 767, '2022-09-04'),
('d67607c1-f10a-4b0f-8fb9-70595ec325cc', 'Creme De Menthe Green', 656, '2022-09-30'),
('defb31f3-f23f-42d1-b9ad-fae0afb3fe2c', 'Wood Chips - Regular', 944, '2024-08-24'),
('e2c09125-39ac-4cd6-8770-e43c2ecb044b', 'Coconut - Shredded, Sweet', 979, '2022-09-08'),
('e3a9577e-1814-4151-b12c-cd5e475d34b1', 'Devonshire Cream', 633, '2023-10-20'),
('e5725bd1-a9c4-4746-8ba2-9140986e32a7', 'Tart - Pecan Butter Squares', 757, '2024-03-06'),
('e7a66121-18e3-4d68-85c2-9ca83d954031', 'Cheese - Boursin, Garlic / Herbs', 683, '2023-08-19'),
('e7dc25f9-1c04-4850-91a7-05c4d59239d5', 'White Baguette', 789, '2023-12-16'),
('fe31da9c-633e-44d2-b0b3-c5629ccd3ce9', 'Garam Masala Powder', 883, '2024-04-30');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
