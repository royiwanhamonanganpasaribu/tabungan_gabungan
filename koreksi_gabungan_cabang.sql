 
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


update coa_his set urut_ch = 29 where id_coa = 5 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 48 where id_coa = 6 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 18 where id_coa = 500 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 19 where id_coa = 501 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 21 where id_coa = 503 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 22 where id_coa = 504 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 24 where id_coa = 505 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 25 where id_coa = 506 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 1 where id_coa = 815 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 3 where id_coa = 816 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 15 where id_coa = 821 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 17 where id_coa = 822 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 20 where id_coa = 823 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 23 where id_coa = 824 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 26 where id_coa = 825 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 27 where id_coa = 826 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 29 where id_coa = 827 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 30 where id_coa = 828 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 31 where id_coa = 829 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 32 where id_coa = 830 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 33 where id_coa = 831 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 34 where id_coa = 832 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 40 where id_coa = 833 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 41 where id_coa = 834 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 42 where id_coa = 835 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 43 where id_coa = 836 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 44 where id_coa = 837 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 45 where id_coa = 838 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 50 where id_coa = 839 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 1 where id_coa = 842 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 4 where id_coa = 843 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 5 where id_coa = 844 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 10 where id_coa = 845 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 14 where id_coa = 846 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 16 where id_coa = 847 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 17 where id_coa = 848 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 37 where id_coa = 849 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 41 where id_coa = 850 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 42 where id_coa = 851 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 43 where id_coa = 852 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 1 where id_coa = 853 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 20 where id_coa = 854 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 2 where id_coa = 855 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 3 where id_coa = 856 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 4 where id_coa = 857 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 13 where id_coa = 858 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 14 where id_coa = 859 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 21 where id_coa = 860 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 22 where id_coa = 863 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 23 where id_coa = 867 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 24 where id_coa = 868 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 25 where id_coa = 869 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 26 where id_coa = 870 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 28 where id_coa = 871 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 1 where id_coa = 872 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 2 where id_coa = 873 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 3 where id_coa = 874 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 6 where id_coa = 878 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 11 where id_coa = 879 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 16 where id_coa = 880 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 18 where id_coa = 881 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 19 where id_coa = 882 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 20 where id_coa = 883 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 21 where id_coa = 884 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 22 where id_coa = 885 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 23 where id_coa = 886 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 24 where id_coa = 887 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 25 where id_coa = 888 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 26 where id_coa = 889 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 31 where id_coa = 890 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 34 where id_coa = 891 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 35 where id_coa = 892 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 36 where id_coa = 893 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 37 where id_coa = 894 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 38 where id_coa = 896 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 39 where id_coa = 897 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 40 where id_coa = 898 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 41 where id_coa = 899 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 42 where id_coa = 900 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 43 where id_coa = 902 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 44 where id_coa = 903 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 45 where id_coa = 904 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 4 where id_coa = 905 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 48 where id_coa = 906 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 49 where id_coa = 907 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 50 where id_coa = 908 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 51 where id_coa = 909 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 52 where id_coa = 910 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 56 where id_coa = 911 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 32 where id_coa = 912 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 59 where id_coa = 915 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 51 where id_coa = 916 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 6 where id_coa = 917 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 52 where id_coa = 919 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 46 where id_coa = 920 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 4 where id_coa = 922 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 58 where id_coa = 924 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 15 where id_coa = 925 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 5 where id_coa = 926 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 47 where id_coa = 930 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 35 where id_coa = 931 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 31 where id_coa = 932 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 33 where id_coa = 933 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 56 where id_coa = 934 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 46 where id_coa = 935 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 32 where id_coa = 936 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 2 where id_coa = 937 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 13 where id_coa = 938 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 27 where id_coa = 939 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 60 where id_coa = 940 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 53 where id_coa = 941 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 9 where id_coa = 944 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 36 where id_coa = 945 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 47 where id_coa = 946 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 28 where id_coa = 947 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 8 where id_coa = 950 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 12 where id_coa = 951 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 33 where id_coa = 952 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 53 where id_coa = 953 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 9 where id_coa = 956 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 37 where id_coa = 960 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 9 where id_coa = 961 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 29 where id_coa = 963 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 30 where id_coa = 964 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 39 where id_coa = 965 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 40 where id_coa = 966 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 2 where id_coa = 969 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 10 where id_coa = 970 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 11 where id_coa = 971 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 6 where id_coa = 974 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 38 where id_coa = 975 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 36 where id_coa = 976 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 5 where id_coa = 977 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 7 where id_coa = 979 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 9 where id_coa = 980 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 10 where id_coa = 982 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 8 where id_coa = 984 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 12 where id_coa = 986 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 13 where id_coa = 987 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 18 where id_coa = 988 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 5 where id_coa = 989 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 34 where id_coa = 992 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 7 where id_coa = 993 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 57 where id_coa = 994 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 3 where id_coa = 998 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 16 where id_coa = 999 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 20 where id_coa = 1002 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 11 where id_coa = 1003 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 54 where id_coa = 1004 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 21 where id_coa = 1005 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 29 where id_coa = 1006 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 54 where id_coa = 1007 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 57 where id_coa = 1008 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 58 where id_coa = 1009 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 22 where id_coa = 1010 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 23 where id_coa = 1011 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 12 where id_coa = 1012 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 6 where id_coa = 1013 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 11 where id_coa = 1014 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 17 where id_coa = 1015 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 35 where id_coa = 1016 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 38 where id_coa = 1017 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 39 where id_coa = 1018 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 49 where id_coa = 1019 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 30 where id_coa = 1020 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 15 where id_coa = 1022 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 59 where id_coa = 1023 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 24 where id_coa = 1024 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 18 where id_coa = 1026 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 16 where id_coa = 1029 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 12 where id_coa = 1031 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 27 where id_coa = 1032 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 28 where id_coa = 1033 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 7 where id_coa = 1034 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 14 where id_coa = 1035 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 15 where id_coa = 1036 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 17 where id_coa = 1037 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 13 where id_coa = 1038 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 19 where id_coa = 1040 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 55 where id_coa = 1041 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 60 where id_coa = 1042 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 61 where id_coa = 1043 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 62 where id_coa = 1044 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 25 where id_coa = 1045 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 26 where id_coa = 1046 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 27 where id_coa = 1047 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 28 where id_coa = 1048 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 30 where id_coa = 1049 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 55 where id_coa = 1050 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 14 where id_coa = 1051 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 8 where id_coa = 1052 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 19 where id_coa = 1053 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 7 where id_coa = 1054 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 8 where id_coa = 1055 and tgl_ch = '2021-06-18';
update coa_his set urut_ch = 10 where id_coa = 1056 and tgl_ch = '2021-06-18';

   update coa_his set urut_ch = 29 where id_coa = 5 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 48 where id_coa = 6 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 18 where id_coa = 500 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 19 where id_coa = 501 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 21 where id_coa = 503 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 22 where id_coa = 504 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 24 where id_coa = 505 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 25 where id_coa = 506 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 1 where id_coa = 815 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 3 where id_coa = 816 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 15 where id_coa = 821 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 17 where id_coa = 822 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 20 where id_coa = 823 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 23 where id_coa = 824 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 26 where id_coa = 825 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 27 where id_coa = 826 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 29 where id_coa = 827 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 30 where id_coa = 828 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 31 where id_coa = 829 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 32 where id_coa = 830 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 33 where id_coa = 831 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 34 where id_coa = 832 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 40 where id_coa = 833 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 41 where id_coa = 834 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 42 where id_coa = 835 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 43 where id_coa = 836 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 44 where id_coa = 837 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 45 where id_coa = 838 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 50 where id_coa = 839 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 1 where id_coa = 842 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 4 where id_coa = 843 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 5 where id_coa = 844 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 10 where id_coa = 845 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 14 where id_coa = 846 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 16 where id_coa = 847 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 17 where id_coa = 848 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 37 where id_coa = 849 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 41 where id_coa = 850 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 42 where id_coa = 851 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 43 where id_coa = 852 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 1 where id_coa = 853 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 20 where id_coa = 854 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 2 where id_coa = 855 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 3 where id_coa = 856 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 4 where id_coa = 857 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 13 where id_coa = 858 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 14 where id_coa = 859 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 21 where id_coa = 860 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 22 where id_coa = 863 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 23 where id_coa = 867 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 24 where id_coa = 868 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 25 where id_coa = 869 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 26 where id_coa = 870 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 28 where id_coa = 871 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 1 where id_coa = 872 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 2 where id_coa = 873 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 3 where id_coa = 874 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 6 where id_coa = 878 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 11 where id_coa = 879 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 16 where id_coa = 880 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 18 where id_coa = 881 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 19 where id_coa = 882 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 20 where id_coa = 883 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 21 where id_coa = 884 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 22 where id_coa = 885 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 23 where id_coa = 886 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 24 where id_coa = 887 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 25 where id_coa = 888 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 26 where id_coa = 889 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 31 where id_coa = 890 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 34 where id_coa = 891 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 35 where id_coa = 892 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 36 where id_coa = 893 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 37 where id_coa = 894 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 38 where id_coa = 896 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 39 where id_coa = 897 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 40 where id_coa = 898 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 41 where id_coa = 899 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 42 where id_coa = 900 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 43 where id_coa = 902 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 44 where id_coa = 903 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 45 where id_coa = 904 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 4 where id_coa = 905 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 48 where id_coa = 906 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 49 where id_coa = 907 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 50 where id_coa = 908 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 51 where id_coa = 909 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 52 where id_coa = 910 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 56 where id_coa = 911 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 32 where id_coa = 912 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 59 where id_coa = 915 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 51 where id_coa = 916 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 6 where id_coa = 917 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 52 where id_coa = 919 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 46 where id_coa = 920 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 4 where id_coa = 922 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 58 where id_coa = 924 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 15 where id_coa = 925 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 5 where id_coa = 926 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 47 where id_coa = 930 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 35 where id_coa = 931 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 31 where id_coa = 932 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 33 where id_coa = 933 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 56 where id_coa = 934 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 46 where id_coa = 935 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 32 where id_coa = 936 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 2 where id_coa = 937 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 13 where id_coa = 938 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 27 where id_coa = 939 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 60 where id_coa = 940 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 53 where id_coa = 941 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 9 where id_coa = 944 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 36 where id_coa = 945 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 47 where id_coa = 946 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 28 where id_coa = 947 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 8 where id_coa = 950 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 12 where id_coa = 951 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 33 where id_coa = 952 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 53 where id_coa = 953 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 9 where id_coa = 956 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 37 where id_coa = 960 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 9 where id_coa = 961 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 29 where id_coa = 963 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 30 where id_coa = 964 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 39 where id_coa = 965 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 40 where id_coa = 966 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 2 where id_coa = 969 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 10 where id_coa = 970 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 11 where id_coa = 971 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 6 where id_coa = 974 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 38 where id_coa = 975 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 36 where id_coa = 976 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 5 where id_coa = 977 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 7 where id_coa = 979 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 9 where id_coa = 980 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 10 where id_coa = 982 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 8 where id_coa = 984 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 12 where id_coa = 986 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 13 where id_coa = 987 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 18 where id_coa = 988 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 5 where id_coa = 989 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 34 where id_coa = 992 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 7 where id_coa = 993 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 57 where id_coa = 994 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 3 where id_coa = 998 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 16 where id_coa = 999 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 20 where id_coa = 1002 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 11 where id_coa = 1003 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 54 where id_coa = 1004 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 21 where id_coa = 1005 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 29 where id_coa = 1006 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 54 where id_coa = 1007 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 57 where id_coa = 1008 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 58 where id_coa = 1009 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 22 where id_coa = 1010 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 23 where id_coa = 1011 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 12 where id_coa = 1012 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 6 where id_coa = 1013 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 11 where id_coa = 1014 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 17 where id_coa = 1015 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 35 where id_coa = 1016 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 38 where id_coa = 1017 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 39 where id_coa = 1018 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 49 where id_coa = 1019 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 30 where id_coa = 1020 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 15 where id_coa = 1022 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 59 where id_coa = 1023 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 24 where id_coa = 1024 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 18 where id_coa = 1026 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 16 where id_coa = 1029 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 12 where id_coa = 1031 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 27 where id_coa = 1032 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 28 where id_coa = 1033 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 7 where id_coa = 1034 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 14 where id_coa = 1035 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 15 where id_coa = 1036 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 17 where id_coa = 1037 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 13 where id_coa = 1038 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 19 where id_coa = 1040 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 55 where id_coa = 1041 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 60 where id_coa = 1042 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 61 where id_coa = 1043 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 62 where id_coa = 1044 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 25 where id_coa = 1045 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 26 where id_coa = 1046 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 27 where id_coa = 1047 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 28 where id_coa = 1048 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 30 where id_coa = 1049 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 55 where id_coa = 1050 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 14 where id_coa = 1051 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 8 where id_coa = 1052 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 19 where id_coa = 1053 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 7 where id_coa = 1054 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 8 where id_coa = 1055 and tgl_ch = '2021-06-19';
