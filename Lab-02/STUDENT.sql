-- Create the Students table
CREATE TABLE Students (
    STID INT PRIMARY KEY,          -- Student ID
    SNAME VARCHAR(50) NOT NULL,    -- Student Name
    CITY VARCHAR(50) NOT NULL,     -- City
    SPI DECIMAL(5,2) NULL,         -- SPI (Student Performance Index)
    BRANCH VARCHAR(50) NULL        -- Branch of study
);

-- Insert the records
INSERT INTO Students (STID, SNAME, CITY, SPI, BRANCH) VALUES
(101, 'HETVI', 'AHMEDABAD', 15.39, 'IT'),
(102, 'RAJ', 'MORBI', 19.75, 'AUTOMOBILE'),
(103, 'VISHAL', 'RAJKOT', 7.35, NULL),
(104, 'DEEP', 'VADODARA', 19.12, 'IT'),
(105, 'DHARMIK', 'BARODA', 17.67, 'CHEMICAL'),
(106, 'KRUNAL', 'SURAT', 8.40, 'EC'),
(107, 'RIYA', 'NAVSARI', 12.47, 'IT'),
(108, 'DARSHAN', 'KUTCH', 8.93, 'COMPUTER'),
(109, 'SMAIR', 'JAMNAGAR', 14.96, 'ELECTRICAL'),
(110, 'PARAG', 'MUMBAI', NULL, 'CHEMICAL'),
(111, 'HARSH', 'RAJKOT', 8.32, NULL);
