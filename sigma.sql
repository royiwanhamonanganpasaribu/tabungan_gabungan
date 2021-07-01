
update agama set urut_agama =   1 Where nama_agama = 'Islam';
update agama set urut_agama =   2 Where nama_agama = 'Kristen';
update agama set urut_agama =   3 Where nama_agama = 'Budha';
update agama set urut_agama =   4 Where nama_agama = 'Katolik';
update agama set urut_agama =   5 Where nama_agama = 'Hindu';

update nasabah set strumah_nas = 'Kosong' where strumah_nas is null ;
CREATE TABLE public.tpt_tggl
(
  id_tggl character(1),
  strumah_nas character(50)
);

insert into tpt_tggl (id_tggl,strumah_nas)values ('4','Kost');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','Dalam Proses');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Paman');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Keluarga');
insert into tpt_tggl (id_tggl,strumah_nas)values ('1','Milik Pribadi');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','lainnya vb');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Milik Mertua');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Dengan Kakak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut kakak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Rumah Anak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Orang Tua');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Punya Adik');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Suami');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Kakak Kandung');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Milik Keluarga');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Milik Kakak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','Ikut Atasan');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Punya Kakak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Kakak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Milik Saudara');
insert into tpt_tggl (id_tggl,strumah_nas)values ('3','Rumah Dinas/Instansi');
insert into tpt_tggl (id_tggl,strumah_nas)values ('1','Milik Sendiri');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Keluarga');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','Rumah Atasan');
insert into tpt_tggl (id_tggl,strumah_nas)values ('1','milik keluarga');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','Lainnya');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Rumah Keluarga');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Saudara');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Tinggal Dengan Anak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','Ikut Teman');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','Tinggal Dengan Saudara');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','ikut suami');
insert into tpt_tggl (id_tggl,strumah_nas)values ('4','Mess');
insert into tpt_tggl (id_tggl,strumah_nas)values ('4','Sewa/Kontrak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('4','kost');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Milik Orang Tua');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Milik Suami');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Keponakan');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Dengan Saudara');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Ikut Anak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('4','Kontrak');
insert into tpt_tggl (id_tggl,strumah_nas)values ('2','Saudara');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','Ikut Majikan');
insert into tpt_tggl (id_tggl,strumah_nas)values ('5','Kosong');


-- View: public.kode_norek

-- DROP VIEW public.kode_norek;

CREATE OR REPLACE VIEW public.kode_norek AS 
 SELECT nasabah.id_nas,
    reknas.no_rek,
        CASE
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.456.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '2.456.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '3.456.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '4.456.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '5.456.'::text THEN '001'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.345.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '2.345.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '3.345.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '4.345.'::text THEN '002'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.445.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '2.445.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '3.445.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '4.445.'::text THEN '003'::text
            ELSE NULL::text
        END AS kode_cabang_no_rek
   FROM reknas
     JOIN nasabah USING (id_nas)
     JOIN cif_nasabah USING (id_nas)
  WHERE reknas.no_rek IS NOT NULL
  ORDER BY reknas.no_rek;

ALTER TABLE public.kode_norek
  OWNER TO postgres;



-- View: public.sigma_tabungan

-- DROP VIEW public.sigma_tabungan;

CREATE OR REPLACE VIEW public.sigma_tabungan AS 
 SELECT nasabah.id_nas,
    nasabah.nama_nas,
    replace(reknas.no_rek::text, '.'::text, ''::text) AS no_rek,
        CASE
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.456.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '2.456.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '3.456.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '4.456.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '5.456.'::text THEN '001'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.345.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '2.345.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '3.345.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '4.345.'::text THEN '002'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.445.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '2.445.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '3.445.'::text OR "substring"(reknas.no_rek::text, 1, 6) = '4.445.'::text THEN '003'::text
            ELSE NULL::text
        END AS kode_cabang,
        CASE
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.456.'::text THEN 'T01'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '4.456.'::text THEN 'T04'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.345.'::text THEN 'T01'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '4.345.'::text THEN 'T04'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '1.445.'::text THEN 'T01'::text
            WHEN "substring"(reknas.no_rek::text, 1, 6) = '4.445.'::text THEN 'T04'::text
            ELSE NULL::text
        END AS tipe_rekening,
    reknas.sldtab_rek
   FROM reknas
     JOIN nasabah USING (id_nas)
     JOIN cif_nasabah USING (id_nas)
     LEFT JOIN nasabah n2 ON nasabah.satu_nas = n2.id_nas
  WHERE reknas.jenis_rek = 'T'::bpchar AND reknas.aktive_rek = true
  ORDER BY reknas.no_rek;

ALTER TABLE public.sigma_tabungan
  OWNER TO postgres;


-- View: public.sigma_deposito

-- DROP VIEW public.sigma_deposito;

CREATE OR REPLACE VIEW public.sigma_deposito AS 
 SELECT DISTINCT deposito.bilyet_dep,
       CASE
WHEN BLN_DEP = '1' THEN 'D01'
WHEN BLN_DEP = '3' THEN 'D02'
WHEN BLN_DEP = '6' THEN 'D03'
WHEN BLN_DEP = '12' THEN 'D04'

END AS kode_deposito,
    kode_norek.kode_cabang_no_rek,
    deposito.bunga_dep,
replace(deposito.awal_dep::text, '-'::text, ''::text) AS awal_dep,
 
    deposito.nilaiskr
   FROM deposito
     JOIN reknas USING (id_rek)
     JOIN nasabah USING (id_nas)
     JOIN cif_nasabah USING (id_nas)
     JOIN sisa_amor_acc_deposito3 USING (id_dep)
     JOIN kode_norek USING (id_nas)
     LEFT JOIN nasabah n2 ON nasabah.satu_nas = n2.id_nas
  WHERE deposito.active_dep AND deposito.maturity_dep > sekarang() AND NOT deposito.gantung_dep
  ORDER BY deposito.bilyet_dep;
ALTER TABLE public.sigma_deposito
  OWNER TO postgres;

 -- View: public.sigma_nama

-- DROP VIEW public.sigma_nama;

CREATE OR REPLACE VIEW public.sigma_nama AS 
 SELECT nasabah.id_nas,
    split_part(nasabah.nama_nas::text, ' '::text, 1) AS kata,
    "substring"(nasabah.nama_nas::text, 1, 10) AS str10,
    nasabah.nama_nas
   FROM nasabah
  ORDER BY nasabah.nama_nas;

ALTER TABLE public.sigma_nama
  OWNER TO postgres;

-- View: public.sigma_tdmin_1

-- DROP VIEW public.sigma_tdmin_1;

CREATE OR REPLACE VIEW public.sigma_tdmin_1 AS 
 SELECT nasabah.id_nas,
    nasabah.ktp_nas,
    replace(nasabah.ktp_nas::text, '.'::text, ''::text) AS titik
   FROM nasabah
   order by nasabah.ktp_nas;

ALTER TABLE public.sigma_tdmin_1
  OWNER TO postgres;

-- View: public.sigma_tdmin_2

-- DROP VIEW public.sigma_tdmin_2;

CREATE OR REPLACE VIEW public.sigma_tdmin_2 AS 
 SELECT sigma_tdmin_1.id_nas,
    sigma_tdmin_1.ktp_nas,
    replace(sigma_tdmin_1.titik, '/'::text, ''::text) AS garis_miring
   FROM sigma_tdmin_1;

ALTER TABLE public.sigma_tdmin_2
  OWNER TO postgres;

-- View: public.sigma_tdmin_3

-- DROP VIEW public.sigma_tdmin_3;

CREATE OR REPLACE VIEW public.sigma_tdmin_3 AS 
 SELECT sigma_tdmin_2.id_nas,
    sigma_tdmin_2.ktp_nas,
    replace(sigma_tdmin_2.garis_miring, ':'::text, ''::text) AS titik2
   FROM sigma_tdmin_2;

ALTER TABLE public.sigma_tdmin_3
  OWNER TO postgres;

-- View: public.sigma_tdmin_4

-- DROP VIEW public.sigma_tdmin_4;

CREATE OR REPLACE VIEW public.sigma_tdmin_4 AS 
 SELECT sigma_tdmin_3.id_nas,
    sigma_tdmin_3.ktp_nas,
    replace(sigma_tdmin_3.titik2, 'SIUP'::text, ''::text) AS siup
   FROM sigma_tdmin_3;

ALTER TABLE public.sigma_tdmin_4
  OWNER TO postgres;
-- View: public.sigma_tdmin_5

-- DROP VIEW public.sigma_tdmin_5;

CREATE OR REPLACE VIEW public.sigma_tdmin_5 AS 
 SELECT sigma_tdmin_4.id_nas,
    sigma_tdmin_4.ktp_nas,
    replace(sigma_tdmin_4.siup, '.'::text, ''::text) AS titik
   FROM sigma_tdmin_4;

ALTER TABLE public.sigma_tdmin_5
  OWNER TO postgres;

-- View: public.sigma_tdmin_6

-- DROP VIEW public.sigma_tdmin_6;

CREATE OR REPLACE VIEW public.sigma_tdmin_6 AS 
 SELECT sigma_tdmin_5.id_nas,
    sigma_tdmin_5.ktp_nas,
    replace(sigma_tdmin_5.titik, ' No '::text, ''::text) AS spsi_no
   FROM sigma_tdmin_5;

ALTER TABLE public.sigma_tdmin_6
  OWNER TO postgres;

-- View: public.sigma_tdmin_7

-- DROP VIEW public.sigma_tdmin_7;

CREATE OR REPLACE VIEW public.sigma_tdmin_7 AS 
 SELECT sigma_tdmin_6.id_nas,
    sigma_tdmin_6.ktp_nas,
    replace(sigma_tdmin_6.spsi_no, '-'::text, ''::text) AS min
   FROM sigma_tdmin_6;

ALTER TABLE public.sigma_tdmin_7
  OWNER TO postgres;

-- View: public.sigma_tdmin_8

-- DROP VIEW public.sigma_tdmin_8;

CREATE OR REPLACE VIEW public.sigma_tdmin_8 AS 
 SELECT sigma_tdmin_7.id_nas,
    sigma_tdmin_7.ktp_nas,
    replace(sigma_tdmin_7.min, '0130IUPVII2018DPMPTSP'::text, '0130IUPVII218DPMPTSP'::text) AS nol
   FROM sigma_tdmin_7;

ALTER TABLE public.sigma_tdmin_8
  OWNER TO postgres;

-- View: public.sigma_tdmin_9

-- DROP VIEW public.sigma_tdmin_9;

CREATE OR REPLACE VIEW public.sigma_tdmin_9 AS 
 SELECT sigma_tdmin_8.id_nas,
    sigma_tdmin_8.ktp_nas,
    sigma_tdmin_8.nol AS ident_sig,
    length(sigma_tdmin_8.nol) AS jumlah,
    nasabah.jenisid_nas,
    nasabah.cif2_nas
   FROM sigma_tdmin_8
     JOIN nasabah USING (id_nas)
  ORDER BY (length(sigma_tdmin_8.nol));

ALTER TABLE public.sigma_tdmin_9
  OWNER TO postgres;

-- View: public.sigma_tdmin_10

-- DROP VIEW public.sigma_tdmin_10;

CREATE OR REPLACE VIEW public.sigma_tdmin_10 AS 
 SELECT sigma_tdmin_9.id_nas,
    sigma_tdmin_9.ktp_nas,
    sigma_tdmin_9.ident_sig,
    sigma_tdmin_9.jumlah,
    sigma_tdmin_9.jenisid_nas,
    sigma_tdmin_9.cif2_nas,
        CASE
            WHEN sigma_tdmin_9.id_nas = 'KAL.0001'::bpchar THEN 'KARTU PENGENAL LAINNYA'::text
            WHEN sigma_tdmin_9.jumlah = 16 AND sigma_tdmin_9.id_nas = 'DEN.0027'::bpchar THEN 'SIM'::text
            WHEN sigma_tdmin_9.jumlah = 16 THEN 'KTP'::text
            WHEN sigma_tdmin_9.jumlah <> 16 AND sigma_tdmin_9.id_nas = 'YAY.0035'::bpchar THEN 'KARTU PENGENAL LAINNYA'::text
            WHEN sigma_tdmin_9.jumlah <> 16 AND sigma_tdmin_9.id_nas = 'IDA.0006'::bpchar THEN 'SIM'::text
            WHEN sigma_tdmin_9.jumlah <> 16 AND sigma_tdmin_9.id_nas = 'EFF.0004'::bpchar THEN 'SIM'::text
            WHEN sigma_tdmin_9.jumlah <> 16 AND sigma_tdmin_9.id_nas = 'TRU.0001'::bpchar THEN 'KARTU PENGENAL LAINNYA'::text
            WHEN sigma_tdmin_9.jumlah <> 16 AND sigma_tdmin_9.id_nas = 'NUS.0001'::bpchar THEN 'KARTU PENGENAL LAINNYA'::text
            WHEN sigma_tdmin_9.jumlah <> 16 AND sigma_tdmin_9.id_nas = 'INT.0002'::bpchar THEN 'KARTU PENGENAL LAINNYA'::text
            WHEN sigma_tdmin_9.jumlah <> 16 AND sigma_tdmin_9.id_nas = 'TRU.0002'::bpchar THEN 'KARTU PENGENAL LAINNYA'::text
            WHEN sigma_tdmin_9.jumlah <> 16 AND sigma_tdmin_9.id_nas = 'TOT.0006'::bpchar THEN 'KARTU PENGENAL LAINNYA'::text
            ELSE 'KARTU PENGENAL LAINNYA'::text
        END AS jenisid_nas_sig
   FROM sigma_tdmin_9
  ORDER BY sigma_tdmin_9.id_nas;

ALTER TABLE public.sigma_tdmin_10
  OWNER TO postgres;

-- View: public.sigma_tdmin_11

-- DROP VIEW public.sigma_tdmin_11;

CREATE OR REPLACE VIEW public.sigma_tdmin_11 AS 
 SELECT sigma_tdmin_10.id_nas,
    sigma_tdmin_10.ktp_nas,
    sigma_tdmin_10.ident_sig,
    sigma_tdmin_10.jumlah,
    sigma_tdmin_10.jenisid_nas,
    sigma_tdmin_10.cif2_nas,
    sigma_tdmin_10.jenisid_nas_sig,
        CASE
            WHEN sigma_tdmin_10.jenisid_nas_sig = 'KARTU PENGENAL LAINNYA'::text THEN 4
            WHEN sigma_tdmin_10.jenisid_nas_sig = 'PASPOR'::text THEN 3
            WHEN sigma_tdmin_10.jenisid_nas_sig = 'SIM'::text THEN 2
            WHEN sigma_tdmin_10.jenisid_nas_sig = 'KTP'::text THEN 1
            ELSE NULL::integer
        END AS code_jenisid_nas_sig
   FROM sigma_tdmin_10;

ALTER TABLE public.sigma_tdmin_11
  OWNER TO postgres;

  -- View: public.sigma_tdmin_12_pekerjaan_nas

-- DROP VIEW public.sigma_tdmin_12_pekerjaan_nas;

