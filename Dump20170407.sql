CREATE DATABASE  IF NOT EXISTS `uni_friend` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `uni_friend`;
-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: localhost    Database: uni_friend
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `number` varchar(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `department` varchar(45) NOT NULL,
  `program` varchar(45) NOT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('CMPE 025',' The Digital World and Society',NULL,'CMPE','undergrad',NULL),('CMPE 030',' Programming Concepts and Methodology',NULL,'CMPE','undergrad',NULL),('CMPE 050',' Object-Oriented Concepts and Methodology',NULL,'CMPE','undergrad',NULL),('CMPE 101',' Programming Concepts and Problem Solving',NULL,'CMPE','undergrad',NULL),('CMPE 102',' Assembly Language Programming',NULL,'CMPE','undergrad',NULL),('CMPE 104',' Fundamentals of Software Engineering',NULL,'CMPE','undergrad',NULL),('CMPE 110',' Electronics for Computing Systems',NULL,'CMPE','undergrad',NULL),('CMPE 120',' Computer Organization and Architecture',NULL,'CMPE','undergrad',NULL),('CMPE 124',' Digital Design I',NULL,'CMPE','undergrad',NULL),('CMPE 125',' Digital Design II',NULL,'CMPE','undergrad',NULL),('CMPE 126',' Algorithms and Data Structure Design',NULL,'CMPE','undergrad',NULL),('CMPE 127',' Microprocessor Design I',NULL,'CMPE','undergrad',NULL),('CMPE 130',' Advanced Algorithm Design',NULL,'CMPE','undergrad',NULL),('CMPE 131',' Software Engineering I',NULL,'CMPE','undergrad',NULL),('CMPE 132',' Information Security',NULL,'CMPE','undergrad',NULL),('CMPE 133',' Software Engineering II',NULL,'CMPE','undergrad',NULL),('CMPE 135',' Object-Oriented Analysis and Design',NULL,'CMPE','undergrad',NULL),('CMPE 136',' Information Engineering',NULL,'CMPE','undergrad',NULL),('CMPE 137',' Wireless Mobile Software Engineering',NULL,'CMPE','undergrad',NULL),('CMPE 138',' Database Systems I',NULL,'CMPE','undergrad',NULL),('CMPE 139',' Fundamentals of Data Mining',NULL,'CMPE','undergrad',NULL),('CMPE 140',' Computer Architecture and Design',NULL,'CMPE','undergrad',NULL),('CMPE 142',' Operating Systems Design',NULL,'CMPE','undergrad',NULL),('CMPE 143',' Microcomputer Design',NULL,'CMPE','undergrad',NULL),('CMPE 146',' Real-Time Embedded System Co-Design',NULL,'CMPE','undergrad',NULL),('CMPE 147',' Fundamentals of System on Chip (SoC) Design',NULL,'CMPE','undergrad',NULL),('CMPE 148',' Computer Networks I',NULL,'CMPE','undergrad',NULL),('CMPE 149',' Computer Networks II',NULL,'CMPE','undergrad',NULL),('CMPE 150',' System Architecture and Electronic Design for Robotics',NULL,'CMPE','undergrad',NULL),('CMPE 152',' Compiler Design',NULL,'CMPE','undergrad',NULL),('CMPE 163',' Introduction to Computer Graphics and Augmented Reality',NULL,'CMPE','undergrad',NULL),('CMPE 164',' Wireless Networks Architecture and Design',NULL,'CMPE','undergrad',NULL),('CMPE 165',' Software Engineering Process Management',NULL,'CMPE','undergrad',NULL),('CMPE 168',' Software Design Studio I',NULL,'CMPE','undergrad',NULL),('CMPE 172',' Enterprise Software Platforms',NULL,'CMPE','undergrad',NULL),('CMPE 179',' Digital Design Using Hardware Description Languages',NULL,'CMPE','undergrad',NULL),('CMPE 180',' Individual Studies',NULL,'CMPE','undergrad',NULL),('CMPE 187',' Software Quality Engineering',NULL,'CMPE','undergrad',NULL),('CMPE 188',' Machine Learning for Big Data',NULL,'CMPE','undergrad',NULL),('CMPE 189',' Special Topics in Computer Engineering',NULL,'CMPE','undergrad',NULL),('CMPE 195A',' Senior Design Project I',NULL,'CMPE','undergrad',NULL),('CMPE 195B',' Senior Design Project II',NULL,'CMPE','undergrad',NULL),('CMPE 195C',' Interdisciplinary Senior Project I',NULL,'CMPE','undergrad',NULL),('CMPE 195D',' Interdisciplinary Senior Project II',NULL,'CMPE','undergrad',NULL),('CMPE 197',' Cooperative Education Project',NULL,'CMPE','undergrad',NULL),('CMPE 198',' Technology and Civilization',NULL,'CMPE','undergrad',NULL),('CMPE 200',' Computer Architecture',NULL,'CMPE','grad',NULL),('CMPE 202',' Software Systems Engineering',NULL,'CMPE','grad',NULL),('CMPE 203',' Software Engineering Management',NULL,'CMPE','grad',NULL),('CMPE 206',' Computer Network Design',NULL,'CMPE','grad',NULL),('CMPE 207',' Network Programming and Application',NULL,'CMPE','grad',NULL),('CMPE 208',' Network Architecture and Protocols',NULL,'CMPE','grad',NULL),('CMPE 209',' Network Security',NULL,'CMPE','grad',NULL),('CMPE 210',' Software-defined Networks and Network Functions Virtualization',NULL,'CMPE','grad',NULL),('CMPE 212',' System Verification',NULL,'CMPE','grad',NULL),('CMPE 213',' Parallel Processing',NULL,'CMPE','grad',NULL),('CMPE 217',' Human Computer Interaction',NULL,'CMPE','grad',NULL),('CMPE 219',' HCI for Cyber Security',NULL,'CMPE','grad',NULL),('CMPE 220',' System Software',NULL,'CMPE','grad',NULL),('CMPE 221',' SOA Analysis and Design',NULL,'CMPE','grad',NULL),('CMPE 225',' Operating System Design',NULL,'CMPE','grad',NULL),('CMPE 226',' Database Systems',NULL,'CMPE','grad',NULL),('CMPE 227',' Distributed Systems',NULL,'CMPE','grad',NULL),('CMPE 232',' Component-Based and Reuse-Driven Software Engineering',NULL,'CMPE','grad',NULL),('CMPE 234',' Multimedia System Design',NULL,'CMPE','grad',NULL),('CMPE 235',' Mobile Software System Design',NULL,'CMPE','grad',NULL),('CMPE 236',' Mobile Web Application Systems',NULL,'CMPE','grad',NULL),('CMPE 237',' Design of E-Commerce Systems',NULL,'CMPE','grad',NULL),('CMPE 238',' Agent-Oriented Enterprise Software Engineering',NULL,'CMPE','grad',NULL),('CMPE 239',' Web and Data Mining',NULL,'CMPE','grad',NULL),('CMPE 240',' Advanced Computer Design',NULL,'CMPE','grad',NULL),('CMPE 241',' Embedded System Development Tools',NULL,'CMPE','grad',NULL),('CMPE 242',' Embedded Hardware Design',NULL,'CMPE','grad',NULL),('CMPE 243',' Embedded Systems Applications',NULL,'CMPE','grad',NULL),('CMPE 244',' Embedded Software',NULL,'CMPE','grad',NULL),('CMPE 245',' Embedded Wireless Architecture',NULL,'CMPE','grad',NULL),('CMPE 250',' Computerized Robots',NULL,'CMPE','grad',NULL),('CMPE 251',' Software Techniques in Robotics',NULL,'CMPE','grad',NULL),('CMPE 253',' Advanced Bioinformatics Computational Laboratory For Engineers',NULL,'CMPE','grad',NULL),('CMPE 261',' Real Time Computer System',NULL,'CMPE','grad',NULL),('CMPE 262',' Embedded Multimedia Architecture',NULL,'CMPE','grad',NULL),('CMPE 264',' Advanced Digital and Computing System Design',NULL,'CMPE','grad',NULL),('CMPE 265',' High Speed Digital System Design',NULL,'CMPE','grad',NULL),('CMPE 270',' Information Engineering',NULL,'CMPE','grad',NULL),('CMPE 271',' Advanced Java Programming',NULL,'CMPE','grad',NULL),('CMPE 272',' Enterprise Software Platforms',NULL,'CMPE','grad',NULL),('CMPE 273',' Enterprise Distributed Systems',NULL,'CMPE','grad',NULL),('CMPE 274',' Business Intelligence Technologies',NULL,'CMPE','grad',NULL),('CMPE 275',' Enterprise Application Development',NULL,'CMPE','grad',NULL),('CMPE 276',' XML for E-Business',NULL,'CMPE','grad',NULL),('CMPE 277',' Smartphone Application Development',NULL,'CMPE','grad',NULL),('CMPE 278',' Advanced Enterprise Components',NULL,'CMPE','grad',NULL),('CMPE 279',' Software Security Technologies',NULL,'CMPE','grad',NULL),('CMPE 280',' Web UI Design and Development',NULL,'CMPE','grad',NULL),('CMPE 281',' Cloud Technologies',NULL,'CMPE','grad',NULL),('CMPE 282',' Cloud Services',NULL,'CMPE','grad',NULL),('CMPE 283',' Virtualization Technologies',NULL,'CMPE','grad',NULL),('CMPE 284',' Storage and Network Virtualization',NULL,'CMPE','grad',NULL),('CMPE 285',' Software Engineering Processes',NULL,'CMPE','grad',NULL),('CMPE 286',' Advanced Software Engineering Processes',NULL,'CMPE','grad',NULL),('CMPE 287',' Software Quality Assurance and Testing',NULL,'CMPE','grad',NULL),('CMPE 289',' Cloud Security Engineering',NULL,'CMPE','grad',NULL),('CMPE 290',' Computer Engineering Research and Development Methods',NULL,'CMPE','grad',NULL),('CMPE 294',' Computer Engineering Seminar',NULL,'CMPE','grad',NULL),('CMPE 294A',' Cyber Security Seminar',NULL,'CMPE','grad',NULL),('CMPE 294L',' Graduate Laboratory',NULL,'CMPE','grad',NULL),('CMPE 295A',' Master Project I',NULL,'CMPE','grad',NULL),('CMPE 295B',' Master Project II',NULL,'CMPE','grad',NULL),('CMPE 295W',' Master Project',NULL,'CMPE','grad',NULL),('CMPE 297',' Special Topics in Computer/Software Engineering',NULL,'CMPE','grad',NULL),('CMPE 298',' Special Problems',NULL,'CMPE','grad',NULL),('CMPE 298I',' Computer/Software Engineering Internship',NULL,'CMPE','grad',NULL),('CMPE 299A',' Master Thesis I',NULL,'CMPE','grad',NULL),('CMPE 299B',' Master Thesis II',NULL,'CMPE','grad',NULL),('CS 022',' Python Programming for Non Majors',NULL,'CS','undergrad',NULL),('CS 023',' Introduction to Computer Science for Biologists and Chemists',NULL,'CS','undergrad',NULL),('CS 025',' The Digital World and Society',NULL,'CS','undergrad',NULL),('CS 040',' Introduction to Computers',NULL,'CS','undergrad',NULL),('CS 042',' Discrete Mathematics',NULL,'CS','undergrad',NULL),('CS 046A',' Introduction to Programming',NULL,'CS','undergrad',NULL),('CS 046B',' Introduction to Data Structures',NULL,'CS','undergrad',NULL),('CS 047',' Introduction to Computer Systems',NULL,'CS','undergrad',NULL),('CS 049C',' Programming in C',NULL,'CS','undergrad',NULL),('CS 049J',' Programming in Java',NULL,'CS','undergrad',NULL),('CS 050',' Scientific Computing I',NULL,'CS','undergrad',NULL),('CS 072',' Unix and Unix Utilities',NULL,'CS','undergrad',NULL),('CS 085A',' Practical Computing Topics',NULL,'CS','undergrad',NULL),('CS 085B',' Practical Computing Topics',NULL,'CS','undergrad',NULL),('CS 085C',' Practical Computing Topics',NULL,'CS','undergrad',NULL),('CS 100W',' Technical Writing Workshop',NULL,'CS','undergrad',NULL),('CS 108',' Introduction to Game Studies',NULL,'CS','undergrad',NULL),('CS 116A',' Introduction to Computer Graphics',NULL,'CS','undergrad',NULL),('CS 116B',' Computer Graphics Algorithms',NULL,'CS','undergrad',NULL),('CS 120A',' Electronics, Data Acquisition & Analysis',NULL,'CS','undergrad',NULL),('CS 122',' Advanced Programming with Perl',NULL,'CS','undergrad',NULL),('CS 123A',' Bioinformatics I',NULL,'CS','undergrad',NULL),('CS 123B',' Bioinformatics II',NULL,'CS','undergrad',NULL),('CS 130',' Windows Programming',NULL,'CS','undergrad',NULL),('CS 134',' Computer Game Design and Programming',NULL,'CS','undergrad',NULL),('CS 143C',' Numerical Analysis and Scientific Computing',NULL,'CS','undergrad',NULL),('CS 143M',' Numerical Analysis and Scientific Computing',NULL,'CS','undergrad',NULL),('CS 144',' Advanced C++ Programming',NULL,'CS','undergrad',NULL),('CS 146',' Data Structures and Algorithms',NULL,'CS','undergrad',NULL),('CS 147',' Computer Architecture',NULL,'CS','undergrad',NULL),('CS 149',' Operating Systems',NULL,'CS','undergrad',NULL),('CS 151',' Object-Oriented Design',NULL,'CS','undergrad',NULL),('CS 152',' Programming Paradigms',NULL,'CS','undergrad',NULL),('CS 153',' Concepts of Compiler Design',NULL,'CS','undergrad',NULL),('CS 154',' Formal Languages and Computability',NULL,'CS','undergrad',NULL),('CS 155',' Introduction to the Design and Analysis of Algorithms',NULL,'CS','undergrad',NULL),('CS 156',' Introduction to Artificial Intelligence',NULL,'CS','undergrad',NULL),('CS 157A',' Introduction to Database Management Systems',NULL,'CS','undergrad',NULL),('CS 157B',' Database Management Systems II',NULL,'CS','undergrad',NULL),('CS 158A',' Computer Networks',NULL,'CS','undergrad',NULL),('CS 158B',' Computer Network Management',NULL,'CS','undergrad',NULL),('CS 159',' Introduction to Parallel Processing',NULL,'CS','undergrad',NULL),('CS 160',' Software Engineering',NULL,'CS','undergrad',NULL),('CS 161',' Software Project',NULL,'CS','undergrad',NULL),('CS 166',' Information Security',NULL,'CS','undergrad',NULL),('CS 167A',' DB2 Fundamentals for z/OS',NULL,'CS','undergrad',NULL),('CS 167B',' DB2 Application Development for z/OS',NULL,'CS','undergrad',NULL),('CS 167C',' DB2 Query Optimization for z/OS',NULL,'CS','undergrad',NULL),('CS 172A',' Fundamentals of Unix System Administration',NULL,'CS','undergrad',NULL),('CS 172B',' Unix System Administration',NULL,'CS','undergrad',NULL),('CS 173',' Advanced Unix System Administration',NULL,'CS','undergrad',NULL),('CS 174',' Server-side Web Programming',NULL,'CS','undergrad',NULL),('CS 175',' Mobile Device Development',NULL,'CS','undergrad',NULL),('CS 180',' Individual Studies',NULL,'CS','undergrad',NULL),('CS 180H',' Individual Studies for Honors',NULL,'CS','undergrad',NULL),('CS 185A',' Advanced Practical Computing Topics',NULL,'CS','undergrad',NULL),('CS 185B',' Advanced Practical Computing topics',NULL,'CS','undergrad',NULL),('CS 185C',' Advanced Practical Computing Topics',NULL,'CS','undergrad',NULL),('CS 190',' Internship Project',NULL,'CS','undergrad',NULL),('CS 190I',' Internship Project',NULL,'CS','undergrad',NULL),('CS 200W',' Graduate Technical Writing',NULL,'CS','grad',NULL),('CS 216',' Geometric Modeling',NULL,'CS','grad',NULL),('CS 218',' Topics in Cloud Computing',NULL,'CS','grad',NULL),('CS 223',' Bioinformatics',NULL,'CS','grad',NULL),('CS 235',' User Interface Design',NULL,'CS','grad',NULL),('CS 240',' Advanced Software Project',NULL,'CS','grad',NULL),('CS 243A',' Advanced Numerical Analysis',NULL,'CS','grad',NULL),('CS 243B',' Advanced Topics in Numerical Analysis',NULL,'CS','grad',NULL),('CS 247',' Advanced Computer Architecture',NULL,'CS','grad',NULL),('CS 249',' Distributed Computing',NULL,'CS','grad',NULL),('CS 251A',' Object-Oriented Analysis',NULL,'CS','grad',NULL),('CS 251B',' Object-Oriented Design',NULL,'CS','grad',NULL),('CS 252',' Advanced Programming Language Principles',NULL,'CS','grad',NULL),('CS 253',' Advanced Compiler Design',NULL,'CS','grad',NULL),('CS 254',' Theory of Computation',NULL,'CS','grad',NULL),('CS 255',' Design and Analysis of Algorithms',NULL,'CS','grad',NULL),('CS 256',' Topics in Artificial Intelligence',NULL,'CS','grad',NULL),('CS 257',' Database System Principles',NULL,'CS','grad',NULL),('CS 258',' Computer Communication Systems',NULL,'CS','grad',NULL),('CS 259',' Advanced Parallel Processing',NULL,'CS','grad',NULL),('CS 262',' Randomized Algorithms and Applications',NULL,'CS','grad',NULL),('CS 263',' Information Security I',NULL,'CS','grad',NULL),('CS 264',' Information Security II',NULL,'CS','grad',NULL),('CS 265',' Cryptography and Computer Security',NULL,'CS','grad',NULL),('CS 266',' Topics in Information Security',NULL,'CS','grad',NULL),('CS 267',' Topics in Database Systems',NULL,'CS','grad',NULL),('CS 268',' Topics in Wireless Mobile Networking',NULL,'CS','grad',NULL),('CS 274',' Topics in XML and Web Intelligence',NULL,'CS','grad',NULL),('CS 280',' Graduate Individual Studies',NULL,'CS','grad',NULL),('CS 286',' Advanced Topics in Computer Science',NULL,'CS','grad',NULL),('CS 297',' Preparation for Writing Project or Thesis',NULL,'CS','grad',NULL),('CS 298','Masters Writing Project',NULL,'CS','grad',NULL),('CS 299','Masters Thesis',NULL,'CS','grad',NULL),('EE 030',' Introduction to Programming Micro-Controllers for Electrical Engineering',NULL,'EE','undergrad',NULL),('EE 097',' Introductory Electrical Engineering Laboratory',NULL,'EE','undergrad',NULL),('EE 098',' Introduction to Circuit Analysis',NULL,'EE','undergrad',NULL),('EE 101',' Circuits Concepts and Problem Solving',NULL,'EE','undergrad',NULL),('EE 102',' Probability and Statistics in Electrical Engineering',NULL,'EE','undergrad',NULL),('EE 104',' Numerical Methods in Electrical Engineering',NULL,'EE','undergrad',NULL),('EE 105',' Electronics and Microprocessor Applications',NULL,'EE','undergrad',NULL),('EE 106',' Fundamentals of Mechatronics Engineering',NULL,'EE','undergrad',NULL),('EE 110',' Circuits and Systems',NULL,'EE','undergrad',NULL),('EE 110L',' Continuous and Discrete Time Systems Lab',NULL,'EE','undergrad',NULL),('EE 112',' Introduction to Signal Processing',NULL,'EE','undergrad',NULL),('EE 118',' Digital Logic Circuit Design',NULL,'EE','undergrad',NULL),('EE 120',' Microprocessor Based System Design',NULL,'EE','undergrad',NULL),('EE 122',' Electronic Design I',NULL,'EE','undergrad',NULL),('EE 124',' Electronic Design II',NULL,'EE','undergrad',NULL),('EE 125',' Analog CMOS Integrated Circuits',NULL,'EE','undergrad',NULL),('EE 127',' Electronics for Biomedical Applications',NULL,'EE','undergrad',NULL),('EE 128',' Physical Electronics',NULL,'EE','undergrad',NULL),('EE 129',' Introduction to Integrated Circuits Processing and Design',NULL,'EE','undergrad',NULL),('EE 1290R',' MSEE Thesis/Project Continuing Supervision',NULL,'EE','undergrad',NULL),('EE 130',' Electric Machines and Drives',NULL,'EE','undergrad',NULL),('EE 132',' Theory of Automatic Controls',NULL,'EE','undergrad',NULL),('EE 134',' Power Systems',NULL,'EE','undergrad',NULL),('EE 135',' Control and Electronics for Renewable Energy Systems',NULL,'EE','undergrad',NULL),('EE 136',' Semiconductor Power Electronics',NULL,'EE','undergrad',NULL),('EE 138',' Embedded Control System Design',NULL,'EE','undergrad',NULL),('EE 140',' Principles of Electromagnetic Fields',NULL,'EE','undergrad',NULL),('EE 142',' Fields and Waves',NULL,'EE','undergrad',NULL),('EE 153',' Introduction to Digital Signal Processing',NULL,'EE','undergrad',NULL),('EE 160',' Principles of Communication Systems',NULL,'EE','undergrad',NULL),('EE 161',' Digital Communication Systems',NULL,'EE','undergrad',NULL),('EE 164',' Fiber Optic Communication',NULL,'EE','undergrad',NULL),('EE 165',' Photovoltaic Fabrication/Testing Lab',NULL,'EE','undergrad',NULL),('EE 166',' Design of CMOS Digital Integrated Circuits',NULL,'EE','undergrad',NULL),('EE 167',' Microelectronics Manufacturing Methods',NULL,'EE','undergrad',NULL),('EE 168',' Microfluid Fabrication and Design',NULL,'EE','undergrad',NULL),('EE 169',' Microelectromechanical Systems Fabrication and Design',NULL,'EE','undergrad',NULL),('EE 170',' CMOS Radio Frequency Circuit Design',NULL,'EE','undergrad',NULL),('EE 172',' Introduction to Microwave Engineering',NULL,'EE','undergrad',NULL),('EE 173',' Active Microwave Circuit Design',NULL,'EE','undergrad',NULL),('EE 174',' Analog Peripheral for Embedded Systems',NULL,'EE','undergrad',NULL),('EE 175',' Filter Design',NULL,'EE','undergrad',NULL),('EE 176',' Computer Organization',NULL,'EE','undergrad',NULL),('EE 177',' High Speed System Design and Interfacing',NULL,'EE','undergrad',NULL),('EE 178',' Digital Design with FPGAs',NULL,'EE','undergrad',NULL),('EE 179',' Digital Design Using Hardware Description Languages',NULL,'EE','undergrad',NULL),('EE 180',' Individual Studies',NULL,'EE','undergrad',NULL),('EE 181',' Fundamentals of Internetworking',NULL,'EE','undergrad',NULL),('EE 182',' Electronics Test Design Engineering I',NULL,'EE','undergrad',NULL),('EE 183',' Electronics Test Design Engineering II',NULL,'EE','undergrad',NULL),('EE 189',' Special Topics in Electrical Engineering',NULL,'EE','undergrad',NULL),('EE 195C',' Interdisciplinary Senior Project I',NULL,'EE','undergrad',NULL),('EE 195D',' Interdisciplinary Senior Project II',NULL,'EE','undergrad',NULL),('EE 196A',' Fundamentals Embedded System Design',NULL,'EE','undergrad',NULL),('EE 197',' Cooperative Education Project',NULL,'EE','undergrad',NULL),('EE 198A',' Senior Design Project I',NULL,'EE','undergrad',NULL),('EE 198B',' Senior Design Project II',NULL,'EE','undergrad',NULL),('EE 209',' Network Security',NULL,'EE','grad',NULL),('EE 210',' Linear System Theory',NULL,'EE','grad',NULL),('EE 211',' Network Analysis and Synthesis',NULL,'EE','grad',NULL),('EE 212',' Active Network Synthesis',NULL,'EE','grad',NULL),('EE 220',' Radio Frequency Integrated Circuit Design I (RFIC Design I)',NULL,'EE','grad',NULL),('EE 221',' Semiconductor Devices I',NULL,'EE','grad',NULL),('EE 222',' Semiconductor Devices II',NULL,'EE','grad',NULL),('EE 223',' Analog Integrated Circuits',NULL,'EE','grad',NULL),('EE 224',' High Speed CMOS Circuits',NULL,'EE','grad',NULL),('EE 224B',' Advanced High Speed CMOS Circuits',NULL,'EE','grad',NULL),('EE 225A',' Analog IC Transistor Process Design',NULL,'EE','grad',NULL),('EE 226',' VLSI Technologies',NULL,'EE','grad',NULL),('EE 227',' Signal Integrity in AMS IC',NULL,'EE','grad',NULL),('EE 228',' Design Projects in VLSI Systems',NULL,'EE','grad',NULL),('EE 229',' Advanced Topics in Microelectronics',NULL,'EE','grad',NULL),('EE 230',' Radio Frequency Integrated Circuit Design II',NULL,'EE','grad',NULL),('EE 231',' Automatic Control Theory',NULL,'EE','grad',NULL),('EE 232',' Sampled-Data Control Systems',NULL,'EE','grad',NULL),('EE 233',' Optimal Control Systems',NULL,'EE','grad',NULL),('EE 235',' Nonlinear Control Systems Analysis',NULL,'EE','grad',NULL),('EE 237',' Vector Control of AC Machines',NULL,'EE','grad',NULL),('EE 238',' Advanced Power Electronics',NULL,'EE','grad',NULL),('EE 239',' Selected Topics in Systems and Control',NULL,'EE','grad',NULL),('EE 240',' Introduction to Nanoelectronics',NULL,'EE','grad',NULL),('EE 241',' Fundamental of Signal Integrity',NULL,'EE','grad',NULL),('EE 242',' Embedded Hardware Design',NULL,'EE','grad',NULL),('EE 249',' Integrated Circuits for Biomedical Application',NULL,'EE','grad',NULL),('EE 250',' Probabilities, Random Variables and Stochastic Processes',NULL,'EE','grad',NULL),('EE 251',' Digital Communication Systems',NULL,'EE','grad',NULL),('EE 252',' Advanced Communication Systems',NULL,'EE','grad',NULL),('EE 253',' Digital Signal Processing',NULL,'EE','grad',NULL),('EE 254',' Adaptive Signal Processing',NULL,'EE','grad',NULL),('EE 255',' Wireless/Mobile Communications',NULL,'EE','grad',NULL),('EE 256',' Programmable DSP Architectures and Applications',NULL,'EE','grad',NULL),('EE 257',' Digital Communications Processing',NULL,'EE','grad',NULL),('EE 258',' Neural Networks',NULL,'EE','grad',NULL),('EE 259',' Selected Topics in Signal Processing',NULL,'EE','grad',NULL),('EE 261',' Acq. & Analysis of Biomedical Imaging',NULL,'EE','grad',NULL),('EE 262',' Acquisition and Analysis of Biosignals',NULL,'EE','grad',NULL),('EE 263',' Digital Image Processing',NULL,'EE','grad',NULL),('EE 264',' Computed Imaging',NULL,'EE','grad',NULL),('EE 265',' Hands-on Wireless Communications using Software Defined Radios',NULL,'EE','grad',NULL),('EE 270',' Advanced Logic Design',NULL,'EE','grad',NULL),('EE 271',' Digital System Design and Synthesis',NULL,'EE','grad',NULL),('EE 272',' SoC Design & Verifi. with System Verilog',NULL,'EE','grad',NULL),('EE 274',' VLSI Design for Testability',NULL,'EE','grad',NULL),('EE 275',' Advanced Computer Architectures',NULL,'EE','grad',NULL),('EE 276',' Parallel Computer Systems',NULL,'EE','grad',NULL),('EE 276B',' Multi-core Architectures',NULL,'EE','grad',NULL),('EE 277',' Fault Tolerant Digital Systems',NULL,'EE','grad',NULL),('EE 278',' Digital Design for DSP/Communications',NULL,'EE','grad',NULL),('EE 279',' Special Topics in Digital Systems',NULL,'EE','grad',NULL),('EE 281',' Internetworking',NULL,'EE','grad',NULL),('EE 282',' Internet Security and Cryptography',NULL,'EE','grad',NULL),('EE 283',' Broadband Communication Networking',NULL,'EE','grad',NULL),('EE 284',' VoIP and Multimedia Networks',NULL,'EE','grad',NULL),('EE 285',' Fiber Optic Networking',NULL,'EE','grad',NULL),('EE 287',' ASIC CMOS Design',NULL,'EE','grad',NULL),('EE 288',' Data Conversions/Analog Mixed Signal ICs',NULL,'EE','grad',NULL),('EE 289',' Special Topics in Networking',NULL,'EE','grad',NULL),('EE 295',' Technical Writing - Engineering Ethics',NULL,'EE','grad',NULL),('EE 297A',' MSEE Project Proposal',NULL,'EE','grad',NULL),('EE 297B',' MSEE Project',NULL,'EE','grad',NULL),('EE 298',' Special Problems',NULL,'EE','grad',NULL),('EE 298I',' Electrical Engineering Internship Experience',NULL,'EE','grad',NULL),('EE 299A',' MSEE Thesis Proposal',NULL,'EE','grad',NULL),('EE 299B',' MSEE Thesis',NULL,'EE','grad',NULL),('SE 046A',' Introduction to Programming',NULL,'SE','undergrad',NULL),('SE 046B',' Introduction to Data Structures',NULL,'SE','undergrad',NULL),('SE 102',' Assembly Language Programming',NULL,'SE','undergrad',NULL),('SE 104',' Fundamentals of Software Engineering',NULL,'SE','undergrad',NULL),('SE 116A',' Introduction to Computer Graphics',NULL,'SE','undergrad',NULL),('SE 116B',' Computer Graphics Algorithms',NULL,'SE','undergrad',NULL),('SE 120',' Computer Organization and Architecture',NULL,'SE','undergrad',NULL),('SE 123A',' Bioinformatics I',NULL,'SE','undergrad',NULL),('SE 123B',' Bioinformatics II',NULL,'SE','undergrad',NULL),('SE 130',' Windows Programming',NULL,'SE','undergrad',NULL),('SE 131',' Software Engineering I',NULL,'SE','undergrad',NULL),('SE 133',' Software Engineering II',NULL,'SE','undergrad',NULL),('SE 134',' Computer Game Design and Programming',NULL,'SE','undergrad',NULL),('SE 135',' Object-Oriented Analysis and Design',NULL,'SE','undergrad',NULL),('SE 137',' Wireless Mobile Software Engineering',NULL,'SE','undergrad',NULL),('SE 139',' Fundamentals of Data Mining',NULL,'SE','undergrad',NULL),('SE 146',' Data Structures and Algorithms',NULL,'SE','undergrad',NULL),('SE 148',' Computer Networks I',NULL,'SE','undergrad',NULL),('SE 149',' Operating Systems',NULL,'SE','undergrad',NULL),('SE 152',' Programming Paradigms',NULL,'SE','undergrad',NULL),('SE 153',' Concepts of Compiler Design',NULL,'SE','undergrad',NULL),('SE 154',' Formal Languages and Computability',NULL,'SE','undergrad',NULL),('SE 155',' Introduction to the Design and Analysis of Algorithms',NULL,'SE','undergrad',NULL),('SE 156',' Introduction to Artificial Intelligence',NULL,'SE','undergrad',NULL),('SE 157A',' Introduction to Database Management Systems',NULL,'SE','undergrad',NULL),('SE 157B',' Database Management Systems II',NULL,'SE','undergrad',NULL),('SE 158B',' Computer Network Management',NULL,'SE','undergrad',NULL),('SE 163',' Introduction to Computer Graphics and Augmented Reality',NULL,'SE','undergrad',NULL),('SE 165',' Software Engineering Process Management',NULL,'SE','undergrad',NULL),('SE 166',' Information Security',NULL,'SE','undergrad',NULL),('SE 168',' Software Design Studio I',NULL,'SE','undergrad',NULL),('SE 172',' Enterprise Software Platforms',NULL,'SE','undergrad',NULL),('SE 174',' Server-side Web Programming',NULL,'SE','undergrad',NULL),('SE 180',' Individual Studies',NULL,'SE','undergrad',NULL),('SE 187',' Software Quality Engineering',NULL,'SE','undergrad',NULL),('SE 188',' Machine Learning for Big Data',NULL,'SE','undergrad',NULL),('SE 195A',' Senior Design Project I',NULL,'SE','undergrad',NULL),('SE 195B',' Senior Design Project II',NULL,'SE','undergrad',NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `requirements` text NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-07 13:51:19