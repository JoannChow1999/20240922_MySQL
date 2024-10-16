PGDMP      1            	    |         
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
                     render_a24_user    false                       1259    17436    stations    TABLE     E  CREATE TABLE public.stations (
    station_id integer NOT NULL,
    stationcode character varying(5) NOT NULL,
    station_name character varying(20) NOT NULL,
    name character varying(5),
    stationaddrtw character varying(50),
    stationtel character varying(20),
    gps character varying(30),
    havebike boolean
);
    DROP TABLE public.stations;
       public         heap    render_a24_user    false                       1259    17435    stations_station_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stations_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.stations_station_id_seq;
       public          render_a24_user    false    261            �           0    0    stations_station_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.stations_station_id_seq OWNED BY public.stations.station_id;
          public          render_a24_user    false    260            �           2604    17439    stations station_id    DEFAULT     z   ALTER TABLE ONLY public.stations ALTER COLUMN station_id SET DEFAULT nextval('public.stations_station_id_seq'::regclass);
 B   ALTER TABLE public.stations ALTER COLUMN station_id DROP DEFAULT;
       public          render_a24_user    false    260    261    261            �          0    17436    stations 
   TABLE DATA           y   COPY public.stations (station_id, stationcode, station_name, name, stationaddrtw, stationtel, gps, havebike) FROM stdin;
    public          render_a24_user    false    261   [       �           0    0    stations_station_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.stations_station_id_seq', 243, true);
          public          render_a24_user    false    260            �           2606    17441    stations stations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.stations
    ADD CONSTRAINT stations_pkey PRIMARY KEY (station_id);
 @   ALTER TABLE ONLY public.stations DROP CONSTRAINT stations_pkey;
       public            render_a24_user    false    261            �           2606    17443 !   stations stations_stationcode_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.stations
    ADD CONSTRAINT stations_stationcode_key UNIQUE (stationcode);
 K   ALTER TABLE ONLY public.stations DROP CONSTRAINT stations_stationcode_key;
       public            render_a24_user    false    261            �      x��|YvI��s�*tN��}�N�����+��^A/ *!�A�b�&�A�@U��4�����>3��H2���ӧ̝��_���f��n&m�L�{ǋ{?/��s��Z�]�?�zv���鋯�Ov��ݽIc�Xo�K�Ml��8o̚����6M��;iM3��is��z%��NO�����'W��}�6q�Gp�ͭ �����MZ�������T�ٽ��"���] �_��^3��!6�A@�)03��u��y]H?�aq����% ����~#s�։�7�m��o�	?LZ�L�wO�/�U�:���3����za-ek�>_�{ �]��R�K[����'m�D�o�D��N�v�Towf�Ou"��!AI G����(@֙Ę��LҤ��DG��
���Of� ���o:�:��5iZ]��M���y�&��zGVƟ>5��"����o�>��l8m�M�1'���6��FW����uu"_���c�>��A0i��Y�9����V�RvX� P���PMj"�i[L������J:,]&�|����O�C���h|ku!Q�1�����і����l����6����>���u��q!dI���`��%�)Þ���fz�q�7��������k�skr������h�k�z���|I�'?x�b�-�.9�NQ5�k�u�ە�t�$}���7�7ׁ1����b�F�'ъ�={V���tN��F�G�8��A�ff��udmz�:��3�phGL�m!8��?�U�oZ���W/e���٣ݎtX���~����oL7�
�(H6�	�$���5E���b>	A�C��[#H�Bn���U���E�x�qe����)���o_+YER �����<�hrN^ �uj�]k�]X���׳��J:��dЦ�}q�u�B��a$lG�b�b����Cް��5O�O��L8m c����]0���B�3�Υ�uj��Ʀm	@mo���>{ZI��y������@�z���_��ga�BY��@6dlc�����C�':b%�@�������_�d&�� �u�)DpQyn-�9X``+�9�z��~�^\�=ݠ��2�ͧ��6!l�;�l(!L�uC4�E�]#`hd���@hCw�٥��:	���)8��Er���4�@�a���T22��Y\ڙ^�[ֳҚ�
���"Mv-�a���z�#c�ow8	@m�*�>
 5P��d#�PvCe�ڝ}�]	p�|�U�|{z����&4���u��%�m�r�ZkZ����m�8�HY��8�� �����il���xo�+Z�I�TX�)@�������%)�A�6:#��c+^C�Vǈ�h� ���{�����[p#�=B �"�\'Ѵ����UvȰ���F�����/czު��O
�����;�1C��xz����JV�޼�����%{ �951�eN��}w�up��}y@�䟹c�>��QGL3�r.�bc�����xX�J�l�]�>cu�۽���!����[�0��60��H������O>V���Ž;g,|�K�ԑ��mG�r�b�y�O,���}�tyz�I%����l½�t�c~������K_���S���N1e�a�����*Y��@N�Ǣ/��k�340X>�s0^%#̹��|	��
s�8�����7-L!ZB���?��.��|�ӆI��/B�b��mBh�(���1��ɷ�O�A��ULl*���Y��HC�kӣ��Q� jT�`\��j�'ӝK`B%#x��>�����bL�1���L�;p���w�+Y��\�7ߌ���RWCP#�r�te���*��|P��2�J�����  ,�5�dɂ����P�%C�<��0�p&Y��~L"�:X���W7k��l��.��c��=?�����$����$~�l��G��H�di��a�יݔ �'������l��Ζ�^O�����x|���+��ǻ�^�e�!�b�.}\u}�J"���s��Ff�R�]��V�:|i"�5�a"��B�Ff�@�n����w�B,�>�(��'�O|�v!D_&�J��D���	�az�4�H>��O�Dnz'�A��A!���y {�딱*�@ x�������H�	m:c;8�%AL,���q�����̍�
��~;�Sd���O��k9�"q�rp��y��~��������xp�L�����W���@�az���� 
ؑ�<�l��������JV��������1Y��m0�`e,�N�����П?��^��&N�ߚ"Q1e��B 4���+�O�=�I��> �А�=+r0��8�#�Q{�{ ���}A�+���1��t�
��Q����΋�X�"�Df^"~�\��f6�੫�T�:p%#x�X��M&�!����y���$���rбK�o��(���[���f�)d���8�]�&c�i���	��t�JV0���I/��	C�E̯�37��0U���Б�篕�ҧї�\�"�ƒ�pX$�)p�"�Ѫ�;�UI�}.�������� B�$�˴�0�dI"D�F^��J��G_Y�N�����1^D�ث#Tf�]`�GN�~�^��#+��+�ah �/� �{�{"5��1L��G�1*Y�H�����!�.T�c�79���ɊDE `��h1�d� �?�=g�b�ǝ��(��Gq`�cR�!���L��J%�p�d�e"��I�\F��q��~�cC���Df�:M. ��x��$�DD���P����L;�b͵cÃ�:|j�u.R��a�7����g���i��Ԡ�4Z��N���X�5���??�;�F8t�+��O��wg�oAkm����ST�^���k�>�L�8��o������#Y{�|`�`s�`�d��x��P̸`��,H�,�bG�CV�����bw�{�k8p�u�\�:u���gZ���Tn��:Rq�m,�%�J� mh~tb�-�G�֭tO`�� ii%�-��?���}Y����>-�s���� �gz2A�i�t�JV��nt���˚�GBqK��P��s4Q����U~���fE��F��fa�H���%�q-�T�v�$GO�(�Y��_���tY7%�����'����p��85�p�뜌��Ch�'�Y��<�F����\�{�e��L)z��U��[�����l�e%��u����K pF��.61(�GDU�O�s��w����2)�o����ӣ��7.#.-�F�k	�Ҫ�ߐ'G	����]xP;��r%�Z]������+ꈨ�٦����2��4"��B�4��N�����J��gD'G�FZ\x��-В��xt�U��,a�z<��0�u,�d~�|�J:�s��!��9{s]NnB��9�M��#M�e� l4�P�4^��[�H����vC@�m����
1�W��	c����/��JV�f/������!�i���w�m	&����˛���e�^t�n�~=�/���J6�g��,^�M��X�� 'orz�����J:�3ޕ�R���%3�+����C-�?5��MC�� ׷g����YM 7%b@����}q|�H;���I�O�4��B�kɶ�a�u��X:���p4A0B�lu�3=_)��|Z<�]I��}���߅M�'�����/���'��*N��̭A����>ޯ���>1�z�g-��THB$�������Y@��dL��J&\I� }I3�]�����&�)XL�9Im���Z���y���(!�)��Ѿ��6�/\�����K��y�j� ��i��UhXZO 3��@�*�4( �<�j����Ljs�gr	�����u�ڔ���-
�����L��h&��\o���a&���<��p��*� ���o����UE����?�$��(�o[愰�Ot�JVa�;�p1TE�7�$2g��Ȗ��8v��1=\
@�	W�c!���X�`����` HP�&��=sF�-1��<ݻU�*�~Ph�f2>1�ǅ�5���Y';O�    ����whB��ƣ]��y�Z=�
g6\�aP�B�-D��MC=�e���^��������#x+/�kƆ�F=��Y-@8::
��Z�V<;�P�尓cU�
��EK�69�a
�7&�4��Y1�R����^����R�_��!��qm� b�d�j��B-NT���(n���"@���,L��F��Ir�aZَɏ���㦑��O�аlF]���(�A�w��A�zbN'�O��,LP��08�Z0������&ϗ{�J���bz��@S*��S�TR�!�ib�VE���=�RBnʘ˄�/�H����KV�5
5��9���U�;X����]�X�)�7�}�\�`�����+���:;���cߎA��P�q�xR6���S�)#ܫ��d������$�c�p�W�V�I��*/e*'[�g땰X��8�W^�!Ǿl���b�d'��;�-�G��2���V�ۋ{�t�k_�L4�s��c�S�5�xg�E����{����G���L�;9	:�(�����F[�ʒ�@�bP�
ҵ����ה.g��f�#�f��&��c��ߖ
A �63b�{?Ñ���8��>�e�0�5�&3jb�%3�->�Cx�K�#�+7%��dG?p*Wn�'|���ݰdw(ٜꄌNz.ɱ���W�I_��=�s?d�XfA�b���p�2N�7Z��r�B��%Ѡ$�E�����z�U� mtA��@���L�.�2Z%� l��5<�L�e��L����&ܛĘ@C�U�|z|TI� �R-V+b�]o����FT�q٪I���`@ՙ���ەJV1`����X�p�풪{�Rv ���T�Bݙ��Q�I��@������.n��b_�a��
%�P)U�+����3s�M�`���UV'GR��P�����Jl+G9�㾍10�B@��7΄,�Pf�t�J�+yr4j�u�a빇�6+��B�Ǣ?��]%#����M�1\��N�o��p����F&{���Le��S��O˝�=��%�2��_�蟿�TL' 6�s�{K�䊐1N������<�|��U��������rϖ���dh��@�%�eQ��D�_`�赜���c.Q���/����N$c*����I��.Za���(��*�֗̂͹À#���=��F�Fdۖg�l��+�0�O����壟�ݓ��[ZCo:��'�DP%	c�V�p�$`p�N��GI��}rDR;v�T�K���[��M��~�Q ��̒�^<�=�QI!}B���n�h�Rժ�c��&,���[�WC�ӗ,���e�%J�_0�S�ߜhࡓaB�7�	�(�/����D�ezf����2��X�#��1���8{f��y��#������A�^rc�f��*�0�(�����ܜf�� �(>Sc�*~rc���A�_���u��	Ƌ~�`��gSMgZLG������W��j`uc�Fm<sea���t���3���<2�[�f��+avd�{����ds��)�k]�� 
�,Ϭ���L�zq��y�A��Nѱ>��+
S
Z�YF��Egb����JF�r��0�s.��v�h~;PE���Y#,H��v��0�.	�WקG/��]k����}�>��)��㟵��u��Sʊ�\u������LL#�Bz3y�������O��*�YId9�s_�E ��JS���yAË��P����C�B:i�>�t��t��:��s�T��|l�Z��L9qs!I����{Fq�/T��=v��%:�P��r�����X���$T�x���j@��x�M�}~8��n��ܠ5���v��S�2��K⼄�4�6��1�i�h3�L�0Y��3h����9ih&��nlN�ڲ%�3)�4�ܨE�ѷ�I0�W�t�e2Ęݸ���S]��i��m	�3�d2 �E�N~�dB>t΅����1��R��X)�#��tq�7{��G������(��b<�v3`�2Vw�Q����H0!��%�D�raS?0C��������V��h� �(~ ���C����"L߾��D�%YW�f"�؜�U��i��G�9L>�=��Cо����\�:Yݘ�C���N�$�s�E����C�~]K3�t���_��tЃ�d���B
Xq�R��	�aH_orhX!�
����"K+]��PX6DN�y)&���/��sL����~*7��B���t�f+�]�d�^�/[K��u�;�8/pPk�� z��r}�����?+� �/�#��ǟ� ���(��!�V�1~,��*�Y)�l>U2�Sj%��H��\���]<�µm=qK%��㒘��*�xT�w���6�cp�,Z�c� �A�X/?���ڑ!D�h�������0`�Dt|얥��z��e;�aa��Ս�����_�����E���L�DP� i"���p\ݘ�����rƆ�I�Ʃ� !�r�i"�Z�4=����]��Ā����� �Z��8�����/+ADZ�Z�z�aq���f/��z��W��O�BT^���h�Fo�F�58�fǿW2@�}q���L��;�|��Z���!"L�*v4%��z��=�Pl�oy4[�(�~c�Yk�TR�x� �Vp�^��<"A����9h�Ô^ͷYXb�����Fݜr���`����XL5�{1{�g%�6X� �I�/��07t�P�����-��䤝��{)�?f�A%���A*���7��,n���Q=��˼r���q�ގ�:M�v��O�n��������K���@`x�����XaS��z2�-;�t�ɛ����Z���Dd�s�x�u��� �2���t�����m�.�Ĥ��0]���n��#�ּ�+��@�����K�"�Jz�JsFٻ��n���b��wCe>����@DI�������+�0�O}��r�� "0'*�*cC�K�b+Z�M4ҿ�_4;ީdB?P�и;|��ž�\�XQsc����6D���Ko5�*�Y%���P7�$a��_F˦<x gF�O����-vHT��G�>K  ��N�K'���;�S�C�L��8�nE����d��^�� �/w'mK��f-�I���5����c9�Sҍ�}���kzm���e�����6��/��zQ�bkA�RE9�|�%򬄃�8�<K��,���Wk��`�&%=�ɋB @k��(��-�BV!�^pwA�;,����"�9����*�H���Y �dd|��;�P�I(P ��ĭ{� ��N�O�o��`��H�Z�3ݓ�^��rϬ�!�Ǝ��A%
�EcHn4z�a|%c����6���9{�"�f�B�������Q����[I?��U��Zݿ?��?,�'D
� Qv}-!E�Pg(����hS
Y�����@�`��>7e�r�р�9�5`m~!=�e���cC��u����T�m�P;C���A9T%�u�^*�%��^�<���ƨB͹'����@�#mqx��<�#0&D02%�L^�RSҖ�K�bJ���R�/cU2����哼���J��Y�ѩ�{�tg�7ţ�ʷn*Y��R����o�u���uc�֕
z�����$����o������Ϛ�ȥ�Z@$�J%�b�#>Z����(w��mG:�?����^�5�G��$��b�$f��v�F����Q\Y��UmPG�}Y>�Ǘ��ۦ���hj���Ӄ�k<�� ��(S�C�6�H!���'�(.��]�2� �S=��(�����0� ʝ��MIG(��O)��H}��k%��񣖅b����y��o���V�A�����uy�J������j�! U��x	p���p�qk�w �`��#���-VC
�zŰ��b`g��Q^��,���t���d����:Ke�(�T��ן�~��,v8���6�M�(�<� ƕ[�ە�NE�V^V,�cS��o�<og15r��"ϴY��~ ʇ��W}W`��ޮ<��������z�ay�"����JF $�������-Wa�u�$np�<Ə2�C%�>>k6�!@��m.�0��}��$���O�2=xpzg_�� �  ��Cr����;�5����l�V�B1U�ͥv�o$y^i�����JF�䃲|v��0#%�f��`s�$)E9u��ѝcu�B��Bw����Z�{�v�'5��@�
c�q*>"�.ddߑ�X2V-����_FK����H.�$Ir��'�NB?�1�+N�6=��^��O&f�%�枔��X��B�Q�~/��I`����І�g���+�7�C
��Fp�o�%�O�����]�3BaK��^�YZ�����ESò���#�� EF0/
i���3�����@�THi��V-�|Qyx?%:H����<}��Ɇ<���Cо�@�y�IS������{i2%/�b�	�}ͮ�������)��/oF]�/-���{V���D?ˋ�*���^g��<��]�J��/���\'"�O�%���2�2!3��K�_.%�zf8H�^'�R^mI,������M����CU�1��:l�\d8�����"�����[}$�!|�$V�@��*Y�ܪ��w�Ф�1;�\��r�:Ѹ���z����c(�C`�����}CAz*�]��Bxլ�#�wm.Ʊ�zH�t�gMd�JVq��w�/^H±9�:2������#>�-������{c�>�dW^�ɰ���v�.��Ds<JF �W��4�d� 5��*���\Lc��-T0��N�����ȋ/э̄Ew���ڗ��,��Ď����3�y���~GO�nu/�w��)- ���q����υ��L>�_zXry*)�[�z�eї���q!ݫ���jł~`�\߽�u��M\D��@ ���~K��U�*�6�ZB%Fs6+Mݒ�ɒ����lܿKV�?^)�R_�w��1x;���Y!\���(]b�|�ɷO�+Y���fl����y��'�HNX�<}wn��x�ꆟ_tz�P
�~�3���=,��D	PJ�>�{��p�I�%��%������s+3��V�^ڟ^��|�Ȳ\/q��ݶn�I����`,|�u�)Q�?H.w�<-�|�%)F�'*�'���ܟ^{ޑ� ��b�����.f�7*��z���nV22��9H�W3�]'V=+�O��a��U2�!���Z��Ű�8m|}\11�������N%����i/�Õ7���7)�z?����Jn��A����M͒�&��f�au>%{(`DɅb�JV1x3Pʎgw��/�{G��R�&��"*�<9 xu�5o}k�(y}5�֑⭌�j�̪41��z-�h筭��Akd��:x�\��n�����>y5��X�qz��x~to�?N/]\�������ӻ�����?�A4Y���JI9"e��,~D�����5�{w6g���\�[,�g�S�|�5��X�X"pO��Sy����G�A�Jc�b��E��6�����~�����"     