CREATE OR REPLACE VIEW public.sigma_tdmin_12_pekerjaan_nas AS 
 SELECT nasabah.id_nas,
    nasabah.pekerjaan_nas,
        CASE
            WHEN nasabah.pekerjaan_nas = 'Ibu Runmah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'PNS'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Loper Koran'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Broker'::bpchar THEN 'D'::text
            WHEN nasabah.pekerjaan_nas = 'POLRI'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Bantu Usaha Keluarga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai BUMN'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Swasta'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Wiraswasta'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Pemkot Bdg'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan POLRI'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Honor'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Honorer'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Studi S2'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tanga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Belum Bekerja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan PNS'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Sopir'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Financial Consultan'::bpchar THEN 'A'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Renang'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Privat'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Buruh'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Mengelola Kontrakan'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Anggota DPRD'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Sudah Tidak Bekerja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BPKP'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pembuatan Pompa Air'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Dosen'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Rohaniawan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu rumah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pedagang'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Telkom'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Polri'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Supir Pribadi'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Karyawan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Freelance(Asuransi)'::bpchar THEN 'H'::text
            WHEN nasabah.pekerjaan_nas = 'POLISI'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Rohaniawan Gereja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai Swasta'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Usaha Keluarga'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Mengaji'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Investor'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Privat'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Mahasiswa'::bpchar THEN 'M'::text
            WHEN nasabah.pekerjaan_nas = 'Pembantu Rumah Tangg'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pendeta/Pelayanan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Wiraswasta'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Petani'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Toko Kelontong'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan TNI'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Mengurus Rumah Tangg'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu RT'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Badan Pengawasan'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter Umum'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'TNI'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Pembantu'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Profesi Dokter'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Jualan Eceran'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Freelance'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Makelar'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Sudah Tidak bekerja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pedagang Eceran'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BNI'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Agen (Partime)'::bpchar THEN 'H'::text
            WHEN nasabah.pekerjaan_nas = 'Yayasan Pendidikan'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan PNS Pusat'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Kelola Usaha Keluarg'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'pensiunan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Profesi'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Guru'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan / PNS'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Advokat'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Notaris'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Asuransi'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Tidak Bekerja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pelajar/Mahasiswa'::bpchar THEN 'M'::text
            WHEN nasabah.pekerjaan_nas = 'Karyawan BUMN'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pengangguran'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ikut Ortu/Nganggur'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'ibu Rumah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Buruh Harian Lepas'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'ABRI/TNI'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Pensuinan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Purnawirawan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'TNI AD'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Pastor'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Tetap Yayasan'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter Swasta'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Tabib'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pengerja di Gereja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai Honorer Peme'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Dagang'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Belum Sekolah'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pendeta'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'TNI/POLRI'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu rumah tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BUMN'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Lainnya'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiun'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Guru'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pemilik Toko'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Kepolisian'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Profesional'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'IRT'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tannga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Polri'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Honor'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Polisi'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Konsultan Manajemen'::bpchar THEN 'G'::text
            ELSE 'Z'::text
        END AS code_jenis_pekerjaan
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_12_pekerjaan_nas
  OWNER TO postgres;
-- View: public.sigma_tdmin_13_jenisusaha_nas

-- DROP VIEW public.sigma_tdmin_13_jenisusaha_nas;

