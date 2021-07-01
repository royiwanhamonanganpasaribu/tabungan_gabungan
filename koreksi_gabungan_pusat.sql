-- View: public.coa_his_gabungan

-- DROP VIEW public.coa_his_gabungan;

CREATE OR REPLACE VIEW public.coa_his_gabungan18 AS 
 SELECT gabungan.id_cab,
    gabungan.id_coa,
    gabungan.id_ch,
    gabungan.tgl_ch,
    gabungan.saldo_ch,
    gabungan.entry_date_ch,
    gabungan.urut_ch,
    gabungan.koreksi_ch
   FROM ( SELECT company.id_cab,
            coa_his.id_coa,
            coa_his.id_ch,
            coa_his.tgl_ch,
            coa_his.saldo_ch,
            coa_his.entry_date_ch,
            coa_his.urut_ch,
            coa_his.koreksi_ch
           FROM coa_his,
            company
          WHERE coa_his.tgl_ch = '2021-06-18'
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-18'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as uber_ch
        UNION
         SELECT bkr_ch.id_cab,
            bkr_ch.id_coa,
            bkr_ch.id_ch,
            bkr_ch.tgl_ch,
            bkr_ch.saldo_ch,
            bkr_ch.entry_date_ch,
            bkr_ch.urut_ch,
            bkr_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=bkr'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) ||'2021-06-18'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as bkr_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan
  OWNER TO bprdba;

-- View: public.coa_his_gabungan

-- DROP VIEW public.coa_his_gabungan;

CREATE OR REPLACE VIEW public.coa_his_gabungan19 AS 
 SELECT gabungan.id_cab,
    gabungan.id_coa,
    gabungan.id_ch,
    gabungan.tgl_ch,
    gabungan.saldo_ch,
    gabungan.entry_date_ch,
    gabungan.urut_ch,
    gabungan.koreksi_ch
   FROM ( SELECT company.id_cab,
            coa_his.id_coa,
            coa_his.id_ch,
            coa_his.tgl_ch,
            coa_his.saldo_ch,
            coa_his.entry_date_ch,
            coa_his.urut_ch,
            coa_his.koreksi_ch
           FROM coa_his,
            company
          WHERE coa_his.tgl_ch = '2021-06-19'
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-19'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as uber_ch
        UNION
         SELECT bkr_ch.id_cab,
            bkr_ch.id_coa,
            bkr_ch.id_ch,
            bkr_ch.tgl_ch,
            bkr_ch.saldo_ch,
            bkr_ch.entry_date_ch,
            bkr_ch.urut_ch,
            bkr_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=bkr'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) ||'2021-06-19'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as bkr_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan
  OWNER TO bprdba;

-- View: public.coa_his_gabungan

-- DROP VIEW public.coa_his_gabungan;

CREATE OR REPLACE VIEW public.coa_his_gabungan20 AS 
 SELECT gabungan.id_cab,
    gabungan.id_coa,
    gabungan.id_ch,
    gabungan.tgl_ch,
    gabungan.saldo_ch,
    gabungan.entry_date_ch,
    gabungan.urut_ch,
    gabungan.koreksi_ch
   FROM ( SELECT company.id_cab,
            coa_his.id_coa,
            coa_his.id_ch,
            coa_his.tgl_ch,
            coa_his.saldo_ch,
            coa_his.entry_date_ch,
            coa_his.urut_ch,
            coa_his.koreksi_ch
           FROM coa_his,
            company
          WHERE coa_his.tgl_ch = '2021-06-20'
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-20'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as uber_ch
        UNION
         SELECT bkr_ch.id_cab,
            bkr_ch.id_coa,
            bkr_ch.id_ch,
            bkr_ch.tgl_ch,
            bkr_ch.saldo_ch,
            bkr_ch.entry_date_ch,
            bkr_ch.urut_ch,
            bkr_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=bkr'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) ||'2021-06-20'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as bkr_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan
  OWNER TO bprdba;

-- View: public.coa_his_gabungan

-- DROP VIEW public.coa_his_gabungan;

CREATE OR REPLACE VIEW public.coa_his_gabungan21 AS 
 SELECT gabungan.id_cab,
    gabungan.id_coa,
    gabungan.id_ch,
    gabungan.tgl_ch,
    gabungan.saldo_ch,
    gabungan.entry_date_ch,
    gabungan.urut_ch,
    gabungan.koreksi_ch
   FROM ( SELECT company.id_cab,
            coa_his.id_coa,
            coa_his.id_ch,
            coa_his.tgl_ch,
            coa_his.saldo_ch,
            coa_his.entry_date_ch,
            coa_his.urut_ch,
            coa_his.koreksi_ch
           FROM coa_his,
            company
          WHERE coa_his.tgl_ch = '2021-06-21'
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-21'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as uber_ch
        UNION
         SELECT bkr_ch.id_cab,
            bkr_ch.id_coa,
            bkr_ch.id_ch,
            bkr_ch.tgl_ch,
            bkr_ch.saldo_ch,
            bkr_ch.entry_date_ch,
            bkr_ch.urut_ch,
            bkr_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=bkr'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) ||'2021-06-21'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as bkr_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan
  OWNER TO bprdba;



-- View: public.coa_his_gabungan

-- DROP VIEW public.coa_his_gabungan;

CREATE OR REPLACE VIEW public.coa_his_gabungan22 AS 
 SELECT gabungan.id_cab,
    gabungan.id_coa,
    gabungan.id_ch,
    gabungan.tgl_ch,
    gabungan.saldo_ch,
    gabungan.entry_date_ch,
    gabungan.urut_ch,
    gabungan.koreksi_ch
   FROM ( SELECT company.id_cab,
            coa_his.id_coa,
            coa_his.id_ch,
            coa_his.tgl_ch,
            coa_his.saldo_ch,
            coa_his.entry_date_ch,
            coa_his.urut_ch,
            coa_his.koreksi_ch
           FROM coa_his,
            company
          WHERE coa_his.tgl_ch = '2021-06-22'
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-22'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as uber_ch
        UNION
         SELECT bkr_ch.id_cab,
            bkr_ch.id_coa,
            bkr_ch.id_ch,
            bkr_ch.tgl_ch,
            bkr_ch.saldo_ch,
            bkr_ch.entry_date_ch,
            bkr_ch.urut_ch,
            bkr_ch.koreksi_ch
           FROM (
             SELECT cb.id_cab,
                cb.id_coa,
                cb.id_ch,
                cb.tgl_ch,
                cb.saldo_ch,
                cb.entry_date_ch,
                cb.urut_ch,
                cb.koreksi_ch
               FROM dblink('dbname=bkr'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) ||'2021-06-22'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))

            ) as bkr_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan
  OWNER TO bprdba;


delete from coa_his_rekap where tgl_ch =   '2021-06-18';
--  insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch) select id_coa, sum(saldo_ch),tgl_ch, urut_ch from coa_his_gabungan18 group by id_coa, tgl_ch, urut_ch;
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch,group_gab_ch) 
    select id_coa, sum(saldo_ch),tgl_ch, urut_ch , group_gab_coa
      from coa_his_gabungan18 join coa using (id_coa) group by id_coa, tgl_ch, urut_ch, group_gab_coa;
update coa_his_rekap set saldo_ch = saldo_ch - mg.kecil from 
    (select group_gab_coa, tgl_ch, min(rk.saldo_ch) as kecil from 
      (
        select no_coa,nama_coa,dk_coa,group_gab_coa,coa_his_rekap.* from coa_his_rekap join coa using (id_coa)
          where group_gab_coa is not null and tgl_ch = '2021-06-18'
          order by tgl_ch,group_gab_coa,no_coa
      )rk
     group by group_gab_coa, tgl_ch
     order by tgl_ch, group_gab_coa) mg
   where coa_his_rekap.tgl_ch = mg.tgl_ch and coa_his_rekap.group_gab_ch = mg.group_gab_coa;


  
delete from coa_his_rekap where tgl_ch =   '2021-06-19';
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch,group_gab_ch) 
    select id_coa, sum(saldo_ch),tgl_ch, urut_ch , group_gab_coa
      from coa_his_gabungan19 join coa using (id_coa) group by id_coa, tgl_ch, urut_ch, group_gab_coa;
