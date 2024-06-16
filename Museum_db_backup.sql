PGDMP      9                |            1    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16470    1    DATABASE     w   CREATE DATABASE "1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "1";
                postgres    false            �            1259    16471    events    TABLE       CREATE TABLE public.events (
    id integer NOT NULL,
    name character varying(300),
    link character varying(300),
    discription character varying(10000),
    photo character varying(300),
    pub_date character varying(50),
    museum character varying(500)
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    16476    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    215            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    216            �            1259    16477    records    TABLE     <  CREATE TABLE public.records (
    id integer NOT NULL,
    name_1 character varying(50),
    name_2 character varying(50),
    name_3 character varying(50),
    phone character varying(50),
    email character varying(50),
    c_date character varying(50),
    event_name character varying(500),
    paid boolean
);
    DROP TABLE public.records;
       public         heap    postgres    false            �            1259    16482    records_id_seq    SEQUENCE     �   CREATE SEQUENCE public.records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.records_id_seq;
       public          postgres    false    217            �           0    0    records_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.records_id_seq OWNED BY public.records.id;
          public          postgres    false    218            �            1259    16483    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    login character varying(50),
    pass character varying(100),
    administrator boolean
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16486    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    219                        0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    220            Z           2604    16487 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            [           2604    16488 
   records id    DEFAULT     h   ALTER TABLE ONLY public.records ALTER COLUMN id SET DEFAULT nextval('public.records_id_seq'::regclass);
 9   ALTER TABLE public.records ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            \           2604    16489    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �          0    16471    events 
   TABLE DATA           V   COPY public.events (id, name, link, discription, photo, pub_date, museum) FROM stdin;
    public          postgres    false    215          �          0    16477    records 
   TABLE DATA           e   COPY public.records (id, name_1, name_2, name_3, phone, email, c_date, event_name, paid) FROM stdin;
    public          postgres    false    217   �J       �          0    16483    users 
   TABLE DATA           ?   COPY public.users (id, login, pass, administrator) FROM stdin;
    public          postgres    false    219   K                  0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 94, true);
          public          postgres    false    216                       0    0    records_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.records_id_seq', 14, true);
          public          postgres    false    218                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    220            ^           2606    16491    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    215            `           2606    16493    records records_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.records
    ADD CONSTRAINT records_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.records DROP CONSTRAINT records_pkey;
       public            postgres    false    217            b           2606    16495    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219            �      x��}[oז��+��#���E��h�1�s�33@0�p^�dQb(��H)��t�#g�ȗ�w;vr2�A:s(J�J�	�/(���Kf��޻�TL%n`� �%^��e�����K�7�_��xW��wԿ���\#'�ǻ㽠t�^�u^�<S���~�U��9�s��N��'�P]bo|\8����P]�����Vk��0??>���ќ��'�k�f�[o�{�f}c�Y�r�k���V��nֽ����X���Fk�[_\�hmmŷ���Z}i�F�84����s<��궧��VcT/�`�N2�P�R����a��8H/��Q�;W��So�����#51����#��z�W�P���zC�O}�|��tGف��~w���~�j��4*� ^�h���&�7�T��F�p.x���1,,�D]v����X[n���Zi�Q��K�yo{��*�J��L�Z:�p3T��Z���(��L�}��x�nx1'�t�������L,�ټ�N"�P��m�D�<^O���7��*��9�'�R��m\��C��̿�H���=	��������o�7���B��~�{�uƟ��x�Д��}�K>
Nyaگ�,�ߩ%��^Q{�>wK�V��������Ke�*/�q��]k5k��bc�Q����^ݍ+q{x�騛�pQ��`��W���8Z���ۻ|`F�(�J�O��:vWOv��q��iw~3��T����Gni���p���A���M�l�bw�?��bN"���]�]N�2مtFv7S�/n��Ǘ��7�)���}5�np��V���l�^�f������(�#\�.n�ȶ:jݜ�>,<�.�GG��F���^��n���x���ﭽ���?��� q��p��t���t�9�j�?~ '��qv���9�����)�Wg�j�T��d�%8���&�G��_`�#S/�6���⤆�����ѱZ�35`�ڔx��/�~�={����v�Z�/v�pk���ҭ�dPbjU�,�r���d��z�-���p!8d�)j"xz.:x������<l�����Q]�.�p�{0	���b�9�>F� �%����d�b�Up�Fp�EEӨ�>���	�E�%45��8�]��9�*��/X5x茻8$��\Y���9�v�[y r1@s�ťm�U�Պ<"9�/�-���̽@��U�lg�FK�2�c{أ��L��Ѐ�H-w`�#�����h���sҙlp�~�XƁ7y@o��.�Z��́.ƣ� �yk�r����F��W'��{�>�k*xh��:�pH����A���Yi���>mb��:$�\���m�~�7��BZD1���i�f3�m�(~�jDu��(=�\]����1d�u�c!��7�Gj��ː��+�;͂��(���F��m}q�aHj����~J������.Q��6g��`Ԟ�ɿ�1��A8���(��2�6�#;i�|�s:���`���x}X�M�m$��pI�.Lh��;��;�_�c ����'�8`��VK͵w'.�=|C����L1�N�Si�،��R�ϗ����|q�m-�6������v�����z5W+�g���_�#��D��O�M�i'�\ ����4x�D(���y\��B�O~����R��`�F�7��i��F߳]-�V���)�?�znFk�]�t��+o+^�h.�,��}�c�vT�xP���E�_�(�lUP��$xd�����1��cDZH������u�V�Lv�&k8��t^zb�`� �ރ� 7�0$`��4�j��5X?�������,`W�j���ÅV[�c��Ø�k��m�K1C:Y�xNw�&�ٜ����ۇ�p0`=�`�S���L܄)����q�Z6h��5�i��,��Eռf&tJk��]U��5j�SP2��`B��Z��8s#��}�Y����ӗ��ݯV"��g��P[�ǟ8��O
y|��J�5*�J�YaT�?���B��`5"k�zdx	�)�zfL��R
�k�6��!fC�� ��=�6��rV�+i#���Ƞ�D�����C�#Π#�k��CYW��y�2ջ6D�Mi�aLp���G_���Ъ�h�����c ���Q4z�j��J�,��(�E��R�/�:�+�\ϕ\���T)ї��sz��c�I_�{O�z�+��w�y�j[5Bj�l���y�'xX.�KRQ�,�t4]�*���i�3$7�������ԏ#wu�!{*C��= W\�.hQzM��R@��8�S= x�x�ch� ��I��tŃ�]R&S�J]!���(���!u��\giݫ����0m��ʍ��򒷾�����z?|���hjy(�R��bX�޼�>(A�GA�s��c$��>d�qhLA.�ȡS.B���vA�����Dzκ�u�$�'�M#�}a>�{':�Y�:>�,:�:\���ْ�y���h�;�/̾�!gݩ��U?F�*�𡒑��U�2���H�ܸW}���>��><a�h4 ����vu�/�����&n�1���i�.Y����o�]!&��yo�R_��j��v�Z�}�ߪfZ��>�h%�Q�U*�0���*2L���"��L-��� �oX�,�����`�`����;�^�a|_���;�������pm���`�o����_nl/�W����B���ʖW��1G`M,t�ء�����DY���'�,%Ȗ��Мb��JH�h�����;�V�6Y�ĜX� �2e>���p�-{����jҷG���j����� aҎ}QCT�hvI'8�us�����ħ�4�1�E�~�W�1��UG�G�a�)<R|i|�+�%�A�
�In�1��E�SP`:��!2Ơ�D�"�}�d���ݜy0-�/J��f�w9��N��.	�l˝5[�]p,���Ap͉��ng���wYWvb$l5�����.�6Fs���	��@g��".l�!�C7㈤?�k�V�&O��~('Z�����H�h�ef�CΌO���(ZE�@�%��pH�~�Ԓ�v����"�Ct�Xn���%�CK0�xt��G�~�_`VDB�x�H�5� �Ő��������w�.�~7�$���~I�˖=���oɜ���D��P	��{z����#�x�jΧ���;fj�,e�U��-�A^R���$ʐ�R�0� /��H����}]ؽ�~L.�,L�zh<LVr1�CQō��G.��6*�Yw�b����2s���#֏�I'��7���%�������5Z���[�/mdV�3�d���������+8�Xf3�_H(3�|s��F�'tԻ(` E_��wY?�e��K��*k]w׽֪�dG���S��>s�!%M�����]�0�1�a�-�@W�A��,��g�}�AY�&���/�c
.y��e���88��#l$�v��4�f��H!�K��a�z� m:^�M�W]�������r:C@<d&�£�a���4����x ��&-l� *Q�h�hŇ�:�m��OM!u��:�b����N��"�&�d�}��!SKOz����	,� ��,4�7���"�zw8�ܑ����2p� t�D!e{�<��gdhP�!p�|=jR�@�e<"\��}k6ӡ}�S�:d��&G;Hj�v�d"lDx5�Bw�I���d �U�z����f����Ԍv����/V�^���}�m|\mn�>H/}�l�k9��abu��+�P��T��١D%�ůPe��"�)��1���_k�j���6Z^s�k�6k^|���hmy���z���$?h�$�z&t�<��љF
^[QM_4���CqilL��3�c���	vƒ���.�X���<��I�O�-Ҭ���)�>���.iv�ܭ�-"t��铏�=T�hb�B(�q@ژX#V�d�w9Wg��_�f{�5�~VrPA�(߇��	�����@�)�5ޯ�$�t�5d�}�|8C��Y]�����N-�� ����?
YBp�(�b�b��    �W#��~�k:�|"*!�}$b�/.j�}t�DFو����9z����j~�ν�^_�;r�E("6�C�iM
R���0��F§W�P��Ì��7�+=DD�Vr����I�"�
zTo��z{v��6Ǖa �j�j~��T�y������5���n5Z��ڇ���B5�v_�P��;��N�=Q\H�o����@�.I<��iKG���|�!��YΠշ��-���y�[n����r0��4�咛��	bN*A!�m,�!e<�Y]0+��ޤp���0��/YY!�P2�P�p�urP&N�K�`И���c�3,S��Y:ᣎ��g��, ����(���H,�tWg|uu4���aGiݧ�]5柌Eї �c��̂�c�;C!���t_�,�3�����Ir��
��G�S7��c����v�b!����b�T׍$��Et�c�]�'���l�Tah�E�OĦ>^�ǽ��X\T�XK��������Ҝ�p�V|m��ިlͿ��䀊]�)����
u�I��� \�v�B��Ȍ��.N;��#�i��{��!��(f�.e�Q҅�p-��$/�efks�?���D��cj���5`O'}�c���".9f~��yH9J�0c&��m[�O,&�mB�ӽ,	�D��AL���!�.����E���h���hU����;���è�r��D�%�mJJ�䑵%��0�=$
 �ɕg�d��p�b�UGP����D5�B�}QǴݍ�lJ!��څ]�	�d�Q����P���m�	��ś$��We��Sf����3�'�B�
��ۂ�������>��Ŕ�6yA���!C}`T��;&f�v�Kjxao�r�
�dҡb��z�6!��d��u�ih<�_KP��e��_�!X:(M����0�XiР�.tڭ �='����k��t�4�mV�z���([��6>^j4K����ǕZ��t�*?H9���� 8�H,d^S~P��Ί�>���!�R���Tp���̀���6��.Я����r��������/H���:�j� Nx��Ky+����'���I����c'iN;x�!�@���F���ȑ���w�"��<Ӊ��ZR�8e��E��sȟ������U0�1��}�K֬֌�rJߙ͙�6#'I�md�a�g���	B1����s����Sh���7yp���ʇG�3��gaP-�}Ad�2~�d/r,���f2��#L�@��V�+��p�z��J����/5jDH=���UR�$��0�ă����C�!���dK��z�x+s[F��+m,@|F>����~21��'^Cd�(��P�ά�[A9�L��"P�#, :6488�fh��y�}�x?�`t��:�a��ރ	����i���D0�4\��� 낍�N
�T��w�S�*EfQ&�7KUV!��͑�\:�@;�?�35	��Oi��t�T��gH�.)���k٬l2���S��E&#�	N"��,/�lFK��V�'��d�t��*��T%�V��d�P̖�J��։�$�+K�YHf����1���?c���H_<���T��_<��-,y=�oG�(^c�5Ƌ����E�Җ[_�o�׼��Fi�����\�ڨx[���j���C'3":�z�/��p0��H&�[9���Q6�d����[�4DņW`�~7� ��g���a��9�>�@/�=.��6ĈK�7��T���2�jbV������)���gT�D��P箂��>�/�a����=�/a���1���Μ%�����th|�_��b�%<μ@*U�Ac��^�&蒜L�:r�t.�����[�d8�Mm�#�֭��h���=�8gW#�#�2���>��}�d��}A5��DX�Ԕ#�;�T���A��o�Lf;������+����=Mm�1b������~�JO�)��`r����a�]��T+�����+�{Ҵ���Ԍ&h��:�z}�k,7k��2ucJ��>Q;r������c��V9W��u�GF�&j�9 -��̦/Z�>�� ����%`P�O$(\�I�q�!Q�K#g���x� �-�'��P|ߔ���a�9x��3��K�D��S�(�6��#O��!%t�Lg����X���c��T7�I%��Kj�镶��H�P��FѴE}��`���)M��NKmzg���R~��r2땳n��'�Y�P�z�B���T��`���sR�>FS��-���(@-ŏ����7�B
OoӒ���G�t�L��]#�iM��nk��h��K^��Xوo6�k���Z��P&�T&{tb`O���O9��"w`BD\g�k�B_����j�ߢc��-\�@("2�W6 �����@WZd흈*df���~�`�3zԳ5���O�+W��WHV��D1Q�V�d�-���\�HD2o$"Q �!�0�Ó��`JQb�pC��[��G�l����X�\#<�VH�1aơ� W��ڬ�[nܫ7V+$ �ws��Xv���Ct��%����1��%ٶ�]ԥs�tk�&�T~��tҫd��j1]*x7Y��z��j6CE��K$�����	ue�?#&~��N?	*�:�on�S��\�Ub6;֭Ǜ��6�*σca�O)3`�)Hv��$����m�(�NU��d�%.��v���тq�����u%w�H��u9��N9��3��D�􌓆I<�����8V���y��}�x�z�0=�,#�����&�F����)������dR�dGkA?�k�e�k��ͽ�GQ�O��ɴ�0|k�5�S�Ů�f�s��)�@2�X�݋Q���c�b�傸�HC9X�`H�p���pņ����3�~L�^�d�0������?�$�CYE]qL��e��C#A���S�s�٧,�f�t�agC՘�6�D�2e�kg3��w��{lM��:��jZc��O�#��p[�|+,����C�x�Ѳ�H�oX�G�C�1�,�t�9D�#~dRu�"��`��B�Mv���$
v`f���t+%7��.7�йJ�P�N�}A�V ڷدrd���PNLeJ�hZ�	U�y�yt����8?�i���	��ԣ>w\���c�X���6W��`S�ӂM�����LG��3=O����H��p.�Bz����_]�'x( ���wt�]=���؛��0���pw�3��������B������ ��:/���֙�6[7k�mJzTavVoj�*���~.fC�*[J�O>_)U+^9UH�n���r^��$�&F��]�44BKk����.l�������K� �YH����9�R��qɼ��Y|�)b��6nt㵕5o\�V�E���H��;P�͕ 3Qi�[ȟS�3�ϝI�g:L0���+��"��E��� �!���8M�>
2Wa��ٚ��v!��
�P�>V�����Y{���B��$ �e�"2�"sI��±s�- �@Kc���5si_�*�eҝ�t%��D�nL�Ԭc�n����&)��R�����r>�����R1�)Π!R�u�]�P�<w�d����"RH~��
"ޑ�[�ېT�m@Q#V=hR!:ޓDȓm�55|U/�	#�]�X�Pv�P��S`F.'��~�`�>�����*?��9g��vxj�������U4��6��!&�M�u����$x���.�#f0]@��	�^��c�}�XW�(���tj���==5Ex��zE��c�M:�!��c�86F-����9�Y� ���Q��1�|3��c��;8��_0�Hu��x��>"����+�����s�_������T�	v�A�9�ޤ;Y猃�����Rlt5u��c���}nXӱUF,.�h�%����|�Ű�=��\~���d�d��N�d;�������ZL����*H?�B�b�͹�|)�HU�^�R(ds�bֳ(���0�D�x��a᪮Y_)��Z��F�</�`�_��V��v���Jm=����K����2�,���^w]��$�##j��I�h(d�P�G�Bhj�G�Uĝ�W�%p�!i��e�R
�    �=�w��+����W��\9WLy�R)S*���t��,��ϔs�k*m�TI��ˋ/dD6&��^w{P<fj�3�q��_�" ��/�؂�ޖ7��1}6zB�NL���Jc��.�nm�+��8�6�u��.� :>���&�Mɋ��+bȤ��P)� ��Jp ��(�����@^3�Sz(�?*a�p�sJ��0g)B�J��q��n�����$+(K�W�QvC��]���q��X�w�]ylBT��j3�kʪƨ����KIەWMo�uC)�D3�1+�H���>�E�{���[9D�媇1>ʺ=D$,1)�M���������-��$}qnu�m�/�����q};���,���>�wHd?��C��ʈ�]�8Ro��Rჷ9W��%��QR�~�k8�r�p�N�G�p����3��$Җ0�E�4L�&%�'��'^ޭM�p�1�ڍw�y�Ҥ���i��bR�}�Q+�[��k5��7�嘷��T�F� �(y��*t=��ҹ��g�Ƚ�����S����D:@��?�c#!��qS��ڟ�X��>����ɥ���uȤ�?�5�VĀA�cfkM���[���Oў��*�ה.8�\�&s�hO�TnJ�`�='�cɵX���I������~w�h��)��']�&��|)_J��L��U+�T)��e���t�L-dRV��G1�)���&��q*	]=�wnw�H��y�,�&dƹqw;^q6���n|�my+�Z|�U+D"�PTs+tߎ�@�m�h,ה���x��2n�Yt�[�ѐ�o���m..�>J(�����d�E߅�z�d̚Y��'�S���-T�|�m��Ζ2�|6��X%�)K(r�x���B�J���ԉ��ٜ8	�mW�M��|aY�3��{ �}v�`�2y�f埋i��V�Y/[*g�j��ʔ��R:W�d�|���߼
�X���Y���װ3�"+�fP��O��p�\��u�i�oZ���{�39K�(KC JǓ����BM�gzH�0�b����D��/�N��=اP߅���<"9���F0��N�k°2���:J#-�7��/�#ҧ�[�א˖�"�3gDF�3v%���q�3�M�i7�S۸M>���V嬹'���,�P�ܕ&��3��BM���:�� �����ݘY|_��䨜r�x��9�����q��^W�����iϸP�%1z�?x�V��hG���O��hW$�]�	P��c��c��DN`Zz�y�O1��!�����jd�/�He����f�{�/B��OJ5 ��3?�t�xl>_}��o �D������c����0��Ϩ'Z{e(��L�;��RK�!��+�318[G
x����s����ȓ�Q���ҽc�$^K�>u�	W5�Wr{$G�:��W����ҳ�zG�#wj ��c��~\�X�x,�x<�Dk�W9{�ۡVG�7|Й�`�X���B��@��J����V�R��G`Y��XF���L;H<`��N�ܢݦ��	���e�x�{K�:�łr?�h����cG�u.?�ֶ<�˟�Ғ��T'�;��FBыIg���m��>��w�4�s��2R����m�t�E�v�� �y:dLS~��۪���܄j�3~�>�xwsa�D����D�0���o�?$������k�Bz'o�������! �㝝�H���j*q-��(�O��+���Wʖ+�\��(�I�_�RLz�ݥdܥtz2�����9��)�$�V�P��[�"p_�o����x�N��� �@z�P�F}M�]�:krO|ͫ���E�n�*ː&�rכK^}�m6Wk��&Fᾑ\	k(��.Ԫ�)��"l�?�����?9����6q#���$N������T��:�$E����@*�2Y�	������{W�b�V���@�T	"};����u�T����X�`��a&�|08KE��7����)]KL�P�Xh>Iǘ��xHM�J�>Zá4���3va�CZi.:j:���8>$4wN�ڕ
㐘�E����O]��RZ�ZZ�c���q���MoFG:� ͢͢i�j���#]"���65hy�g�|�39�t]�:
1�{z*Χ,�Ԇ���OA��2q�gQ;�PC ��V�Z_M�X]��#��(�z�h��,������ʡc��t�d���@?���������f���v���#V&*g'�eXy��\���FU`�ˤ@P*� �ϛJ��)�C#�R��������jSĉ�&ׅ'����#��&��~��H�� ����S�9JW��s�Ʉ��e��R�F�g i�@�*�E ��@�Y�n7�[���g��*�]�Mĩ}]2�E:Da�V)���X����LO8�	���L��<�ɪh~�5��=�	^��&�C��>u#���F�=!cn^���"w�p�_�̚\�ɕ�l�vt�G��|�W�\�"���v�.I>�B��Q���czJ����Oiee�Ė�F3��3`E�^~o�^(����c��0:R��U��>:] Y��?�\�L�� ���)K%9�QFC �)� VE*�i��[ޚ�n��������P����UjB�����D7�_� �<h &[�t^����=�Ex��5l��NUif�S�ۅ>f1�x��l�`+���W��s�5���Ӆ��~�8�`b�O��H�;�Z�0���&R��r9�-峙T�Zv3�l��\.��I$�&���L���{����R{�׈��� �3�{C����++~��R4Z���Mwk�=1�$q�Hx�*֊�B�C\=e��o����Lw9{�ڬ(v����G� NU�y�<�|.?�L6�w�l��VS�L��I���T!�r���c"��)�/&oD�eLxaoiJ�� ��ǌ��,���E;[�V�lT T�llWܭxs�����j7�"3g�dM�ce�у���!�˳*.����T���څ{s��v�b��S�0�0k4?_r�'����[�<(���+�t��ȕ��jŰ+����:U9�����̵; Z�*��|�Mwm#+L��q���M�����չtao�7��zc��C�����Y��/�d�g�-{�#��q9���'�z/�nS@�o�ƴ�2�g�u���޲W����b?���	�ݰ��BL���}&��P��� ��%i1�)r��y�;�R��<=�ceqꇁO�1h�S�W��Ys���W�[k���	I�^)�OI}a[|h���^8���8
������I9�v�9��۬[���9��:�<��uY�t�9ёT�X䱼���|9̴��m:1����^w���b�a�B�C�x�q�P�� Z��厩��C��vb��,.cU�������g��<ħc̉xI=5t�	҃R :Ůҷ�|�K\T��G��$� /q�Hd�ׇm�²I��6$9ԭ��#��q�����PA�ھ�Yx��n`	�	�Ss__`�L���\�&��D�P*e�j6�)*�J�� �
b���PQ��O�Ye3�_���fE��C&%�����Y|�T�7$����k͋� �����Z�k��Zo��s_�m�N�#}��u ۄ�j2MիT�cb|J�bp�ALo�G犄�<r��p9˔�,��'��i�P�Y�P��.�Н��u��N2�)�.�ݣ����q�-���ϓ��S�8�o-�+חF�ܪ�,�yE�q��d��I��n�XL�r�d�R͹�T!_0ϷU�'wK��BD)]��K�}<�
u��ϗ�OX�5�l�����q�9KBKa�KK�uu�淵<v���Rm�֌oƛ�^��6��K%8�q�O��·��1�����)HQG�y���&��:�K��?�6�Hčd����=~��dްݹC�Ȕ�a-�ncqU4��^�OԷ�BI�f�	�s��i�/å�-R6*���#*��].���#�}�y=�]�סJ8��Sl�<���4��4�N=;��N�~*�d����� ���dë[���8�Sye��i�SfIߜް�䊆�Q��������Y��� �   EK�����\=o�%tҸE	}?&���JFUc�{�ݰ� @t�4C,q�K �0
�K�qs���7=�)!bD1"P
�1A�O�"�0�B�!2��Mx�.��h��=��\[|�)�P�-�mz���p���w����~C��J%?�R!Q,%ӹB>�Ȼ�L��ɔJ�j�PJX��ӖK-$��������͛7��Y��      �      x������ � �      �      x������ � �     