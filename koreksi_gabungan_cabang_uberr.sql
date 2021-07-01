
update coa_his set urut_ch = 8 where  id_coa = 1055 and tgl_ch between '2021-06-18' and  '2021-06-22'; 

-- View: public.coa_his_gabungan18

-- DROP VIEW public.coa_his_gabungan18;

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
          WHERE coa_his.tgl_ch = '2021-06-18'::date
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM ( SELECT cb.id_cab,
                    cb.id_coa,
                    cb.id_ch,
                    cb.tgl_ch,
                    cb.saldo_ch,
                    cb.entry_date_ch,
                    cb.urut_ch,
                    cb.koreksi_ch
                   FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-18'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))) uber_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan18
  OWNER TO postgres;

-- View: public.coa_his_gabungan19

-- DROP VIEW public.coa_his_gabungan19;

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
          WHERE coa_his.tgl_ch = '2021-06-19'::date
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM ( SELECT cb.id_cab,
                    cb.id_coa,
                    cb.id_ch,
                    cb.tgl_ch,
                    cb.saldo_ch,
                    cb.entry_date_ch,
                    cb.urut_ch,
                    cb.koreksi_ch
                   FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-19'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))) uber_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan19
  OWNER TO postgres;

-- View: public.coa_his_gabungan20

-- DROP VIEW public.coa_his_gabungan20;

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
          WHERE coa_his.tgl_ch = '2021-06-20'::date
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM ( SELECT cb.id_cab,
                    cb.id_coa,
                    cb.id_ch,
                    cb.tgl_ch,
                    cb.saldo_ch,
                    cb.entry_date_ch,
                    cb.urut_ch,
                    cb.koreksi_ch
                   FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-20'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))) uber_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan20
  OWNER TO postgres;

-- View: public.coa_his_gabungan21

-- DROP VIEW public.coa_his_gabungan21;

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
          WHERE coa_his.tgl_ch = '2021-06-21'::date
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM ( SELECT cb.id_cab,
                    cb.id_coa,
                    cb.id_ch,
                    cb.tgl_ch,
                    cb.saldo_ch,
                    cb.entry_date_ch,
                    cb.urut_ch,
                    cb.koreksi_ch
                   FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-21'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))) uber_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan21
  OWNER TO postgres;


-- View: public.coa_his_gabungan22

-- DROP VIEW public.coa_his_gabungan22;

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
          WHERE coa_his.tgl_ch = '2021-06-22'::date
        UNION
         SELECT uber_ch.id_cab,
            uber_ch.id_coa,
            uber_ch.id_ch,
            uber_ch.tgl_ch,
            uber_ch.saldo_ch,
            uber_ch.entry_date_ch,
            uber_ch.urut_ch,
            uber_ch.koreksi_ch
           FROM ( SELECT cb.id_cab,
                    cb.id_coa,
                    cb.id_ch,
                    cb.tgl_ch,
                    cb.saldo_ch,
                    cb.entry_date_ch,
                    cb.urut_ch,
                    cb.koreksi_ch
                   FROM dblink('dbname=uber'::text || npw(), (('select company.id_cab, coa_his.* from coa_his, company '::text || 'where tgl_ch = '''::text) || '2021-06-22'::text) || ''' order by id_coa'::text) cb(id_cab character(2), id_coa integer, id_ch integer, tgl_ch date, saldo_ch numeric(15,2), entry_date_ch date, urut_ch smallint, koreksi_ch numeric(15,2))) uber_ch) gabungan
  ORDER BY gabungan.id_coa, gabungan.id_cab;

ALTER TABLE public.coa_his_gabungan22
  OWNER TO postgres;



delete from coa_his_rekap where tgl_ch =   '2021-06-18';
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch) select id_coa, sum(saldo_ch),tgl_ch, urut_ch from coa_his_gabungan18 group by id_coa, tgl_ch, urut_ch;

delete from coa_his_rekap where tgl_ch =   '2021-06-19';
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch) select id_coa, sum(saldo_ch),tgl_ch, urut_ch from coa_his_gabungan19 group by id_coa, tgl_ch, urut_ch;

delete from coa_his_rekap where tgl_ch =   '2021-06-20';
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch) select id_coa, sum(saldo_ch),tgl_ch, urut_ch from coa_his_gabungan20 group by id_coa, tgl_ch, urut_ch;


delete from coa_his_rekap where tgl_ch =   '2021-06-21';
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch) select id_coa, sum(saldo_ch),tgl_ch, urut_ch from coa_his_gabungan21 group by id_coa, tgl_ch, urut_ch;

delete from coa_his_rekap where tgl_ch =   '2021-06-22';
insert into coa_his_rekap (id_coa, saldo_ch,tgl_ch,urut_ch) select id_coa, sum(saldo_ch),tgl_ch, urut_ch from coa_his_gabungan22 group by id_coa, tgl_ch, urut_ch;

-- uber
update coa_his set urut_ch = null where tgl_ch between '2021-06-18' and '2021-06-22'
  and id_coa = 1021 