update coa_his_rekap set saldo_ch = saldo_ch - mg.kecil from 
    (select group_gab_coa, tgl_ch, min(rk.saldo_ch) as kecil from 
      (
        select no_coa,nama_coa,dk_coa,group_gab_coa,coa_his_rekap.* from coa_his_rekap join coa using (id_coa)
          where group_gab_coa is not null and tgl_ch = '2021-06-19'
          order by tgl_ch,group_gab_coa,no_coa
      )rk
     group by group_gab_coa, tgl_ch
     order by tgl_ch, group_gab_coa) mg
   where coa_his_rekap.tgl_ch = mg.tgl_ch and coa_his_rekap.group_gab_ch = mg.group_gab_coa;


  
delete from coa_his_rekap where tgl_ch =   '2021-06-20';
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch,group_gab_ch) 
    select id_coa, sum(saldo_ch),tgl_ch, urut_ch , group_gab_coa
      from coa_his_gabungan20 join coa using (id_coa) group by id_coa, tgl_ch, urut_ch, group_gab_coa;
update coa_his_rekap set saldo_ch = saldo_ch - mg.kecil from 
    (select group_gab_coa, tgl_ch, min(rk.saldo_ch) as kecil from 
      (
        select no_coa,nama_coa,dk_coa,group_gab_coa,coa_his_rekap.* from coa_his_rekap join coa using (id_coa)
          where group_gab_coa is not null and tgl_ch = '2021-06-20'
          order by tgl_ch,group_gab_coa,no_coa
      )rk
     group by group_gab_coa, tgl_ch
     order by tgl_ch, group_gab_coa) mg
   where coa_his_rekap.tgl_ch = mg.tgl_ch and coa_his_rekap.group_gab_ch = mg.group_gab_coa;


 