CREATE OR REPLACE VIEW public.sigma_tdmin_13_jenisusaha_nas AS 
 SELECT nasabah.id_nas,
    nasabah.jenisusaha_nas,
        CASE
            WHEN nasabah.jenisusaha_nas = 'Alkes (Alat Kesehatan)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli Ban'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Mainan Anak-anak'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sprei dan Bed Cover'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Keramik'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan & Industri Produksi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Sembako & Suplier Mesin Pabrik'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Kain'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industry'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa properti'::bpchar THEN '8119'::text
            WHEN nasabah.jenisusaha_nas = 'Optik'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penyiaran'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Teknologi Nuclear'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Kebun Sawit'::bpchar THEN '1145'::text
            WHEN nasabah.jenisusaha_nas = 'Farmasi / Distributor Obat'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Rumah Kayu'::bpchar THEN '3410'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Rumah Tangga'::bpchar THEN '9970'::text
            WHEN nasabah.jenisusaha_nas = 'Sekolah Musik'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Jaket'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Komunikasi'::bpchar THEN '7400'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Ban'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Mitshubitshi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Asuransi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Proyekan'::bpchar THEN '6180'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi Jaket'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Manufaktur'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kain'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sparepart Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaian Jadi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Sate'::bpchar THEN '6325'::text
            WHEN nasabah.jenisusaha_nas = 'Furniture'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Alat Rumah Tangga'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Majalah & Koran'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penyediaan Beras Dalam Skala Nasional'::bpchar THEN '6416'::text
            WHEN nasabah.jenisusaha_nas = 'Bunga Potong'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Koran'::bpchar THEN '6415'::text
            WHEN nasabah.jenisusaha_nas = 'Transpotasi'::bpchar THEN '9960'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Jagung'::bpchar THEN '1117'::text
            WHEN nasabah.jenisusaha_nas = 'Home Care'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkut'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdaganagn'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Publik'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Properti'::bpchar THEN '9950'::text
            WHEN nasabah.jenisusaha_nas = 'Suplemen Makanan'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Multimedia'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah sakit'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Jasa Komputer dan Internet'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Makanan Ringan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Restaurant'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Kelistrikan'::bpchar THEN '5890'::text
            WHEN nasabah.jenisusaha_nas = 'Kost Kost an'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang (Matrial)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sparepart'::bpchar THEN '3922'::text
            WHEN nasabah.jenisusaha_nas = 'Progremer'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Sepatu'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Tulis Kantor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'LSM'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Interior Design'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Karoseri Kendaraan'::bpchar THEN '3932'::text
            WHEN nasabah.jenisusaha_nas = 'Bubut'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-Alat Tulis'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Diapers'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Rokok'::bpchar THEN '6322'::text
            WHEN nasabah.jenisusaha_nas = 'Pemerintahan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kue - kue'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kertas sembahyang'::bpchar THEN '3510'::text
            WHEN nasabah.jenisusaha_nas = 'Makloon Kain'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Bubur Ayam'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Pelayanan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Yayasan Sosial'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Farmasi'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Aksesoris Garment'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Perdaganga Umum'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Salon'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Ambokweh (Makanan)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Paralatan Bayi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Rajut/ Konveksi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Online'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Teknik Engineer'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Kebun&Pabrik Pengolahan Teh Hijau'::bpchar THEN '1147'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Obat Pertanian'::bpchar THEN '6412'::text
            WHEN nasabah.jenisusaha_nas = 'Mahasiswa'::bpchar THEN '9310'::text
            WHEN nasabah.jenisusaha_nas = 'Pertambangan Minelar & Batu Bara'::bpchar THEN '2300'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sembako'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Bakar'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Produsen Obat'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Gesper'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Restauran'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Isi Ulang Air'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan/Bakery'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Indurtri Pengolahan Limbah B3'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Handphone'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Consultan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual kembang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tesktil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Kepolisian'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Toko ATK'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Besi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Simpan pinjam'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Komputer'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Meubel'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Handuk'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Umum Dan Jasa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Ekspedisi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Industry'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Catering & Sembako'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Masakan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Barber Shop'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Fitness'::bpchar THEN '1390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tenaga kerja'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Jerigen Dan Drum'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Air Minum Mineral'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Barang dan Jasa'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Makelar'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan/Kost kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Air'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Ikan Asin'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel & Toko'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pizza Hut'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kuliner Texas F.C'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pupuk'::bpchar THEN '6412'::text
            WHEN nasabah.jenisusaha_nas = 'Kantor Kelurahan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Truk'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Cosmetic'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penyedia Barang Dan Jasa Seragam Kantor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Acsesoris Mobil (Velk Dan Ban)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Angkot & Kostan'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan (Supplier Bahan Bangunan)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Usaha Suami'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Buruh'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Komunikasi'::bpchar THEN '7400'::text
            WHEN nasabah.jenisusaha_nas = 'Sablon/Percetakan'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Transportir'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Rohaniawan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Tekstil (Kain)'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Cleaning Service'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kantin dan Jasa Kontrakan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Perawatan Suku Cadang Pesawat Terbang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Stationary'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Textile'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Outsorching'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Voucher & Kreditan Electronik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Retail HP'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Nasi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Rongsokan/Logam'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Auditor'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaian Anak Dan Bayi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Design Grafis'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Onderdil Bengkel Sparepart'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Gas'::bpchar THEN '4200'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Studio Foto'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Elektronik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Militer/TNI'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Sembako'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa penerbangan'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Retailer Kertas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Gangguan Listrik'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Mebel'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Jahitan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Paket'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Suppier Makanan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Warung/Toko'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industry (Kaos)'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Boneka'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Hitpam/Water Heater'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Café'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Mata Uang / Forex'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Notaris'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sepeda'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kapas'::bpchar THEN '6413'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Pakaian Jadi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Vaksin Ayam'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sayur'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Kantor Pemerintahan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kertas'::bpchar THEN '6415'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan ( agen Sayuran)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Rajut'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Pembangkit Listrik'::bpchar THEN '4190'::text
            WHEN nasabah.jenisusaha_nas = 'Textil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Exportir'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourcing'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Design Int. & Arsitektur'::bpchar THEN '6180'::text
            WHEN nasabah.jenisusaha_nas = 'Pemasok Perlengkapan Pabrik'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Les Piano'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kosan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Accessories Garmen'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Keuangan (Perbankan)'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Voucher Pulsa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Majalah'::bpchar THEN '6415'::text
            WHEN nasabah.jenisusaha_nas = 'Cash Center'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Security System'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Transportasi Laut ( Pelayaran)'::bpchar THEN '7130'::text
            WHEN nasabah.jenisusaha_nas = 'Litbang'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Developer'::bpchar THEN '8120'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penerangan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pelayaran'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Ice Cream'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Studio Foto & Rekaman'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Furniture'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Garment Sprei'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Sepatu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Bahan Makanan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pembuatan Mesin'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengelasan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Minuman (juice)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'PNS'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Tata Ruang dan Cipta Karya'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Alat-alat Instalasi Gas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Mekanikal Elektronik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Air'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Service Computer'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sayuran'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Listrik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Minuman'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bangunan dan Furniture'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor, Hasil Textile, dll'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Garmen'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Vocher Pulsa, HP. Accessories'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Internet'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan kapas untuk benang'::bpchar THEN '6318'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Hotel'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Sopir'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Minuman'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Baso'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kue Kering'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Retail'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Obat dan Peralatan Sekolah'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pariwisata'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor/Trading'::bpchar THEN '6180'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Handuk'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Benang'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Variasi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Pakaian'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-Alat Masak'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Air Mineral'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Mesin'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tour dan Travel'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'IT'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Poles Velg'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jamu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Musik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kuliner'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kerupuk'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Karung'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan-Pelatihan'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaian'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemasangan Kaca Film'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kecil'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Komputer'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Instalasi sound system'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Snack'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'kost'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Faksin'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Telpon'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah Makan'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Logistic'::bpchar THEN '7300'::text
            WHEN nasabah.jenisusaha_nas = 'Gypsum'::bpchar THEN '3710'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Showroom mobil'::bpchar THEN '9960'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Media Iklan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor (Listrik)'::bpchar THEN '5890'::text
            WHEN nasabah.jenisusaha_nas = 'Online Shop Makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengobatan Alternatif'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Perindustrian'::bpchar THEN '3990'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Accu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Dekorasi & Kue Tart'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Alat Musik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang (Warung)'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Export Import'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Bidan'::bpchar THEN '9210'::text
            WHEN nasabah.jenisusaha_nas = 'Karaoke'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Devloper Perumahan'::bpchar THEN '8119'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Kimia'::bpchar THEN '3640'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Tekstil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Buah-buahan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Entertain'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Toko'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pendanaan'::bpchar THEN '8300'::text
            WHEN nasabah.jenisusaha_nas = 'Order Barang Plastik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Baso'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Plastik'::bpchar THEN '3630'::text
            WHEN nasabah.jenisusaha_nas = 'Asuransi dan Investasi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Fashion & Accessories'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Katering'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Arsitek'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Parkir'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tower'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Mobil'::bpchar THEN '9960'::text
            WHEN nasabah.jenisusaha_nas = 'Cuci Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Bantal (Supllier Bantal)'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Makanan (Snack)'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Pakaian'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Jamu'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Tempat Hiburan'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Baso'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Baro'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Kelontongan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penginapan ( Hotel )'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'TV Kabel'::bpchar THEN '3923'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan (Warung)'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Warung/Jual Susu Keliling'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Service'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Peralatan RS'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'PLBS'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel kontruksi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Lapas'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Majun'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'ProduksiTas'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Produksi Biskuit'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Lilin'::bpchar THEN '3640'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pendidikan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Nutrisi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Geologi dan Museum'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengangkutan Semen'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Perlengkapan Rumah Tangga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Alat alat tidur'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Photografi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Listrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Perlengkapan Hotel'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Sparepart Tekstil & Mobil'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Spartpart Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Dan Service AC'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'POLRI'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Weeding Organizer'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Leasing'::bpchar THEN '8300'::text
            WHEN nasabah.jenisusaha_nas = 'BUMN'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Wiraswasta'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Migas'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Tas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Textille'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Fashion'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penyablonan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Kertas'::bpchar THEN '3510'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Elpiji'::bpchar THEN '4200'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Sekolah Penerbangan'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Kayu'::bpchar THEN '3410'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bimbingan Belajar'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Besar'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Es Krim'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Reset Penerapan Budaya'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'pemerintahan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penyebar Rohani'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Bahan Baku Printing'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perencanaan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Umum / Pakan Ternak'::bpchar THEN '3200'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Rajut'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Mabeul'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan Teknik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Servis Motor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah Susun'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Karet Ban'::bpchar THEN '3670'::text
            WHEN nasabah.jenisusaha_nas = 'Galon Isi Ulang'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Kayu/Peti Kemas'::bpchar THEN '3410'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Umum,ATK'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perawatan Gedung'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Bangunan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Akuntan'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan barang-barang bekas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Epor & Impor'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Accessories Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengrajin Perhiasan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Wirausaha'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Percetakan Sablon'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Dan Pemeliharan Gedung'::bpchar THEN '6180'::text
            WHEN nasabah.jenisusaha_nas = 'Digital Musik'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sparepart Alat Musik'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli emas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Kapur'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kelontongan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Keramik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Furniture'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Provider'::bpchar THEN '7400'::text
            WHEN nasabah.jenisusaha_nas = 'Limbah'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa angkutan barang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Alat-alat Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Kelontong&Wartel'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourching Jasa Keamanan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pembantu'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Travel Haji&Umroh'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Perhiasan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toserba'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produk stock fashion'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Meubeul'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Toko ATV / Motor'::bpchar THEN '9960'::text
            WHEN nasabah.jenisusaha_nas = 'Sembako/Rokok'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli karpet'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'PNS Kepolisian'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Bank'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Akuarium'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tentara'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industri Tahu Tempe'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelukis Pasir'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Restoran Kapal Pesiar'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan & Jasa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Sparepart Sepeda Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier / Bengkel'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Makanan Dan Minuman'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Antena'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa alat Telekomunikasi'::bpchar THEN '7400'::text
            WHEN nasabah.jenisusaha_nas = 'Photografer'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Plastik & Karet'::bpchar THEN '3630'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuat Peti Kemas dan Palet'::bpchar THEN '3410'::text
            WHEN nasabah.jenisusaha_nas = 'PT TElkom'::bpchar THEN '7400'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kendaraan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'konveksi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Aursourching'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Design'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kecantikan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pulsa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Driver Bus'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Oli'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Garment'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Spare Part'::bpchar THEN '3932'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Tas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang ATK'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Onderdil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Spare part'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Tas'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Kimia'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Ekspedisi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Tas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier ayam'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Event Organizer'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Sepatu'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Plastik'::bpchar THEN '3630'::text
            WHEN nasabah.jenisusaha_nas = 'Printing Textil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Mesin Bor'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Sepatu'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Biro Perjalanan'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Kredit barang'::bpchar THEN '8300'::text
            WHEN nasabah.jenisusaha_nas = 'Militer'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Aksesoris Handphone'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Isi Ulang Air Minum'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Mainan Anak'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Alat Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Praktek Dokter'::bpchar THEN '9210'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Genteng'::bpchar THEN '3720'::text
            WHEN nasabah.jenisusaha_nas = 'Konvekasi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa management Hak cipta lagu'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Interior Pesawat'::bpchar THEN '9960'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Galon'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Penginapan'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan Argo Pertanian'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart Computer'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstile'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Pemyalur Koran'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-alat Bangunan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Onderdil Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Korek AP/Gas'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Play Station'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Wedding Organizer'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Furniture'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Peedagangan Kelontongan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'MLM (Multi Level Marketing)'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perindustrian Pesawat'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Transportasi'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli Kain Kiloan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'pengeboran'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Textile (Toko Kain)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bed cover'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kue'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Pakaian Olah Raga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Busa'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Kos -Kosan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Butik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Properti'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Farmasi'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Outdoor - Adv'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'MLM (Multilevel Marketing)'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Elektronik'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Trading'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Perumahan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Textile'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Karet Mesin'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penerjemah'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan seragam dan tas sekolah'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Rajut'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alat-alat Listrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Kopi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perajutan dan Pencelupan'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Semen'::bpchar THEN '6411'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Jual Beli Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Logam'::bpchar THEN '3890'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perhotelan'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Hasil Tambang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Baju Anak'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kerupuk'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Apartement'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaia Batik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Keuangan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Optik & Obat - Obatan'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Modem'::bpchar THEN '7400'::text
            WHEN nasabah.jenisusaha_nas = 'Pakaian Jadi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perkreditan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penjahit'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Tahu'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Distributor Bawang'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Catering& Pengadaan barang'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa-TNI'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Printing'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pemerintahan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Mesin'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Laboratorium'::bpchar THEN '3990'::text
            WHEN nasabah.jenisusaha_nas = 'Material Building'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Teknik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Nilon'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Asuransi Jiwa'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Menjahit'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan sandal dan sepatu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Tas'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bunga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Warung/kiostel/kelontongan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Game Online'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Minuman'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Klinik'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan Seafood'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Alat listrik'::bpchar THEN '4190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan / Kos kosan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Mebel Kayu'::bpchar THEN '3410'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Baju Anak'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Tekstil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Hiburan Permainan'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Baju'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Café & Resto'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Textil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Kantin'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'SDM'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Baby Products'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Kos - kosan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Pencil'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Travel/Orthopedi'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'jasa kemasyarakatan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Hotel & Entertain'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'Investasi Saham'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perhotelan dan olahraga'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Distributor Kebutuhan Rumah Tangga'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Konveksi Dompet'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Ayam Potong'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kelontong'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Furnitur'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Klontongan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Outsourching Security'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penggilingan Padi'::bpchar THEN '1111'::text
            WHEN nasabah.jenisusaha_nas = 'Menjahit Kaos dan Jaket'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart HP'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pemborong Rongsokan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Minuman'::bpchar THEN '3160'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kain Kiloan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industry Kaos'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'warnet'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jual makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tidak Ada'::bpchar THEN ''::text
            WHEN nasabah.jenisusaha_nas = 'Jual Bel Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Mesin'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah Ibadah'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Informasi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Cattering&Associated Service'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Marketing'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kosmetik'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Supermarket'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Pemerintahan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Periklanan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Welding Kontraktor & Konsultan electricity'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Air Minum & Gas'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Interior / Teknik Logam'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Sosis'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Ibu Rumah Tangga'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Parawisata'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Keungan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Kain'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Suplair Labotarium'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Barang'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Minuman'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Busa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Jean & Gordyn'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Properti'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Biro Jasa'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Desain Interior'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang ayam potong'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultasi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Garment'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Kos-kosan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Pelajar'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdaganan Makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang / Toko Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sangkar Burung'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Meuble'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Call Centre Telkomsel'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Pelatihan TNI'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Pewarnaan Celana Jeans'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Production House, Advertising'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kedokteran'::bpchar THEN '9210'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Pakaian'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Industri'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Restoran'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan /jual Kelapa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Plastik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tepung Tapioka'::bpchar THEN '3110'::text
            WHEN nasabah.jenisusaha_nas = 'Network'::bpchar THEN '7400'::text
            WHEN nasabah.jenisusaha_nas = 'Petani'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengiriman Kargo'::bpchar THEN '7140'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Roti Bakar'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Kayu'::bpchar THEN '3410'::text
            WHEN nasabah.jenisusaha_nas = 'Tempat Les'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penelitian dan Pengembangan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rumah Kost Kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Karpet'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pertokoan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan barang dan Jasa ATK'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Teknologi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Manufacture'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Jahit'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penelitian Jalan Dan Jembatan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Lencana'::bpchar THEN '3390'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Accessories & Bengkel Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Tapioka'::bpchar THEN '6418'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Pavling Blok'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Sosial'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourcing Security'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Loundry'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Garment & Tekstil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Konveki'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Oli'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstil/Jual kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang kue'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'salon'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Apoteker'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Travel'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kue'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Tata Usaha'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan-Perguruan Tinggi'::bpchar THEN '9310'::text
            WHEN nasabah.jenisusaha_nas = 'Make Up dan Wedding Organizer'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Pakaian'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan Tempat Les'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Garmen kaos'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Pariwisata'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Bunga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Jam & Alat Rumah Tangga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli HP'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pialang Saham'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Daging Babi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Telekomunikasi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Tanah'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Jahit'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang sembako'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Sayuran'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Pengrajin Boneka'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart Motor'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kontraktor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Masyarakat'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Kecap, Minuman, Gas Elpiji'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Konstruksi Dan Perdagangan'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Penyortiran Teh'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Rental'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kue Kering'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Gas Elpiji'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Distribtor Minuman/Bandrek Sunda'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Veterinary (Formasi Peternakan)'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Garmen & Print'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Ikan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Texstil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Online Shop'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Agen telor'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perkayuan yang diolah menjadi kursi meja'::bpchar THEN '3410'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Garment'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa (Pemeliharaan Kereta Api)'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Makanan (Biskuit)'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Mekanikal Electric'::bpchar THEN '4190'::text
            WHEN nasabah.jenisusaha_nas = 'Rental PS'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Distributor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Emas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tours & Travel'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Instalasi Listrik'::bpchar THEN '4190'::text
            WHEN nasabah.jenisusaha_nas = 'Guru Les Renang'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Kain Trading'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Logam'::bpchar THEN '3810'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Irigasi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor design interior'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Obat-obatan'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Pengawasan Bangunan'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Dirtributor Barang Rumah Tangga (Plastik)'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas kebakaran'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Baju Muslim'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor dan Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Akuntan'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Kapal Pesiar'::bpchar THEN '7130'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor (Suplai bahan)'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Reklame'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Boneka dan Baju'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Biskuit'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Percetakan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Kost- Kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan beras dan tembakau'::bpchar THEN '6311'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industri'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kerupuk Palembang'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko HP'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Emas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah Sakit'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Nasi Goreng'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tender'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Hiburan'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Air Minum'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Sate'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Entertaiment'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Rumah'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Fotografi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Menjahit'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Taylor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kost-Kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rental'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pembuatan Jok'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Konveksi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Instansi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang (Toko Grosor)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Makanan'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Sprei'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kantor Kecamatan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Teknik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstil Interior'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Promosi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Minuman Jamu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Minuman Kemasan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Peternakan Ayam potong'::bpchar THEN '1171'::text
            WHEN nasabah.jenisusaha_nas = 'Kredit Barang'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Daging'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Spare part motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Terigu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Handphone'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Pasar'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kuliner'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Makloon Pengecetan Teplon'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perpustakaan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Garment & Konveksi'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'konsultan perencanaan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa pengobatan'::bpchar THEN '9210'::text
            WHEN nasabah.jenisusaha_nas = 'Investasi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Alat Alat Kesehatan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Alat Kunci'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rental Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Sorum & Sparepart'::bpchar THEN '3922'::text
            WHEN nasabah.jenisusaha_nas = 'Security/keamanan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Batang Sepeda'::bpchar THEN '3990'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Bid. Limbah'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Kredit Barang Perorangan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'PLTA'::bpchar THEN '4190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Gas Elpiji'::bpchar THEN '4200'::text
            WHEN nasabah.jenisusaha_nas = 'Ternak Ayam'::bpchar THEN '1171'::text
            WHEN nasabah.jenisusaha_nas = 'Asuransi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Baterai'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Gereja'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Loper Koran'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Otomotive'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kue Kering'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Solar'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Sayuran'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Tulis dan Listrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alat Listrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'asa Akuntan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Eceran'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Accesoris HP'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penerbangan'::bpchar THEN '7140'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengajar'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Bed Cover'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Cat'::bpchar THEN '3990'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Barang'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Kesenian'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Hasil Bumi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Pakaian dan Tas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Bangunan'::bpchar THEN '5190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pendidikan'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Gabus Keju'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Farmasi'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan BBM'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Listrik'::bpchar THEN '4190'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Alkes'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Pertambangan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan Arsitek dan Konstruksi'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan barang dan jasa'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perkeretaapian'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Pemkot Cimahi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi/Pakaian Batik'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Marmer'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pencucian Baju'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Chemical'::bpchar THEN '3640'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Baju'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Pompa Air'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Kesehatan'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Martabak'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Baja'::bpchar THEN '3810'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Baju'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Mesin'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dokter'::bpchar THEN '9210'::text
            WHEN nasabah.jenisusaha_nas = 'Sanck'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel, Cafe, Butik'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Wallpaper'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Minuman'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengiriman Barang'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Entertainment'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Baut'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Mukena'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Agen LPG'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli mobil'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kesehatan Akupuntur'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Celana'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Programer'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Spare Part Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Textille'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Yamaha'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'ATV/ Motor'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Retail (Indomaret)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Telur'::bpchar THEN '6325'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Tahu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier alat teknik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Showroom'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Baju'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pertambangan'::bpchar THEN '3810'::text
            WHEN nasabah.jenisusaha_nas = 'Media Informasi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Alat Rumah Tangga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Phone Celluler Shop'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rias'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Online Store'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengrajin Gitar'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Grafis Design'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Cat'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan loyang kue'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Sayur'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaian/Toko Online'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Expor Karung'::bpchar THEN '6179'::text
            WHEN nasabah.jenisusaha_nas = 'Penggilingan Hasil Bumi'::bpchar THEN '3990'::text
            WHEN nasabah.jenisusaha_nas = 'Service Jok / Cover Set'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Notaris'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Makanan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penginapan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Kesehatan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Service Electronic'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Etalase'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Terapis'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Alat rumah tangga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'dagang Kelontongan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Logistik'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sparepart'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengeboran Air'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Umum'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Pemintalan Benang'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Air'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Laundry'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Makanan'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Consumer Goods'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Koran'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sopir'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Plastik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Pakaian'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Kenteng'::bpchar THEN '3720'::text
            WHEN nasabah.jenisusaha_nas = 'Perkebunan'::bpchar THEN '1159'::text
            WHEN nasabah.jenisusaha_nas = 'Electronic'::bpchar THEN '3932'::text
            WHEN nasabah.jenisusaha_nas = 'Kertas Sembahyang'::bpchar THEN '3510'::text
            WHEN nasabah.jenisusaha_nas = 'Maskapai Penerbangan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Darat&Agen Gas Elpiji'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Jahit Busana'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart AC'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Expor-Impor'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Aksesoris Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Meubel'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kue-Kue Kering'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Tahu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Eceran'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Bahan Bakar'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Reparasi Tas'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kementrian Pekerjaan Umum Perumahan Rakyat'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Koperasi Simpan Pinjam'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor dan perdagangan umum'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Kost kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Percetakan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Antar jemput sekolah'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perjalanan'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Keamanan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Bikin Kue'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Barang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Textil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik AC'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Telur'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Handuk'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kredit Perabot'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Jamu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Las'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penerbitan Buku'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Kosmetik'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Sanggar Senam & Fitness'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan alat listrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Travel dan Penyewaan BIS'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Service Motor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pendingin'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pakaian Olahraga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Plastik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Chemical'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jenis Percetakan'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kue'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengemudi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pulsa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Outsorce'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Hukum'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bengkel Motor dan Pengadaan Sparepart'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual pakaian'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Cleaning Service'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pulsa Dan HP'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Sesko TNI'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Bakso'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Makloon'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Textile'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Barang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pelayanan Kesehatan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Mebel'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Kecantikan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penyewaan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Air Jerigen'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Variasi Velg'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Bahan Bangunan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Buku & Percetakan'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Oli Bekas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Gitar'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Perbankan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Makanan'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Konfeksi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli karpet'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Susu Formula'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Es'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Sembako'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Masyarakat'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pelayanan Pajak'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Periklanan & Kontraktor'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sablon'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Instalasi AC'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Alat-alat Konveksi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Transportasi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur Pesawat Terbang'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sekuruti'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Minyak & Gas'::bpchar THEN '2100'::text
            WHEN nasabah.jenisusaha_nas = 'Textile/perdagangan'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik the'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur Springbed'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Fakultas / Pendidikan'::bpchar THEN '9310'::text
            WHEN nasabah.jenisusaha_nas = 'Cat'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Cat Sablon'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Peralatan Sekolah'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Kebersihan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Sewa tempat olahraga'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Tambang Minyak'::bpchar THEN '2100'::text
            WHEN nasabah.jenisusaha_nas = 'Kapas'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Agrobisnis'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengadaan Barang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Persdagangan Makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Warung'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pasang Jok Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Showroom Mobil'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kue Dan Roti'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Sparepart'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Transportasi'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor/Supplier'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Institusi Penguji Alat Kesehatan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Barang Rumah Tangga dan Elektronik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Mobil & Jual Daging'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sosial'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Sambal KFC'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Digital Printing'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sate'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kaca'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pegawai'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Kost'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Distributor Makanan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Otomotif'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Listrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pemadam Kebakaran'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Komputer'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor Bekas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kejaksaan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Sembako'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Investor Proyek'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Restourant'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Software'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Sabun'::bpchar THEN '3640'::text
            WHEN nasabah.jenisusaha_nas = ' Makloon Pengecetan Teplon'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Beras'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tambak Udang'::bpchar THEN '1167'::text
            WHEN nasabah.jenisusaha_nas = 'Interior'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Spare Part'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli Elpigi 3Kg'::bpchar THEN '4200'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Pakaian & Sepatu'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Surat Kabar'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Fotocopy'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Gas'::bpchar THEN '4200'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rajut'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Jaket'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bengkel'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Kue'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Lembaga Dewan Koperasi'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Arang'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Garmen'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Kacang Kedelai'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Senjata'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Plastik'::bpchar THEN '3630'::text
            WHEN nasabah.jenisusaha_nas = 'Layanan Kesehatan'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Body Anti Karat'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Klontongan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Beverage&Food'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Minimarket'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'distributor Obat-obatan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Kain Majun'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Spare part'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan dan Jasa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan Rumah'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Furniture & Interior'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kontruksi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi Mesin'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Air Minum'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Universitas'::bpchar THEN '9310'::text
            WHEN nasabah.jenisusaha_nas = 'Instalatir'::bpchar THEN ''::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat-alat rumah tangga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor & Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidkan'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pertamanan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Barang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kementrian Agama'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Air Minum'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Limbah Kertas'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Barang, Bengkel Sparepart'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pendidikan-Jasa'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Spare Part'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Stokist'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Keuangan/Perbankan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bordir'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Media Massa'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kost-kost an'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Keramik'::bpchar THEN '3730'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Tekstil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penyedia Minya Bumi'::bpchar THEN '2100'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Pesawat Terbang'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tempat Tinggal'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Jula Beli Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Apartement'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Handphone'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Motor Bekas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kantor Hukum'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Medical'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sepatu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kerupuk'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rangkai Bunga'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pemerintahan Daerah'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Daging'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Agen PPOB'::bpchar THEN ''::text
            WHEN nasabah.jenisusaha_nas = 'Industri Batu Bara'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan kue'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Stiker'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Ayam'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi Baju'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Salon Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengamanan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Bubut'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Perabot Rumah Tangga dan penyimpanan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Mainan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Seni'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sepatu Sandal'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Hotel'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Telepon'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Listrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Media Masa'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart Kendaraan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Aksesoris Kendaraan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi pesawat'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Peralatan Salon'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Karpet'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Polri'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Perhotelan'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Desain Grafis'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'makanan'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan rumah'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Sipil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Mobil Bekas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Sayuran'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan Ringan'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Garmen Retail'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Cat'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pengisian Gas'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengiriman'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kue'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Clothing'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Keagamaan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alumunium'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kacamata'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Laundry'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Daur ulang plastik'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Sembako'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Daur ulang majun (kain perca bekas)'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Baso'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli besi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Karyawan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Barang Bekas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Cat'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Warnet Games'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kontrakan Rumah'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'manufaktur'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Kontraktor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kelontongan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Coffee Shop'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'JasaKos-Kosan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Filterisasi Pengolahan Limbah'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Perkebunan Jamur Tiram'::bpchar THEN '1159'::text
            WHEN nasabah.jenisusaha_nas = 'Pembiayaan'::bpchar THEN '8300'::text
            WHEN nasabah.jenisusaha_nas = 'Jamur'::bpchar THEN '1159'::text
            WHEN nasabah.jenisusaha_nas = 'Sanggar Senam'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor & Property'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Agar agar'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Aksesoris'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Cutting Dies'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Keju'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Audit'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Makanan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Ikan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi The'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kusen'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli barang elektonik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Industri Pengolahan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourching'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kelontong'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Cat Tembok'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur Furniture'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Les Privat'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Rongsokan/Limbah'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Chiki'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Faksin Unggas'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Karet'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan & Kontraktor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Property Perum'::bpchar THEN '8111'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Material'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Fashion'::bpchar THEN '3220'::text
            WHEN nasabah.jenisusaha_nas = 'Catering'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Gas Elpiji'::bpchar THEN '4200'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Logam'::bpchar THEN '3890'::text
            WHEN nasabah.jenisusaha_nas = 'Textile (Pemintalan)'::bpchar THEN '3110'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemandian Kolam Renang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan ( Rakit Mesin Printer Sablon)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dept. Store'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Kertas'::bpchar THEN '3510'::text
            WHEN nasabah.jenisusaha_nas = 'Daur Ulang Plastik'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konstruksi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Ekspedisi Via Transportasi Udara'::bpchar THEN '7140'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Tour & Travel'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Alat Elektronik'::bpchar THEN '3923'::text
            WHEN nasabah.jenisusaha_nas = 'Guru'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'Buruh Bangunan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Taxi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Alat Listrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Telur'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Koperasi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Stocklot Pakaian'::bpchar THEN ''::text
            WHEN nasabah.jenisusaha_nas = 'Badan Kehutanan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Bangunan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Bubut Sparepart Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kost - Kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Baju&Skin Care'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli & Service Elektonik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'TNI AD'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Kue (makanan)'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Matrial'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pariwisata'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Kamasan / Dagang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Trading'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Pensiunan Guru'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Militer Pemerintahan TNI'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Meubeul'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Alat Perkebunan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pijet'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Mesin Pabrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Susu kemas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Jagung Manis'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Eskrim'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Parafin'::bpchar THEN '3640'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Panci'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Property'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Baso'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Retail'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Dystuff'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Medis'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kue'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'afe Resto'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Gorengan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Limbah Plastik'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Indutri'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Sayur'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kosmetik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Minyak'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Expedisi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Besi Tua'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rias Pengantin'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Talang Saham'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pengajar'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Konstruksi'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Bukan Lapangan Usaha'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Sablon'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Cattering'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Knitting (Pemintalan Benang)'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Tk kelontong'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Sparepart Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penukaran Uang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Penumpang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Angkut'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Anggota DPRD'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Benang'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan Kering/Membuat Kue'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur Logam'::bpchar THEN '3890'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor (Bahan Bangunan)'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Mesin Fotocopy'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Service Manufaktur'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'RESTORAN'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Aki'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengiriman Barang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Batu'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Agro Bisnis'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Ternak Anjing'::bpchar THEN '1179'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa/ Badan Keagamaan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Koperasi Karyawan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kue - kue'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Tekhnik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Kerudung'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Rental VCD & Sound System'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'jual Pulsa dan Masakan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Ayam'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Buku'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Washing'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Guru Privat'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan asesoris'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penelitian'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Bahan Kue'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Rel Kereta Api'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'ATK'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'TNI'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Produksi Kursi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Klinik Medis'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor dan Developer'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Tektil'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Bacang'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Bahan Kimia'::bpchar THEN '3640'::text
            WHEN nasabah.jenisusaha_nas = 'Kue Kering'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengiriman Barang/ Ekspedisi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Warnet'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Marga'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Mabeul'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Gas Elpiji'::bpchar THEN '4200'::text
            WHEN nasabah.jenisusaha_nas = 'Photografi & Toko Baju'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Pakaian'::bpchar THEN '3220'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Rumah'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Showroom Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penggilingan Padi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perhubungan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Photografi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Spare Part Motor'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alat Rumah Tangga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Sepatu'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Advertising'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi/Alat2 Mobil'::bpchar THEN '3922'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Teknologi'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pendidikan-Perguruan Tinggi'::bpchar THEN '9310'::text
            WHEN nasabah.jenisusaha_nas = 'Kaos Kaki'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Material'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sepatu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa pendidikan'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Penerbitan'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Baso Sapi'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Kursi Logam'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Pembebasan Tanah'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor dan Distributor Bahan Bangunan'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Pembalut'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Direct Saling'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Teknik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Program Keluarga Berencana'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Tas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Fancy/Perkayuan'::bpchar THEN '3490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Outsourching'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Art Toys'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Air Minum Kemasan'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Elektronik'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Transportasi (Ojeg)'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Gudang Rongsok'::bpchar THEN '7300'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan-PTS'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Foto'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pemerintah Kota Bandung'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'dealer motor bekas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-alat Keperluan Rumah Tangga Kaca & Keramik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Scaff olding'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'perbankan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Besi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'isi ulang pulsa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Peternakan'::bpchar THEN '1179'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan IT'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Sewa Angkot'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Oli'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Alat Teknik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Baju Bayi & Dewasa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Mobil'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Petani Bunnga'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Trader Company'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Alumunium Dan Kaca'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Kue'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Even Organizer'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Resto'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Real Estate'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kelontongan'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Makanan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Sewa Los & Mangan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Baju Anak'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Telekomunikasi'::bpchar THEN '7400'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Sparepart'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'jual makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Aksesoris Mobil'::bpchar THEN '3922'::text
            WHEN nasabah.jenisusaha_nas = 'Medical Equipment'::bpchar THEN '3790'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan'::bpchar THEN '3200'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Kain'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'konsultan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penggilingan Baso'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Meubeul'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi Pakaian'::bpchar THEN '3220'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsuktan Geologi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'farmasi'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kesehatan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Batagor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan Barang & Jasa'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Iklan Reklame'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Es'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Accesoris'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kain'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Motor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Seluler'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Rokok'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Asesoris'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Catering'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-alat Laboratorium'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Export & Impor Kaos Kaki'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pemerikasaan Keuangan Negara'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Pakaian'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Yayasan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Periklanan Reklame'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Elpiji'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Busana'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'SPBU'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Nasioal'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Pertambangan Minyak'::bpchar THEN '2100'::text
            WHEN nasabah.jenisusaha_nas = 'Studio Musik'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perumahan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Service Elektronik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pajak'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pemeliharaan Mesin Pesawat Terbang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pencelupan Benang'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Hukum'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Beras'::bpchar THEN '6416'::text
            WHEN nasabah.jenisusaha_nas = 'Akunting Service'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Laboratorium'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Depot Isi Ulang'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'BBM'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kredit'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Elektronik (Laptop)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan bahan baku farmasi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bengkel Motor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Mesin-Mesin Pabrik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'kost-kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Pembersih Lantai'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Interior'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor/Pengadaan Barang'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Produksi'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Besi'::bpchar THEN '3810'::text
            WHEN nasabah.jenisusaha_nas = 'PLN'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur (Pembuatan Furniture)'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Besi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Kontrakan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengisian LPJ'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Motor Bekas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Pakaian (Toko)'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-alat Rumah Tangga'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Kesehatan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Perusahaan Celup'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Pensiunan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Velg&Ban'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Tahu/Jasa Jemputan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Ayam'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Peralatan Outdoor'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Pakaian'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Data Statistik'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Perhutani'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Retail/Distributor Computer'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan dan Minuman'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Kota'::bpchar THEN '7110'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Accessories Kendaraan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Las'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Oil & Gas Service'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengobatan Alternatif'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alat-alat Besi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Cathering'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Sorum'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Makanan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Alat Bubut'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengairan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Kehutanan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi Tas'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Obat-Obatan'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Panti Asuhan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Tahu'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Celana Jeans'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Clinic'::bpchar THEN '9220'::text
            WHEN nasabah.jenisusaha_nas = 'Property'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Hiburan Permainan'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Tahu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Barang Pecah Belah'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Bahan Baku Farmasi'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Pelatihan'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Keamanan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Ibu Rumah tangga'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Pengawasan Keuangan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Retail/Distributor Elektronik'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Apotik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pemakaman'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Sepatu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Alat - alat Kedokteran'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Cash & Kredit Elektronik'::bpchar THEN '8300'::text
            WHEN nasabah.jenisusaha_nas = 'Kue dan Kost an'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Parasut'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Rongsokan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'kontraktor lift'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstil Industri'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Obat-obatan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penyedia Tenaga Kerja'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perdagangan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Isi Ulang Air & Salon'::bpchar THEN '4300'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Rumah (mediator)'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Susu/Makanan'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Parkir'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kerupuk'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Baju Muslim'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Exterior Logam'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli Stanles'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'AMDK'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Elektronik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Technik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Onderdil Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Kawat'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan Barang'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan ATK'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Bahan Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tata Rias'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourcecing'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Teknik'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Mobil Honda'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Pupuk'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Obat'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Buku'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Outsouring'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perhiasan Perak'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Hasil Bumi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Bahan Makanan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Mebeul'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Sajadah'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Emas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Suplayer Sepatu'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'jual beras'::bpchar THEN '6311'::text
            WHEN nasabah.jenisusaha_nas = 'Hotel'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Tekstil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kue'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Umum dan Jasa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Barang Bahan bangunan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jewelery'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Cat Bangunan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi dan perkreditan'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Travel'::bpchar THEN '7200'::text
            WHEN nasabah.jenisusaha_nas = 'Konvbeksi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengeboran'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kerohanian'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Dep. Keuangan RI'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Fashion'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Kios/Jualan Buku'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Textil Jean'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli SP(spare part) Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perbankan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Depkeu'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Retail'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kost'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kelontonga'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Sembako'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Matrial /TNI'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kertas'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Konpeksi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Meubel'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kursi'::bpchar THEN '3410'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kayu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Counter Pulsa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pekerjaan umum'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Sound System'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'IT Developer'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Cattering'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Senam'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Packaging Makanan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sandal'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Krupuk'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemasangan lift'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Listrik'::bpchar THEN '4190'::text
            WHEN nasabah.jenisusaha_nas = 'Isi Ulang Pulsa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan otomotif'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Radio'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perpajakan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Olahraga'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Material'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Service Komputer'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perbakan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Gas dan Minyak'::bpchar THEN '4200'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Farmasi'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Soto'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Telor'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Aluminium'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Kulit Sapi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Ukir Tembaga'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Sepatu'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Polisi'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Kerajinan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Teknologi Informasi'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kos-Kosan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Ayam'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Automotif'::bpchar THEN '3922'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Aksesoris Kamera'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Kimia'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Solar'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Bahan Bangunan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Keuangan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Obat Obatan'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Simpan Pinjam (Serba Usaha)'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemerintahan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Perusahaan Benang'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'TOKO KEBUTUHAN SEHARI-HARI'::bpchar THEN '6500'::text
            WHEN nasabah.jenisusaha_nas = 'Departement Store'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Onderdil Motor'::bpchar THEN '3939'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bengkel Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kue-kue Kering'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan Barang dan Jasa'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Ayam Goreng'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Snack'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Mainan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jemputan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Security'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Obat & pakar Ayam'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Proyek Property'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Migas'::bpchar THEN '2100'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kain Textil'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Textile/Garment'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Gereja'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Bimbingan Belajar'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Senam'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Variasi Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Elektronika'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Meubeul'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Percetakan'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Filterisasi (Pengolahan Limbah)'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Obat Tekstil'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Air Minum'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Wedding Planner'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Oli'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Sekuritas'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Advokat'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'garment'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Roti'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Cat Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Sowroom Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penjahit Baju'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Hiburan'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Packaging'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'RM Chinese Food'::bpchar THEN '6610'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kemasyarakatan'::bpchar THEN '9900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor & Sparepart'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Cat Anti karat'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Umum'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Secure Parking'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kusen'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Photography'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Textile/Obat printing'::bpchar THEN '3110'::text
            WHEN nasabah.jenisusaha_nas = 'Freelance'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Perguruan Tinggi Swasta-Pendidikan'::bpchar THEN '9310'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Pakaian'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sayuran'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi Besi Baja'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Material Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'MILITER'::bpchar THEN '8200'::text
            WHEN nasabah.jenisusaha_nas = 'di bidang alat - alat kesehatan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Privat'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor HP'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Hotel'::bpchar THEN '6620'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Electronic'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Kovenksi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Inventarisasi'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli Komputer'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Makanan Dan Baju'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Elpiji'::bpchar THEN '6420'::text
            WHEN nasabah.jenisusaha_nas = 'Dewan Koperasi'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Peminjaman Uang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Accesoris Mobil & Motor'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kerajinan Tangan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Makanan & Pakaian'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kredit Barang'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Textile Rajut'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Manufakturing'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Pelatihan-Pendidikan'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kayu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Partisi Alumunium'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Rajutan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Alkes'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Bahan Baku Kue'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rental Truck'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan ( Retail )'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tenaga Ahli'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Baju'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Modifikasi Motor'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Chemicals'::bpchar THEN '3640'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Bunga Plastik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemancingan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Koran'::bpchar THEN '6415'::text
            WHEN nasabah.jenisusaha_nas = 'jasa pelayanan Pos'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Olah Raga'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Security'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kain Imitasi'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Media Cetak'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Automotive'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Computer'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Merk'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Bahan Bakar'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sepeda Anak'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Pembuatan Sepatu'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kerudung'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Marmer & Granit'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Audit'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Sarana Pertanian'::bpchar THEN '1390'::text
            WHEN nasabah.jenisusaha_nas = 'Pengeboran Minyak'::bpchar THEN '2100'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Toge'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Masker'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kereta Api'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Konveksi'::bpchar THEN '3320'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Tahu'::bpchar THEN '3190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Mie Baso'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Developer Perumahan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'MLM'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Tracking'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Spare Part Textile'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Mobil'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Benang'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan keuangan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Mesin Pisau'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Farmasi'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Tenaga Kerja'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Paket'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Agency Cleanning Service'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Company'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Transportasi Ojeg'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Finance'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'di bidang dokumentasi'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Ternak'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Studio Foto'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Bordir'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Body Repair'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Biskuit Khong Guan'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Bahan-Bahan Kue'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Warnet'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penjahit Pakaian'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Perlengkapan Daun Pintu'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Kost-kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Limbah Pabrik'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Kendaraan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Meubel Jati'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Bijih Plastik'::bpchar THEN '3630'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bubut'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Penerbit Buku'::bpchar THEN '3520'::text
            WHEN nasabah.jenisusaha_nas = 'Wedding Decoration'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Besi Tua'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan jasa komputer dan internet'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Plastik dan Lilin'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Minuman Ringan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = '-'::bpchar THEN '-'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadilan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Chemical'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli Mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bangunan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Toren Air'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Laundry & Kantin makan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Garment, Property, Trading'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Perbengkelan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Makelar Tanah'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Bahan Bangunan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'kos - kosan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Ayam Pootong'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Motor baru'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor(Suami)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'IT Consultan'::bpchar THEN '6190'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Barang'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Musik'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Textile'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Perlengkapan Militer'::bpchar THEN '6490'::text
            WHEN nasabah.jenisusaha_nas = 'Fiber Serat'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Show room mobil'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Penyewaan Gedung Olahraga'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Sekolah'::bpchar THEN '9390'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik & Kebun The'::bpchar THEN '1147'::text
            WHEN nasabah.jenisusaha_nas = 'Iklan'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Jasa'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Perhiasan'::bpchar THEN '3690'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagangan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Sewa Kostan'::bpchar THEN '8190'::text
            WHEN nasabah.jenisusaha_nas = 'CV (Penyedia alat Olahraga)'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pertanian'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Instansi Pemerintahan'::bpchar THEN '8900'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir makanan minuman'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Sayur'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = '0'::bpchar THEN ''::text
            WHEN nasabah.jenisusaha_nas = 'Obat'::bpchar THEN '3620'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Jalan'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Keagamaan'::bpchar THEN '9990'::text
            WHEN nasabah.jenisusaha_nas = 'Balai Kebudayaan'::bpchar THEN '9100'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Kosmetik'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Makanan'::bpchar THEN '6390'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Meubel'::bpchar THEN '3420'::text
            WHEN nasabah.jenisusaha_nas = 'Kotraktor'::bpchar THEN '5990'::text
            WHEN nasabah.jenisusaha_nas = 'Textile'::bpchar THEN '3310'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Coklat'::bpchar THEN '3190'::text
            ELSE '3790'::text
        END AS code_jenisusaha_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_13_jenisusaha_nas
  OWNER TO postgres;


