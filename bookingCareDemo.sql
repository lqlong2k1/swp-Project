Create database [BookingCare]
Use [BookingCare]
--Tạo bảng bệnh viện
Create table Hospital(
hID int IDENTITY(100,1) NOT NULL CONSTRAINT pk_Hospital PRIMARY KEY,
hname varchar(50) not null,
descript varchar(MAX) not null,
address varchar(50) not null,
hotline varchar(50) not null,
)
--Tạo bảng các phòng khoa
Create table Department(
depID int IDENTITY(100,1) NOT NULL CONSTRAINT pk_Department PRIMARY KEY,
depName varchar(50) not null,
)

--Tạo bảng thời gian khám
Create table ScheduleCheck(
sID int IDENTITY(100,1) NOT NULL CONSTRAINT pk_ScheduleCheck PRIMARY KEY,
scheduleTime varchar(30) not null,
)

--Tạo bảng dịch vụ
Create table ServicesInfor(
serID int IDENTITY(1,1) NOT NULL CONSTRAINT pk_ServicesInfor PRIMARY KEY,
serName varchar(50) not null,
descript nvarchar(MAX) not null,
hospitalID int not null FOREIGN KEY references Hospital(hID),
Price decimal(18, 2) NOT NULL Default(0) Check(Price>=0),
)






----Hàm sinh mã tự đông (ID của bệnh nhân)
CREATE FUNCTION AUTO_IDPatient()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(pID) FROM Patient) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(pID, 3)) FROM Patient
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'PT00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'PT0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END


DROP FUNCTION [dbo].[AUTO_IDPatient]

/*
CREATE FUNCTION [dbo].[AUTO_IDPatient]()
RETURNS VARCHAR(7)
AS
BEGIN
	DECLARE @ID VARCHAR(7)
	IF (SELECT COUNT(pID) FROM Patient) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(pID, 5)) FROM Patient
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'US0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 and @ID < 99 THEN 'US000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99 AND @ID <999 THEN 'US00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
drop function [dbo].[AUTO_IDUSER]
*/

--Tạo bảng bệnh nhân
Create table Patient(
pID CHAR(5) PRIMARY KEY CONSTRAINT patientID DEFAULT DBO.AUTO_IDPatient(),
pname varchar(50) not null,
gender varchar(10) not null,
career varchar(10) not null,
birthday varchar(20) not null,
Tel varchar (12) NOT NULL  
                Check(Tel like '09[0-9][0-9] [0-9][0-9][0-9][0-9][0-9][0-9]' or Tel like '[1-9]%-[0-9][0-9][0-9][0-9][0-9][0-9]'),
Address nvarchar (40) NULL ,
Email varchar (30) NULL Check(Email  like '[a-z]%@[a-z]%.[a-z]%'),
Pass varchar(50) not null,
)
 




------
----Hàm sinh mã tự đông (ID của doctor)
CREATE FUNCTION AUTO_IDDoctor()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(dID) FROM Doctor) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(dID, 3)) FROM Doctor
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'DT00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'DT0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END

--Tạo bảng bác sĩ
Create table Doctor(
dID CHAR(5) PRIMARY KEY CONSTRAINT doctorID DEFAULT DBO.AUTO_IDDoctor(),
dname nvarchar(50) not null,
gender nvarchar(10) not null,
birthday varchar(20) not null,
Photo nvarchar(MAX) NULL,
About nvarchar(MAX) not null,
depID int NOT NULL FOREIGN KEY references Department(depID),
hospitalID int NOT NULL FOREIGN KEY references Hospital(hID),
Tel varchar (12) NOT NULL  
                Check(Tel like '09[0-9][0-9] [0-9][0-9][0-9][0-9][0-9][0-9]' or Tel like '[1-9]%-[0-9][0-9][0-9][0-9][0-9][0-9]'),
Address nvarchar (40) NULL ,
Email varchar (30) NULL Check(Email  like '[a-z]%@[a-z]%.[a-z]%'),
Price decimal(18, 2) NOT NULL Default(0) Check(Price>=0),
pass varchar(50) not null,
)
DROP TABLE Doctor

