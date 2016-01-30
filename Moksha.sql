--
-- Database: `Moksha`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinators`
--

CREATE TABLE IF NOT EXISTS `coordinators` (
  `id` varchar(35) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` int(12) NOT NULL,
  `branch` varchar(5) NOT NULL,
  `section` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` varchar(35) NOT NULL,
  `name` varchar(35) NOT NULL,
  `venue` varchar(70) NOT NULL,
  `datetime` varchar(40) NOT NULL,
  `description` varchar(300) NOT NULL,
  `coordinatorid` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` varchar(35) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uid1` varchar(35) NOT NULL,
  `uid2` varchar(35) NOT NULL,
  `uid3` varchar(35) NOT NULL,
  `uid4` varchar(35) NOT NULL,
  `uid5` varchar(35) NOT NULL,
  `eventid` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(35) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` int(12) NOT NULL,
  `username` varchar(30) NOT NULL,
  `college` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);