-- View: public.sigma_tdmin_14_jenis_nasabah_sig

-- DROP VIEW public.sigma_tdmin_14_jenis_nasabah_sig;

CREATE OR REPLACE VIEW public.sigma_tdmin_14_jenis_nasabah_sig AS 
 SELECT sigma_tdmin_11.id_nas,
    sigma_tdmin_11.ktp_nas,
    sigma_tdmin_11.ident_sig,
    sigma_tdmin_11.jumlah,
    sigma_tdmin_11.jenisid_nas,
    sigma_tdmin_11.cif2_nas,
    sigma_tdmin_11.jenisid_nas_sig,
    sigma_tdmin_11.code_jenisid_nas_sig,
        CASE
            WHEN sigma_tdmin_11.code_jenisid_nas_sig = 4 AND sigma_tdmin_11.jumlah > 16 THEN 'C'::text
            ELSE 'I'::text
        END AS jenis_nasabah_sig
   FROM sigma_tdmin_11;

ALTER TABLE public.sigma_tdmin_14_jenis_nasabah_sig
  OWNER TO postgres;

  -- View: public.sigma_tdmin_16_strumah_nas

-- DROP VIEW public.sigma_tdmin_16_strumah_nas;

CREATE OR REPLACE VIEW public.sigma_tdmin_16_strumah_nas AS 
 SELECT nasabah.id_nas,
    nasabah.strumah_nas,
        CASE
            WHEN nasabah.strumah_nas = 'Kost'::bpchar THEN 4
            WHEN nasabah.strumah_nas = 'Dalam Proses'::bpchar THEN 5
            WHEN nasabah.strumah_nas = 'Ikut Paman'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Keluarga'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Milik Pribadi'::bpchar THEN 1
            WHEN nasabah.strumah_nas = 'lainnya vb'::bpchar THEN 5
            WHEN nasabah.strumah_nas = 'Milik Mertua'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Dengan Kakak'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut kakak'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Rumah Anak'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut Orang Tua'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Punya Adik'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut Suami'::bpchar THEN 1
            WHEN nasabah.strumah_nas = 'Ikut Kakak Kandung'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Milik Keluarga'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Milik Kakak'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut Atasan'::bpchar THEN 5
            WHEN nasabah.strumah_nas = 'Kosong'::bpchar THEN 5
            WHEN nasabah.strumah_nas = 'Punya Kakak'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut Kakak'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Milik Saudara'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Rumah Dinas/Instansi'::bpchar THEN 3
            WHEN nasabah.strumah_nas = 'Milik Sendiri'::bpchar THEN 1
            WHEN nasabah.strumah_nas = 'Ikut Keluarga'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Rumah Atasan'::bpchar THEN 5
            WHEN nasabah.strumah_nas = 'milik keluarga'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Lainnya'::bpchar THEN 5
            WHEN nasabah.strumah_nas = 'Rumah Keluarga'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut Saudara'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Tinggal Dengan Anak'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut Teman'::bpchar THEN 5
            WHEN nasabah.strumah_nas = 'Tinggal Dengan Saudara'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'ikut suami'::bpchar THEN 1
            WHEN nasabah.strumah_nas = 'Mess'::bpchar THEN 5
            WHEN nasabah.strumah_nas = 'Sewa/Kontrak'::bpchar THEN 4
            WHEN nasabah.strumah_nas = 'kost'::bpchar THEN 4
            WHEN nasabah.strumah_nas = 'Milik Orang Tua'::bpchar THEN 1
            WHEN nasabah.strumah_nas = 'Milik Suami'::bpchar THEN 1
            WHEN nasabah.strumah_nas = 'Ikut Keponakan'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Dengan Saudara'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut Anak'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Kontrak'::bpchar THEN 4
            WHEN nasabah.strumah_nas = 'Saudara'::bpchar THEN 2
            WHEN nasabah.strumah_nas = 'Ikut Majikan'::bpchar THEN 5
            ELSE 5
        END AS strumah_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_16_strumah_nas
  OWNER TO postgres;