--Bảng phụ để xử lý thông tin các khung giwof khám rảnh cảu bác sĩ/ dịch vụ:
Create table TimeToCheckOfDoctor(
ID int IDENTITY(100,1) NOT NULL CONSTRAINT pk_TimeToCheckOfDoctor PRIMARY KEY,
DateCheck varchar(50) not null,
idTime  int not null FOREIGN KEY references ScheduleCheck(sID), 
IdDoctor int  NOT NULL FOREIGN KEY references Doctor(dID),
)


create table TimeToCheckServices(
id int IDENTITY(1,1) NOT NULL CONSTRAINT pk_TimeToCheckServices PRIMARY KEY,
DateCheck varchar(50) not null,
idTime  int not null FOREIGN KEY references ScheduleCheck(sID), 
serID int not null FOREIGN KEY references ServicesInfor(serID),
)

--***************************************************

--Tạo bảng thông tin cuộc hẹn khám với bác sĩ
CREATE TABLE AppointmentDoctor(
IDSchedule int IDENTITY(1,1) NOT NULL CONSTRAINT pk_AppointmentDoctor PRIMARY KEY,
IdPatient char(5) NOT NULL FOREIGN KEY references Patient(pID),
IdDoctor char(5)  NOT NULL FOREIGN KEY references Doctor(dID),
dateToMeet varchar(10) not null,
timeToMeet varchar(20) not null,
reasonCheck varchar(50) not null,
Confirmed varchar(10) null,
)



drop table AppointmentService
drop table AppointmentDoctor
drop table patient


--Tạo bảng thông tin cuộc hẹn khám dịch vụ
CREATE TABLE AppointmentService(
IDSchedule int IDENTITY(1,1) NOT NULL CONSTRAINT pk_AppointmentService PRIMARY KEY,
IdPatient char(5)  NOT NULL FOREIGN KEY references Patient(pID),
IdService int FOREIGN KEY references ServicesInfor(serID),
dateToMeet varchar(10) not null,
timeToMeet varchar(20) not null,
reasonCheck varchar(50) not null,
Confirmed varchar(10) null,
)



Create table Bill(
bID int IDENTITY(1,1) NOT NULL CONSTRAINT pk_Bill PRIMARY KEY,


)

--**********************************************************************************************************
------INSERT DATA INTO THE TABLE-------------------
--Dữ liệu bảng HOSPITAL

INSERT INTO Hospital(hname,descript,address,hotline) VALUES ('Viet Duc Friendship Hospital','Viet Duc Hospital is known as the oldest medical examination and treatment address in Vietnam, with more than 100 years of establishment and development. This is also the first general hospital, specializing in surgery in Vietnam.','No. 40 Trang Thi, Hoan Kiem District, Hanoi City.','024 38 248 308');
INSERT INTO Hospital(hname,descript,address,hotline) VALUES ('Hanoi-French Hospital','This international-invested hospital from France was established in 2000, with a private hospital scale of international standards, organizing medical examination and treatment based on a team of Vietnamese and French doctors and nurses carefully selected.','No. 1, Phuong Mai Street, Dong Da District, Hanoi.','(84-24) 3574 1111');
INSERT INTO Hospital(hname,descript,address,hotline) VALUES ('FV Hospital',N'Every year, the hospital attracts more than 200000 patients for medical examination and treatment, of which more than 70 percents are Vietnamese, 20 percents are foreigners living and traveling in Vietnam','6 Nguyen Luong Bang Street, South Saigon, District 7, HCM','028 54 113 333');
INSERT INTO Hospital(hname,descript,address,hotline) VALUES ('Vinmec International General Hospital','Gathering a team of highly qualified, dedicated and professional experts, doctors, pharmacists and nurses. Implementing the motto of always putting the patient at the center, committed to bringing the best health care services to customers.','458 Minh Khai, Hai Ba Trung, Hanoi','0243 9743 556');
INSERT INTO Hospital(hname,descript,address,hotline) VALUES ('Bach Mai Hospital','The hospital was established in 1911, formerly known as Cong Vong Hospital, specializing in the admission and treatment of infectious patients. Therefore, the hospital plays the role of the first special class hospital in the country. The largest general hospital in the North region.','78 Giai Phong Street, Phuong Mai, Dong Da, Hanoi','844 3869 3731');
INSERT INTO Hospital(hname,descript,address,hotline) VALUES ('Cho Ray Hospital','Over the years of development, the hospital has now become one of the complete, special-rated general hospitals. At the same time, this is also the last technical route in the southern provinces. Under the Ministry of Health, prioritized by the people for medical examination and treatment.','201B Nguyen Chi Thanh, Ward 12, district 5, HCMC.','(84-028) 3855 4137');
INSERT INTO Hospital(hname,descript,address,hotline) VALUES ('Da Nang General Hospital','Da Nang General Hospital is a leading hospital with the task of providing medical examination and treatment for people in Da Nang city and other provinces in the Central and Central Highlands regions. The doctors here are also people with prestige as well as high professional knowledge.','124 Hai Phong, Hai Chau district, Da Nang','0236 3821118');