update coa_his set urut_ch = 10 where id_coa = 1056 and tgl_ch = '2021-06-19';
   update coa_his set urut_ch = 29 where id_coa = 5 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 48 where id_coa = 6 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 18 where id_coa = 500 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 19 where id_coa = 501 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 21 where id_coa = 503 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 22 where id_coa = 504 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 24 where id_coa = 505 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 25 where id_coa = 506 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 1 where id_coa = 815 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 3 where id_coa = 816 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 15 where id_coa = 821 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 17 where id_coa = 822 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 20 where id_coa = 823 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 23 where id_coa = 824 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 26 where id_coa = 825 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 27 where id_coa = 826 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 29 where id_coa = 827 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 30 where id_coa = 828 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 31 where id_coa = 829 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 32 where id_coa = 830 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 33 where id_coa = 831 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 34 where id_coa = 832 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 40 where id_coa = 833 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 41 where id_coa = 834 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 42 where id_coa = 835 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 43 where id_coa = 836 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 44 where id_coa = 837 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 45 where id_coa = 838 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 50 where id_coa = 839 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 1 where id_coa = 842 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 4 where id_coa = 843 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 5 where id_coa = 844 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 10 where id_coa = 845 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 14 where id_coa = 846 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 16 where id_coa = 847 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 17 where id_coa = 848 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 37 where id_coa = 849 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 41 where id_coa = 850 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 42 where id_coa = 851 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 43 where id_coa = 852 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 1 where id_coa = 853 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 20 where id_coa = 854 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 2 where id_coa = 855 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 3 where id_coa = 856 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 4 where id_coa = 857 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 13 where id_coa = 858 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 14 where id_coa = 859 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 21 where id_coa = 860 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 22 where id_coa = 863 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 23 where id_coa = 867 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 24 where id_coa = 868 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 25 where id_coa = 869 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 26 where id_coa = 870 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 28 where id_coa = 871 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 1 where id_coa = 872 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 2 where id_coa = 873 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 3 where id_coa = 874 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 6 where id_coa = 878 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 11 where id_coa = 879 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 16 where id_coa = 880 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 18 where id_coa = 881 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 19 where id_coa = 882 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 20 where id_coa = 883 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 21 where id_coa = 884 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 22 where id_coa = 885 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 23 where id_coa = 886 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 24 where id_coa = 887 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 25 where id_coa = 888 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 26 where id_coa = 889 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 31 where id_coa = 890 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 34 where id_coa = 891 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 35 where id_coa = 892 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 36 where id_coa = 893 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 37 where id_coa = 894 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 38 where id_coa = 896 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 39 where id_coa = 897 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 40 where id_coa = 898 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 41 where id_coa = 899 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 42 where id_coa = 900 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 43 where id_coa = 902 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 44 where id_coa = 903 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 45 where id_coa = 904 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 4 where id_coa = 905 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 48 where id_coa = 906 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 49 where id_coa = 907 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 50 where id_coa = 908 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 51 where id_coa = 909 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 52 where id_coa = 910 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 56 where id_coa = 911 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 32 where id_coa = 912 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 59 where id_coa = 915 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 51 where id_coa = 916 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 6 where id_coa = 917 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 52 where id_coa = 919 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 46 where id_coa = 920 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 4 where id_coa = 922 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 58 where id_coa = 924 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 15 where id_coa = 925 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 5 where id_coa = 926 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 47 where id_coa = 930 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 35 where id_coa = 931 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 31 where id_coa = 932 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 33 where id_coa = 933 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 56 where id_coa = 934 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 46 where id_coa = 935 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 32 where id_coa = 936 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 2 where id_coa = 937 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 13 where id_coa = 938 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 27 where id_coa = 939 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 60 where id_coa = 940 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 53 where id_coa = 941 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 9 where id_coa = 944 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 36 where id_coa = 945 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 47 where id_coa = 946 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 28 where id_coa = 947 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 8 where id_coa = 950 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 12 where id_coa = 951 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 33 where id_coa = 952 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 53 where id_coa = 953 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 9 where id_coa = 956 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 37 where id_coa = 960 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 9 where id_coa = 961 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 29 where id_coa = 963 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 30 where id_coa = 964 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 39 where id_coa = 965 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 40 where id_coa = 966 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 2 where id_coa = 969 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 10 where id_coa = 970 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 11 where id_coa = 971 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 6 where id_coa = 974 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 38 where id_coa = 975 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 36 where id_coa = 976 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 5 where id_coa = 977 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 7 where id_coa = 979 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 9 where id_coa = 980 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 10 where id_coa = 982 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 8 where id_coa = 984 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 12 where id_coa = 986 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 13 where id_coa = 987 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 18 where id_coa = 988 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 5 where id_coa = 989 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 34 where id_coa = 992 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 7 where id_coa = 993 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 57 where id_coa = 994 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 3 where id_coa = 998 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 16 where id_coa = 999 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 20 where id_coa = 1002 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 11 where id_coa = 1003 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 54 where id_coa = 1004 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 21 where id_coa = 1005 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 29 where id_coa = 1006 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 54 where id_coa = 1007 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 57 where id_coa = 1008 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 58 where id_coa = 1009 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 22 where id_coa = 1010 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 23 where id_coa = 1011 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 12 where id_coa = 1012 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 6 where id_coa = 1013 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 11 where id_coa = 1014 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 17 where id_coa = 1015 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 35 where id_coa = 1016 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 38 where id_coa = 1017 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 39 where id_coa = 1018 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 49 where id_coa = 1019 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 30 where id_coa = 1020 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 15 where id_coa = 1022 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 59 where id_coa = 1023 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 24 where id_coa = 1024 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 18 where id_coa = 1026 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 16 where id_coa = 1029 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 12 where id_coa = 1031 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 27 where id_coa = 1032 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 28 where id_coa = 1033 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 7 where id_coa = 1034 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 14 where id_coa = 1035 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 15 where id_coa = 1036 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 17 where id_coa = 1037 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 13 where id_coa = 1038 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 19 where id_coa = 1040 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 55 where id_coa = 1041 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 60 where id_coa = 1042 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 61 where id_coa = 1043 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 62 where id_coa = 1044 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 25 where id_coa = 1045 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 26 where id_coa = 1046 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 27 where id_coa = 1047 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 28 where id_coa = 1048 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 30 where id_coa = 1049 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 55 where id_coa = 1050 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 14 where id_coa = 1051 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 8 where id_coa = 1052 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 19 where id_coa = 1053 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 7 where id_coa = 1054 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 8 where id_coa = 1055 and tgl_ch = '2021-06-20';