-- View: public.sigma_tdmin_17_pekerjaan_nas

-- DROP VIEW public.sigma_tdmin_17_pekerjaan_nas;

CREATE OR REPLACE VIEW public.sigma_tdmin_17_pekerjaan_nas AS 
 SELECT nasabah.id_nas,
    nasabah.pekerjaan_nas,
        CASE
            WHEN nasabah.pekerjaan_nas = 'Ibu Runmah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'PNS'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Loper Koran'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Broker'::bpchar THEN 'D'::text
            WHEN nasabah.pekerjaan_nas = 'POLRI'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Bantu Usaha Keluarga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai BUMN'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Swasta'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Wiraswasta'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Pemkot Bdg'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan POLRI'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Honor'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Honorer'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Studi S2'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tanga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Belum Bekerja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan PNS'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Sopir'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Financial Consultan'::bpchar THEN 'A'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Renang'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Privat'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Buruh'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Mengelola Kontrakan'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Anggota DPRD'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Sudah Tidak Bekerja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BPKP'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pembuatan Pompa Air'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Dosen'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Rohaniawan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu rumah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pedagang'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Telkom'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Polri'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Supir Pribadi'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Karyawan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Freelance(Asuransi)'::bpchar THEN 'H'::text
            WHEN nasabah.pekerjaan_nas = 'POLISI'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Rohaniawan Gereja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai Swasta'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Usaha Keluarga'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Mengaji'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Investor'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Privat'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Mahasiswa'::bpchar THEN 'M'::text
            WHEN nasabah.pekerjaan_nas = 'Pembantu Rumah Tangg'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pendeta/Pelayanan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Wiraswasta'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Petani'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Toko Kelontong'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan TNI'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Mengurus Rumah Tangg'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu RT'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Badan Pengawasan'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter Umum'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'TNI'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Pembantu'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Profesi Dokter'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Jualan Eceran'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Freelance'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Makelar'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Sudah Tidak bekerja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pedagang Eceran'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BNI'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Agen (Partime)'::bpchar THEN 'H'::text
            WHEN nasabah.pekerjaan_nas = 'Yayasan Pendidikan'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan PNS Pusat'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Kelola Usaha Keluarg'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'pensiunan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Profesi'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Guru'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan / PNS'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Advokat'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Notaris'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Asuransi'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Tidak Bekerja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pelajar/Mahasiswa'::bpchar THEN 'M'::text
            WHEN nasabah.pekerjaan_nas = 'Karyawan BUMN'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pengangguran'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ikut Ortu/Nganggur'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'ibu Rumah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Buruh Harian Lepas'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'ABRI/TNI'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Pensuinan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Purnawirawan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'TNI AD'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Pastor'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Tetap Yayasan'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter Swasta'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Tabib'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pengerja di Gereja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai Honorer Peme'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Dagang'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Belum Sekolah'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pendeta'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'TNI/POLRI'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu rumah tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BUMN'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Lainnya'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiun'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Guru'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pemilik Toko'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Kepolisian'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Profesional'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'IRT'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tannga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Polri'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Honor'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Polisi'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Konsultan Manajemen'::bpchar THEN 'G'::text
            ELSE 'Z'::text
        END AS pekerjaan_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_17_pekerjaan_nas
  OWNER TO postgres;

-- View: public.sigma_tdmin_19_sd_ktp_nas

-- DROP VIEW public.sigma_tdmin_19_sd_ktp_nas;

CREATE OR REPLACE VIEW public.sigma_tdmin_19_sd_ktp_nas AS 
 SELECT nasabah.id_nas,
        CASE
            WHEN nasabah.sd_ktp_nas IS NULL THEN '9999-12-31'::date
            ELSE nasabah.sd_ktp_nas
        END AS sd_ktp_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_19_sd_ktp_nas
  OWNER TO postgres;

-- View: public.sigma_tdmin_20_jenisusaha_nas

-- DROP VIEW public.sigma_tdmin_20_jenisusaha_nas;

