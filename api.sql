PGDMP         :                z            api    14.4    14.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16420    api    DATABASE     e   CREATE DATABASE api WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE api;
                postgres    false            ?            1259    16429    users    TABLE     x   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(30),
    email character varying(30)
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?           0    0    TABLE users    ACL     '   GRANT ALL ON TABLE public.users TO me;
          public          postgres    false    210            ?            1259    16428    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            ?           0    0    SEQUENCE users_id_seq    ACL     1   GRANT ALL ON SEQUENCE public.users_id_seq TO me;
          public          postgres    false    209            \           2604    16432    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?          0    16429    users 
   TABLE DATA           0   COPY public.users (id, name, email) FROM stdin;
    public          postgres    false    210   w       ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 8, true);
          public          postgres    false    209            ^           2606    16434    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            ?   F   x?3??J-*???????9?z???\F????E驜?`
EΘ3???L??)?6???P?J??qqq ?a     