update coa_his set urut_ch = 10 where id_coa = 1056 and tgl_ch = '2021-06-20';

   update coa_his set urut_ch = 29 where id_coa = 5 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 48 where id_coa = 6 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 18 where id_coa = 500 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 19 where id_coa = 501 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 21 where id_coa = 503 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 22 where id_coa = 504 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 24 where id_coa = 505 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 25 where id_coa = 506 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 1 where id_coa = 815 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 3 where id_coa = 816 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 15 where id_coa = 821 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 17 where id_coa = 822 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 20 where id_coa = 823 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 23 where id_coa = 824 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 26 where id_coa = 825 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 27 where id_coa = 826 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 29 where id_coa = 827 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 30 where id_coa = 828 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 31 where id_coa = 829 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 32 where id_coa = 830 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 33 where id_coa = 831 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 34 where id_coa = 832 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 40 where id_coa = 833 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 41 where id_coa = 834 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 42 where id_coa = 835 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 43 where id_coa = 836 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 44 where id_coa = 837 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 45 where id_coa = 838 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 50 where id_coa = 839 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 1 where id_coa = 842 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 4 where id_coa = 843 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 5 where id_coa = 844 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 10 where id_coa = 845 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 14 where id_coa = 846 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 16 where id_coa = 847 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 17 where id_coa = 848 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 37 where id_coa = 849 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 41 where id_coa = 850 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 42 where id_coa = 851 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 43 where id_coa = 852 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 1 where id_coa = 853 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 20 where id_coa = 854 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 2 where id_coa = 855 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 3 where id_coa = 856 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 4 where id_coa = 857 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 13 where id_coa = 858 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 14 where id_coa = 859 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 21 where id_coa = 860 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 22 where id_coa = 863 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 23 where id_coa = 867 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 24 where id_coa = 868 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 25 where id_coa = 869 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 26 where id_coa = 870 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 28 where id_coa = 871 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 1 where id_coa = 872 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 2 where id_coa = 873 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 3 where id_coa = 874 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 6 where id_coa = 878 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 11 where id_coa = 879 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 16 where id_coa = 880 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 18 where id_coa = 881 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 19 where id_coa = 882 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 20 where id_coa = 883 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 21 where id_coa = 884 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 22 where id_coa = 885 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 23 where id_coa = 886 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 24 where id_coa = 887 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 25 where id_coa = 888 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 26 where id_coa = 889 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 31 where id_coa = 890 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 34 where id_coa = 891 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 35 where id_coa = 892 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 36 where id_coa = 893 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 37 where id_coa = 894 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 38 where id_coa = 896 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 39 where id_coa = 897 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 40 where id_coa = 898 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 41 where id_coa = 899 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 42 where id_coa = 900 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 43 where id_coa = 902 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 44 where id_coa = 903 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 45 where id_coa = 904 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 4 where id_coa = 905 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 48 where id_coa = 906 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 49 where id_coa = 907 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 50 where id_coa = 908 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 51 where id_coa = 909 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 52 where id_coa = 910 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 56 where id_coa = 911 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 32 where id_coa = 912 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 59 where id_coa = 915 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 51 where id_coa = 916 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 6 where id_coa = 917 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 52 where id_coa = 919 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 46 where id_coa = 920 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 4 where id_coa = 922 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 58 where id_coa = 924 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 15 where id_coa = 925 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 5 where id_coa = 926 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 47 where id_coa = 930 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 35 where id_coa = 931 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 31 where id_coa = 932 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 33 where id_coa = 933 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 56 where id_coa = 934 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 46 where id_coa = 935 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 32 where id_coa = 936 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 2 where id_coa = 937 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 13 where id_coa = 938 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 27 where id_coa = 939 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 60 where id_coa = 940 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 53 where id_coa = 941 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 9 where id_coa = 944 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 36 where id_coa = 945 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 47 where id_coa = 946 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 28 where id_coa = 947 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 8 where id_coa = 950 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 12 where id_coa = 951 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 33 where id_coa = 952 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 53 where id_coa = 953 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 9 where id_coa = 956 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 37 where id_coa = 960 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 9 where id_coa = 961 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 29 where id_coa = 963 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 30 where id_coa = 964 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 39 where id_coa = 965 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 40 where id_coa = 966 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 2 where id_coa = 969 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 10 where id_coa = 970 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 11 where id_coa = 971 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 6 where id_coa = 974 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 38 where id_coa = 975 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 36 where id_coa = 976 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 5 where id_coa = 977 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 7 where id_coa = 979 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 9 where id_coa = 980 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 10 where id_coa = 982 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 8 where id_coa = 984 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 12 where id_coa = 986 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 13 where id_coa = 987 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 18 where id_coa = 988 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 5 where id_coa = 989 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 34 where id_coa = 992 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 7 where id_coa = 993 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 57 where id_coa = 994 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 3 where id_coa = 998 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 16 where id_coa = 999 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 20 where id_coa = 1002 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 11 where id_coa = 1003 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 54 where id_coa = 1004 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 21 where id_coa = 1005 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 29 where id_coa = 1006 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 54 where id_coa = 1007 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 57 where id_coa = 1008 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 58 where id_coa = 1009 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 22 where id_coa = 1010 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 23 where id_coa = 1011 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 12 where id_coa = 1012 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 6 where id_coa = 1013 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 11 where id_coa = 1014 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 17 where id_coa = 1015 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 35 where id_coa = 1016 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 38 where id_coa = 1017 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 39 where id_coa = 1018 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 49 where id_coa = 1019 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 30 where id_coa = 1020 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 15 where id_coa = 1022 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 59 where id_coa = 1023 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 24 where id_coa = 1024 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 18 where id_coa = 1026 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 16 where id_coa = 1029 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 12 where id_coa = 1031 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 27 where id_coa = 1032 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 28 where id_coa = 1033 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 7 where id_coa = 1034 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 14 where id_coa = 1035 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 15 where id_coa = 1036 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 17 where id_coa = 1037 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 13 where id_coa = 1038 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 19 where id_coa = 1040 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 55 where id_coa = 1041 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 60 where id_coa = 1042 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 61 where id_coa = 1043 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 62 where id_coa = 1044 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 25 where id_coa = 1045 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 26 where id_coa = 1046 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 27 where id_coa = 1047 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 28 where id_coa = 1048 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 30 where id_coa = 1049 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 55 where id_coa = 1050 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 14 where id_coa = 1051 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 8 where id_coa = 1052 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 19 where id_coa = 1053 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 7 where id_coa = 1054 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 8 where id_coa = 1055 and tgl_ch = '2021-06-21';