CREATE OR REPLACE VIEW public.sigma_tdmin_20_jenisusaha_nas AS 
 SELECT nasabah.id_nas,
        CASE
            WHEN nasabah.jenisusaha_nas = 'Alkes (Alat Kesehatan)'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli Ban'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Mainan Anak-anak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sprei dan Bed Cover'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Keramik'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan & Industri Produksi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Sembako & Suplier Mesin Pabrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industry'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa properti'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Optik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penyiaran'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Teknologi Nuclear'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kebun Sawit'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Farmasi / Distributor Obat'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Rumah Kayu'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Rumah Tangga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sekolah Musik'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Jaket'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Komunikasi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Ban'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Mitshubitshi'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Asuransi'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Proyekan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi Jaket'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Manufaktur'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kain'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sparepart Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaian Jadi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Sate'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Furniture'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Alat Rumah Tangga'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Majalah & Koran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penyediaan Beras Dalam Skala Nasional'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bunga Potong'::bpchar THEN 'E'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Koran'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Transpotasi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Jagung'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Home Care'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkut'::bpchar THEN 'E'::text
            WHEN nasabah.jenisusaha_nas = 'Perdaganagn'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Publik'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Properti'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Suplemen Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Multimedia'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah sakit'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Jasa Komputer dan Internet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Makanan Ringan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Restaurant'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kelistrikan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kost Kost an'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang (Matrial)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sparepart'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Progremer'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Tulis Kantor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'LSM'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Interior Design'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Karoseri Kendaraan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Bubut'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-Alat Tulis'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Diapers'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rokok'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pemerintahan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kue - kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kertas sembahyang'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Makloon Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bubur Ayam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pelayanan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Yayasan Sosial'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Farmasi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Aksesoris Garment'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdaganga Umum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Salon'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Ambokweh (Makanan)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Paralatan Bayi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rajut/ Konveksi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Online'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Teknik Engineer'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kebun&Pabrik Pengolahan Teh Hijau'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Obat Pertanian'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Mahasiswa'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pertambangan Minelar & Batu Bara'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sembako'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Bakar'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Produsen Obat'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Gesper'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Restauran'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Isi Ulang Air'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan/Bakery'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Indurtri Pengolahan Limbah B3'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Handphone'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Consultan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual kembang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tesktil'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kepolisian'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Toko ATK'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Besi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Simpan pinjam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Komputer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Meubel'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Handuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Umum Dan Jasa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Ekspedisi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Industry'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Catering & Sembako'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Masakan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Barber Shop'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Fitness'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tenaga kerja'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Jerigen Dan Drum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Air Minum Mineral'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Barang dan Jasa'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Makelar'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan/Kost kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Air'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Ikan Asin'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel & Toko'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pizza Hut'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kuliner Texas F.C'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pupuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kantor Kelurahan'::bpchar THEN 'H'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Truk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Cosmetic'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penyedia Barang Dan Jasa Seragam Kantor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Acsesoris Mobil (Velk Dan Ban)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Angkot & Kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan (Supplier Bahan Bangunan)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Usaha Suami'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Buruh'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Komunikasi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Sablon/Percetakan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Transportir'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Rohaniawan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Tekstil (Kain)'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Cleaning Service'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kantin dan Jasa Kontrakan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perawatan Suku Cadang Pesawat Terbang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Stationary'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Textile'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Outsorching'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Voucher & Kreditan Electronik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Retail HP'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Nasi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Rongsokan/Logam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Auditor'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaian Anak Dan Bayi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Design Grafis'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Onderdil  Bengkel Sparepart'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Gas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Studio Foto'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Elektronik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Kain'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Militer/TNI'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Sembako'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa penerbangan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Retailer Kertas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Gangguan Listrik'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Mebel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Jahitan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Paket'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suppier Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Warung/Toko'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industry (Kaos)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Boneka'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Hitpam/Water Heater'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Café'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Mata Uang / Forex'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Notaris'::bpchar THEN 'D'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sepeda'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kapas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Pakaian Jadi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Vaksin Ayam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sayur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kantor Pemerintahan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kertas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan ( agen Sayuran)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rajut'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pembangkit Listrik'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Textil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Exportir'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourcing'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Design Int. & Arsitektur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pemasok Perlengkapan Pabrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Les Piano'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kosan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Accessories Garmen'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Keuangan (Perbankan)'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Voucher Pulsa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Majalah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Cash Center'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Security System'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Transportasi Laut ( Pelayaran)'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Litbang'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Developer'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penerangan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pelayaran'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Ice Cream'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Studio Foto & Rekaman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Furniture'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Garment Sprei'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Bahan Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pembuatan Mesin'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengelasan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Minuman (juice)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'PNS'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Tata Ruang dan Cipta Karya'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Alat-alat Instalasi Gas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Mekanikal Elektronik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Air'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Service Computer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sayuran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Minuman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bangunan dan Furniture'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor, Hasil Textile, dll'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Garmen'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Vocher Pulsa, HP. Accessories'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Internet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan kapas untuk benang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Hotel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sopir'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Minuman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Baso'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kue Kering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Retail'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Obat dan Peralatan Sekolah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pariwisata'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor/Trading'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Handuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Benang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Variasi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-Alat Masak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Air Mineral'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Mesin'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tour dan Travel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'IT'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Poles Velg'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jamu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Musik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kuliner'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kerupuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Karung'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan-Pelatihan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemasangan Kaca Film'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kecil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Komputer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Instalasi sound system'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Snack'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'kost'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Faksin'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Telpon'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah Makan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Logistic'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Gypsum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Showroom mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Media Iklan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor (Listrik)'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Online Shop Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pengobatan Alternatif'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perindustrian'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Accu'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Dekorasi & Kue Tart'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Alat Musik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang (Warung)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Export Import'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Bidan'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Karaoke'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Devloper Perumahan'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Kimia'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Tekstil'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Buah-buahan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Entertain'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Toko'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pendanaan'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Order Barang Plastik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Baso'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Plastik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Asuransi dan Investasi'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Fashion & Accessories'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Katering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Arsitek'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Parkir'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tower'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Cuci Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bantal (Supllier Bantal)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Makanan (Snack)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Jamu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tempat Hiburan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Baso'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Baso'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Kelontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penginapan ( Hotel )'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'TV Kabel'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan (Warung)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Warung/Jual Susu Keliling'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Service'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Peralatan RS'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'PLBS'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel kontruksi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Lapas'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Majun'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'ProduksiTas'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Produksi Biskuit'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Lilin'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pendidikan'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Nutrisi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Geologi dan Museum'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengangkutan Semen'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Perlengkapan Rumah Tangga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat alat tidur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Photografi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Perlengkapan Hotel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Sparepart Tekstil & Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Spartpart Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Dan Service AC'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'POLRI'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Weeding Organizer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Leasing'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'BUMN'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Wiraswasta'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Migas'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Tas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Textille'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Fashion'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penyablonan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Kertas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Elpiji'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sekolah Penerbangan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Kayu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bimbingan Belajar'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Besar'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Es Krim'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Reset Penerapan Budaya'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'pemerintahan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penyebar Rohani'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Bahan Baku Printing'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perencanaan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Umum / Pakan Ternak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Rajut'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Mabeul'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan Teknik'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Servis Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah Susun'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Karet Ban'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Galon Isi Ulang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kayu/Peti Kemas'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Umum,ATK'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perawatan Gedung'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Bangunan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Akuntan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan barang-barang bekas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Epor & Impor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Accessories Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pengrajin Perhiasan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Wirausaha'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Percetakan Sablon'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Dan Pemeliharan Gedung'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Digital Musik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sparepart Alat Musik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli emas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Kapur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kelontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Keramik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Furniture'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Provider'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Limbah'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa angkutan barang'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Alat-alat Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Kelontong&Wartel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourching Jasa Keamanan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pembantu'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Travel Haji&Umroh'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Perhiasan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toserba'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produk stock fashion'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Meubeul'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko ATV / Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sembako/Rokok'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli karpet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'PNS Kepolisian'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Bank'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Akuarium'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tentara'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industri Tahu Tempe'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelukis Pasir'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Restoran Kapal Pesiar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan & Jasa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Sparepart Sepeda Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier / Bengkel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Makanan Dan Minuman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Antena'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa alat Telekomunikasi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Photografer'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Plastik & Karet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuat Peti Kemas dan Palet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'PT TElkom'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kendaraan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'konveksi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Aursourching'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Design'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kecantikan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pulsa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Driver Bus'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Oli'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Garment'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Spare Part'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Tas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang ATK'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Onderdil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Spare part'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Tas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Kimia'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Ekspedisi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Tas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier ayam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Event Organizer'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Plastik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Printing Textil'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Mesin Bor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Biro Perjalanan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kredit barang'::bpchar THEN 'N'::text
            WHEN nasabah.jenisusaha_nas = 'Militer'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Aksesoris Handphone'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Isi Ulang Air Minum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Mainan Anak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Alat Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Praktek Dokter'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Genteng'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Konvekasi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa management Hak cipta lagu'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Interior Pesawat'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Galon'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penginapan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan Argo Pertanian'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart Computer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstile'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pemyalur Koran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-alat Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Onderdil Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Korek AP/Gas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Play Station'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Wedding Organizer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Furniture'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Peedagangan Kelontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'MLM (Multi Level Marketing)'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perindustrian Pesawat'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Transportasi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli Kain Kiloan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'pengeboran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Textile (Toko Kain)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bed cover'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pakaian Olah Raga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Busa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kos -Kosan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Butik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Properti'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Farmasi'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Outdoor - Adv'::bpchar THEN 'D'::text
            WHEN nasabah.jenisusaha_nas = 'MLM (Multilevel Marketing)'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Elektronik'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Trading'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Perumahan'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Textile'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Karet Mesin'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penerjemah'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan seragam dan tas sekolah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Rajut'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alat-alat Listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Kopi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perajutan dan Pencelupan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Semen'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Jual Beli Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Logam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perhotelan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Hasil Tambang'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Baju Anak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kerupuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Apartement'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaia Batik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Keuangan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Optik & Obat - Obatan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Modem'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pakaian Jadi'::bpchar THEN 'H'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perkreditan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penjahit'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Tahu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Distributor Bawang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Catering& Pengadaan barang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa-TNI'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Printing'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pemerintahan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Mesin'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Laboratorium'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Material Building'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Teknik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Nilon'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Asuransi Jiwa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Menjahit'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan sandal dan sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Tas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bunga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Warung/kiostel/kelontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Game Online'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Minuman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Klinik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan Seafood'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan / Kos kosan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Mebel Kayu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Baju Anak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Tekstil'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Hiburan Permainan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Café & Resto'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Textil'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Kantin'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'SDM'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Baby Products'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kos - kosan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Pencil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Travel/Orthopedi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'jasa kemasyarakatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Hotel & Entertain'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Investasi Saham'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perhotelan dan olahraga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Distributor Kebutuhan Rumah Tangga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Konveksi Dompet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Ayam Potong'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kelontong'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Furnitur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Klontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Outsourching Security'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penggilingan Padi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Menjahit Kaos dan Jaket'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart HP'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pemborong Rongsokan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Minuman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kain Kiloan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industry Kaos'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'warnet'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tidak Ada'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Bel Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Mesin'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah Ibadah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Informasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Cattering&Associated Service'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Marketing'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kosmetik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supermarket'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Pemerintahan'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Periklanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Welding Kontraktor & Konsultan electricity'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Air Minum & Gas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Interior / Teknik Logam'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Sosis'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Ibu Rumah Tangga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Parawisata'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Keungan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suplair Labotarium'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Barang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Minuman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Busa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Jean & Gordyn'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Properti'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Biro Jasa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Desain Interior'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang ayam potong'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Garment'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Kos-kosan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pelajar'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdaganan Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang / Toko Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sangkar Burung'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Meuble'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Call Centre Telkomsel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pelatihan TNI'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pewarnaan Celana Jeans'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Production House, Advertising'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kedokteran'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Restoran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan /jual Kelapa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Plastik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tepung Tapioka'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Network'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Petani'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengiriman Kargo'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Roti Bakar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Kayu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tempat Les'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penelitian dan Pengembangan'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rumah Kost Kostan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Karpet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pertokoan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan barang dan Jasa ATK'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Teknologi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Manufacture'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Jahit'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penelitian Jalan Dan Jembatan'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Lencana'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Accessories & Bengkel Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Tapioka'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Pavling Blok'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sosial'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourcing Security'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Loundry'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Garment & Tekstil'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Konveki'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Oli'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstil/Jual kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'salon'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Apoteker'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Travel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tata Usaha'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan-Perguruan Tinggi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Make Up dan Wedding Organizer'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan Tempat Les'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Garmen kaos'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pariwisata'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Bunga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Jam & Alat Rumah Tangga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli HP'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pialang Saham'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Daging Babi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Telekomunikasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Tanah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jahit'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang sembako'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sayuran'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pengrajin Boneka'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart Motor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kontraktor'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Masyarakat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kecap, Minuman, Gas Elpiji'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konstruksi Dan Perdagangan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penyortiran Teh'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Rental'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kue Kering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Gas Elpiji'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distribtor Minuman/Bandrek Sunda'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Veterinary (Formasi Peternakan)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Garmen & Print'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Ikan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Texstil'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Online Shop'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Agen telor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perkayuan yang diolah menjadi kursi meja'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Garment'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa (Pemeliharaan Kereta Api)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Makanan (Biskuit)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Mekanikal Electric'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Rental PS'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Distributor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Emas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tours & Travel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Instalasi Listrik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Guru Les Renang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kain Trading'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Logam'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Irigasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor design interior'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Obat-obatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pengawasan Bangunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dirtributor Barang Rumah Tangga (Plastik)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas kebakaran'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Baju Muslim'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor dan Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Akuntan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kapal Pesiar'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor (Suplai bahan)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Reklame'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Boneka dan Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Biskuit'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Percetakan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kost- Kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan beras dan tembakau'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Home Industri'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kerupuk Palembang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko HP'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Emas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rumah Sakit'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Nasi Goreng'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tender'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Hiburan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Air Minum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Bangunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Sate'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Entertaiment'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Rumah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Fotografi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Menjahit'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Taylor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kost-Kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rental'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pembuatan Jok'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Konveksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Instansi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang (Toko Grosor)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Makanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Sprei'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kantor Kecamatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Teknik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstil Interior'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Promosi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Minuman Jamu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Minuman Kemasan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Peternakan Ayam potong'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kredit Barang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Daging'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Spare part motor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Terigu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Handphone'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Pasar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kuliner'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Makloon Pengecetan Teplon'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perpustakaan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Garment & Konveksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'konsultan perencanaan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa pengobatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Investasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Alat Alat Kesehatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Alat Kunci'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rental Mobil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sorum & Sparepart'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Security/keamanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Batang Sepeda'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Bid. Limbah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kredit Barang Perorangan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'PLTA'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Gas Elpiji'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Ternak Ayam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Asuransi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Baterai'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Gereja'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Loper Koran'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Otomotive'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kue Kering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Solar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Sayuran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat Tulis dan Listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alat Listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'asa Akuntan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Eceran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Accesoris HP'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penerbangan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengajar'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Bed Cover'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Cat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Barang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kesenian'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Hasil Bumi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Pakaian dan Tas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Bangunan'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pendidikan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Gabus Keju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Farmasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan BBM'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Listrik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Alkes'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Pertambangan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan Arsitek dan Konstruksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan barang dan jasa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perkeretaapian'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pemkot Cimahi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi/Pakaian Batik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Marmer'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pencucian Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Chemical'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Pompa Air'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kesehatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Martabak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Baja'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Mesin'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dokter'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sanck'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel, Cafe, Butik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Wallpaper'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Minuman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pengiriman Barang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Entertainment'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Baut'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Mukena'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Agen LPG'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kesehatan Akupuntur'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Celana'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Programer'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Spare Part Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Textille'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Yamaha'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'ATV/ Motor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Retail (Indomaret)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Telur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Tahu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier alat teknik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Showroom'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pertambangan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Media Informasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Alat Rumah Tangga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Phone Celluler Shop'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rias'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Online Store'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pengrajin Gitar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Grafis Design'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Cat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan loyang kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Sayur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakaian/Toko Online'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Expor Karung'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penggilingan Hasil Bumi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Service Jok / Cover Set'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Notaris'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Makanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penginapan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Kesehatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Service Electronic'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Etalase'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Terapis'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Alat rumah tangga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'dagang Kelontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Logistik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sparepart'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengeboran Air'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Umum'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pemintalan Benang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Air'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Laundry'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Consumer Goods'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Koran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sopir'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Plastik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Kenteng'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perkebunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Electronic'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kertas Sembahyang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Maskapai Penerbangan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Darat&Agen Gas Elpiji'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Jahit Busana'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart AC'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Expor-Impor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Aksesoris Mobil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Meubel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kue-Kue Kering'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Tahu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Eceran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Bahan Bakar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Reparasi Tas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kementrian Pekerjaan Umum Perumahan Rakyat'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Koperasi Simpan Pinjam'::bpchar THEN 'E'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor dan perdagangan umum'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Kost kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Percetakan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Antar jemput sekolah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perjalanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Keamanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bikin Kue'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Barang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Textil'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik AC'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Telur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Handuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kredit Perabot'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Jamu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Las'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penerbitan Buku'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kosmetik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sanggar Senam & Fitness'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan alat listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Travel dan Penyewaan BIS'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Service Motor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pendingin'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pakaian Olahraga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Plastik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Chemical'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jenis Percetakan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengemudi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pulsa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Outsorce'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Hukum'::bpchar THEN 'D'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bengkel Motor dan Pengadaan Sparepart'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Cleaning Service'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pulsa Dan HP'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sesko TNI'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Warung Bakso'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Makloon'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Textile'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Barang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pelayanan Kesehatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Mebel'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Kecantikan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penyewaan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Air Jerigen'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Variasi Velg'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bahan Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Buku & Percetakan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Oli Bekas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Gitar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perbankan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Konfeksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli karpet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Susu Formula'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Es'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Sembako'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Masyarakat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pelayanan Pajak'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Periklanan & Kontraktor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sablon'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Instalasi AC'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Alat-alat Konveksi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Transportasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur Pesawat Terbang'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sekuruti'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Minyak & Gas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Textile/perdagangan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik the'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur Springbed'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Fakultas / Pendidikan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Cat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Cat Sablon'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Peralatan Sekolah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Kebersihan'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Sewa tempat olahraga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Tambang Minyak'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Kapas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Agrobisnis'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengadaan Barang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Persdagangan Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Warung'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pasang Jok Mobil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Showroom Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kue Dan Roti'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Sparepart'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Transportasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor/Supplier'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Institusi Penguji Alat Kesehatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Barang Rumah Tangga dan Elektronik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Mobil & Jual Daging'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sosial'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sambal KFC'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Digital Printing'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sate'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kaca'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pegawai'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Kost'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Distributor Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Otomotif'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pemadam Kebakaran'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Komputer'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor Bekas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kejaksaan'::bpchar THEN 'J'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Sembako'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Investor Proyek'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Restourant'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Software'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Sabun'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = ' Makloon Pengecetan Teplon'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Beras'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tambak Udang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Interior'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Spare Part'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli Elpigi 3Kg'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Pakaian & Sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Surat Kabar'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Fotocopy'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Gas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rajut'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Jaket'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bengkel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Lembaga Dewan Koperasi'::bpchar THEN 'E'::text
            WHEN nasabah.jenisusaha_nas = 'Arang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Garmen'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Kacang Kedelai'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Senjata'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Plastik'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Layanan Kesehatan'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Body Anti Karat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Klontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Beverage&Food'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Minimarket'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'distributor Obat-obatan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kain Majun'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Spare part'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan dan Jasa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan Rumah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Furniture & Interior'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kontruksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi Mesin'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Air Minum'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Universitas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Instalatir'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Alat-alat rumah tangga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor & Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidkan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pertamanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Barang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kementrian Agama'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Air Minum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Limbah Kertas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Barang, Bengkel Sparepart'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pendidikan-Jasa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Spare Part'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Stokist'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Keuangan/Perbankan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bordir'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Media Massa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kost-kost an'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Keramik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Tekstil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penyedia Minya Bumi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Pesawat Terbang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tempat Tinggal'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jula Beli Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Apartement'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Handphone'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Motor Bekas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kantor Hukum'::bpchar THEN 'J'::text
            WHEN nasabah.jenisusaha_nas = 'Medical'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kerupuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rangkai Bunga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pemerintahan Daerah'::bpchar THEN 'H'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Daging'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Agen PPOB'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Batu Bara'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Stiker'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Ayam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi Baju'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Salon Mobil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengamanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Bubut'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Perabot Rumah Tangga dan penyimpanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Mainan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Seni'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sepatu Sandal'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Hotel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Telepon'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Media Masa'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart Kendaraan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Aksesoris Kendaraan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi pesawat'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Peralatan Salon'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Karpet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Polri'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perhotelan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Desain Grafis'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'makanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontrakan rumah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Sipil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Mobil Bekas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Sayuran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan Ringan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Garmen Retail'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Cat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pengisian Gas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengiriman'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kue'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Clothing'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Keagamaan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alumunium'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kacamata'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Laundry'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Daur ulang plastik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Sembako'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Daur ulang majun (kain perca bekas)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Baso'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli besi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Karyawan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Barang Bekas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Cat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Warnet Games'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kontrakan Rumah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'manufaktur'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Kontraktor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kelontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Coffee Shop'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'JasaKos-Kosan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Filterisasi Pengolahan Limbah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perkebunan Jamur Tiram'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pembiayaan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jamur'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sanggar Senam'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor & Property'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Agar agar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Aksesoris'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Cutting Dies'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Keju'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Audit'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Ikan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi The'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kusen'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli barang elektonik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Industri Pengolahan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourching'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kelontong'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Cat Tembok'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur Furniture'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Les Privat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Rongsokan/Limbah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Chiki'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Faksin Unggas'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Karet'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan & Kontraktor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Property Perum'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Material'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Fashion'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Catering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Gas Elpiji'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Logam'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Textile (Pemintalan)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemandian Kolam Renang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan ( Rakit Mesin Printer Sablon)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dept. Store'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Kertas'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Daur Ulang Plastik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konstruksi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Ekspedisi Via Transportasi Udara'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tour & Travel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Alat Elektronik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Guru'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Buruh Bangunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Taxi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Alat Listrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Telur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Koperasi'::bpchar THEN 'E'::text
            WHEN nasabah.jenisusaha_nas = 'Stocklot Pakaian'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Kehutanan'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Bangunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Bubut Sparepart Mobil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kost - Kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Baju&Skin Care'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli & Service Elektonik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'TNI AD'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kue (makanan)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Matrial'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Pariwisata'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Kamasan / Dagang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Trading'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pensiunan Guru'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Militer Pemerintahan TNI'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Meubeul'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Alat Perkebunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pijet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Mesin Pabrik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Susu kemas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Jagung Manis'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Eskrim'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Parafin'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Panci'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Property'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Baso'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Retail'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Dystuff'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Medis'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'afe  Resto'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Gorengan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Limbah Plastik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Indutri'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Sayur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Kosmetik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Minyak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Expedisi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Besi Tua'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rias Pengantin'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Talang Saham'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pengajar'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konstruksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bukan Lapangan Usaha'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sablon'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Cattering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Knitting (Pemintalan Benang)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Tk kelontong'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Sparepart Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penukaran Uang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Penumpang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Angkut'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Anggota DPRD'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Benang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan Kering/Membuat Kue'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur Logam'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor (Bahan Bangunan)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Mesin Fotocopy'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Service Manufaktur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'RESTORAN'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Aki'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengiriman Barang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Batu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Agro Bisnis'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Ternak Anjing'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa/ Badan Keagamaan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Koperasi Karyawan'::bpchar THEN 'E'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kue - kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Tekhnik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Kerudung'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rental VCD & Sound System'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'jual Pulsa dan Masakan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Ayam'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Buku'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Washing'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Guru Privat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan asesoris'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penelitian'::bpchar THEN '0'::text
            WHEN nasabah.jenisusaha_nas = 'Bahan Kue'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Rel Kereta Api'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'ATK'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'TNI'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Produksi Kursi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Klinik Medis'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor dan Developer'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Tektil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Bacang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Bahan Kimia'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kue Kering'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengiriman Barang/ Ekspedisi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Warnet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Marga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Mabeul'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Gas Elpiji'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Photografi & Toko Baju'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Rumah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Showroom Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penggilingan Padi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perhubungan'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Pakain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Photografi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Spare Part Motor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alat Rumah Tangga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sepatu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Advertising'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi/Alat2 Mobil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Teknologi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pendidikan-Perguruan Tinggi'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Kaos Kaki'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Material'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sepatu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa pendidikan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penerbitan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Baso Sapi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Kursi Logam'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pembebasan Tanah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor dan Distributor Bahan Bangunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Pembalut'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Direct Saling'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Teknik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Program Keluarga Berencana'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Tas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Fancy/Perkayuan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Outsourching'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Art Toys'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Air Minum Kemasan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Elektronik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Transportasi (Ojeg)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Gudang Rongsok'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan-PTS'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Foto'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pemerintah Kota Bandung'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'dealer motor bekas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-alat Keperluan Rumah Tangga Kaca & Keramik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Scaff olding'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'perbankan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Besi'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'isi ulang pulsa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Peternakan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan IT'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sewa Angkot'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Oli'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Alat Teknik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Baju Bayi & Dewasa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Rental Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Petani Bunnga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Trader Company'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Alumunium Dan Kaca'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Pendidikan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Even Organizer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Resto'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Real Estate'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kelontongan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sewa Los & Mangan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Baju Anak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Telekomunikasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Sparepart'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'jual makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Aksesoris Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Medical Equipment'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'konsultan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penggilingan Baso'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Meubeul'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Sparepart'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi Pakaian'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsuktan Geologi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'farmasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kesehatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Batagor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan Barang & Jasa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Iklan Reklame'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Es'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Accesoris'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kain'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Motor'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Seluler'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Rokok'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Asesoris'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Catering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-alat Laboratorium'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Export & Impor Kaos Kaki'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pemerikasaan Keuangan Negara'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Yayasan'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Periklanan Reklame'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Elpiji'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Busana'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'SPBU'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Nasioal'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pertambangan Minyak'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Studio Musik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perumahan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Service Elektronik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pajak'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pemeliharaan Mesin Pesawat Terbang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pencelupan Benang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Hukum'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Beras'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Akunting Service'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Laboratorium'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Depot Isi Ulang'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'BBM'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kredit'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Elektronik (Laptop)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan bahan baku farmasi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bengkel Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Mesin-Mesin Pabrik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'kost-kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Pembersih Lantai'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Interior'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor/Pengadaan Barang'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Produksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Besi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'PLN'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Manufaktur (Pembuatan Furniture)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Besi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Sewa Kontrakan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengisian LPJ'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer Motor Bekas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Pakaian (Toko)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat-alat Rumah Tangga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pelayanan Kesehatan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perusahaan Celup'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pensiunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Velg&Ban'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Tahu/Jasa Jemputan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Ayam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Peralatan Outdoor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pakaian'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Data Statistik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perhutani'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Retail/Distributor Computer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Makanan dan Minuman'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Angkutan Kota'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Accessories Kendaraan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Las'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Oil & Gas Service'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengobatan Alternatif'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Alat-alat Besi'::bpchar THEN 'H'::text
            WHEN nasabah.jenisusaha_nas = 'Cathering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sorum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Alat Bubut'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pengairan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kehutanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi Tas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Obat-Obatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Panti Asuhan'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Tahu'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Celana Jeans'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Clinic'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Property'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Hiburan Permainan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Tahu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Barang Pecah Belah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Bahan Baku Farmasi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pelatihan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Keamanan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Ibu Rumah tangga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Pengawasan Keuangan'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Retail/Distributor Elektronik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Apotik'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pemakaman'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat - alat Kedokteran'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Cash & Kredit Elektronik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kue dan Kost an'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Bangunan'::bpchar THEN 'H'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Parasut'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Rongsokan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'kontraktor lift'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Tekstil Industri'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Obat-obatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Penyedia Tenaga Kerja'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perdagangan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Isi Ulang Air & Salon'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Rumah (mediator)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Susu/Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Parkir'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kerupuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Baju Muslim'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bidang Exterior Logam'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Jual beli Stanles'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'AMDK'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Elektronik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Technik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Onderdil Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Kawat'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan Barang'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan ATK'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Bahan Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tata Rias'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Outsourcecing'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Teknik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Mobil Honda'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Pupuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Obat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Buku'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Outsouring'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perhiasan Perak'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Hasil Bumi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Bahan Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Mebeul'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Sajadah'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Emas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suplayer Sepatu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'jual beras'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Hotel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Tekstil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Umum dan Jasa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Barang Bahan bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jewelery'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Cat Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi dan perkreditan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Travel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konvbeksi'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pengeboran'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kerohanian'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dep. Keuangan RI'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Fashion'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kios/Jualan Buku'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Textil Jean'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli SP(spare part) Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Perbankan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Depkeu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Retail'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kost'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kelontonga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sembako'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Matrial /TNI'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kertas'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Konpeksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Meubel'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kursi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kayu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Counter Pulsa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pekerjaan umum'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sound System'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'IT Developer'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Cattering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Senam'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Packaging Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Sandal'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Krupuk'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemasangan lift'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Listrik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Isi Ulang Pulsa'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan otomotif'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Radio'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dealer'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perpajakan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Olahraga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Material'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Service Komputer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perbakan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Gas dan Minyak'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Farmasi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Soto'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Agen Telor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Aluminium'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Kulit Sapi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Ukir Tembaga'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Sepatu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Polisi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Kerajinan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Teknologi Informasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kos-Kosan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Ayam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Automotif'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Aksesoris Kamera'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Bahan Kimia'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Solar'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Bahan Bangunan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Keuangan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Obat Obatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Simpan Pinjam (Serba Usaha)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemerintahan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perusahaan Benang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'TOKO KEBUTUHAN SEHARI-HARI'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Departement Store'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Onderdil Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bengkel Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Kue-kue Kering'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadaan Barang dan Jasa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Ayam Goreng'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Konveksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Snack'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Mainan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jemputan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Security'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Obat & pakar Ayam'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Proyek Property'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Migas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Kain Textil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Textile/Garment'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Gereja'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bimbingan Belajar'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Senam'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Variasi Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Elektronika'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Meubeul'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Percetakan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Filterisasi (Pengolahan Limbah)'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Obat Tekstil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Air Minum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Wedding Planner'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Oli'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sekuritas'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Advokat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'garment'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Roti'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Cat Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sowroom Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjahit Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Hiburan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Packaging'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'RM Chinese Food'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kemasyarakatan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor & Sparepart'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Cat Anti karat'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Umum'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Secure Parking'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Kusen'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Photography'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Textile/Obat printing'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Freelance'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perguruan Tinggi Swasta-Pendidikan'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Sayuran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kontruksi Besi Baja'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Material Bangunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'MILITER'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'di bidang alat - alat kesehatan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Privat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor HP'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Hotel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Electronic'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kovenksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Inventarisasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli Komputer'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dagang Makanan Dan Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Elpiji'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dewan Koperasi'::bpchar THEN 'E'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Peminjaman Uang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Accesoris Mobil & Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kerajinan Tangan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Makanan & Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kredit Barang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Textile Rajut'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Manufakturing'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Badan Pelatihan-Pendidikan'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kayu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Partisi Alumunium'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Rajutan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Alkes'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Bahan Baku Kue'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Rental Truck'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan ( Retail )'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Tenaga Ahli'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tk. Baju'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Modifikasi Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Chemicals'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Bunga Plastik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Pemancingan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Koran'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'jasa pelayanan Pos'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Olah Raga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Security'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Kain Imitasi'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Media Cetak'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Automotive'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Computer'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Konsultan Merk'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Angkutan Bahan Bakar'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Sepeda Anak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Pembuatan Sepatu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Kerudung'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Marmer & Granit'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Audit'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Sarana Pertanian'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pengeboran Minyak'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Toge'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Masker'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Kereta Api'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Industri Konveksi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Tahu'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Mie Baso'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Developer Perumahan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'MLM'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Tracking'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Spare Part Textile'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bengkel Mobil'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Benang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Konsultan keuangan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pembuatan Mesin Pisau'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Distribusi Farmasi'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Dinas Tenaga Kerja'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Paket'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Agency Cleanning Service'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Company'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Transportasi Ojeg'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Finance'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'di bidang dokumentasi'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli  Motor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Ternak'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Studio Foto'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bordir'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Body Repair'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Biskuit Khong Guan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Bahan-Bahan Kue'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Warnet'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Penjahit Pakaian'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Perlengkapan Daun Pintu'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kost-kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Limbah Pabrik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Kendaraan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Meubel Jati'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Bijih Plastik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bubut'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penerbit Buku'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Wedding Decoration'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Besi Tua'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan jasa komputer dan internet'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Plastik dan Lilin'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jualan Minuman Ringan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = '-'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pengadilan'::bpchar THEN 'J'::text
            WHEN nasabah.jenisusaha_nas = 'Distributor Chemical'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual-Beli Mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jasa Bangunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Toren Air'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Laundry & Kantin makan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Garment, Property, Trading'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perbengkelan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Makelar Tanah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Toko Bahan Bangunan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'kos - kosan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Ayam Pootong'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penjualan Motor baru'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Jual Beli Motor(Suami)'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'IT Consultan'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Suplier Barang'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Alat Musik'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Trading Textile'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Perlengkapan Militer'::bpchar THEN 'L'::text
            WHEN nasabah.jenisusaha_nas = 'Fiber Serat'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Show room mobil'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Penyewaan Gedung Olahraga'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sekolah'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik & Kebun The'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Iklan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Supplier Jasa'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Perhiasan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagangan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Sewa Kostan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'CV (Penyedia alat Olahraga)'::bpchar THEN 'B'::text
            WHEN nasabah.jenisusaha_nas = 'Pertanian'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Instansi Pemerintahan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Grosir makanan minuman'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Pedagang Sayur'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Obat'::bpchar THEN 'P'::text
            WHEN nasabah.jenisusaha_nas = 'Kontraktor Jalan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Keagamaan'::bpchar THEN 'I'::text
            WHEN nasabah.jenisusaha_nas = 'Balai Kebudayaan'::bpchar THEN '1'::text
            WHEN nasabah.jenisusaha_nas = 'Retail Kosmetik'::bpchar THEN 'O'::text
            WHEN nasabah.jenisusaha_nas = 'Perdagangan Makanan'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Produksi Meubel'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Kotraktor'::bpchar THEN 'M'::text
            WHEN nasabah.jenisusaha_nas = 'Textile'::bpchar THEN 'K'::text
            WHEN nasabah.jenisusaha_nas = 'Pabrik Coklat'::bpchar THEN '1'::text
            ELSE 'P'::text
        END AS jenisusaha_nas_sig,
    nasabah.jenisusaha_nas
   FROM nasabah
  ORDER BY nasabah.jenisusaha_nas;

