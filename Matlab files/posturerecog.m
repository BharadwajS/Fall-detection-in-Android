clc
clear all
close all
%% Import the data

%set1


accel_set1 = importfile('E:\Bharadwaj S\WSN proj\training sets\Aditya_5_9\accel_sit_stand_walk.csv','accel_sit_stand_walk','A1:C1678');
orient_set1 = importfile('E:\Bharadwaj S\WSN proj\training sets\Aditya_5_9\orient_sit_stand_walk.csv','orient_sit_stand_walk','A1:C1316');

%set2
accel_sitting_set2 = importfile('E:\Bharadwaj S\WSN proj\training sets\Akansha_5_7\Accelerometer\sitting.csv','sitting','A1:C1016');
accel_standing_set2 = importfile('E:\Bharadwaj S\WSN proj\training sets\Akansha_5_7\Accelerometer\standing.csv','standing','A1:C668');
accel_walking_set2 = importfile('E:\Bharadwaj S\WSN proj\training sets\Akansha_5_7\Accelerometer\walking.csv','walking','A1:C1056');

orient_sitting_set2=  importfile('E:\Bharadwaj S\WSN proj\training sets\Akansha_5_7\Orientation\sitting.csv','sitting','A1:C905');
orient_standing_set2 = importfile('E:\Bharadwaj S\WSN proj\training sets\Akansha_5_7\Orientation\standing.csv','standing','A1:C1305');
orient_walking_set2 = importfile('E:\Bharadwaj S\WSN proj\training sets\Akansha_5_7\Orientation\walking.csv','walking','A1:C1117');

%set3

accel_sitting_set3 = importfile('E:\Bharadwaj S\WSN proj\training sets\Amudeesan_5_6\Accelerometer\Sitting.csv','Sitting','A1:C1012');
accel_standing_set3 = importfile('E:\Bharadwaj S\WSN proj\training sets\Amudeesan_5_6\Accelerometer\standing.csv','standing','A1:C863');
accel_walking_set3 = importfile('E:\Bharadwaj S\WSN proj\training sets\Amudeesan_5_6\Accelerometer\walking.csv','walking','A1:C1465');

orient_sitting_set3 =  importfile('E:\Bharadwaj S\WSN proj\training sets\Amudeesan_5_6\Orientation sensor\sitting.csv','sitting','A1:C2693');
orient_standing_set3 = importfile('E:\Bharadwaj S\WSN proj\training sets\Amudeesan_5_6\Orientation sensor\standing.csv','standing','A1:C1148');
orient_walking_set3 = importfile('E:\Bharadwaj S\WSN proj\training sets\Amudeesan_5_6\Orientation sensor\walking.csv','walking','A1:C1497');

%set4

accel_set4 = importfile('E:\Bharadwaj S\WSN proj\training sets\Ashrith\Accel.csv','Accel','A1:C1095');
orient_set4 = importfile('E:\Bharadwaj S\WSN proj\training sets\Ashrith\orient.csv','orient','A1:C1717');

%set5

accel_set5 = importfile('E:\Bharadwaj S\WSN proj\training sets\bala\accel.csv','accel','A1:C1105');
orient_set5 = importfile('E:\Bharadwaj S\WSN proj\training sets\bala\orient.csv','orient','A1:C1272');

%set6

accel_set6 = importfile('E:\Bharadwaj S\WSN proj\training sets\BharadwajSharma\accel_sit_stand_walk.csv','accel_sit_stand_walk','A1:C860');
orient_set6 = importfile('E:\Bharadwaj S\WSN proj\training sets\BharadwajSharma\orient_sit_stand_walk.csv','orient_sit_stand_walk','A1:C785');

%set7
accel_set7 = importfile('E:\Bharadwaj S\WSN proj\training sets\Bibek\accel.csv','accel','A1:C659');
orient_set7 = importfile('E:\Bharadwaj S\WSN proj\training sets\Bibek\orient.csv','orient','A1:C546');

%set8
accel_set8 = importfile('E:\Bharadwaj S\WSN proj\training sets\Eashwar\accel.csv','accel','A1:C943');
orient_set8 = importfile('E:\Bharadwaj S\WSN proj\training sets\Eashwar\orient.csv','orient','A1:C1196');

%set9
accel_set9 = importfile('E:\Bharadwaj S\WSN proj\training sets\Harshad\accel.csv','accel','A1:C1259');
orient_set9 = importfile('E:\Bharadwaj S\WSN proj\training sets\Harshad\orient.csv','orient','A1:C1096');

%set10

accel_sitting_set10 = importfile('E:\Bharadwaj S\WSN proj\training sets\Mahesh babu\Acceleration\sitting.csv','sitting','A1:C574');
accel_standing_set10 = importfile('E:\Bharadwaj S\WSN proj\training sets\Mahesh babu\Acceleration\standing.csv','standing','A1:C870');
accel_walking_set10 = importfile('E:\Bharadwaj S\WSN proj\training sets\Mahesh babu\Acceleration\walking.csv','walking','A1:C876');

orient_sitting_set10 =  importfile('E:\Bharadwaj S\WSN proj\training sets\Mahesh babu\Orientation sensor\sitting_orient.csv','sitting_orient','A1:C482');
orient_standing_set10 = importfile('E:\Bharadwaj S\WSN proj\training sets\Mahesh babu\Orientation sensor\standing_orient.csv','standing_orient','A1:C854');
orient_walking_set10 = importfile('E:\Bharadwaj S\WSN proj\training sets\Mahesh babu\Orientation sensor\walking_orient.csv','walking_orient','A1:C989');