Select*from Hospital


--Dữ liệu bảng Department:

INSERT INTO Department(depName) VALUES('Musculoskeletal');
INSERT INTO Department(depName) VALUES('Nerve');
INSERT INTO Department(depName) VALUES('Digest'); 
INSERT INTO Department(depName) VALUES('Heart');
INSERT INTO Department(depName) VALUES('Ent– eyes– odontology');
INSERT INTO Department(depName) VALUES('Traditional medicine');
INSERT INTO Department(depName) VALUES('Acupuncture');
INSERT INTO Department(depName) VALUES('Respiratory - Lungs');
INSERT INTO Department(depName) VALUES('Eye Specialist');
INSERT INTO Department(depName) VALUES('Dentistry');
INSERT INTO Department(depName) VALUES('Gastrointestinal Endoscopy');
--***********************************************************

--Dữ liệu bảng SERVICES:

INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Advanced General Examination Package for Men (OP3M)','Package includes general internal examination, total blood cell analysis, diabetes screening, liver and kidney function screening, blood fat test, uric acid test, hepatitis B screening, C testing urinalysis, general abdominal ultrasound, thyroid ultrasound, osteoporosis measurement',100,1690000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Perfect General Examination Package for Men (OP4M)','The package includes: general internal examination, total blood cell analysis, diabetes screening, liver and kidney function screening, blood fat test kit, uric acid test, screening for hepatitis B and C, colorectal cancer screening - lung, liver cancer screening, PSA, thyroid function test, gastric polyp, urinalysis, general abdominal ultrasound, thyroid ultrasound, echocardiogram, measure osteoporosis, ECG electrocardiogram, X-ray (cardiopulmonary straight, cervical spine straight - tilted, X-ray spine straight - tilted',100,3720000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Package for the elderly male (VG41M)','Package for the elderly (Male) includes general examination, X-ray, electrocardiogram, osteoporosis measurement, abdominal ultrasound, thyroid ultrasound, echocardiogram, blood count, blood sugar (glucose) ), lipid profile (lipid profile), liver enzyme measurement (AST ALT), kidney function (creatinine, urea), gout (uric acid), prostate cancer marker (total PSA), total water analysis pee',101,3720000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Package for the elderly female (VG41F)','Package for the elderly (Female) includes: general examination, X-ray, electrocardiogram, osteoporosis measurement, abdominal ultrasound, breast ultrasound, thyroid ultrasound, echocardiogram, gynecological examination, complete blood count, blood sugar (glucose), blood lipid profile (Lipid Profile), measure liver enzymes (AST ALT), kidney function (creatinine, urea). gout (Uric Acid), total urinalysis',101,3910000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Pre-Marriage Examination Package for Men (OP8M)','Pre-marital examination package for men includes: general internal examination, male examination, total blood cell analysis, diabetes screening, liver and kidney function screening, blood lipid test kit, disease screening liver B, C, urine test, ABO + Rh blood group determination, syphilis test, drug test, HIV test, abdominal ultrasound.',103,1610000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Pre-Marriage Examination Package for Women (OP8F)','Pre-marital examination package for Women includes: general internal medicine examination, gynecological examination, breast examination, complete blood cell analysis, diabetes screening, liver and kidney function screening, blood lipid test kit , screening for hepatitis B, C, urine test, syphilis test, drug testing, detection of Rubella, HIV test, SCC, leukoplakia, abdominal ultrasound.',103,1690000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Stomach - Colon Health Screening Package (OP53)','The Stomach - Colon Health Screening Package includes: Clinical examination, esophagogastroduodenal endoscopy, colonoscopy, polypectomy or biopsy, electrocardiogram, abdominal ultrasound.',112,3600000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Cardiac Disease Screening Package (OP51)','Cardiovascular disease screening package includes: clinical examination, blood count, liver function screening (AST, ALT, GGT), kidney (urea, creatinine), gout screening (uric acid), blood sugar fasting, assessment of blood electrolytes, C-reactive protein (CRP) test, blood lipid test, urinalysis, doppler ultrasound of the vertebral artery, echocardiogram, straight chest X-ray, normal electrocardiogram.',112,1485000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Package for children 5-15 years old (VG5)','Package includes: General examination; Stomach supersonic; Blood test, blood group, blood sugar; Assessment of liver function; Testing for hepatitis B, hepatitis C; Urine test.',106,1700000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Packages for children 12 to 17 years old (CHAC5)','Package includes: General Examination; Blood test, blood sugar, blood group; Urine test; Assess liver and kidney function; Assess thyroid activity; Hepatitis B screening; Abdominal Ultrasound, Echocardiogram, Thyroid Ultrasound; Lung X-ray.',106,1479000);
INSERT INTO ServicesInfor(serName,descript,hospitalID,Price) VALUES('Intensive breast cancer screening package (TSUTV)','Package includes: Clinical examination, breast cancer early detection test, breast ultrasound, mammogram',114,960000)