ALTER TABLE public.sigma_tdmin_20_jenisusaha_nas
  OWNER TO postgres;

-- View: public.sigma_tdmin_21_sd_ktp_nas_sig

-- DROP VIEW public.sigma_tdmin_21_sd_ktp_nas_sig;

CREATE OR REPLACE VIEW public.sigma_tdmin_21_sd_ktp_nas_sig AS 
 SELECT nasabah.id_nas,
        CASE
            WHEN nasabah.sd_ktp_nas IS NULL THEN '99991231'::text
            ELSE replace(nasabah.sd_ktp_nas::text, '-'::text, ''::text)
        END AS sd_ktp_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_21_sd_ktp_nas_sig
  OWNER TO postgres;

-- View: public.sigma_tdmin_22_kantor_nas

-- DROP VIEW public.sigma_tdmin_22_kantor_nas;

CREATE OR REPLACE VIEW public.sigma_tdmin_22_kantor_nas AS 
 SELECT nasabah.id_nas,
    "substring"(nasabah.kantor_nas::text, 1, 30) AS kantor_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_22_kantor_nas
  OWNER TO postgres;
-- View: public.sigma_tdmin_23_golongan_deb

-- DROP VIEW public.sigma_tdmin_23_golongan_deb;

CREATE OR REPLACE VIEW public.sigma_tdmin_23_golongan_deb AS 
 SELECT nasabah.id_nas,
    nasabah.gol_debitur_nas AS id_golongan_deb
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_23_golongan_deb
  OWNER TO postgres;