update coa_his set urut_ch = 10 where id_coa = 1056 and tgl_ch = '2021-06-21';
   update coa_his set urut_ch = 29 where id_coa = 5 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 48 where id_coa = 6 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 18 where id_coa = 500 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 19 where id_coa = 501 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 21 where id_coa = 503 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 22 where id_coa = 504 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 24 where id_coa = 505 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 25 where id_coa = 506 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 1 where id_coa = 815 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 3 where id_coa = 816 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 15 where id_coa = 821 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 17 where id_coa = 822 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 20 where id_coa = 823 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 23 where id_coa = 824 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 26 where id_coa = 825 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 27 where id_coa = 826 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 29 where id_coa = 827 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 30 where id_coa = 828 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 31 where id_coa = 829 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 32 where id_coa = 830 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 33 where id_coa = 831 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 34 where id_coa = 832 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 40 where id_coa = 833 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 41 where id_coa = 834 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 42 where id_coa = 835 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 43 where id_coa = 836 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 44 where id_coa = 837 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 45 where id_coa = 838 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 50 where id_coa = 839 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 1 where id_coa = 842 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 4 where id_coa = 843 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 5 where id_coa = 844 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 10 where id_coa = 845 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 14 where id_coa = 846 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 16 where id_coa = 847 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 17 where id_coa = 848 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 37 where id_coa = 849 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 41 where id_coa = 850 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 42 where id_coa = 851 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 43 where id_coa = 852 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 1 where id_coa = 853 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 20 where id_coa = 854 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 2 where id_coa = 855 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 3 where id_coa = 856 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 4 where id_coa = 857 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 13 where id_coa = 858 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 14 where id_coa = 859 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 21 where id_coa = 860 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 22 where id_coa = 863 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 23 where id_coa = 867 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 24 where id_coa = 868 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 25 where id_coa = 869 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 26 where id_coa = 870 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 28 where id_coa = 871 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 1 where id_coa = 872 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 2 where id_coa = 873 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 3 where id_coa = 874 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 6 where id_coa = 878 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 11 where id_coa = 879 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 16 where id_coa = 880 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 18 where id_coa = 881 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 19 where id_coa = 882 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 20 where id_coa = 883 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 21 where id_coa = 884 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 22 where id_coa = 885 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 23 where id_coa = 886 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 24 where id_coa = 887 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 25 where id_coa = 888 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 26 where id_coa = 889 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 31 where id_coa = 890 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 34 where id_coa = 891 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 35 where id_coa = 892 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 36 where id_coa = 893 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 37 where id_coa = 894 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 38 where id_coa = 896 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 39 where id_coa = 897 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 40 where id_coa = 898 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 41 where id_coa = 899 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 42 where id_coa = 900 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 43 where id_coa = 902 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 44 where id_coa = 903 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 45 where id_coa = 904 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 4 where id_coa = 905 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 48 where id_coa = 906 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 49 where id_coa = 907 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 50 where id_coa = 908 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 51 where id_coa = 909 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 52 where id_coa = 910 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 56 where id_coa = 911 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 32 where id_coa = 912 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 59 where id_coa = 915 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 51 where id_coa = 916 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 6 where id_coa = 917 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 52 where id_coa = 919 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 46 where id_coa = 920 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 4 where id_coa = 922 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 58 where id_coa = 924 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 15 where id_coa = 925 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 5 where id_coa = 926 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 47 where id_coa = 930 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 35 where id_coa = 931 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 31 where id_coa = 932 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 33 where id_coa = 933 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 56 where id_coa = 934 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 46 where id_coa = 935 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 32 where id_coa = 936 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 2 where id_coa = 937 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 13 where id_coa = 938 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 27 where id_coa = 939 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 60 where id_coa = 940 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 53 where id_coa = 941 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 9 where id_coa = 944 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 36 where id_coa = 945 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 47 where id_coa = 946 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 28 where id_coa = 947 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 8 where id_coa = 950 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 12 where id_coa = 951 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 33 where id_coa = 952 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 53 where id_coa = 953 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 9 where id_coa = 956 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 37 where id_coa = 960 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 9 where id_coa = 961 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 29 where id_coa = 963 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 30 where id_coa = 964 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 39 where id_coa = 965 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 40 where id_coa = 966 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 2 where id_coa = 969 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 10 where id_coa = 970 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 11 where id_coa = 971 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 6 where id_coa = 974 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 38 where id_coa = 975 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 36 where id_coa = 976 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 5 where id_coa = 977 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 7 where id_coa = 979 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 9 where id_coa = 980 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 10 where id_coa = 982 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 8 where id_coa = 984 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 12 where id_coa = 986 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 13 where id_coa = 987 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 18 where id_coa = 988 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 5 where id_coa = 989 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 34 where id_coa = 992 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 7 where id_coa = 993 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 57 where id_coa = 994 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 3 where id_coa = 998 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 16 where id_coa = 999 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 20 where id_coa = 1002 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 11 where id_coa = 1003 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 54 where id_coa = 1004 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 21 where id_coa = 1005 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 29 where id_coa = 1006 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 54 where id_coa = 1007 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 57 where id_coa = 1008 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 58 where id_coa = 1009 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 22 where id_coa = 1010 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 23 where id_coa = 1011 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 12 where id_coa = 1012 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 6 where id_coa = 1013 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 11 where id_coa = 1014 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 17 where id_coa = 1015 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 35 where id_coa = 1016 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 38 where id_coa = 1017 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 39 where id_coa = 1018 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 49 where id_coa = 1019 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 30 where id_coa = 1020 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 15 where id_coa = 1022 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 59 where id_coa = 1023 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 24 where id_coa = 1024 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 18 where id_coa = 1026 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 16 where id_coa = 1029 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 12 where id_coa = 1031 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 27 where id_coa = 1032 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 28 where id_coa = 1033 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 7 where id_coa = 1034 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 14 where id_coa = 1035 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 15 where id_coa = 1036 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 17 where id_coa = 1037 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 13 where id_coa = 1038 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 19 where id_coa = 1040 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 55 where id_coa = 1041 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 60 where id_coa = 1042 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 61 where id_coa = 1043 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 62 where id_coa = 1044 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 25 where id_coa = 1045 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 26 where id_coa = 1046 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 27 where id_coa = 1047 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 28 where id_coa = 1048 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 30 where id_coa = 1049 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 55 where id_coa = 1050 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 14 where id_coa = 1051 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 8 where id_coa = 1052 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 19 where id_coa = 1053 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 7 where id_coa = 1054 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 8 where id_coa = 1055 and tgl_ch = '2021-06-22';
update coa_his set urut_ch = 10 where id_coa = 1056 and tgl_ch = '2021-06-22';


update coa_his set urut_ch = null where tgl_ch between '2021-06-18' and '2021-06-22'
  and id_coa = 1021 ;


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

