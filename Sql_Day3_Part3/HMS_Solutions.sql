select pid from room_allocation where month(Admission_date)=1;

select * from Patient_Master where PID = ANY( 
select pid from room_allocation where month(Admission_date)=1);

select * from patient_master;

select * from patient_master where gender='F' and 
disease NOT LIKE '%ASTHAMA%';

select gender, count(*) 
from patient_master group by gender;


select PM.PID,PM.Name,DM.Doctor_Id,DM.Doctor_Name,RA.Room_NO,
RM.ROOM_TYPE,RA.Admission_Date
from Doctor_Master DM INNER JOIN Patient_master PM ON
DM.Doctor_ID=PM.DOCTOR_ID INNER JOIN ROOM_ALLOCATION RA
ON PM.PID=RA.PID INNER JOIN ROOM_MASTER RM ON 
RM.ROOM_NO = RA.ROOM_NO;

select * from Room_Allocation;

select distinct ROOM_NO from Room_Allocation;

select * from ROOM_Master WHERE ROOM_NO <> ALL
(select distinct ROOM_NO from Room_Allocation);

select * from room_allocation;