-- View: public.sigma_tdmin_24_golongan_deb

-- DROP VIEW public.sigma_tdmin_24_golongan_deb;

CREATE OR REPLACE VIEW public.sigma_tdmin_24_golongan_deb AS 
 SELECT sigma_tdmin_23_golongan_deb.id_nas,
    golongan_debitur.ket_golongan_deb,
        CASE
            WHEN golongan_debitur.ket_golongan_deb = 'Pemerintah Pusat'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Kantor Perbendaharaan dan Kas Negara (KPKN)'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Departemen Keuangan'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Departemen Pertahanan'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Departemen Kehutanan'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Departemen Pertanian'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Departemen Pertambangan dan Energi'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Departemen Agama'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Kementrian Negara BUMN'::text THEN 835
            WHEN golongan_debitur.ket_golongan_deb = 'Departemen Lainnya'::text THEN 805
            WHEN golongan_debitur.ket_golongan_deb = 'Pemerintah Daerah (Pemda)'::text THEN 805
            WHEN golongan_debitur.ket_golongan_deb = 'Pemerintah Propinsi'::text THEN 805
            WHEN golongan_debitur.ket_golongan_deb = 'Pemerintah Kota'::text THEN 805
            WHEN golongan_debitur.ket_golongan_deb = 'Pemerintah Kabupaten'::text THEN 835
            WHEN golongan_debitur.ket_golongan_deb = 'Badan-badan dan Lembaga-lembaga Pemerintah Lainnya'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Badan Urusan Logistik (Bulog)'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Badan Penyehatan Perbankan Nasional'::text THEN 835
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Badan & Lembaga Pemerintah Lainnya)'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Badan Usaha  Milik Negara (BUMN) atau Pem. Campuran'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Lembaga Keuangan Non Bank - BUMN / Pem. Campuran'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Jamsostek'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Taspen'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Jiwasraya'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Jasa Raharja'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'ASABRI'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Jasindo'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan asuransi lainnya - BUMN/ Pem. Campuran'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Dana Pensiun - BUMN/ Pemerintah Campuran'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Modal Ventura - BUMN/ Pemerintah Campuran'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Pembiayaan - BUMN/ Pem. Campuran'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Danareksa'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Perush. sekuritas yg tidak melakukan usaha Reksadana - BUMN'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Perush. sekuritas yg melakukan usaha Reksadana - BUMN'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Reksadana - BUMN'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Perum Pegadaian'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Pos Indonesia'::text THEN 835
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Lembaga Keuangan Non Bank Lainnya - BUMN)'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Kereta Api Indonesia (KAI)'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Pelayaran Nasional Indonesia (PELNI)'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Pelabuhan Laut Indonesia (PELINDO)'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Bukan Lembaga Keuangan - BUMN'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Angkutan Sungai, Danau dan Penyeberangan (ASDP)'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Angkasa Pura'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Perkebunan Nusantara'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Pertamina'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Perusahaan Listrik  Negara (PLN)'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'krakatau Steel'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Garuda Indonesiaa'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Indosat'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Jasa Marga'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Timah'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'PT. Aneka Tambang'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Jasa Konstruksi - BUMN'::text THEN 832
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Bukan Lembaga Keuangan - BUMN)'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Badan Usaha Milik Daerah (BUMD)'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Lembaga Keuangan Non Bank - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Asuransi - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Dana Pensiun - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Pembiayaan - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Modal Ventura - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Perush sekuritas yg tidak melakukan usaha Reksadana - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Perush sekuritas yg melakukan usaha Reksadana - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Reksadana - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya  (Lemb Keuangan Non Bank - BUMD)'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Bukan Lembaga Keuangan - BUMD'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Daerah Air Minum (PDAM)'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Daerah Pasar (PD. Pasar)'::text THEN 834
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Bukan Lembaga Keuangan - BUMD)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Lembaga Keuangan Non Bank - Swasta'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan asuransi'::text THEN 874
            WHEN golongan_debitur.ket_golongan_deb = 'Dana pensiun'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Pembiayaan'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Modal Ventura'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perush sekuritas yg tidak melakukan kegiatan  usaha Reksadana'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perush sekuritas yg melakukan kegiatan  usaha Reksadana'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Reksadana'::text THEN 874
            WHEN golongan_debitur.ket_golongan_deb = 'Dana Pensiun'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Baitul Maal Wa Tamwil (BMT)'::text THEN 870
            WHEN golongan_debitur.ket_golongan_deb = 'Koperasi Primer (Simpan Pinjam)'::text THEN 870
            WHEN golongan_debitur.ket_golongan_deb = 'Koperasi Lainnya (Simpan Pinjam)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Ktr Perwk Lemb Asing di Indonesia (Lemb. Keu - Swasta)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Lembaga Keuangan non Bank Lainnya - Swasta)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Bukan Lembaga Keuangan - Swasta'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Otomotif'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Perminyakan'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Tekstil'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Perkayuan (HPH)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Jasa Konstruksi'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Industri Rokok'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Industri Makanan'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Agrobusiness'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan lainnya - Swasta'::text THEN 870
            WHEN golongan_debitur.ket_golongan_deb = 'Koperasi Primer (Bukan Simpan Pinjam)'::text THEN 870
            WHEN golongan_debitur.ket_golongan_deb = 'Koperasi Lainnya (Bukan Simpan Pinjam)'::text THEN 872
            WHEN golongan_debitur.ket_golongan_deb = 'Badan Amil Zakat Infaq dan Shadaqah (BAZIS)'::text THEN 805
            WHEN golongan_debitur.ket_golongan_deb = 'Lembaga Pendidikan'::text THEN 872
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Yayasan, Badan Sosial dan Ormas)'::text THEN 875
            WHEN golongan_debitur.ket_golongan_deb = 'PENDUDUK - Perorangan'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Kantor Perwk Lemb Asing di Indonesia (Bukan Lemb Keu - Swasta)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Bukan Lembaga Keuangan - Swasta)'::text THEN 800
            WHEN golongan_debitur.ket_golongan_deb = 'Pemerintah Pusat di Luar Negeri'::text THEN 872
            WHEN golongan_debitur.ket_golongan_deb = 'Perwakilan Negara-negara Asing dan Stafnya'::text THEN 840
            WHEN golongan_debitur.ket_golongan_deb = 'Badan Usaha Milik Negara (BUMN) Milik Negara Asing'::text THEN 840
            WHEN golongan_debitur.ket_golongan_deb = 'Lemb Keu Bukan Bank yg Beroperasi di Luar Indonesia'::text THEN 840
            WHEN golongan_debitur.ket_golongan_deb = 'Perusahaan Swasta di Luar Negeri'::text THEN 875
            WHEN golongan_debitur.ket_golongan_deb = 'BUKAN PENDUDUK - Perorangan'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = ',Islamic Development Bank (IDB)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Asian Development Bank (ADB)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'World Bank'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Bank Pembangunan multilateral)'::text THEN 860
            WHEN golongan_debitur.ket_golongan_deb = 'Lainnya (Lembaga International)'::text THEN 6390
            ELSE NULL::integer
        END AS id_golongan_deb_sig
   FROM sigma_tdmin_23_golongan_deb
     JOIN golongan_debitur USING (id_golongan_deb);

ALTER TABLE public.sigma_tdmin_24_golongan_deb
  OWNER TO postgres;

-- View: public.sigma_tdmin_25_pekerjaan_nas_sig

-- DROP VIEW public.sigma_tdmin_25_pekerjaan_nas_sig;

CREATE OR REPLACE VIEW public.sigma_tdmin_25_pekerjaan_nas_sig AS 
 SELECT nasabah.id_nas,
        CASE
            WHEN nasabah.pekerjaan_nas = 'Ibu Runmah Tangga'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'PNS'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Loper Koran'::bpchar THEN 'D'::text
            WHEN nasabah.pekerjaan_nas = 'Broker'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'POLRI'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Bantu Usaha Keluarga'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai BUMN'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Swasta'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Wiraswasta'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Pemkot Bdg'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan POLRI'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Honor'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Honorer'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Studi S2'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tanga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Belum Bekerja'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan PNS'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Sopir'::bpchar THEN 'A'::text
            WHEN nasabah.pekerjaan_nas = 'Financial Consultan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah tangga'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Renang'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Privat'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Buruh'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Mengelola Kontrakan'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Anggota DPRD'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Sudah Tidak Bekerja'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BPKP'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pembuatan Pompa Air'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Dosen'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Rohaniawan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu rumah Tangga'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pedagang'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Telkom'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Polri'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Supir Pribadi'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Karyawan'::bpchar THEN 'H'::text
            WHEN nasabah.pekerjaan_nas = 'Freelance(Asuransi)'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'POLISI'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Rohaniawan Gereja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai Swasta'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Usaha Keluarga'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Les Mengaji'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Investor'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Privat'::bpchar THEN 'M'::text
            WHEN nasabah.pekerjaan_nas = 'Mahasiswa'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pembantu Rumah Tangg'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pendeta/Pelayanan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Wiraswasta'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Petani'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Toko Kelontong'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan TNI'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Mengurus Rumah Tangg'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu RT'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Badan Pengawasan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter Umum'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'TNI'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pembantu'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Profesi Dokter'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Jualan Eceran'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Freelance'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Makelar'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Sudah Tidak bekerja'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pedagang Eceran'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BNI'::bpchar THEN 'H'::text
            WHEN nasabah.pekerjaan_nas = 'Agen (Partime)'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Yayasan Pendidikan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan PNS Pusat'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Kelola Usaha Keluarg'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'pensiunan'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Profesi'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan / PNS'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Advokat'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Notaris'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Asuransi'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Tidak Bekerja'::bpchar THEN 'M'::text
            WHEN nasabah.pekerjaan_nas = 'Pelajar/Mahasiswa'::bpchar THEN 'J'::text
            WHEN nasabah.pekerjaan_nas = 'Karyawan BUMN'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pengangguran'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ikut Ortu/Nganggur'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'ibu Rumah Tangga'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Buruh Harian Lepas'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'ABRI/TNI'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensuinan'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Purnawirawan'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'TNI AD'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pastor'::bpchar THEN 'I'::text
            WHEN nasabah.pekerjaan_nas = 'Guru Tetap Yayasan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Dokter Swasta'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Tabib'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pengerja di Gereja'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai Honorer Peme'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Dagang'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Belum Sekolah'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pendeta'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'TNI/POLRI'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu rumah tangga'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan BUMN'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Lainnya'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiun'::bpchar THEN 'L'::text
            WHEN nasabah.pekerjaan_nas = 'Pensiunan Guru'::bpchar THEN 'N'::text
            WHEN nasabah.pekerjaan_nas = 'Pemilik Toko'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Pegawai'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Kepolisian'::bpchar THEN 'G'::text
            WHEN nasabah.pekerjaan_nas = 'Profesional'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'IRT'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Ibu Rumah Tannga'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Polri'::bpchar THEN 'Z'::text
            WHEN nasabah.pekerjaan_nas = 'Honor'::bpchar THEN 'K'::text
            WHEN nasabah.pekerjaan_nas = 'Polisi'::bpchar THEN 'G'::text
            ELSE 'Z'::text
        END AS pekerjaan_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_25_pekerjaan_nas_sig
  OWNER TO postgres;

-- View: public.sigma_tdmin_26_tgl_nas_sig

-- DROP VIEW public.sigma_tdmin_26_tgl_nas_sig;

CREATE OR REPLACE VIEW public.sigma_tdmin_26_tgl_nas_sig AS 
 SELECT nasabah.id_nas,
    replace(nasabah.tgl_nas::text, '-'::text, ''::text) AS tgl_nas_sig
   FROM nasabah
  ORDER BY nasabah.tgl_nas;

ALTER TABLE public.sigma_tdmin_26_tgl_nas_sig
  OWNER TO postgres;

  -- View: public.sigma_tdmin_27_nama_nas_sig

-- DROP VIEW public.sigma_tdmin_27_nama_nas_sig;

CREATE OR REPLACE VIEW public.sigma_tdmin_27_nama_nas_sig AS 
 SELECT nasabah.id_nas,
    "substring"(nasabah.nama_nas::text, 1, 30) AS nama_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_27_nama_nas_sig
  OWNER TO postgres;


-- View: public.sigma_tdmin_28_kota_nas_sig

-- DROP VIEW public.sigma_tdmin_28_kota_nas_sig;

CREATE OR REPLACE VIEW public.sigma_tdmin_28_kota_nas_sig AS 
 SELECT nasabah.id_nas,
        CASE
            WHEN nasabah.kota_nas IS NULL THEN 'Bandung'::bpchar
            ELSE nasabah.kota_nas
        END AS kota_nas_sig
   FROM nasabah;

ALTER TABLE public.sigma_tdmin_28_kota_nas_sig
  OWNER TO postgres;



select id_nas,-- npwp_nas,npwp2_nas,ktp_nas,jenisid_nas, split_part(nama_nas , ' ', 1)kata,
-- "substring"(nasabah.nama_nas::text, 1, 10) as nama_nas_sig,
--  gelar_nas,sex_nas,urut_agama,
-- "substring"(nasabah.tmp_nas::text, 1, 25) as tempat_lahir ,
-- replace(nasabah.lahir_nas::text, '-'::text, ''::text) AS lahir_nas_sig ,
-- CASE 
-- WHEN nikah_nas = 't' then '1'
-- WHEN nikah_nas = 'f' then '2'
-- end as nikah_nas_sig,
-- case 
--     WHEN negara_nas = 'ID' THEN '1'
--     ELSE '2'
-- END AS kode_negara_nas ,
-- strumah_nas_sig,'ID' as id,ident_sig,   sigma_tdmin_21_sd_ktp_nas_sig.sd_ktp_nas_sig,   sigma_tdmin_21_sd_ktp_nas_sig.sd_ktp_nas_sig,
-- sigma_tdmin_17_pekerjaan_nas.pekerjaan_nas_sig,kantor_nas,bentuk_usaha_SIG,id_golongan_deb_sig,sigma_tdmin_25_pekerjaan_nas_sig.pekerjaan_nas_sig
-- npwp_nas,'I' AS jenis_nasabah , 'kode_ao' as kode_ao,'001'as kode_cabang ,tgl_nas_sig,nama_nas_sig,alamat_nas,alamat_nas,
kota_nas_sig,rt_rw_sig,kodepos_nas 
from nasabah   

join agama using(id_agama)
join sigma_tdmin_16_strumah_nas using(id_nas)
join sigma_tdmin_14_jenis_nasabah_sig using(id_nas) 
join sigma_tdmin_17_pekerjaan_nas using(id_nas) 
join sigma_tdmin_19_sd_ktp_nas using(id_nas) 
join sigma_tdmin_20_jenisusaha_nas using(id_nas) 
join sigma_tdmin_21_sd_ktp_nas_sig using(id_nas) 
join sigma_tdmin_22_bentuk_usaha_SIG using(id_nas) 
join sigma_tdmin_24_golongan_deb using(id_nas)  
join sigma_tdmin_25_pekerjaan_nas_sig using(id_nas) 
join sigma_tdmin_26_tgl_nas_sig using(id_nas) 
join sigma_tdmin_27_nama_nas_sig using(id_nas) 
join sigma_tdmin_28_kota_nas_sig using(id_nas) 
join sigma_tdmin_15_rt_sig using(id_nas) 

order by NASABAH.ID_NAS
 