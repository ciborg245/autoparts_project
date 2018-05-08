PGDMP         .                v         	   autoparts    9.6.8    10.3     a           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            b           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            c           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            d           1262    16796 	   autoparts    DATABASE     �   CREATE DATABASE autoparts WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE autoparts;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            e           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            f           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16797    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         postgres    false    3            �            1259    16815    parts    TABLE       CREATE TABLE public.parts (
    id integer NOT NULL,
    name character varying(255),
    weight double precision,
    price double precision,
    color character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.parts;
       public         postgres    false    3            �            1259    16813    parts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.parts_id_seq;
       public       postgres    false    189    3            g           0    0    parts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.parts_id_seq OWNED BY public.parts.id;
            public       postgres    false    188            �            1259    16804    users    TABLE     U  CREATE TABLE public.users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    direction character varying(255),
    email character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         postgres    false    3            �            1259    16802    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    187    3            h           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    186            �           2604    16818    parts id    DEFAULT     d   ALTER TABLE ONLY public.parts ALTER COLUMN id SET DEFAULT nextval('public.parts_id_seq'::regclass);
 7   ALTER TABLE public.parts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    189    189            �           2604    16807    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    186    187            Z          0    16797    SequelizeMeta 
   TABLE DATA               /   COPY public."SequelizeMeta" (name) FROM stdin;
    public       postgres    false    185   �       ^          0    16815    parts 
   TABLE DATA               Y   COPY public.parts (id, name, weight, price, color, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    189   �       \          0    16804    users 
   TABLE DATA               n   COPY public.users (id, firstname, lastname, direction, email, password, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    187   �       i           0    0    parts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.parts_id_seq', 13, true);
            public       postgres    false    188            j           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
            public       postgres    false    186            �           2606    16801     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public         postgres    false    185            �           2606    16823    parts parts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.parts
    ADD CONSTRAINT parts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.parts DROP CONSTRAINT parts_pkey;
       public         postgres    false    189            �           2606    16812    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    187            Z   9   x�320�005�003266�M.JM,I�--N-*��*�2BH�¤�J��1z\\\ f8[      ^   �   x����j�0���S��#$ۊ�<�Ne�]�%��}�Ք��9�b>��_�����f����.#8ef8��KhY[�H�Lo���-w �[�U.�i<��w�u��U�Bax�L�-5�qvj��2+�B��Pt��#�)�{M��P̢���(] ���rA(v���;�FR[� �pL�9s.�bJ����<mCe�]m�+�����>/����yV���̍"      \   �   x�}�M�0�u{
/@�RA�q3�R��ն��<���CH �f�K�ǐ��kiP�qH�����\��i�E�3p�e�D)eEB��+������"����p��^+��{w�xߤR�;t��3�pu^̗���_D�
s$��B��C���'&�]�� �$�j��!��z��l����'��c�     