%set11

accel_set11 = importfile('E:\Bharadwaj S\WSN proj\training sets\Manohar\accel_sit_stand_fake_walk.csv','accel_sit_stand_fake_walk','A1:C1456');
orient_set11 = importfile('E:\Bharadwaj S\WSN proj\training sets\Manohar\orient_sit_stand_walk.csv','orient_sit_stand_walk','A1:C716');

%set12


accel_sitting_set12 = importfile('E:\Bharadwaj S\WSN proj\training sets\Padmaraj_R_185\Accelerometer\sitting.csv','sitting','A1:C773');
accel_standing_set12 = importfile('E:\Bharadwaj S\WSN proj\training sets\Padmaraj_R_185\Accelerometer\standing.csv','standing','A1:C956');
accel_walking_set12 = importfile('E:\Bharadwaj S\WSN proj\training sets\Padmaraj_R_185\Accelerometer\walking.csv','walking','A1:C1148');

orient_sitting_set12 =  importfile('E:\Bharadwaj S\WSN proj\training sets\Padmaraj_R_185\Orientation\sitting.csv','sitting','A1:C247');
orient_standing_set12 = importfile('E:\Bharadwaj S\WSN proj\training sets\Padmaraj_R_185\Orientation\standing.csv','standing','A1:C803');
orient_walking_set12 = importfile('E:\Bharadwaj S\WSN proj\training sets\Padmaraj_R_185\Orientation\walking.csv','walking','A1:C1403');

%set13 

accel_set13 = importfile('E:\Bharadwaj S\WSN proj\training sets\rahul\accel.csv','accel','A1:C1043');
orient_set13 = importfile('E:\Bharadwaj S\WSN proj\training sets\rahul\orient.csv','orient','A1:C1618');

%set14

accel_set14 = importfile('E:\Bharadwaj S\WSN proj\training sets\subbu\accel.csv','accel','A1:C1389');
orient_set14= importfile('E:\Bharadwaj S\WSN proj\training sets\subbu\orient.csv','orient','A1:C1167');

%set15


accel_sitting_set15 = importfile('E:\Bharadwaj S\WSN proj\training sets\Thiru_5_8\Accel\sitting.csv','sitting','A1:C332');
accel_standing_set15 = importfile('E:\Bharadwaj S\WSN proj\training sets\Thiru_5_8\Accel\standing.csv','standing','A1:C1225');
accel_walking_set15 = importfile('E:\Bharadwaj S\WSN proj\training sets\Thiru_5_8\Accel\walking.csv','walking','A1:C923');

orient_sitting_set15 =  importfile('E:\Bharadwaj S\WSN proj\training sets\Thiru_5_8\Orient\sitting.csv','sitting','A1:C833');
orient_standing_set15 = importfile('E:\Bharadwaj S\WSN proj\training sets\Thiru_5_8\Orient\standing.csv','standing','A1:C541');
orient_walking_set15 = importfile('E:\Bharadwaj S\WSN proj\training sets\Thiru_5_8\Orient\walking.csv','walking','A1:C837');

%set16 

accel_set16 = importfile('E:\Bharadwaj S\WSN proj\training sets\Thrilochan\accel.csv','accel','A1:C1031');
orient_set16= importfile('E:\Bharadwaj S\WSN proj\training sets\Thrilochan\orient.csv','orient','A1:C1253');

%set17 

accel_sitting_set17 = importfile('E:\Bharadwaj S\WSN proj\training sets\Udita\Accelerometer\sitting.csv','sitting','A1:C1022');
accel_standing_set17 = importfile('E:\Bharadwaj S\WSN proj\training sets\Udita\Accelerometer\standing.csv','standing','A1:C923');
accel_walking_set17 = importfile('E:\Bharadwaj S\WSN proj\training sets\Udita\Accelerometer\walking.csv','walking','A1:C1476');

orient_sitting_set17 =  importfile('E:\Bharadwaj S\WSN proj\training sets\Udita\Orientation\sitting_orient.csv','sitting_orient','A1:C963');
orient_standing_set17 = importfile('E:\Bharadwaj S\WSN proj\training sets\Udita\Orientation\standing_orient.csv','standing_orient','A1:C854');
orient_walking_set17 = importfile('E:\Bharadwaj S\WSN proj\training sets\Udita\Orientation\walking_orient.csv','walking_orient','A1:C1406');

%set18


accel_set18 = importfile('E:\Bharadwaj S\WSN proj\training sets\Vamsi\accel.csv','accel','A1:C1070');
orient_set18= importfile('E:\Bharadwaj S\WSN proj\training sets\Vamsi\orient.csv','orient','A1:C1709');

%set19 

accel_set19 = importfile('E:\Bharadwaj S\WSN proj\training sets\Venkatesan\accel.csv','accel','A1:C1033');
orient_set19= importfile('E:\Bharadwaj S\WSN proj\training sets\Venkatesan\orient.csv','orient','A1:C1361');

%set20 

accel_set20 = importfile('E:\Bharadwaj S\WSN proj\training sets\me\accel.csv','accel','A1:C914');
orient_set20= importfile('E:\Bharadwaj S\WSN proj\training sets\me\orient.csv','orient','A1:C2536');