delete from coa_his_rekap where tgl_ch =   '2021-06-21';
 insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch,group_gab_ch) 
    select id_coa, sum(saldo_ch),tgl_ch, urut_ch , group_gab_coa
      from coa_his_gabungan21  join coa using (id_coa) group by id_coa, tgl_ch, urut_ch, group_gab_coa;
update coa_his_rekap set saldo_ch = saldo_ch - mg.kecil from 
    (select group_gab_coa, tgl_ch, min(rk.saldo_ch) as kecil from 
      (
        select no_coa,nama_coa,dk_coa,group_gab_coa,coa_his_rekap.* from coa_his_rekap join coa using (id_coa)
          where group_gab_coa is not null and tgl_ch = '2021-06-21'
          order by tgl_ch,group_gab_coa,no_coa
      )rk
     group by group_gab_coa, tgl_ch
     order by tgl_ch, group_gab_coa) mg
   where coa_his_rekap.tgl_ch = mg.tgl_ch and coa_his_rekap.group_gab_ch = mg.group_gab_coa;


  
delete from coa_his_rekap where tgl_ch =   '2021-06-22';
--  insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch) select id_coa, sum(saldo_ch),tgl_ch, urut_ch from coa_his_gabungan22 group by id_coa, tgl_ch, urut_ch;
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch,group_gab_ch) 
    select id_coa, sum(saldo_ch),tgl_ch, urut_ch , group_gab_coa
      from coa_his_gabungan22 join coa using (id_coa) group by id_coa, tgl_ch, urut_ch, group_gab_coa;
update coa_his_rekap set saldo_ch = saldo_ch - mg.kecil from 
    (select group_gab_coa, tgl_ch, min(rk.saldo_ch) as kecil from 
      (
        select no_coa,nama_coa,dk_coa,group_gab_coa,coa_his_rekap.* from coa_his_rekap join coa using (id_coa)
          where group_gab_coa is not null and tgl_ch = '2021-06-22'
          order by tgl_ch,group_gab_coa,no_coa
      )rk
     group by group_gab_coa, tgl_ch
     order by tgl_ch, group_gab_coa) mg
   where coa_his_rekap.tgl_ch = mg.tgl_ch and coa_his_rekap.group_gab_ch = mg.group_gab_coa;

 