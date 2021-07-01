

select operation_nas,* from nasabah where cif2_nas in('6013290008623','6013290008625','6013290008621','6013290008622')
 


INSERT INTO nasabah
SELECT * FROM nasabah_uber
where cif2_nas in('6013290008623','6013290008625','6013290008621','6013290008622')

INSERT INTO nasabah
SELECT * FROM nasabah_bkr
where cif2_nas in('6013290008623','6013290008625','6013290008621','6013290008622')



select slik_gen3()