PGDMP  (    1            	    |         
   render_a24    16.3 (Debian 16.3-1.pgdg120+1)    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16389 
   render_a24    DATABASE     u   CREATE DATABASE render_a24 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF8';
    DROP DATABASE render_a24;
                render_a24_user    false            �           0    0 
   render_a24    DATABASE PROPERTIES     3   ALTER DATABASE render_a24 SET "TimeZone" TO 'utc';
                     render_a24_user    false                       1259    17424    enrollments    TABLE     �   CREATE TABLE public.enrollments (
    enrollment_id integer NOT NULL,
    student_id smallint,
    course_name character varying(20),
    grade character varying(5)
);
    DROP TABLE public.enrollments;
       public         heap    render_a24_user    false                       1259    17423    enrollments_enrollment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enrollments_enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.enrollments_enrollment_id_seq;
       public          render_a24_user    false    259            �           0    0    enrollments_enrollment_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.enrollments_enrollment_id_seq OWNED BY public.enrollments.enrollment_id;
          public          render_a24_user    false    258            �           2604    17427    enrollments enrollment_id    DEFAULT     �   ALTER TABLE ONLY public.enrollments ALTER COLUMN enrollment_id SET DEFAULT nextval('public.enrollments_enrollment_id_seq'::regclass);
 H   ALTER TABLE public.enrollments ALTER COLUMN enrollment_id DROP DEFAULT;
       public          render_a24_user    false    258    259    259            �          0    17424    enrollments 
   TABLE DATA           T   COPY public.enrollments (enrollment_id, student_id, course_name, grade) FROM stdin;
    public          render_a24_user    false    259   >       �           0    0    enrollments_enrollment_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.enrollments_enrollment_id_seq', 10, true);
          public          render_a24_user    false    258            �           2606    17429    enrollments enrollments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public            render_a24_user    false    259            �           2606    17430 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public          render_a24_user    false    259            �   �   x�3�4�|���ٴ�Ow�~�y��9�����Wt?���b��+:8����9�0U�r� ��o��rA#T�#�)�1�n.3�D���-�h�i�i�6�P���9ϖ�EXb�i�j	P��P��b���� �j�     