select*from ServicesInfor

---Dữ liệu khung giờ cuộc hẹn:
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('07:30 - 08:00');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('08:00 - 08:30');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('08:30 - 09:00');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('09:00 - 09:30');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('09:30 - 10:00');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('10:00 - 10:30');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('10:30 - 11:00');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('13:30 - 14:00');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('14:00 - 14:30');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('14:30 - 15:00');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('15:00 - 15:30');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('15:30 - 16:00');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('16:00 - 16:30');
INSERT INTO ScheduleCheck(scheduleTime) VALUES ('16:30 - 17:00');

---Dữ liệu bệnh nhân:
INSERT INTO Patient(pname,gender,career,birthday,Tel,address,Email,pass) Values ('Do Thuy Linh','Female','Student','09/30/2001','0912 345876','Quang Binh','Linhdt@gmail.com',123);
INSERT INTO Patient(pname,gender,career,birthday,Tel,address,Email,pass) Values ('Nguyen Ngoc Tin','Male','Student','06/12/2001','0987 123456','Hue','ngoctin@gmail.com',123);
INSERT INTO Patient(pname,gender,career,birthday,Tel,address,Email,pass) Values ('Mai Van A','Male','Worker','11/23/1993','0911 566722','Da Nang','maivana@ent.com',123);



select*from Patient

--Dữ liệu bảng Doctor:
select*from Department
select*from Hospital

select*from Doctor

INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Le Quang Long','Male','01/01/1994','https://hthaostudio.com/wp-content/uploads/2019/08/Anh-Doanh-nhan-56.jpg',N'Nguyên Trưởng khoa Cơ - Xương - Khớp, Bệnh viện Bạch Mai. Chủ tịch Hội loãng xương Hà Nội. Bác sĩ nhận bệnh nhân từ 18 tuổi trở lên',100,104,'0945 111333','Dong Da,Ha Noi','Longlq112@bmh.vn',600000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Ho Thang Phuc','Male','12/01/1984','https://benhvienlaokhoa.vn/media/news/23_1111.png',N'Nguyên Viện phó Viện Chấn thương chỉnh hình - Bệnh viện Việt Đức. Chuyên gia đầu ngành về chấn thương chỉnh hình tại Việt Nam. Được nhận Danh hiệu Thầy thuốc nhân dân',100,100,'0911 783783','Thuong Tin,Ha Noi','Phucht211@vdh.vn',650000,123);

INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Ha Van Quyet','Male','12/01/1954','https://trangphuclinh.vn/wp-content/uploads/2020/04/ha-van-quyet.jpg',N'Chuyên gia trên 35 năm kinh nghiệm trong lĩnh vực bệnh lý Tiêu hóa. Chuyên gia đầu ngành trong lĩnh vực bệnh lý Tiêu hóa. Nguyên Giám đốc Bệnh viện Đại học Y Hà Nội. Bác sĩ khám cho người bệnh từ 3 tuổi trở lên',102,100,'0911 783783','Ba Dinh,Ha Noi','Quyethv111@vdh.vn',650000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Le Tuyet Anh','Female','10/20/1970','https://hospitalcare.vn/upload/filemanager/doctor/le-tuyet-anh-1.jpg',N'Nguyên bác sĩ Chuyên khoa II chuyên ngành Tiêu hóa, Bệnh viện Bạch Mai. Bác sĩ khám cho người bệnh từ 16 tuổi trở lên',102,101,'0921 333666','Ba Dinh,Ha Noi','letuyetanh11@gmail.vn',650000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Nguyen Tho Lo','Male','02/20/1960','https://www.baosonhospital.com/Uploads/images/BsLo.jpg',N'Nguyên Phó Giám đốc Bệnh viện Quân y 103. Chuyên gia về Thần kinh Sọ não và Cột sống. Nguyên Phó chủ tịch Hội Phẫu thuật Thần kinh Việt Nam. Bác sĩ khám cho người bệnh từ 13 tuổi trở lên',101,104,'0921 333666','Ba Dinh,Ha Noi','Nguyentholo@gmail.vn',750000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Nguyen Van Quynh','Male','04/30/1960','https://cdn.bookingcare.vn/fr/w200/2022/05/05/104945-nguyen-van-quynh-pgs.jpg',N'Nguyên Phó Chủ nhiệm Bộ môn Nội tim mạch, Bệnh viện Trung ương Quân đội 108. Chuyên gia hàng đầu về nội tim mạch với hơn 30 năm kinh nghiệm. Bác sĩ khám cho người bệnh từ 18 tuổi trở lên',103,105,'0921 333666','Ho Chi Minh','Nguyenvanquynh@gmail.vn',700000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Nguyen Lan Viet','Male','04/30/1960','https://cdn.bookingcare.vn/fr/w200/2016/08/29/120727gs-ts-nguyen-lan-viet.jpg',N'Nguyên Viện trưởng Viện Tim Mạch Quốc Gia. Nguyên Hiệu trưởng trường Đại học Y Hà Nội. Chủ tịch Hội Tim mạch Việt Nam',103,101,'0921 333666','Ha Noi','NguyenLanViet@gmail.vn',710000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Nguyen Thi Hoai An','Female','10/30/1968','https://cdn.bookingcare.vn/fr/w200/2020/01/03/090559-pgs-nguyen-thi-hoai-an.jpg',N'Nguyên Trưởng khoa Tai mũi họng trẻ em, Bệnh viện Tai Mũi Họng Trung ương. Trên 25 năm công tác tại Bệnh viện Tai mũi họng Trung ương. Chuyên khám và điều trị các bệnh lý Tai Mũi Họng người lớn và trẻ em',104,101,'0921 333666','Ha Noi','NguyenTHAn@vinmec.vn',710000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Nguyen Cong Doanh','Male','10/01/1950','https://cdn.bookingcare.vn/fr/w200/2019/04/08/162407tien-si-bac-si-nguyen-cong-doanh.jpg',N'Nguyên Trưởng khoa, khoa Y học cổ truyền, Bệnh viện Bạch Mai. Thành viên Hội Y học cổ truyền Việt Nam',105,104,'0921 333666','Ha Noi','Nguyencongdoanh@bmh.vn',550000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Duong Trong Nghia','Male','05/05/1952','https://cdn.bookingcare.vn/fr/w200/2020/05/18/101123-bs-duong-trong-nghia-bookingcare.jpg',N'Trưởng khoa Châm cứu dưỡng sinh, Bệnh viện Châm cứu Trung ương. Nguyên Trưởng khoa Nội, Bệnh viện Châm cứu Trung ương',106,106,'0945 456987','Da Nang','Duongtrongnghiah@dnh.vn',550000,123);
INSERT INTO Doctor(dname,gender,birthday,photo,about,depID,hospitalID,Tel,Address,email,price,pass) VALUES ('Nguyen Xuan Bich Huyen','Female','05/05/1952','https://cdn.bookingcare.vn/fr/w200/2022/04/21/185740-bs-huyen.jpg',N'Nguyên Trưởng khoa Hô hấp, Bệnh viện Chợ Rẫy. Trưởng phòng Chẩn đoán điều trị rối loạn giấc ngủ, Phòng khám Đa khoa CHAC',107,101,'0945 456987','Ha Noi','Nguyenxuanbhuyen@hfh.vn',550000,123);

delete from doctor where did='DT011' 




select*from patient