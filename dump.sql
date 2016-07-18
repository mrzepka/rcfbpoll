--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO sirgippy;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO sirgippy;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO sirgippy;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO sirgippy;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO sirgippy;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO sirgippy;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO sirgippy;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO sirgippy;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO sirgippy;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO sirgippy;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO sirgippy;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO sirgippy;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO sirgippy;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO sirgippy;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO sirgippy;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO sirgippy;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO sirgippy;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO sirgippy;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO sirgippy;

--
-- Name: poll_ballot; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE poll_ballot (
    id integer NOT NULL,
    submission_date timestamp with time zone,
    poll_type character varying(10),
    overall_rationale text NOT NULL,
    poll_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE poll_ballot OWNER TO sirgippy;

--
-- Name: poll_ballot_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE poll_ballot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE poll_ballot_id_seq OWNER TO sirgippy;

--
-- Name: poll_ballot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE poll_ballot_id_seq OWNED BY poll_ballot.id;


--
-- Name: poll_ballotentry; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE poll_ballotentry (
    id integer NOT NULL,
    rank integer NOT NULL,
    rationale text NOT NULL,
    ballot_id integer NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE poll_ballotentry OWNER TO sirgippy;

--
-- Name: poll_ballotentry_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE poll_ballotentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE poll_ballotentry_id_seq OWNER TO sirgippy;

--
-- Name: poll_ballotentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE poll_ballotentry_id_seq OWNED BY poll_ballotentry.id;


--
-- Name: poll_poll; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE poll_poll (
    id integer NOT NULL,
    year integer NOT NULL,
    week character varying(20) NOT NULL,
    open_date timestamp with time zone NOT NULL,
    close_date timestamp with time zone NOT NULL
);


ALTER TABLE poll_poll OWNER TO sirgippy;

--
-- Name: poll_poll_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE poll_poll_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE poll_poll_id_seq OWNER TO sirgippy;

--
-- Name: poll_poll_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE poll_poll_id_seq OWNED BY poll_poll.id;


--
-- Name: poll_team; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE poll_team (
    id integer NOT NULL,
    handle character varying(60) NOT NULL,
    name character varying(120) NOT NULL,
    conference character varying(60) NOT NULL,
    division character varying(50) NOT NULL,
    use_for_ballot boolean NOT NULL
);


ALTER TABLE poll_team OWNER TO sirgippy;

--
-- Name: poll_team_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE poll_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE poll_team_id_seq OWNER TO sirgippy;

--
-- Name: poll_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE poll_team_id_seq OWNED BY poll_team.id;


--
-- Name: poll_user; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE poll_user (
    id integer NOT NULL,
    username character varying(32) NOT NULL,
    primary_affiliation_id integer
);


ALTER TABLE poll_user OWNER TO sirgippy;

--
-- Name: poll_user_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE poll_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE poll_user_id_seq OWNER TO sirgippy;

--
-- Name: poll_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE poll_user_id_seq OWNED BY poll_user.id;


--
-- Name: poll_usersecondaryaffiliations; Type: TABLE; Schema: public; Owner: sirgippy
--

CREATE TABLE poll_usersecondaryaffiliations (
    id integer NOT NULL,
    team_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE poll_usersecondaryaffiliations OWNER TO sirgippy;

--
-- Name: poll_usersecondaryaffiliations_id_seq; Type: SEQUENCE; Schema: public; Owner: sirgippy
--

CREATE SEQUENCE poll_usersecondaryaffiliations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE poll_usersecondaryaffiliations_id_seq OWNER TO sirgippy;

--
-- Name: poll_usersecondaryaffiliations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sirgippy
--

ALTER SEQUENCE poll_usersecondaryaffiliations_id_seq OWNED BY poll_usersecondaryaffiliations.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_ballot ALTER COLUMN id SET DEFAULT nextval('poll_ballot_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_ballotentry ALTER COLUMN id SET DEFAULT nextval('poll_ballotentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_poll ALTER COLUMN id SET DEFAULT nextval('poll_poll_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_team ALTER COLUMN id SET DEFAULT nextval('poll_team_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_user ALTER COLUMN id SET DEFAULT nextval('poll_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_usersecondaryaffiliations ALTER COLUMN id SET DEFAULT nextval('poll_usersecondaryaffiliations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add user	7	add_user
20	Can change user	7	change_user
21	Can delete user	7	delete_user
22	Can add user secondary affiliations	8	add_usersecondaryaffiliations
23	Can change user secondary affiliations	8	change_usersecondaryaffiliations
24	Can delete user secondary affiliations	8	delete_usersecondaryaffiliations
25	Can add team	9	add_team
26	Can change team	9	change_team
27	Can delete team	9	delete_team
28	Can add poll	10	add_poll
29	Can change poll	10	change_poll
30	Can delete poll	10	delete_poll
31	Can add ballot	11	add_ballot
32	Can change ballot	11	change_ballot
33	Can delete ballot	11	delete_ballot
34	Can add ballot entry	12	add_ballotentry
35	Can change ballot entry	12	change_ballotentry
36	Can delete ballot entry	12	delete_ballotentry
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$24000$DpraHFdnaOnx$ow4W93OmcQmmldDZyJPS2BFgxqDoD4MRmwSD3JDSY3c=	2016-07-17 19:29:32.49-05	t	sirgippy			jegipson@gmail.com	t	t	2016-07-17 19:28:54.017-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	poll	user
8	poll	usersecondaryaffiliations
9	poll	team
10	poll	poll
11	poll	ballot
12	poll	ballotentry
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-07-17 19:27:05.692-05
2	auth	0001_initial	2016-07-17 19:27:05.834-05
3	admin	0001_initial	2016-07-17 19:27:05.872-05
4	admin	0002_logentry_remove_auto_add	2016-07-17 19:27:05.89-05
5	contenttypes	0002_remove_content_type_name	2016-07-17 19:27:05.931-05
6	auth	0002_alter_permission_name_max_length	2016-07-17 19:27:05.95-05
7	auth	0003_alter_user_email_max_length	2016-07-17 19:27:05.967-05
8	auth	0004_alter_user_username_opts	2016-07-17 19:27:05.982-05
9	auth	0005_alter_user_last_login_null	2016-07-17 19:27:05.999-05
10	auth	0006_require_contenttypes_0002	2016-07-17 19:27:06.002-05
11	auth	0007_alter_validators_add_error_messages	2016-07-17 19:27:06.017-05
12	poll	0001_initial	2016-07-17 19:27:06.172-05
13	poll	0002_auto_20160714_1852	2016-07-17 19:27:06.211-05
14	poll	0003_auto_20160714_1908	2016-07-17 19:27:06.247-05
15	poll	0004_auto_20160714_1922	2016-07-17 19:27:06.28-05
16	poll	0005_auto_20160714_1950	2016-07-17 19:27:06.342-05
17	poll	0006_auto_20160714_2018	2016-07-17 19:27:06.375-05
18	poll	0007_auto_20160714_2043	2016-07-17 19:27:06.422-05
19	poll	0008_auto_20160717_1612	2016-07-17 19:27:06.48-05
20	sessions	0001_initial	2016-07-17 19:27:06.504-05
21	poll	0009_auto_20160718_0824	2016-07-18 08:24:44.661-05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('django_migrations_id_seq', 21, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
um8aqi6u9i4bhviwxkocp3gmv1n53o2z	ZDU5YjhkNDZhNDBmMDM1Mzc3Yzg3OTYwZDVhMDM3ZDQ2ZjA2NDQ5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZkOGUzZjg2YWM4YmRkYzcwOThlMDFiNmI4MjI3NmZhMWVkMGU2NTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-07-31 19:29:32.492-05
\.


--
-- Data for Name: poll_ballot; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY poll_ballot (id, submission_date, poll_type, overall_rationale, poll_id, user_id) FROM stdin;
\.


--
-- Name: poll_ballot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('poll_ballot_id_seq', 1, false);


--
-- Data for Name: poll_ballotentry; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY poll_ballotentry (id, rank, rationale, ballot_id, team_id) FROM stdin;
\.


--
-- Name: poll_ballotentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('poll_ballotentry_id_seq', 1, false);


--
-- Data for Name: poll_poll; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY poll_poll (id, year, week, open_date, close_date) FROM stdin;
\.


--
-- Name: poll_poll_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('poll_poll_id_seq', 1, false);


--
-- Data for Name: poll_team; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY poll_team (id, handle, name, conference, division, use_for_ballot) FROM stdin;
8295	bostoncollege	Boston College Eagles	ACC	FBS	t
8296	clemson	Clemson Tigers	ACC	FBS	t
8297	duke	Duke Blue Devils	ACC	FBS	t
8298	floridastate	Florida State Seminoles	ACC	FBS	t
8299	georgiatech	Georgia Tech Yellow Jackets	ACC	FBS	t
8300	louisville	Louisville Cardinals	ACC	FBS	t
8301	miami	Miami Hurricanes	ACC	FBS	t
8302	northcarolina	North Carolina Tar Heels	ACC	FBS	t
8303	northcarolinastate	North Carolina State Wolfpack	ACC	FBS	t
8304	pittsburgh	Pittsburgh Panthers	ACC	FBS	t
8305	syracuse	Syracuse Orange	ACC	FBS	t
8306	virginia	Virginia Cavaliers	ACC	FBS	t
8307	virginiatech	Virginia Tech Hokies	ACC	FBS	t
8308	wakeforest	Wake Forest Demon Deacons	ACC	FBS	t
8309	baylor	Baylor Bears	Big 12	FBS	t
8310	iowastate	Iowa State Cyclones	Big 12	FBS	t
8311	kansas	Kansas Jayhawks	Big 12	FBS	t
8312	kansasstate	Kansas State Wildcats	Big 12	FBS	t
8313	oklahoma	Oklahoma Sooners	Big 12	FBS	t
8314	oklahomastate	Oklahoma State Cowboys	Big 12	FBS	t
8315	tcu	TCU Horned Frogs	Big 12	FBS	t
8316	texas	Texas Longhorns	Big 12	FBS	t
8317	texastech	Texas Tech Red Raiders	Big 12	FBS	t
8318	westvirginia	West Virginia Mountaineers	Big 12	FBS	t
8319	illinois	Illinois Fighting Illini	Big Ten	FBS	t
8320	indiana	Indiana Hoosiers	Big Ten	FBS	t
8321	iowa	Iowa Hawkeyes	Big Ten	FBS	t
8322	maryland	Maryland Terrapins	Big Ten	FBS	t
8323	michigan	Michigan Wolverines	Big Ten	FBS	t
8324	michiganstate	Michigan State Spartans	Big Ten	FBS	t
8325	minnesota	Minnesota Golden Gophers	Big Ten	FBS	t
8326	nebraska	Nebraska Cornhuskers	Big Ten	FBS	t
8327	northwestern	Northwestern Wildcats	Big Ten	FBS	t
8328	ohiostate	Ohio State Buckeyes	Big Ten	FBS	t
8329	pennstate	Penn State Nittany Lions	Big Ten	FBS	t
8330	purdue	Purdue Boilermakers	Big Ten	FBS	t
8331	rutgers	Rutgers Scarlet Knights	Big Ten	FBS	t
8332	wisconsin	Wisconsin Badgers	Big Ten	FBS	t
8333	arizona	Arizona Wildcats	Pac-12	FBS	t
8334	arizonastate	Arizona State Sun Devils	Pac-12	FBS	t
8335	california	California Golden Bears	Pac-12	FBS	t
8336	colorado	Colorado Buffaloes	Pac-12	FBS	t
8337	oregon	Oregon Ducks	Pac-12	FBS	t
8338	oregonstate	Oregon State Beavers	Pac-12	FBS	t
8339	stanford	Stanford Cardinal	Pac-12	FBS	t
8340	ucla	UCLA Bruins	Pac-12	FBS	t
8341	usc	USC Trojans	Pac-12	FBS	t
8342	utah	Utah Utes	Pac-12	FBS	t
8343	washington	Washington Huskies	Pac-12	FBS	t
8344	washingtonstate	Washington State Cougars	Pac-12	FBS	t
8345	alabama	Alabama Crimson Tide	SEC	FBS	t
8346	arkansas	Arkansas Razorbacks	SEC	FBS	t
8347	auburn	Auburn Tigers	SEC	FBS	t
8348	florida	Florida Gators	SEC	FBS	t
8349	georgia	Georgia Bulldogs	SEC	FBS	t
8350	kentucky	Kentucky Wildcats	SEC	FBS	t
8351	lsu	LSU Tigers	SEC	FBS	t
8352	mississippistate	Mississippi State Bulldogs	SEC	FBS	t
8353	missouri	Missouri Tigers	SEC	FBS	t
8354	olemiss	Ole Miss Rebels	SEC	FBS	t
8355	southcarolina	South Carolina Gamecocks	SEC	FBS	t
8356	tennessee	Tennessee Volunteers	SEC	FBS	t
8357	texasam	Texas A&M Aggies	SEC	FBS	t
8358	vanderbilt	Vanderbilt Commodores	SEC	FBS	t
8359	army	Army West Point	Independents	FBS	t
8360	byu	BYU Cougars	Independents	FBS	t
8361	notredame	Notre Dame Fighting Irish	Independents	FBS	t
8362	umass	UMass Minutemen	Independents	FBS	t
8363	coastalcarolina	Coastal Carolina Chanticleers	Independents	FBS	f
8364	cincinnati	Cincinnati Bearcats	American	FBS	t
8365	connecticut	Connecticut Huskies	American	FBS	t
8366	eastcarolina	East Carolina Pirates	American	FBS	t
8367	houston	Houston Cougars	American	FBS	t
8368	memphis	Memphis Tigers	American	FBS	t
8369	navy	Navy Midshipmen	American	FBS	t
8370	smu	SMU Mustangs	American	FBS	t
8371	temple	Temple Owls	American	FBS	t
8372	tulane	Tulane Green Wave	American	FBS	t
8373	tulsa	Tulsa Golden Hurricane	American	FBS	t
8374	ucf	UCF Knights	American	FBS	t
8375	usf	USF Bulls	American	FBS	t
8376	charlotte	Charlotte 49ers	Conference USA	FBS	t
8377	fau	FAU Owls	Conference USA	FBS	t
8378	fiu	FIU Panthers	Conference USA	FBS	t
8379	louisianatech	Louisiana Tech Bulldogs	Conference USA	FBS	t
8380	marshall	Marshall Thundering Herd	Conference USA	FBS	t
8381	middletennessee	Middle Tennessee Blue Raiders	Conference USA	FBS	t
8382	northtexas	North Texas Mean Green	Conference USA	FBS	t
8383	olddominion	Old Dominion Monarchs	Conference USA	FBS	t
8384	rice	Rice Owls	Conference USA	FBS	t
8385	southernmiss	Southern Miss Golden Eagles	Conference USA	FBS	t
8386	uab	UAB Blazers	Conference USA	FBS	t
8387	utep	UTEP Miners	Conference USA	FBS	t
8388	utsa	UTSA Roadrunners	Conference USA	FBS	t
8389	westernkentucky	Western Kentucky Hilltoppers	Conference USA	FBS	t
8390	akron	Akron Zips	MAC	FBS	t
8391	ballstate	Ball State Cardinals	MAC	FBS	t
8392	bowlinggreen	Bowling Green Falcons	MAC	FBS	t
8393	buffalo	Buffalo Bulls	MAC	FBS	t
8394	centralmichigan	Central Michigan Chippewas	MAC	FBS	t
8395	easternmichigan	Eastern Michigan Eagles	MAC	FBS	t
8396	kentstate	Kent State Golden Flashes	MAC	FBS	t
8397	miamioh	Miami (OH) RedHawks	MAC	FBS	t
8398	northernillinois	Northern Illinois Huskies	MAC	FBS	t
8399	ohio	Ohio Bobcats	MAC	FBS	t
8400	toledo	Toledo Rockets	MAC	FBS	t
8401	westernmichigan	Western Michigan Broncos	MAC	FBS	t
8402	airforce	Air Force Falcons	Mountain West	FBS	t
8403	boisestate	Boise State Broncos	Mountain West	FBS	t
8404	coloradostate	Colorado State Rams	Mountain West	FBS	t
8405	fresnostate	Fresno State Bulldogs	Mountain West	FBS	t
8406	hawaii	Hawai'i Rainbow Warriors	Mountain West	FBS	t
8407	nevada	Nevada Wolf Pack	Mountain West	FBS	t
8408	newmexico	New Mexico Lobos	Mountain West	FBS	t
8409	sandiegostate	San Diego State Aztecs	Mountain West	FBS	t
8410	sanjosestate	San Jos├⌐ State Spartans	Mountain West	FBS	t
8411	unlv	UNLV Rebels	Mountain West	FBS	t
8412	utahstate	Utah State Aggies	Mountain West	FBS	t
8413	wyoming	Wyoming Cowboys	Mountain West	FBS	t
8414	appalachianstate	Appalachian State Mountaineers	Sun Belt	FBS	t
8415	arkansasstate	Arkansas State Red Wolves	Sun Belt	FBS	t
8416	georgiasouthern	Georgia Southern Eagles	Sun Belt	FBS	t
8417	georgiastate	Georgia State Panthers	Sun Belt	FBS	t
8418	idaho	Idaho Vandals	Sun Belt	FBS	t
8419	louisiana	Louisiana Ragin' Cajuns	Sun Belt	FBS	t
8420	newmexicostate	New Mexico State Aggies	Sun Belt	FBS	t
8421	southalabama	South Alabama Jaguars	Sun Belt	FBS	t
8422	texasstate	Texas State Bobcats	Sun Belt	FBS	t
8423	troy	Troy Trojans	Sun Belt	FBS	t
8424	ulm	ULM Warhawks	Sun Belt	FBS	t
8425	calpoly	Cal Poly Mustangs	Big Sky	FCS	f
8426	easternwashington	Eastern Washington Eagles	Big Sky	FCS	f
8427	idahostate	Idaho State Bengals	Big Sky	FCS	f
8428	montana	Montana Grizzlies	Big Sky	FCS	f
8429	montanastate	Montana State Bobcats	Big Sky	FCS	f
8430	northdakota	North Dakota Fighting Hawks	Big Sky	FCS	f
8431	northernarizona	Northern Arizona Lumberjacks	Big Sky	FCS	f
8432	northerncolorado	Northern Colorado Bears	Big Sky	FCS	f
8433	portlandstate	Portland State Vikings	Big Sky	FCS	f
8434	sacramentostate	Sacramento State Hornets	Big Sky	FCS	f
8435	southernutah	Southern Utah Thunderbirds	Big Sky	FCS	f
8436	ucdavis	UC Davis Aggies	Big Sky	FCS	f
8437	weberstate	Weber State Wildcats	Big Sky	FCS	f
8438	charlestonsouthern	Charleston Southern Buccaneers	Big South	FCS	f
8439	gardnerwebb	Gardner-Webb Runnin' Bulldogs	Big South	FCS	f
8440	kennesaw	Kennesaw State Owls	Big South	FCS	f
8441	liberty	Liberty Flames	Big South	FCS	f
8442	monmouth	Monmouth Hawks	Big South	FCS	f
8443	presbyterian	Presbyterian Blue Hose	Big South	FCS	f
8444	albany	Albany Great Danes	CAA	FCS	f
8445	delaware	Delaware Fightin' Blue Hens	CAA	FCS	f
8446	elon	Elon Phoenix	CAA	FCS	f
8447	jamesmadison	James Madison Dukes	CAA	FCS	f
8448	maine	Maine Black Bears	CAA	FCS	f
8449	newhampshire	New Hampshire Wildcats	CAA	FCS	f
8450	rhodeisland	Rhode Island Rams	CAA	FCS	f
8451	richmond	Richmond Spiders	CAA	FCS	f
8452	stonybrook	Stony Brook Seawolves	CAA	FCS	f
8453	towson	Towson Tigers	CAA	FCS	f
8454	villanova	Villanova Wildcats	CAA	FCS	f
8455	williammary	William & Mary Tribe	CAA	FCS	f
8456	brown	Brown Bears	Ivy	FCS	f
8457	columbia	Columbia Lions	Ivy	FCS	f
8458	cornell	Cornell Big Red	Ivy	FCS	f
8459	dartmouth	Dartmouth Big Green	Ivy	FCS	f
8460	harvard	Harvard Crimson	Ivy	FCS	f
8461	pennsylvania	Pennsylvania Quakers	Ivy	FCS	f
8462	princeton	Princeton Tigers	Ivy	FCS	f
8463	yale	Yale Bulldogs	Ivy	FCS	f
8464	bethunecookman	Bethune-Cookman Wildcats	MEAC	FCS	f
8465	delawarestate	Delaware State Hornets	MEAC	FCS	f
8466	floridaam	Florida A&M Rattlers	MEAC	FCS	f
8467	hampton	Hampton Pirates	MEAC	FCS	f
8468	howard	Howard Bison	MEAC	FCS	f
8469	morganstate	Morgan State Bears	MEAC	FCS	f
8470	norfolkstate	Norfolk State Spartans	MEAC	FCS	f
8471	northcarolinaat	North Carolina A&T Aggies	MEAC	FCS	f
8472	nccentral	North Carolina Central Eagles	MEAC	FCS	f
8473	savannahstate	Savannah State Tigers	MEAC	FCS	f
8474	southcarolinastate	South Carolina State Bulldogs	MEAC	FCS	f
8475	illinoisstate	Illinois State Redbirds	Missouri Valley	FCS	f
8476	indianastate	Indiana State Sycamores	Missouri Valley	FCS	f
8477	missouristate	Missouri State Bears	Missouri Valley	FCS	f
8478	northdakotastate	North Dakota State Bison	Missouri Valley	FCS	t
8479	northerniowa	Northern Iowa Panthers	Missouri Valley	FCS	f
8480	southdakota	South Dakota Coyotes	Missouri Valley	FCS	f
8481	southdakotastate	South Dakota State Jackrabbits	Missouri Valley	FCS	f
8482	southernillinois	Southern Illinois Salukis	Missouri Valley	FCS	f
8483	westernillinois	Western Illinois Leathernecks	Missouri Valley	FCS	f
8484	youngstownstate	Youngstown State Penguins	Missouri Valley	FCS	f
8485	bryant	Bryant Bulldogs	Northeast	FCS	f
8486	centralconnecticutstate	Central Connecticut State Blue Devils	Northeast	FCS	f
8487	duquesne	Duquesne Dukes	Northeast	FCS	f
8488	robertmorris	Robert Morris Colonials	Northeast	FCS	f
8489	sacredheart	Sacred Heart Pioneers	Northeast	FCS	f
8490	stfrancis	St. Francis Red Flash	Northeast	FCS	f
8491	wagner	Wagner Seahawks	Northeast	FCS	f
8492	austinpeay	Austin Peay Governors	Ohio Valley	FCS	f
8493	easternillinois	Eastern Illinois Panthers	Ohio Valley	FCS	f
8494	easternkentucky	Eastern Kentucky Colonels	Ohio Valley	FCS	f
8495	jacksonvillestate	Jacksonville State Gamecocks	Ohio Valley	FCS	f
8496	murraystate	Murray State Racers	Ohio Valley	FCS	f
8497	southeastmissouristate	Southeast Missouri State Redhawks	Ohio Valley	FCS	f
8498	tennesseestate	Tennessee State Tigers	Ohio Valley	FCS	f
8499	tennesseetech	Tennessee Tech Golden Eagles	Ohio Valley	FCS	f
8500	tennesseemartin	Tennessee-Martin Skyhawks	Ohio Valley	FCS	f
8501	bucknell	Bucknell Bison	Patriot	FCS	f
8502	colgate	Colgate Raiders	Patriot	FCS	f
8503	fordham	Fordham Rams	Patriot	FCS	f
8504	georgetown	Georgetown Hoyas	Patriot	FCS	f
8505	holycross	Holy Cross Crusaders	Patriot	FCS	f
8506	lafayette	Lafayette Leopards	Patriot	FCS	f
8507	lehigh	Lehigh Mountain Hawks	Patriot	FCS	f
8508	butler	Butler Bulldogs	Pioneer	FCS	f
8509	campbell	Campbell Fighting Camels	Pioneer	FCS	f
8510	davidson	Davidson Wildcats	Pioneer	FCS	f
8511	dayton	Dayton Flyers	Pioneer	FCS	f
8512	drake	Drake Bulldogs	Pioneer	FCS	f
8513	jacksonville	Jacksonville Dolphins	Pioneer	FCS	f
8514	marist	Marist Red Foxes	Pioneer	FCS	f
8515	moreheadstate	Morehead State Eagles	Pioneer	FCS	f
8516	sandiego	San Diego Toreros	Pioneer	FCS	f
8517	stetson	Stetson Hatters	Pioneer	FCS	f
8518	valparaiso	Valparaiso Crusaders	Pioneer	FCS	f
8519	chattanooga	Chattanooga Mocs	Southern	FCS	f
8520	easttennesseestate	East Tennessee State Buccaneers	Southern	FCS	f
8521	furman	Furman Paladins	Southern	FCS	f
8522	mercer	Mercer Bears	Southern	FCS	f
8523	samford	Samford Bulldogs	Southern	FCS	f
8524	citadel	The Citadel Bulldogs	Southern	FCS	f
8525	virginiamilitaryinstitute	VMI Keydets	Southern	FCS	f
8526	westerncarolina	Western Carolina Catamounts	Southern	FCS	f
8527	wofford	Wofford Terriers	Southern	FCS	f
8528	abilenechristian	Abilene Christian Wildcats	Southland	FCS	f
8529	centralarkansas	Central Arkansas Bears	Southland	FCS	f
8530	houstonbaptist	Houston Baptist Huskies	Southland	FCS	f
8531	incarnateword	Incarnate Word Cardinals	Southland	FCS	f
8532	lamar	Lamar Cardinals	Southland	FCS	f
8533	mcneesestate	McNeese State Cowboys	Southland	FCS	f
8534	nichollsstate	Nicholls State Colonels	Southland	FCS	f
8535	northwesternstate	Northwestern State Demons	Southland	FCS	f
8536	samhoustonstate	Sam Houston State Bearkats	Southland	FCS	f
8537	southeasternlouisiana	Southeastern Louisiana Lions	Southland	FCS	f
8538	stephenfaustin	Stephen F. Austin Lumberjacks	Southland	FCS	f
8539	alabamaam	Alabama A&M Bulldogs	SWAC	FCS	f
8540	alabamastate	Alabama State Hornets	SWAC	FCS	f
8541	alcornstate	Alcorn State Braves	SWAC	FCS	f
8542	arkansaspinebluff	Arkansas-Pine Bluff Golden Lions	SWAC	FCS	f
8543	gramblingstate	Grambling State Tigers	SWAC	FCS	f
8544	jacksonstate	Jackson State Tigers	SWAC	FCS	f
8545	mississippivalleystate	Mississippi Valley State Delta Devils	SWAC	FCS	f
8546	prairieviewam	Prairie View A&M Panthers	SWAC	FCS	f
8547	southern	Southern University Jaguars	SWAC	FCS	f
8548	texassouthern	Texas Southern Tigers	SWAC	FCS	f
8549	bowiestate	Bowie State Bulldogs	CIAA	D2	f
8550	chowan	Chowan Hawks	CIAA	D2	f
8551	elizabethcitystate	Elizabeth City State Vikings	CIAA	D2	f
8552	fayettevillestate	Fayetteville State Broncos	CIAA	D2	f
8553	johnsoncsmith	Johnson C. Smith Golden Bulls	CIAA	D2	f
8554	lincolnpa	Lincoln (PA) Lions	CIAA	D2	f
8555	livingstone	Livingstone Blue Bears	CIAA	D2	f
8556	shawuniversity	Shaw Bears	CIAA	D2	f
8557	staugustines	St. Augustine's Falcons	CIAA	D2	f
8558	virginiastate	Virginia State Trojans	CIAA	D2	f
8559	virginiaunion	Virginia Union Panthers	CIAA	D2	f
8560	winstonsalemstate	Winston-Salem State Rams	CIAA	D2	f
8561	aldersonbroaddus	Alderson Broaddus Battlers	G-MAC	D2	f
8562	kentuckywesleyan	Kentucky Wesleyan Panthers	G-MAC	D2	f
8563	malone	Malone Pioneers	G-MAC	D2	f
8564	arkansastech	Arkansas Tech Wonder Boys	GAC	D2	f
8565	arkansasmonticello	Arkansas-Monticello Boll Weevils	GAC	D2	f
8566	eastcentral	East Central Tigers	GAC	D2	f
8567	harding	Harding Bison	GAC	D2	f
8568	hendersonstate	Henderson State Reddies	GAC	D2	f
8569	northwestoklahomastate	Northwestern Oklahoma State Rangers	GAC	D2	f
8570	oklahomabaptist	Oklahoma Baptist Bison	GAC	D2	f
8571	ouachitabaptist	Ouachita Baptist Tigers	GAC	D2	f
8572	southeasternoklahomastate	Southeastern Oklahoma State Savage Storm	GAC	D2	f
8573	southernarkansas	Southern Arkansas Muleriders	GAC	D2	f
8574	southernnazarene	Southern Nazarene Crimson Storm	GAC	D2	f
8575	southwesternoklahomastate	Southwestern Oklahoma State Bulldogs	GAC	D2	f
8576	ashland	Ashland Eagles	GLIAC	D2	f
8577	davenport	Davenport Panthers	GLIAC	D2	f
8578	ferrisstate	Ferris State Bulldogs	GLIAC	D2	f
8579	findlay	Findlay Oilers	GLIAC	D2	f
8580	grandvalleystate	Grand Valley State Lakers	GLIAC	D2	f
8581	hillsdale	Hillsdale Chargers	GLIAC	D2	f
8582	lakeerie	Lake Erie Storm	GLIAC	D2	f
8583	michigantech	Michigan Tech Huskies	GLIAC	D2	f
8584	northernmichigan	Northern Michigan Wildcats	GLIAC	D2	f
8585	northwood	Northwood (MI) Timberwolves	GLIAC	D2	f
8586	ohiodominican	Ohio Dominican Panthers	GLIAC	D2	f
8587	saginawvalleystate	Saginaw Valley State Cardinals	GLIAC	D2	f
8588	tiffin	Tiffin Dragons	GLIAC	D2	f
8589	walsh	Walsh Cavaliers	GLIAC	D2	f
8590	waynestatemi	Wayne State (MI) Warriors	GLIAC	D2	f
8591	indianapolis	Indianapolis Greyhounds	GLVC	D2	f
8592	lincolnmo	Lincoln (MO) Blue Tigers	GLVC	D2	f
8593	mckendree	McKendree Bearcats	GLVC	D2	f
8594	missourisnt	Missouri S&T Miners	GLVC	D2	f
8595	quincy	Quincy Hawks	GLVC	D2	f
8596	southwestbaptist	Southwest Baptist Bearcats	GLVC	D2	f
8597	stjosephs	St. Joseph's (IN) Pumas	GLVC	D2	f
8598	trumanstate	Truman State Bulldogs	GLVC	D2	f
8599	williamjewell	William Jewell Cardinals	GLVC	D2	f
8600	azusapacific	Azusa Pacific Cougars	GNAC	D2	f
8601	centralwashington	Central Washington Wildcats	GNAC	D2	f
8602	humboldtstate	Humboldt State Lumberjacks	GNAC	D2	f
8603	simonfraser	Simon Fraser Clan	GNAC	D2	f
8604	westernoregon	Western Oregon Wolves	GNAC	D2	f
8605	deltastate	Delta State Statesmen	Gulf South	D2	f
8606	floridatech	Florida Tech Panthers	Gulf South	D2	f
8607	mississippicollege	Mississippi College Choctaws	Gulf South	D2	f
8608	northalabama	North Alabama Lions	Gulf South	D2	f
8609	northgreenville	North Greenville Crusaders	Gulf South	D2	f
8610	shorter	Shorter Hawks	Gulf South	D2	f
8611	valdostastate	Valdosta State Blazers	Gulf South	D2	f
8612	westalabama	West Alabama Tigers	Gulf South	D2	f
8613	uwf	West Florida Argonauts	Gulf South	D2	f
8614	westgeorgia	West Georgia Wolves	Gulf South	D2	f
8615	angelostate	Angelo State Rams	LSC	D2	f
8616	easternnewmexico	Eastern New Mexico Greyhounds	LSC	D2	f
8617	midwesternstate	Midwestern State Mustangs	LSC	D2	f
8618	oklahomapanhandle	Oklahoma Panhandle State Aggies	LSC	D2	f
8619	tarletonstate	Tarleton State Texans	LSC	D2	f
8620	texasamcommerce	Texas A&M-Commerce Lions	LSC	D2	f
8621	texasamkingsville	Texas A&M-Kingsville Javelinas	LSC	D2	f
8622	utpb	Texas-Permian Basin Falcons	LSC	D2	f
8623	westtexasam	West Texas A&M Buffs	LSC	D2	f
8624	westernnewmexico	Western New Mexico Mustangs	LSC	D2	f
8625	charleston	Charleston (WV) Golden Eagles	MEC	D2	f
8626	concord	Concord Mountain Lions	MEC	D2	f
8627	fairmontstate	Fairmont State Falcons	MEC	D2	f
8628	glenvillestate	Glenville State Pioneers	MEC	D2	f
8629	notredameoh	Notre Dame (OH) Falcons	MEC	D2	f
8630	shepherd	Shepherd Rams	MEC	D2	f
8631	urbana	Urbana Blue Knights	MEC	D2	f
8632	virginiawise	Virginia-Wise Highland Cavaliers	MEC	D2	f
8633	westliberty	West Liberty Hilltoppers	MEC	D2	f
8634	westvirginiastate	West Virginia State Yellow Jackets	MEC	D2	f
8635	westvirginiawesleyan	West Virginia Wesleyan Bobcats	MEC	D2	f
8636	centralmissouri	Central Missouri Mules	MIAA	D2	f
8637	centraloklahoma	Central Oklahoma Bronchos	MIAA	D2	f
8638	emporiastate	Emporia State Hornets	MIAA	D2	f
8639	forthaysstate	Fort Hays State Tigers	MIAA	D2	f
8640	lindenwood	Lindenwood Lions	MIAA	D2	f
8641	missourisouthern	Missouri Southern Lions	MIAA	D2	f
8642	missouriwestern	Missouri Western Griffons	MIAA	D2	f
8643	nebraskakearney	Nebraska-Kearney Lopers	MIAA	D2	f
8644	northeasternstate	Northeastern State RiverHawks	MIAA	D2	f
8645	northwestmissouristate	Northwest Missouri State Bearcats	MIAA	D2	f
8646	pittsburgstate	Pittsburg State Gorillas	MIAA	D2	f
8647	washburn	Washburn Ichabods	MIAA	D2	f
8648	americaninternational	American International Yellow Jackets	Northeast 10	D2	f
8649	assumption	Assumption Greyhounds	Northeast 10	D2	f
8650	bentley	Bentley Falcons	Northeast 10	D2	f
8651	liupost	Long Island-Post Pioneers	Northeast 10	D2	f
8652	merrimack	Merrimack Warriors	Northeast 10	D2	f
8653	newhaven	New Haven Chargers	Northeast 10	D2	f
8654	pace	Pace Setters	Northeast 10	D2	f
8655	southernconnecticutstate	Southern Connecticut Fighting Owls	Northeast 10	D2	f
8656	stanselm	St. Anselm Hawks	Northeast 10	D2	f
8657	stonehill	Stonehill Skyhawks	Northeast 10	D2	f
8658	augustanasd	Augustana (SD) Vikings	Northern Sun	D2	f
8659	bemidjistate	Bemidji State Beavers	Northern Sun	D2	f
8660	concordiastpaul	Concordia (MN-St.Paul) Golden Bears	Northern Sun	D2	f
8661	mary	Mary Marauders	Northern Sun	D2	f
8662	minnesotacrookston	Minnesota-Crookston Golden Eagles	Northern Sun	D2	f
8663	minnesotaduluth	Minnesota-Duluth Bulldogs	Northern Sun	D2	f
8664	minotstate	Minot State Beavers	Northern Sun	D2	f
8665	mankatostate	MSU-Mankato Mavericks	Northern Sun	D2	f
8666	minnesotastatemoorhead	MSU-Moorhead Dragons	Northern Sun	D2	f
8667	northernstate	Northern State Wolves	Northern Sun	D2	f
8668	siouxfalls	Sioux Falls Cougars	Northern Sun	D2	f
8669	southwestminnesotastate	Southwest Minnesota State Mustangs	Northern Sun	D2	f
8670	stcloudstate	St. Cloud State Huskies	Northern Sun	D2	f
8671	upperiowa	Upper Iowa Peacocks	Northern Sun	D2	f
8672	waynestate	Wayne State (NE) Wildcats	Northern Sun	D2	f
8673	winonastate	Winona State Warriors	Northern Sun	D2	f
8674	bloomsburg	Bloomsburg Huskies	PSAC	D2	f
8675	californiapa	California (PA) Vulcans	PSAC	D2	f
8676	cheyney	Cheyney Wolves	PSAC	D2	f
8677	clarion	Clarion Golden Eagles	PSAC	D2	f
8678	eaststroudsburg	East Stroudsburg Warriors	PSAC	D2	f
8679	edinboro	Edinboro Fighting Scots	PSAC	D2	f
8680	gannon	Gannon Golden Knights	PSAC	D2	f
8681	indianapa	Indiana (PA) Crimson Hawks	PSAC	D2	f
8682	kutztown	Kutztown Golden Bears	PSAC	D2	f
8683	lockhaven	Lock Haven Bald Eagles	PSAC	D2	f
8684	mercyhurst	Mercyhurst Lakers	PSAC	D2	f
8685	millersville	Millersville Marauders	PSAC	D2	f
8686	setonhill	Seton Hill Griffins	PSAC	D2	f
8687	shippensburg	Shippensburg Red Raiders	PSAC	D2	f
8688	slipperyrock	Slippery Rock The Rock	PSAC	D2	f
8689	westchester	West Chester Golden Rams	PSAC	D2	f
8690	adamsstate	Adams State Grizzlies	RMAC	D2	f
8691	blackhillsstate	Black Hills State Yellow Jackets	RMAC	D2	f
8692	chadronstate	Chadron State Eagles	RMAC	D2	f
8693	coloradomesa	Colorado Mesa Mavericks	RMAC	D2	f
8694	coloradomines	Colorado Mines Orediggers	RMAC	D2	f
8695	csupueblo	CSU-Pueblo ThunderWolves	RMAC	D2	f
8696	dixiestate	Dixie State Red Storm	RMAC	D2	f
8697	fortlewis	Fort Lewis Skyhawks	RMAC	D2	f
8698	newmexicohighlands	New Mexico Highlands Cowboys	RMAC	D2	f
8699	southdakotamines	South Dakota Mines Hardrockers	RMAC	D2	f
8700	westernstate	Western State Colorado Mountaineers	RMAC	D2	f
8701	albanystate	Albany State Golden Rams	SIAC	D2	f
8702	benedict	Benedict Tigers	SIAC	D2	f
8703	centralstate	Central State Marauders	SIAC	D2	f
8704	clarkatlanta	Clark Atlanta Panthers	SIAC	D2	f
8705	fortvalleystate	Fort Valley State Wildcats	SIAC	D2	f
8706	kentuckystate	Kentucky State Thorobreds	SIAC	D2	f
8707	lane	Lane Dragons	SIAC	D2	f
8708	milescollege	Miles Golden Bears	SIAC	D2	f
8709	morehouse	Morehouse Maroon Tigers	SIAC	D2	f
8710	tuskegee	Tuskegee Golden Tigers	SIAC	D2	f
8711	brevard	Brevard Tornados	South Atlantic	D2	f
8712	carsonnewman	Carson-Newman Eagles	South Atlantic	D2	f
8713	catawba	Catawba Indians	South Atlantic	D2	f
8714	lenoirrhyne	Lenoir-Rhyne Bears	South Atlantic	D2	f
8715	limestone	Limestone Saints	South Atlantic	D2	f
8716	marshill	Mars Hill Lions	South Atlantic	D2	f
8717	newberry	Newberry Wolves	South Atlantic	D2	f
8718	tusculum	Tusculum Pioneers	South Atlantic	D2	f
8719	uncpembroke	UNC Pembroke Braves	South Atlantic	D2	f
8720	wingate	Wingate Bulldogs	South Atlantic	D2	f
8721	belhaven	Belhaven Blazers	ASC	D3	f
8722	easttexasbaptist	East Texas Baptist Tigers	ASC	D3	f
8723	hardinsimmons	Hardin-Simmons Cowboys	ASC	D3	f
8724	howardpayne	Howard Payne Yellow Jackets	ASC	D3	f
8725	louisianacollege	Louisiana College Wildcats	ASC	D3	f
8726	umhb	Mary Hardin-Baylor Crusaders	ASC	D3	f
8727	mcmurry	McMurry War Hawks	ASC	D3	f
8728	sulrossstate	Sul Ross State Lobos	ASC	D3	f
8729	augustana	Augustana (IL) Vikings	CCIW	D3	f
8730	carthage	Carthage Red Men	CCIW	D3	f
8731	carrollwi	Carroll (WI) Pioneers	CCIW	D3	f
8732	elmhurst	Elmhurst Bluejays	CCIW	D3	f
8733	illinoiswesleyan	Illinois Wesleyan Titans	CCIW	D3	f
8734	millikin	Millikin Big Blue	CCIW	D3	f
8735	northcentral	North Central Cardinals	CCIW	D3	f
8736	northpark	North Park Vikings	CCIW	D3	f
8737	wheaton	Wheaton (IL) Thunder	CCIW	D3	f
8738	dickinson	Dickinson Red Devils	Centennial	D3	f
8739	franklinmarshall	Franklin & Marshall Diplomats	Centennial	D3	f
8740	gettysburg	Gettysburg Bullets	Centennial	D3	f
8741	johnshopkins	Johns Hopkins Blue Jays	Centennial	D3	f
8742	juniata	Juniata Eagles	Centennial	D3	f
8743	mcdaniel	McDaniel Green Terror	Centennial	D3	f
8744	moravian	Moravian Greyhounds	Centennial	D3	f
8745	muhlenberg	Muhlenberg Mules	Centennial	D3	f
8746	susquehanna	Susquehanna River Hawks	Centennial	D3	f
8747	ursinus	Ursinus Bears	Centennial	D3	f
8748	alfredstate	Alfred State Pioneers	ECFC	D3	f
8749	annamaria	Anna Maria AMCATS	ECFC	D3	f
8750	becker	Becker Hawks	ECFC	D3	f
8751	castleton	Castleton Spartans	ECFC	D3	f
8752	dean	Dean Bulldogs	ECFC	D3	f
8753	gallaudet	Gallaudet Bison	ECFC	D3	f
8754	husson	Husson Eagles	ECFC	D3	f
8755	mountida	Mount Ida Mustangs	ECFC	D3	f
8756	norwich	Norwich Cadets	ECFC	D3	f
8757	sunymaritime	SUNY-Maritime Privateers	ECFC	D3	f
8758	alfred	Alfred Saxons	Empire 8	D3	f
8759	brockport	Brockport Golden Eagles	Empire 8	D3	f
8760	buffalostate	Buffalo State Bengals	Empire 8	D3	f
8761	sunycortland	Cortland State Red Dragons	Empire 8	D3	f
8762	hartwick	Hartwick Hawks	Empire 8	D3	f
8763	ithaca	Ithaca Bombers	Empire 8	D3	f
8764	morrisvillestate	Morrisville State Mustangs	Empire 8	D3	f
8765	stjohnfisher	St. John Fisher Cardinals	Empire 8	D3	f
8766	utica	Utica Pioneers	Empire 8	D3	f
8767	anderson	Anderson (IN) Ravens	HCAC	D3	f
8768	bluffton	Bluffton Beavers	HCAC	D3	f
8769	defiance	Defiance Yellow Jackets	HCAC	D3	f
8770	earlham	Earlham Quakers	HCAC	D3	f
8771	franklin	Franklin Grizzlies	HCAC	D3	f
8772	hanover	Hanover Panthers	HCAC	D3	f
8773	manchester	Manchester (IN) Spartans	HCAC	D3	f
8774	mountstjoseph	Mount St. Joseph Lions	HCAC	D3	f
8775	rosehulman	Rose-Hulman Engineers	HCAC	D3	f
8776	buenavista	Buena Vista Beavers	IIAC	D3	f
8777	central	Central Dutch	IIAC	D3	f
8778	coe	Coe Kohawks	IIAC	D3	f
8779	dubuque	Dubuque Spartans	IIAC	D3	f
8780	loras	Loras Duhawks	IIAC	D3	f
8781	luther	Luther Norse	IIAC	D3	f
8782	nebraskawesleyan	Nebraska Wesleyan Prairie Wolves	IIAC	D3	f
8783	simpson	Simpson Storm	IIAC	D3	f
8784	wartburg	Wartburg Knights	IIAC	D3	f
8785	hobart	Hobart Statesmen	Liberty	D3	f
8786	merchantmarine	Merchant Marine Mariners	Liberty	D3	f
8787	rochester	Rochester Yellowjackets	Liberty	D3	f
8788	rpi	RPI Engineers	Liberty	D3	f
8789	springfield	Springfield Pride	Liberty	D3	f
8790	stlawrence	St. Lawrence Saints	Liberty	D3	f
8791	union	Union (NY) Dutchmen	Liberty	D3	f
8792	wpi	Worcester Poly Engineers	Liberty	D3	f
8793	bridgewaterstate	Bridgewater State Bears	MASCAC	D3	f
8794	fitchburgstate	Fitchburg State Falcons	MASCAC	D3	f
8795	framinghamstate	Framingham State Rams	MASCAC	D3	f
8796	massachusettsmaritime	Massachusetts Maritime Buccaneers	MASCAC	D3	f
8797	plymouthstate	Plymouth State Panthers	MASCAC	D3	f
8798	umassdartmouth	UMass-Dartmouth Corsairs	MASCAC	D3	f
8799	westernconnecticutstate	Western Connecticut Colonials	MASCAC	D3	f
8800	westfieldstate	Westfield State Owls	MASCAC	D3	f
8801	worcesterstate	Worcester State Lancers	MASCAC	D3	f
8802	augsburg	Augsburg Auggies	MIAC	D3	f
8803	bethel	Bethel (MN) Royals	MIAC	D3	f
8804	carletonmn	Carleton (MN) Knights	MIAC	D3	f
8805	concordiamoorhead	Concordia (MN-Moorhead) Cobbers	MIAC	D3	f
8806	gustavusadolphus	Gustavus Adolphus Golden Gusties	MIAC	D3	f
8807	hamline	Hamline Pipers	MIAC	D3	f
8808	stjohnsmn	St. John's (MN) Johnnies	MIAC	D3	f
8809	stolaf	St. Olaf Oles	MIAC	D3	f
8810	stthomasmn	St. Thomas Tommies	MIAC	D3	f
8811	adrian	Adrian Bulldogs	Michigan Intercollegiate	D3	f
8812	albion	Albion Britons	Michigan Intercollegiate	D3	f
8813	alma	Alma Scots	Michigan Intercollegiate	D3	f
8814	hope	Hope Flying Dutchmen	Michigan Intercollegiate	D3	f
8815	kalamazoo	Kalamazoo Hornets	Michigan Intercollegiate	D3	f
8816	olivet	Olivet Comets	Michigan Intercollegiate	D3	f
8817	trine	Trine Thunder	Michigan Intercollegiate	D3	f
8818	albright	Albright Lions	Middle Atlantic	D3	f
8819	delawarevalley	Delaware Valley Aggies	Middle Atlantic	D3	f
8820	fduflorham	FDU-Florham Devils	Middle Atlantic	D3	f
8821	kings	King's (PA) Monarchs	Middle Atlantic	D3	f
8822	lebanonvalley	Lebanon Valley Flying Dutchmen	Middle Atlantic	D3	f
8823	lycoming	Lycoming Warriors	Middle Atlantic	D3	f
8824	misericordia	Misericordia Cougars	Middle Atlantic	D3	f
8825	stevenson	Stevenson Mustangs	Middle Atlantic	D3	f
8826	widener	Widener Pride	Middle Atlantic	D3	f
8827	wilkes	Wilkes Colonels	Middle Atlantic	D3	f
8828	beloit	Beloit Buccaneers	Midwest	D3	f
8829	cornellia	Cornell (IA) Rams	Midwest	D3	f
8830	grinnell	Grinnell Pioneers	Midwest	D3	f
8831	illinoiscollege	Illinois College Blueboys	Midwest	D3	f
8832	knox	Knox Prairie Fire	Midwest	D3	f
8833	lakeforest	Lake Forest Foresters	Midwest	D3	f
8834	lawrence	Lawrence Vikings	Midwest	D3	f
8835	macalester	Macalester Scots	Midwest	D3	f
8836	monmouthil	Monmouth (IL) Fighting Scots	Midwest	D3	f
8837	ripon	Ripon Red Hawks	Midwest	D3	f
8838	stnorbert	St. Norbert Green Knights	Midwest	D3	f
8839	aurora	Aurora Spartans	NACC	D3	f
8840	benedictine	Benedictine (IL) Eagles	NACC	D3	f
8841	concordiachicago	Concordia (IL) Cougars	NACC	D3	f
8842	concordiawi	Concordia (WI) Falcons	NACC	D3	f
8843	lakeland	Lakeland Muskies	NACC	D3	f
8844	rockford	Rockford Regents	NACC	D3	f
8845	wisconsinlutheran	Wisconsin Lutheran Warriors	NACC	D3	f
8846	allegheny	Allegheny Gators	NCAC	D3	f
8847	denison	Denison Big Red	NCAC	D3	f
8848	depauw	DePauw Tigers	NCAC	D3	f
8849	hiram	Hiram Terriers	NCAC	D3	f
8850	kenyon	Kenyon Lords	NCAC	D3	f
8851	oberlin	Oberlin Yeomen	NCAC	D3	f
8852	ohiowesleyan	Ohio Wesleyan Battling Bishops	NCAC	D3	f
8853	wabash	Wabash Little Giants	NCAC	D3	f
8854	wittenberg	Wittenberg Tigers	NCAC	D3	f
8855	wooster	Wooster Fighting Scots	NCAC	D3	f
8856	coastguard	Coast Guard Bears	NEFC	D3	f
8857	curry	Curry Colonels	NEFC	D3	f
8858	endicott	Endicott Power Gulls	NEFC	D3	f
8859	mainemaritime	Maine Maritime Mariners	NEFC	D3	f
8860	mit	MIT Engineers	NEFC	D3	f
8861	nichols	Nichols Bison	NEFC	D3	f
8862	salveregina	Salve Regina Seahawks	NEFC	D3	f
8863	westernnewengland	Western New England Golden Bears	NEFC	D3	f
8864	amherst	Amherst College	NESCAC	D3	f
8865	bates	Bates Bobcats	NESCAC	D3	f
8866	bowdoin	Bowdoin Polar Bears	NESCAC	D3	f
8867	colby	Colby White Mules	NESCAC	D3	f
8868	hamilton	Hamilton Continentals	NESCAC	D3	f
8869	middlebury	Middlebury Panthers	NESCAC	D3	f
8870	trinityct	Trinity (CT) Bantams	NESCAC	D3	f
8871	tufts	Tufts Jumbos	NESCAC	D3	f
8872	wesleyan	Wesleyan Cardinals	NESCAC	D3	f
8873	williams	Williams Ephs	NESCAC	D3	f
8874	christophernewport	Christopher Newport Captains	NJAC	D3	f
8875	tcnj	College of New Jersey Lions	NJAC	D3	f
8876	frostburgstate	Frostburg State Bobcats	NJAC	D3	f
8877	kean	Kean Cougars	NJAC	D3	f
8878	montclairstate	Montclair State Red Hawks	NJAC	D3	f
8879	rowan	Rowan Professors	NJAC	D3	f
8880	salisbury	Salisbury Seagulls	NJAC	D3	f
8881	southernvirginia	Southern Virginia Knights	NJAC	D3	f
8882	wesley	Wesley Wolverines	NJAC	D3	f
8883	williampaterson	William Paterson Pioneers	NJAC	D3	f
8884	georgefox	George Fox Bruins	NWC	D3	f
8885	lewisclark	Lewis & Clark Pioneers	NWC	D3	f
8886	linfield	Linfield Wildcats	NWC	D3	f
8887	pacificor	Pacific (OR) Boxers	NWC	D3	f
8888	pacificlutheran	Pacific Lutheran Lutes	NWC	D3	f
8889	pugetsound	Puget Sound Loggers	NWC	D3	f
8890	whitworth	Whitworth Pirates	NWC	D3	f
8891	willamette	Willamette Bearcats	NWC	D3	f
8892	baldwinwallace	Baldwin-Wallace Yellow Jackets	OAC	D3	f
8893	capital	Capital Crusaders	OAC	D3	f
8894	heidelberg	Heidelberg Fighting Student Princes	OAC	D3	f
8895	johncarroll	John Carroll Blue Streaks	OAC	D3	f
8896	marietta	Marietta Pioneers	OAC	D3	f
8897	mountunion	Mount Union Purple Raiders	OAC	D3	f
8898	muskingum	Muskingum Fighting Muskies	OAC	D3	f
8899	ohionorthern	Ohio Northern Polar Bears	OAC	D3	f
8900	otterbein	Otterbein Cardinals	OAC	D3	f
8901	wilmington	Wilmington Quakers	OAC	D3	f
8902	bridgewater	Bridgewater Eagles	ODAC	D3	f
8903	catholic	Catholic Cardinals	ODAC	D3	f
8904	emoryhenry	Emory & Henry Wasps	ODAC	D3	f
8905	guilford	Guilford Quakers	ODAC	D3	f
8906	hampdensydney	Hampden-Sydney Tigers	ODAC	D3	f
8907	randolphmacon	Randolph-Macon Yellow Jackets	ODAC	D3	f
8908	shenandoah	Shenandoah Hornets	ODAC	D3	f
8909	washingtonlee	Washington & Lee Generals	ODAC	D3	f
8910	bethanywv	Bethany (WV) Bison	PAC	D3	f
8911	carnegiemellon	Carnegie Mellon Tartans	PAC	D3	f
8912	casewestern	Case Western Reserve Spartans	PAC	D3	f
8913	geneva	Geneva Golden Tornadoes	PAC	D3	f
8914	grovecity	Grove City Wolverines	PAC	D3	f
8915	saintvincent	St. Vincent Bearcats	PAC	D3	f
8916	thiel	Thiel Tomcats	PAC	D3	f
8917	thomasmore	Thomas More Saints	PAC	D3	f
8918	washingtonjefferson	Washington & Jefferson Presidents	PAC	D3	f
8919	waynesburg	Waynesburg Yellow Jackets	PAC	D3	f
8920	westministerpa	Westminster (PA) Titans	PAC	D3	f
8921	berry	Berry Vikings	SAA	D3	f
8922	birminghamsouthern	Birmingham-Southern Panthers	SAA	D3	f
8923	centre	Centre Praying Colonels	SAA	D3	f
8924	chicago	Chicago Maroons	SAA	D3	f
8925	hendrix	Hendrix Warriors	SAA	D3	f
8926	millsaps	Millsaps Majors	SAA	D3	f
8927	rhodes	Rhodes Lynx	SAA	D3	f
8928	sewanee	Sewanee Tigers	SAA	D3	f
8929	washingtonu	Washington (MO) Bears	SAA	D3	f
8930	austin	Austin Kangaroos	SCAC	D3	f
8931	southwesterntx	Southwestern (TX) Pirates	SCAC	D3	f
8932	texaslutheran	Texas Lutheran Bulldogs	SCAC	D3	f
8933	trinitytx	Trinity (TX) Tigers	SCAC	D3	f
8934	callutheran	Cal Lutheran Kingsmen	SCIAC	D3	f
8935	chapman	Chapman Panthers	SCIAC	D3	f
8936	claremontmuddscripps	Claremont-Mudd-Scripps Stags	SCIAC	D3	f
8937	laverne	La Verne Leopards	SCIAC	D3	f
8938	occidental	Occidental Tigers	SCIAC	D3	f
8939	pomonapitzer	Pomona-Pitzer Sagehens	SCIAC	D3	f
8940	redlands	Redlands Bulldogs	SCIAC	D3	f
8941	whittier	Whittier Poets	SCIAC	D3	f
8942	crown	Crown Storm	UMAC	D3	f
8943	eureka	Eureka Red Devils	UMAC	D3	f
8944	greenville	Greenville Panthers	UMAC	D3	f
8945	iowawesleyan	Iowa Wesleyan Tigers	UMAC	D3	f
8946	macmurray	MacMurray Highlanders	UMAC	D3	f
8947	martinluther	Martin Luther Knights	UMAC	D3	f
8948	minnesotamorris	Minnesota-Morris Cougars	UMAC	D3	f
8949	northwesternstpaul	Northwestern (MN) Eagles	UMAC	D3	f
8950	stscholastica	St. Scholastica Saints	UMAC	D3	f
8951	westministermo	Westminster (MO) Blue Jays	UMAC	D3	f
8952	averett	Averett Cougars	USA South	D3	f
8953	ferrum	Ferrum Panthers	USA South	D3	f
8954	greensboro	Greensboro Pride	USA South	D3	f
8955	huntingdon	Huntingdon Hawks	USA South	D3	f
8956	lagrange	LaGrange Panthers	USA South	D3	f
8957	maryville	Maryville Scots	USA South	D3	f
8958	methodist	Methodist Monarchs	USA South	D3	f
8959	ncwesleyan	NC Wesleyan Battling Bishops	USA South	D3	f
8960	wisconsineauclaire	Wisconsin-Eau Claire Blugolds	WIAC	D3	f
8961	wisconsinlacrosse	Wisconsin-La Crosse Eagles	WIAC	D3	f
8962	wisconsinoshkosh	Wisconsin-Oshkosh Titans	WIAC	D3	f
8963	wisconsinplatteville	Wisconsin-Platteville Pioneers	WIAC	D3	f
8964	wisconsinriverfalls	Wisconsin-River Falls Falcons	WIAC	D3	f
8965	wisconsinstevenspoint	Wisconsin-Stevens Point Pointers	WIAC	D3	f
8966	wisconsinstout	Wisconsin-Stout Blue Devils	WIAC	D3	f
8967	wisconsinwhitewater	Wisconsin-Whitewater Warhawks	WIAC	D3	f
8968	finlandia	Finlandia Lions	D3 Independents	D3	f
8969	maranathabaptist	Maranatha Baptist Sabercats	D3 Independents	D3	f
8970	une	UNE Nor'easters	D3 Independents	D3	f
8971	azchristian	Arizona Christian Firestorm	CSFL	NAIA	f
8972	bacone	Bacone Warriors	CSFL	NAIA	f
8973	langston	Langston Lions	CSFL	NAIA	f
8974	lyon	Lyon Scots	CSFL	NAIA	f
8975	southwesternassembliesofgod	SW Assemblies of God Lions	CSFL	NAIA	f
8976	texascollege	Texas College Steers	CSFL	NAIA	f
8977	waylandbaptist	Wayland Baptist Pioneers	CSFL	NAIA	f
8978	carrollmt	Carroll (MT) Fighting Saints	Frontier	NAIA	f
8979	easternoregon	Eastern Oregon Mountaineers	Frontier	NAIA	f
8980	montanastatenorthern	Montana State-Northern Northern Lights	Frontier	NAIA	f
8981	montanatech	Montana Tech Orediggers	Frontier	NAIA	f
8982	montanawestern	Montana-Western Bulldogs	Frontier	NAIA	f
8983	rockymountain	Rocky Mountain Battlin' Bears	Frontier	NAIA	f
8984	southernoregon	Southern Oregon Raiders	Frontier	NAIA	f
8985	collegeidaho	College of Idaho Coyotes	Frontier	NAIA	f
8986	briarcliff	Briar Cliff Chargers	Great Plains	NAIA	f
8987	concordiane	Concordia (NE) Bulldogs	Great Plains	NAIA	f
8988	dakotawesleyan	Dakota Wesleyan Tigers	Great Plains	NAIA	f
8989	doane	Doane Tigers	Great Plains	NAIA	f
8990	dordt	Dordt Defenders	Great Plains	NAIA	f
8991	hastings	Hastings Broncos	Great Plains	NAIA	f
8992	midland	Midland Warriors	Great Plains	NAIA	f
8993	morningside	Morningside Mustangs	Great Plains	NAIA	f
8994	northwesternia	Northwestern (IA) Red Raiders	Great Plains	NAIA	f
8995	avila	Avila Eagles	Heart of America	NAIA	f
8996	baker	Baker Wildcats	Heart of America	NAIA	f
8997	benedictineks	Benedictine (KS) Ravens	Heart of America	NAIA	f
8998	centralmethodist	Central Methodist Eagles	Heart of America	NAIA	f
8999	clarke	Clarke Crusaders	Heart of America	NAIA	f
9000	culverstockton	Culver-Stockton Wildcats	Heart of America	NAIA	f
9001	evangel	Evangel Crusaders	Heart of America	NAIA	f
9002	graceland	Graceland Yellowjackets	Heart of America	NAIA	f
9003	grandview	Grand View Vikings	Heart of America	NAIA	f
9004	midamericanazarene	MidAmerica Nazarene Pioneers	Heart of America	NAIA	f
9005	missourivalley	Missouri Valley Vikings	Heart of America	NAIA	f
9006	perustate	Peru State Bobcats	Heart of America	NAIA	f
9007	williampenn	William Penn Statesmen	Heart of America	NAIA	f
9008	bethanyks	Bethany (KS) Terrible Swedes	Kansas Collegiate	NAIA	f
9009	bethelks	Bethel (KS) Threshers	Kansas Collegiate	NAIA	f
9010	friends	Friends Falcons	Kansas Collegiate	NAIA	f
9011	kansaswesleyan	Kansas Wesleyan Coyotes	Kansas Collegiate	NAIA	f
9012	mcpherson	McPherson Bulldogs	Kansas Collegiate	NAIA	f
9013	ottawaks	Ottawa (KS) Braves	Kansas Collegiate	NAIA	f
9014	southwesternks	Southwestern (KS) Moundbuilders	Kansas Collegiate	NAIA	f
9015	saintmary	St. Mary (KS) Spires	Kansas Collegiate	NAIA	f
9016	sterling	Sterling Warriors	Kansas Collegiate	NAIA	f
9017	tabor	Tabor Bluejays	Kansas Collegiate	NAIA	f
9018	betheltn	Bethel (TN) Wildcats	Mid-South	NAIA	f
9019	bluefield	Bluefield Rams	Mid-South	NAIA	f
9020	campbellsville	Campbellsville Tigers	Mid-South	NAIA	f
9021	cincinnatichristian	Cincinnati Christian Eagles	Mid-South	NAIA	f
9022	cumberland	Cumberland Phoenix	Mid-South	NAIA	f
9023	cumberlands	Cumberlands Patriots	Mid-South	NAIA	f
9024	faulkner	Faulkner Eagles	Mid-South	NAIA	f
9025	georgetownky	Georgetown (KY) Tigers	Mid-South	NAIA	f
9026	kentuckychristian	Kentucky Christian Knights	Mid-South	NAIA	f
9027	lindseywilson	Lindsey Wilson Blue Raiders	Mid-South	NAIA	f
9028	pikeville	Pikeville Bears	Mid-South	NAIA	f
9029	reinhardt	Reinhardt Eagles	Mid-South	NAIA	f
9030	standrewsnc	St. Andrew's (NC) Knights	Mid-South	NAIA	f
9031	unionky	Union (KY) Bulldogs	Mid-South	NAIA	f
9032	concordiami	Concordia (MI) Cardinals	MSFA	NAIA	f
9033	indianawesleyan	Indiana Wesleyan Wildcats	MSFA	NAIA	f
9034	lindenwoodbelleville	Lindenwood-Belleville Lynx	MSFA	NAIA	f
9035	marian	Marian Knights	MSFA	NAIA	f
9036	missouribaptist	Missouri Baptist Spartans	MSFA	NAIA	f
9037	olivetnazarene	Olivet Nazarene Tigers	MSFA	NAIA	f
9038	robertmorrisil	Robert Morris (IL) Eagles	MSFA	NAIA	f
9039	sienaheights	Siena Heights Saints	MSFA	NAIA	f
9040	stambrose	St. Ambrose Fighting Bees	MSFA	NAIA	f
9041	stfrancisil	St. Francis (IL) Fighting Saints	MSFA	NAIA	f
9042	saintfrancisin	St. Francis (IN) Cougars	MSFA	NAIA	f
9043	saintxavier	St. Xavier Cougars	MSFA	NAIA	f
9044	taylor	Taylor Trojans	MSFA	NAIA	f
9045	trinityinternational	Trinity International Trojans	MSFA	NAIA	f
9046	dakotastate	Dakota State Trojans	NSAA	NAIA	f
9047	dickinsonstate	Dickinson State Blue Hawks	NSAA	NAIA	f
9048	jamestown	Jamestown Jimmies	NSAA	NAIA	f
9049	mayvillestate	Mayville State Comets	NSAA	NAIA	f
9050	presentation	Presentation Saints	NSAA	NAIA	f
9051	valleycitystate	Valley City State Vikings	NSAA	NAIA	f
9052	waldorf	Waldorf Warriors	NSAA	NAIA	f
9053	avemaria	Ave Maria Gyrenes	The Sun	NAIA	f
9054	edwardwaters	Edward Waters Tigers	The Sun	NAIA	f
9055	point	Point Skyhawks	The Sun	NAIA	f
9056	southeastern	Southeastern Fire	The Sun	NAIA	f
9057	warner	Warner Royals	The Sun	NAIA	f
9058	webberinternational	Webber International Warriors	The Sun	NAIA	f
9059	apprentice	Apprentice Ship Builders	USCAA	USCAA	f
9060	concordiaal	Concordia (AL) Hornets	USCAA	USCAA	f
9061	ohiomw	Ohio Midwestern Rams	USCAA	USCAA	f
9062	virginialynchburg	Virginia-Lynchburg Dragons	USCAA	USCAA	f
9063	williamson	Williamson Mechanics	USCAA	USCAA	f
9064	cabrillo	Cabrillo Seahawks	North American	CCCAA	f
9065	collegeredwoods	College of the Redwoods Corsairs	North American	CCCAA	f
9066	foothill	Foothill Owls	North American	CCCAA	f
9067	gavilan	Gavilan Rams	North American	CCCAA	f
9068	hartnell	Hartnell Panthers	North American	CCCAA	f
9069	losmedanos	Los Medanos Mustangs	North American	CCCAA	f
9070	mendocino	Mendocino Eagles	North American	CCCAA	f
9071	merced	Merced Blue Devils	North American	CCCAA	f
9072	montereypeninsula	Monterey Peninsula Lobos	North American	CCCAA	f
9073	reedley	Reedley Tigers	North American	CCCAA	f
9074	sanjosecity	San Jose City Jaguars	North American	CCCAA	f
9075	shasta	Shasta Knights	North American	CCCAA	f
9076	westhills	West Hills Falcons	North American	CCCAA	f
9077	yuba	Yuba 49ers	North American	CCCAA	f
9078	americanriver	American River Beavers	North National	CCCAA	f
9079	butte	Butte Roadrunners	North National	CCCAA	f
9080	ccsanfrancisco	CC San Francisco Rams	North National	CCCAA	f
9081	chabot	Chabot Gladiators	North National	CCCAA	f
9082	collegesequoias	College of the Sequoias Giants	North National	CCCAA	f
9083	collegesiskiyous	College of the Siskiyous Eagles	North National	CCCAA	f
9084	contracosta	Contra Costa Comets	North National	CCCAA	f
9085	deanza	De Anza Dons	North National	CCCAA	f
9086	diablovalley	Diablo Valley Vikings	North National	CCCAA	f
9087	featherriver	Feather River Golden Eagles	North National	CCCAA	f
9088	fresnocity	Fresno City Rams	North National	CCCAA	f
9089	laney	Laney Eagles	North National	CCCAA	f
9090	modestojunior	Modesto Junior Pirates	North National	CCCAA	f
9091	sacramentocity	Sacramento City Panthers	North National	CCCAA	f
9092	sanjoaquindelta	San Joaquin Delta Mustangs	North National	CCCAA	f
9093	sanmateo	San Mateo Bulldogs	North National	CCCAA	f
9094	santarosajunior	Santa Rosa Junior Bear Cubs	North National	CCCAA	f
9095	sierra	Sierra Wolverines	North National	CCCAA	f
9096	allanhancock	Allan Hancock Bulldogs	South American	CCCAA	f
9097	antelopevalley	Antelope Valley Marauders	South American	CCCAA	f
9098	citrus	Citrus Fighting Owls	South American	CCCAA	f
9099	collegedesert	College of the Desert Roadrunners	South American	CCCAA	f
9100	comptoncc	Compton CC Tartars	South American	CCCAA	f
9101	eastlosangeles	East Los Angeles Huskies	South American	CCCAA	f
9102	glendaleccca	Glendale CC (CA) Vaqueros	South American	CCCAA	f
9103	losangelespierce	Los Angeles Pierce Brahma Bulls	South American	CCCAA	f
9104	losangelessouthwest	Los Angeles Southwest Cougars	South American	CCCAA	f
9105	losangelesvalley	Los Angeles Valley Monarchs	South American	CCCAA	f
9106	mtsanjacinto	Mt. San Jacinto Eagles	South American	CCCAA	f
9107	pasadenacity	Pasadena City Lancers	South American	CCCAA	f
9108	sanbernardinovalley	San Bernardino Valley Wolverines	South American	CCCAA	f
9109	sandiegomesa	San Diego Mesa Olympians	South American	CCCAA	f
9110	santaana	Santa Ana Dons	South American	CCCAA	f
9111	santabarbaracity	Santa Barbara City Vaqueros	South American	CCCAA	f
9112	southwestern	Southwestern Jaguars	South American	CCCAA	f
9113	victorvalley	Victor Valley Rams	South American	CCCAA	f
9114	westlosangeles	West Los Angeles Wildcats	South American	CCCAA	f
9115	bakersfield	Bakersfield Renegades	South National	CCCAA	f
9116	cerritos	Cerritos Falcons	South National	CCCAA	f
9117	chaffey	Chaffey Panthers	South National	CCCAA	f
9118	collegecanyons	College of the Canyons Cougars	South National	CCCAA	f
9119	elcamino	El Camino Warriors	South National	CCCAA	f
9120	fullerton	Fullerton Hornets	South National	CCCAA	f
9121	goldenwest	Golden West Rustlers	South National	CCCAA	f
9122	grossmont	Grossmont Griffins	South National	CCCAA	f
9123	longbeachcity	Long Beach City Vikings	South National	CCCAA	f
9124	losangelesharbor	Los Angeles Harbor Seahawks	South National	CCCAA	f
9125	moorpark	Moorpark Raiders	South National	CCCAA	f
9126	mountsanantonio	Mt. SAC Mounties	South National	CCCAA	f
9127	orangecoast	Orange Coast Pirates	South National	CCCAA	f
9128	palomar	Palomar Comets	South National	CCCAA	f
9129	riversidecc	Riverside CC Tigers	South National	CCCAA	f
9130	saddleback	Saddleback Gauchos	South National	CCCAA	f
9131	santamonica	Santa Monica Corsairs	South National	CCCAA	f
9132	ventura	Ventura Pirates	South National	CCCAA	f
9133	ellsworthcc	Ellsworth CC Panthers	Iowa Community College Athletic Conference	NJCAA	f
9134	iowacentralcc	Iowa Central CC Tritons	Iowa Community College Athletic Conference	NJCAA	f
9135	iowawesterncc	Iowa Western CC Reivers	Iowa Community College Athletic Conference	NJCAA	f
9136	butlercc	Butler CC Grizzlies	Kansas Jayhawk Community College Conference	NJCAA	f
9137	coffeyvillecc	Coffeyville CC Red Ravens	Kansas Jayhawk Community College Conference	NJCAA	f
9138	dodgecitycc	Dodge City CC Conquistadors	Kansas Jayhawk Community College Conference	NJCAA	f
9139	fortscottcc	Fort Scott CC Greyhounds	Kansas Jayhawk Community College Conference	NJCAA	f
9140	gardencitycc	Garden City CC Broncbusters	Kansas Jayhawk Community College Conference	NJCAA	f
9141	highlandcc	Highland CC Scotties	Kansas Jayhawk Community College Conference	NJCAA	f
9142	hutchinsoncc	Hutchinson CC Dragons	Kansas Jayhawk Community College Conference	NJCAA	f
9143	independencecc	Independence CC Pirates	Kansas Jayhawk Community College Conference	NJCAA	f
9144	centrallakes	Central Lakes Raiders	Minnesota College Athletic Conference	NJCAA	f
9145	dakotacollege	Dakota College Lumberjacks	Minnesota College Athletic Conference	NJCAA	f
9146	fonddulac	Fond du Lac Thunder	Minnesota College Athletic Conference	NJCAA	f
9147	itascacc	Itasca CC Vikings	Minnesota College Athletic Conference	NJCAA	f
9148	mesabirangectc	Mesabi Range CTC Norse	Minnesota College Athletic Conference	NJCAA	f
9149	minnesotastatectc	Minnesota State CTC Spartans	Minnesota College Athletic Conference	NJCAA	f
9150	minnesotawestctc	Minnesota West CTC Bluejays	Minnesota College Athletic Conference	NJCAA	f
9151	northdakotascience	North Dakota Science Wildcats	Minnesota College Athletic Conference	NJCAA	f
9152	northlandctc	Northland CTC Pioneers	Minnesota College Athletic Conference	NJCAA	f
9153	ridgewater	Ridgewater Warriors	Minnesota College Athletic Conference	NJCAA	f
9154	rochesterctc	Rochester CTC Yellowjackets	Minnesota College Athletic Conference	NJCAA	f
9155	vermillion	Vermilion CC Ironmen	Minnesota College Athletic Conference	NJCAA	f
9156	coahomacc	Coahoma CC Tigers	MACJC	NJCAA	f
9157	copiahlincolncc	Copiah-Lincoln CC Wolfpack	MACJC	NJCAA	f
9158	eastcentralcc	East Central CC Warriors	MACJC	NJCAA	f
9159	eastmississippicc	East Mississippi CC Lions	MACJC	NJCAA	f
9160	hinds	Hinds CC Eagles	MACJC	NJCAA	f
9161	holmes	Holmes CC Bulldogs	MACJC	NJCAA	f
9162	itawambacc	Itawamba CC Indians	MACJC	NJCAA	f
9163	jonescountyjc	Jones County JC Bobcats	MACJC	NJCAA	f
9164	mississippideltacc	Mississippi Delta CC Trojans	MACJC	NJCAA	f
9165	mississippigulfcoastcc	Mississippi Gulf Coast CC Bulldogs	MACJC	NJCAA	f
9166	northeastmississippicc	Northeast Mississippi CC Tigers	MACJC	NJCAA	f
9167	northwestmississippicc	Northwest Mississippi CC Rangers	MACJC	NJCAA	f
9168	pearlrivercc	Pearl River CC Wildcats	MACJC	NJCAA	f
9169	southwestmississippicc	Southwest Mississippi CC Bears	MACJC	NJCAA	f
9170	asa	ASA Avengers	Northeast JC Football Conference	NJCAA	f
9171	lackawanna	Lackawanna Falcons	Northeast JC Football Conference	NJCAA	f
9172	louisburg	Louisburg Hurricanes	Northeast JC Football Conference	NJCAA	f
9173	monroe	Monroe Mustangs	Northeast JC Football Conference	NJCAA	f
9174	nassaucc	Nassau CC Lions	Northeast JC Football Conference	NJCAA	f
9175	blinn	Blinn Buccaneers	Southwest Junior College Football Conference	NJCAA	f
9176	cisco	Cisco Wranglers	Southwest Junior College Football Conference	NJCAA	f
9177	kilgore	Kilgore Rangers	Southwest Junior College Football Conference	NJCAA	f
9178	navarro	Navarro Bulldogs	Southwest Junior College Football Conference	NJCAA	f
9179	northeasternoklahomaam	Northeastern Oklahoma A&M Golden Norsemen	Southwest Junior College Football Conference	NJCAA	f
9180	trinityvalleycc	Trinity Valley CC Cardinals	Southwest Junior College Football Conference	NJCAA	f
9181	tylerjc	Tyler JC Apaches	Southwest Junior College Football Conference	NJCAA	f
9182	arizonawestern	Arizona Western Matadors	Western States Football League	NJCAA	f
9183	easternarizona	Eastern Arizona Gila Monsters	Western States Football League	NJCAA	f
9184	glendaleccaz	Glendale CC (AZ) Gauchos	Western States Football League	NJCAA	f
9185	mesacc	Mesa CC Thunderbirds	Western States Football League	NJCAA	f
9186	newmexicomilitary	New Mexico Military Broncos	Western States Football League	NJCAA	f
9187	phoenix	Phoenix Bears	Western States Football League	NJCAA	f
9188	pimacc	Pima CC Aztecs	Western States Football League	NJCAA	f
9189	scottsdalecc	Scottsdale CC Fighting Artichokes	Western States Football League	NJCAA	f
9190	snow	Snow Badgers	Western States Football League	NJCAA	f
9191	arkansasbaptist	Arkansas Baptist Buffaloes	NJCAA Independents	NJCAA	f
9192	asamiami	ASA Miami Silver Storm	NJCAA Independents	NJCAA	f
9193	dupage	DuPage Chaparrals	NJCAA Independents	NJCAA	f
9194	eriecc	Erie CC Kats	NJCAA Independents	NJCAA	f
9195	georgiamilitary	Georgia Military Bulldogs	NJCAA Independents	NJCAA	f
9196	globetech	Globe Institute of Technology Knights	NJCAA Independents	NJCAA	f
9197	hocking	Hocking Hawks	NJCAA Independents	NJCAA	f
9198	hudsonvalleycc	Hudson Valley CC Vikings	NJCAA Independents	NJCAA	f
9199	alabamaprep	Alabama Prep-Birmingham Spartans	AIFC	Other	f
9200	apa	APA Panthers	AIFC	Other	f
9201	atlantasportsacademy	Atlanta Sports Academy Spartans	AIFC	Other	f
9202	eliteoneacademy	Elite One Academy Lions	AIFC	Other	f
9203	littlejohnsportsacademy	Littlejohn Sports Academy Ravens	AIFC	Other	f
9204	portcity	Port City Ocean Crusaders	AIFC	Other	f
9205	universitygodschosen	University of God's Chosen Disciples	AIFC	Other	f
9206	collegeoffaithar	College of Faith (AR) Warriors	ASCAA	Other	f
9207	collegeoffaith	College of Faith (NC) Saints	ASCAA	Other	f
9208	universityoffaith	University of Faith (FL) Glory Eagles	ASCAA	Other	f
9209	universityfaithok	University of Faith (OK) Kings	ASCAA	Other	f
9210	gattacaflorida	Gattaca Florida Hurricanes	EAC	Other	f
9211	georgiaprepsa	Georgia Prep SA Lions	EAC	Other	f
9212	northgeorgiasa	North Georgia SA Mountaineers	EAC	Other	f
9213	octech	OC Tech Gladiators	EAC	Other	f
9214	palmettoprep	Palmetto Prep Minutemen	EAC	Other	f
9215	centralsoundjc	Central Sound Warhawks	NWJCFL	Other	f
9216	eastsidejc	Eastside JC Bulldogs	NWJCFL	Other	f
9217	everett	Everett Red Raiders	NWJCFL	Other	f
9218	lewisclarkvalley	Lewis and Clark Valley Loggers	NWJCFL	Other	f
9219	slcc	Salt Lake CC Bruins	UTFL	Other	f
9220	centralinternational	Central International Cardinals	Independent	Other	f
9221	dcmetro	DC Metro Wolves	Independent	Other	f
9222	delawaretechcc	Delaware Tech CC Gamecocks	Independent	Other	f
9223	fortlauderdale	Fort Lauderdale Eagles	Independent	Other	f
9224	jerseycoast	Jersey Coast Academy Jaguars	Independent	Other	f
9225	morthland	Morthland Patriots	Independent	Other	f
9226	redemption	Redemption Dragon Slayers	Independent	Other	f
9227	redemptionacademy	Redemption Academy Dragons	Independent	Other	f
9228	texasat	Texas A&T Drillers	Independent	Other	f
9229	thaddeusstevens	Thaddeus Stevens Bulldogs	Independent	Other	f
9230	trinitybible	Trinity Bible College Lions	Independent	Other	f
9231	valleyforgemac	Valley Forge MA&C Trojans	Independent	Other	f
9232	zoubidacole	Zoubida Cole Jaguars	Independent	Other	f
9233	chattahoocheetc	Chattahoochee Technical College Golden Eagles	NCFA	Club	f
9234	columbusstate	Columbus State Cougars	NCFA	Club	f
9235	coppinstate	Coppin State Eagles	NCFA	Club	f
9236	easternconnecticutstate	Eastern Connecticut State Warriors	NCFA	Club	f
9237	georgemason	George Mason Patriots	NCFA	Club	f
9238	longwood	Longwood Lancers	NCFA	Club	f
9239	michiganflint	Michigan-Flint Kodiaks	NCFA	Club	f
9240	middlegeorgiastate	Middle Georgia State Knights	NCFA	Club	f
9241	oakland	Oakland Golden Grizzlies	NCFA	Club	f
9242	onondagacc	Onondaga CC Ogres	NCFA	Club	f
9243	radford	Radford Highlanders	NCFA	Club	f
9244	robertmorrispeoria	Robert Morris-Peoria Eagles	NCFA	Club	f
9245	shepherdbiblecollege	Shepherd Bible College Eagles	NCFA	Club	f
9246	siue	SIUE Cougars	NCFA	Club	f
9247	vcu	VCU Rams	NCFA	Club	f
9248	wisconsinparkside	Wisconsin-Parkside Rangers	NCFA	Club	f
9249	wrightstate	Wright State Raiders	NCFA	Club	f
9250	ohiotech	Central Ohio Tech Titans	ICFF	Club	f
9251	hartford	Hartford Hawks	ICFF	Club	f
9252	swconnecticutprep	SW Connecticut Prep Grizzlies	ICFF	Club	f
9253	caldwell	Caldwell Cougars	CSFL	Club	f
9254	chestnuthill	Chestnut Hill Griffins	CSFL	Club	f
9255	franklinpierce	Franklin Pierce Ravens	CSFL	Club	f
9256	mansfield	Mansfield Mountaineers	CSFL	Club	f
9257	post	Post Eagles	CSFL	Club	f
9258	australia	Australia Outback	IFAF	IFAF	f
9259	austria	Austria National Team	IFAF	IFAF	f
9260	brazil	Brazil On├ºas	IFAF	IFAF	f
9261	canada	Canada National Team	IFAF	IFAF	f
9262	china	China National Team	IFAF	IFAF	f
9263	finland	Finland National Team	IFAF	IFAF	f
9264	france	France Les Bluets	IFAF	IFAF	f
9265	guatemala	Guatemala Tigres	IFAF	IFAF	f
9266	germany	Germany National Team	IFAF	IFAF	f
9267	india	India National Team	IFAF	IFAF	f
9268	italy	Italy National Team	IFAF	IFAF	f
9269	japan	Japan National Team	IFAF	IFAF	f
9270	mexico	Mexico El Tri	IFAF	IFAF	f
9271	newzealand	New Zealand Steelblacks	IFAF	IFAF	f
9272	southkorea	South Korea National Team	IFAF	IFAF	f
9273	sweden	Sweden National Team	IFAF	IFAF	f
9274	usa	USA Eagles	IFAF	IFAF	f
9275	bath	Bath Killer Bees	Premier	BUCS	f
9276	birmingham	Birmingham Lions	Premier	BUCS	f
9277	derby	Derby Braves	Premier	BUCS	f
9278	durham	Durham Saints	Premier	BUCS	f
9279	hertfordshire	Hertfordshire Hurricanes	Premier	BUCS	f
9280	kingston	Kingston Cougars	Premier	BUCS	f
9281	loughborough	Loughborough Students	Premier	BUCS	f
9282	ntu	NTU Renegades	Premier	BUCS	f
9283	stirling	Stirling Clansmen	Premier	BUCS	f
9284	swansea	Swansea Titans	Premier	BUCS	f
9285	glasgow	Glasgow Tigers	1A North	BUCS	f
9286	hallam	Hallam Warriors	1A North	BUCS	f
9287	hull	Hull Sharks	1A North	BUCS	f
9288	leedsbeckett	Leeds Beckett Carnegie	1A North	BUCS	f
9289	ljm	LJMU Fury	1A North	BUCS	f
9290	universitymanchester	Manchester (UK) Tyrants	1A North	BUCS	f
9291	newcastle	Newcastle Raiders	1A North	BUCS	f
9292	northumbria	Northumbria Mustangs	1A North	BUCS	f
9293	nottingham	Nottingham Outlaws	1A North	BUCS	f
9294	sheffield	Sheffield Sabres	1A North	BUCS	f
9295	staffordshire	Staffordshire Stallions	1A North	BUCS	f
9296	sunderland	Sunderland Spartans	1A North	BUCS	f
9297	uclan	UCLan Rams	1A North	BUCS	f
9298	warwick	Warwick Wolves	1A North	BUCS	f
9299	worcester	Worcester Royals	1A North	BUCS	f
9300	brighton	Brighton Tsunami	1A South	BUCS	f
9301	cambridge	Cambridge Pythons	1A South	BUCS	f
9302	cardiff	Cardiff Cobras	1A South	BUCS	f
9303	exeter	Exeter Demons	1A South	BUCS	f
9304	imperial	Imperial Immortals	1A South	BUCS	f
9305	kent	Kent Falcons	1A South	BUCS	f
9306	oxford	Oxford Lancers	1A South	BUCS	f
9307	portsmouth	Portsmouth Destroyers	1A South	BUCS	f
9308	reading	Reading Knights	1A South	BUCS	f
9309	royalholloway	Royal Holloway Bears	1A South	BUCS	f
9310	solent	Solent Redhawks	1A South	BUCS	f
9311	surrey	Surrey Stingers	1A South	BUCS	f
9312	sussex	Sussex Saxons	1A South	BUCS	f
9313	uea	UEA Pirates	1A South	BUCS	f
9314	uwe	UWE Bullets	1A South	BUCS	f
9315	bangor	Bangor MudDogs	2A North	BUCS	f
9316	bradford	Bradford Bears	2A North	BUCS	f
9317	coventry	Coventry Jets	2A North	BUCS	f
9318	dmu	DMU Falcons	2A North	BUCS	f
9319	edgehill	Edge Hill Vikings	2A North	BUCS	f
9320	edinburgh	Edinburgh Predators	2A North	BUCS	f
9321	napier	Edinburgh Napier Knights	2A North	BUCS	f
9322	heriotwatt	Heriot-Watt AFC	2A North	BUCS	f
9323	huddersfield	Huddersfield Hawks	2A North	BUCS	f
9324	keele	Keele Crusaders	2A North	BUCS	f
9325	lancaster	Lancaster Bombers	2A North	BUCS	f
9326	leeds	Leeds Celtics	2A North	BUCS	f
9327	leicester	Leicester Longhorns	2A North	BUCS	f
9328	lincoln	Lincoln (UK) Colonials	2A North	BUCS	f
9329	liverpool	Liverpool Raptors	2A North	BUCS	f
9330	mmu	MMU Eagles	2A North	BUCS	f
9331	northampton	Northampton Nemesis	2A North	BUCS	f
9332	teesside	Teesside Cougars	2A North	BUCS	f
9333	westofscotland	West of Scotland Pyros	2A North	BUCS	f
9334	universityyork	York (UK) Centurions	2A North	BUCS	f
9335	aberystwyth	Tarannau Aberystwyth	2A South	BUCS	f
9336	angliaruskin	Anglia Ruskin Rhinos	2A South	BUCS	f
9337	bathspa	Bath Spa Bulldogs	2A South	BUCS	f
9338	bnu	BNU Buccaneers	2A South	BUCS	f
9339	bournemouth	Bournemouth Bobcats	2A South	BUCS	f
9340	bristol	Bristol Barracuda	2A South	BUCS	f
9341	brunel	Brunel Burners	2A South	BUCS	f
9342	canterbury	Canterbury Chargers	2A South	BUCS	f
9343	chichester	Chichester Spitfires	2A South	BUCS	f
9344	essex	Essex Blades	2A South	BUCS	f
9345	gloucestershire	Gloucestershire Gladiators	2A South	BUCS	f
9346	greenwich	Greenwich Mariners	2A South	BUCS	f
9347	kingscollege	King's College (UK) Regents	2A South	BUCS	f
9348	londoncity	London City Sentinels	2A South	BUCS	f
9349	lsbu	LSBU Spartans	2A South	BUCS	f
9350	obu	OBU Panthers	2A South	BUCS	f
9351	plymouth	Plymouth Blitz	2A South	BUCS	f
9352	southampton	Southampton Stags	2A South	BUCS	f
9353	eastlondon	UEL Titans	2A South	BUCS	f
9354	westminster	Westminster Dragons	2A South	BUCS	f
9355	acadia	Acadia Axemen	Atlantic University Football Conference	CIS	f
9356	mountallison	Mount Allison Mounties	Atlantic University Football Conference	CIS	f
9357	stfrancisxavier	St. Francis Xavier X-Men	Atlantic University Football Conference	CIS	f
9358	saintmarys	St. Mary's (NS) Huskies	Atlantic University Football Conference	CIS	f
9359	alberta	Alberta Golden Bears	Canada West Football Conference	CIS	f
9360	calgary	Calgary Dinos	Canada West Football Conference	CIS	f
9361	manitoba	Manitoba Bisons	Canada West Football Conference	CIS	f
9362	regina	Regina Rams	Canada West Football Conference	CIS	f
9363	saskatchewan	Saskatchewan Huskies	Canada West Football Conference	CIS	f
9364	ubc	UBC Thunderbirds	Canada West Football Conference	CIS	f
9365	carletonca	Carleton (ON) Ravens	Ontario University Athletics	CIS	f
9366	guelph	Guelph Gryphons	Ontario University Athletics	CIS	f
9367	mcmaster	McMaster Marauders	Ontario University Athletics	CIS	f
9368	uottawa	Ottawa (ON) Gee-Gees	Ontario University Athletics	CIS	f
9369	queens	Queen's University Gaels	Ontario University Athletics	CIS	f
9370	toronto	Toronto Varsity Blues	Ontario University Athletics	CIS	f
9371	waterloo	Waterloo Warriors	Ontario University Athletics	CIS	f
9372	westernontario	Western Ontario Mustangs	Ontario University Athletics	CIS	f
9373	wilfridlaurier	Wilfrid Laurier Golden Hawks	Ontario University Athletics	CIS	f
9374	windsor	Windsor Lancers	Ontario University Athletics	CIS	f
9375	york	York (ON) Lions	Ontario University Athletics	CIS	f
9376	bishops	Bishop's University Gaiters	RSEQ	CIS	f
9377	concordiaca	Concordia (QC) Stingers	RSEQ	CIS	f
9378	laval	Laval Rouge et Or	RSEQ	CIS	f
9379	mcgill	McGill Redmen	RSEQ	CIS	f
9380	montreal	Montr├⌐al Carabins	RSEQ	CIS	f
9381	sherbrooke	Sherbrooke Vert et Or	RSEQ	CIS	f
9382	uqtr	UQTR Patriotes	RSEQ	CIS	f
9383	dalhousie	Dalhousie Tigers	Atlantic Football League	Atlantic Football League	f
9384	holland	Holland Hurricanes	Atlantic Football League	Atlantic Football League	f
9385	newbrunswick	UNB Fredericton Red Bombers	Atlantic Football League	Atlantic Football League	f
9386	unbsaintjohn	UNB Saint John Seawolves	Atlantic Football League	Atlantic Football League	f
9387	andregrasset	Le Ph├⌐nix de Andr├⌐-Grasset	Coll├⌐gial Division 1	CCAA	f
9388	champlainlennoxville	Les Cougars de Champlain Lennoxville	Coll├⌐gial Division 1	CCAA	f
9389	cndf	Le Notre-Dame du CNDF	Coll├⌐gial Division 1	CCAA	f
9390	edouardmonpetit	Les Lynx d'├ëdouard Montpetit	Coll├⌐gial Division 1	CCAA	f
9391	garneau	Les ├ëlans de Garneau	Coll├⌐gial Division 1	CCAA	f
9392	levislauzon	Les Faucons de L├⌐vis-Lauzon	Coll├⌐gial Division 1	CCAA	f
9393	limoilou	Les Titans de Limoilou	Coll├⌐gial Division 1	CCAA	f
9394	montmorency	Les Nomades du Montmorency	Coll├⌐gial Division 1	CCAA	f
9395	vanierqc	Les Cheetahs de Vanier	Coll├⌐gial Division 1	CCAA	f
9396	vieuxmontreal	Les Spartiates du Vieux-Montr├⌐al	Coll├⌐gial Division 1	CCAA	f
9397	beauceappalaches	Les Condors du Beauce-Appalaches	Coll├⌐gial Division 2	CCAA	f
9398	cegepsherbrooke	Les Volontaires du C├⌐gep de Sherbrooke	Coll├⌐gial Division 2	CCAA	f
9399	drummondville	Les Voltigeurs de Drummondville	Coll├⌐gial Division 2	CCAA	f
9400	johnabbott	John Abbott Islanders	Coll├⌐gial Division 2	CCAA	f
9401	lanaudiere	Les Triades de Lanaudi├¿re	Coll├⌐gial Division 2	CCAA	f
9402	lionelgroulx	Les Nordiques du Lionel-Groulx	Coll├⌐gial Division 2	CCAA	f
9403	stjeansurrichelieu	Les G├⌐ants du St-Jean-sur-Richelieu	Coll├⌐gial Division 2	CCAA	f
9404	troisrivieres	Les Diablos de Trois-Rivi├¿res	Coll├⌐gial Division 2	CCAA	f
9405	valleyfield	Le Noir et Or de Valleyfield	Coll├⌐gial Division 2	CCAA	f
9406	victoriaville	Les Vulkins de Victoriaville	Coll├⌐gial Division 2	CCAA	f
9407	ahuntsic	Les Indiens de Ahuntsic	Coll├⌐gial Division 3	CCAA	f
9408	champlainstlambert	Champlain Saint-Lambert Cavaliers	Coll├⌐gial Division 3	CCAA	f
9409	chicoutimi	Les Couguars de Chicoutimi	Coll├⌐gial Division 3	CCAA	f
9410	collegedalma	Les Jeannois du Coll├¿ge d'Alma	Coll├⌐gial Division 3	CCAA	f
9411	jonquiere	Les Gaillards de Jonqui├¿re	Coll├⌐gial Division 3	CCAA	f
9412	loutaouais	Les Griffons de l'Outaouais	Coll├⌐gial Division 3	CCAA	f
9413	lapocatiere	Les Gaulois de La Pocati├¿re	Coll├⌐gial Division 3	CCAA	f
9414	rimouski	Les Pionniers de Rimouski	Coll├⌐gial Division 3	CCAA	f
9415	shawinigan	Les ├ëlectriks de Shawinigan	Coll├⌐gial Division 3	CCAA	f
9416	sthyacinthe	Les Laur├⌐ats de St-Hyacinthe	Coll├⌐gial Division 3	CCAA	f
9417	stjerome	Les Cheminots de St-J├⌐r├┤me	Coll├⌐gial Division 3	CCAA	f
9418	thetford	Les Filons du C├⌐gep de Thetford	Coll├⌐gial Division 3	CCAA	f
9419	cgpresidenciales	Centinelas CGP	Conferencia de los Ochos Grandes	ONEFA	f
9420	unam	Pumas CU UNAM	Conferencia de los Ochos Grandes	ONEFA	f
9421	ipnsantotomas	├üguilas Blancas IPN	Conferencia de los Ochos Grandes	ONEFA	f
9422	ipnzacatenco	Burros Blancos IPN	Conferencia de los Ochos Grandes	ONEFA	f
9423	tepeyac	Frailes Tepeyac	Conferencia de los Ochos Grandes	ONEFA	f
9424	chihuahua	├üguilas UACH	Conferencia de los Ochos Grandes	ONEFA	f
9425	uanl	Aut├⌐nticos Tigres UANL	Conferencia de los Ochos Grandes	ONEFA	f
9426	lomasverdes	Linces UVM Lomas Verdes	Conferencia de los Ochos Grandes	ONEFA	f
9427	itq	Zorros ITQ	Conferencia Nacional	ONEFA	f
9428	anahuaccancun	Leones UACAN	Conferencia Nacional	ONEFA	f
9429	uach	Toros Salvajes UACh	Conferencia Nacional	ONEFA	f
9430	uadec	Lobos UAdeC	Conferencia Nacional	ONEFA	f
9431	uaem	Potros Salvajes UAEM	Conferencia Nacional	ONEFA	f
9432	uag	Tecos UAG	Conferencia Nacional	ONEFA	f
9433	uatreynosa	Correcaminos UAT Reynosa	Conferencia Nacional	ONEFA	f
9434	uatvictoria	Correcaminos UAT Victoria	Conferencia Nacional	ONEFA	f
9435	unamacatlan	Pumas Acatl├ín UNAM	Conferencia Nacional	ONEFA	f
9436	veracruzana	Halcones UV	Conferencia Nacional	ONEFA	f
9437	cem	Borregos ITESM Estado M├⌐xico	Independencia	CONADEIP	f
9438	monterrey	Borregos ITESM Monterrey	Independencia	CONADEIP	f
9439	puebla	Borregos ITESM Puebla	Independencia	CONADEIP	f
9440	csf	Borregos ITESM Santa Fe	Independencia	CONADEIP	f
9441	toluca	Borregos ITESM Toluca	Independencia	CONADEIP	f
9442	udlap	Aztecas UDLAP	Independencia	CONADEIP	f
9443	cetysmexicali	Zorros CETYS Mexicali	Libertad	CONADEIP	f
9444	cetystijuana	Osos CETYS Tijuana	Libertad	CONADEIP	f
9445	itson	Potros ITSON Obreg├│n	Libertad	CONADEIP	f
9446	lapaz	Lobos Marinos La Paz	Libertad	CONADEIP	f
9447	ensenada	Cimarrones UABC Ensenada	Libertad	CONADEIP	f
9448	mexicali	Cimarrones UABC Mexicali	Libertad	CONADEIP	f
9449	tijuana	Cimarrones UABC Tijuana	Libertad	CONADEIP	f
9450	unison	B├║hos UNISON	Libertad	CONADEIP	f
9451	ccm	Borregos ITESM Ciudad M├⌐xico	Revoluci├│n	CONADEIP	f
9452	guadalajara	Borregos ITESM Guadalajara	Revoluci├│n	CONADEIP	f
9453	queretaro	Borregos ITESM Quer├⌐taro	Revoluci├│n	CONADEIP	f
9454	uamn	Leones UAMN	Revoluci├│n	CONADEIP	f
9455	umad	Tigres Blancos UMAD	Revoluci├│n	CONADEIP	f
9456	adelaide	Adelaide RazorBlacks	Gridiron Australia	Gridiron Australia	f
9457	canberra	Canberra Firebirds	Gridiron Australia	Gridiron Australia	f
9458	melbourne	Melbourne Royals	Gridiron Australia	Gridiron Australia	f
9459	monash	Monash Warriors	Gridiron Australia	Gridiron Australia	f
9460	sydney	Sydney Lions	Gridiron Australia	Gridiron Australia	f
9461	unisa	UniSA Eagles	Gridiron Australia	Gridiron Australia	f
9462	unsw	UNSW Raiders	Gridiron Australia	Gridiron Australia	f
9463	uts	UTS Gators	Gridiron Australia	Gridiron Australia	f
9464	ufersa	UFERSA Petroleiros	CBFA	CBFA	f
9465	ufpr	UFPR Brown Spiders	CBFA	CBFA	f
9466	aast	AAST Gorillas	EFAF	EFAF	f
9467	auc	AUC Titans	EFAF	EFAF	f
9468	bue	BUE Bulls	EFAF	EFAF	f
9469	cairo	Cairo Wolves	EFAF	EFAF	f
9470	guc	GUC Eagles	EFAF	EFAF	f
9471	msa	MSA Tigers	EFAF	EFAF	f
9472	aachen	Aachen Rockets	Hochschulbowl	Hochschulbowl	f
9473	cologne	UNIversal Soldires Cologne 	Hochschulbowl	Hochschulbowl	f
9474	hsu	HSU Snipers	Hochschulbowl	Hochschulbowl	f
9475	karlsruhe	KIT Engineers	Hochschulbowl	Hochschulbowl	f
9476	mainz	Mainz Legionaires	Hochschulbowl	Hochschulbowl	f
9477	mannheim	Mannheim Knights	Hochschulbowl	Hochschulbowl	f
9478	niederrhein	Niederrhein Specialists	Hochschulbowl	Hochschulbowl	f
9479	paderborn	Paderborn UNIcorns	Hochschulbowl	Hochschulbowl	f
9480	passau	Passau Red Wolves	Hochschulbowl	Hochschulbowl	f
9481	limerick	Limerick Vikings	Shamrock Bowl Conference	IAFA	f
9482	trinity	Trinity (Dublin) AFC	Shamrock Bowl Conference	IAFA	f
9483	ucdublin	UC Dublin AFC	Shamrock Bowl Conference	IAFA	f
9484	aalto	Aalto Predators	UIFL	UIFL	f
9485	aboakademi	Abo Akademi 09ers	UIFL	UIFL	f
9486	jyvaskyla	Jyv├ñskyl├ñ Renegades	UIFL	UIFL	f
9487	kyamk	KyAMK Eagles	UIFL	UIFL	f
9488	lappeenranta	Lappeenranta Wildmen	UIFL	UIFL	f
9489	ndu	NDU Black Knights	UIFL	UIFL	f
9490	shs	SHS Bears	UIFL	UIFL	f
9491	tamperetech	Tampere Tech Mavericks	UIFL	UIFL	f
9492	tcfa	TCFA Unicorns	UIFL	UIFL	f
9493	tuas	TUAS Tornadoes	UIFL	UIFL	f
9494	utu	UTU Beaver Hunters	UIFL	UIFL	f
9495	wasa	Wasa Dogs	UIFL	UIFL	f
9496	carlberg	Carlberg Cavaliers	Touchdown Sverige	Touchdown Sverige	f
9497	handels	Handels Traders	Touchdown Sverige	Touchdown Sverige	f
9498	kau	KAU Lumberjacks	Touchdown Sverige	Touchdown Sverige	f
9499	kth	KTH Royals	Touchdown Sverige	Touchdown Sverige	f
9500	orebro	├ûrebro Black Jacks	Touchdown Sverige	Touchdown Sverige	f
9501	stockholm	Stockholm Capitols	Touchdown Sverige	Touchdown Sverige	f
9502	uppsala	Uppsala Snakeheads	Touchdown Sverige	Touchdown Sverige	f
9503	jkuat	JKUAT Sparrows	Kenya NFL	Kenya NFL	f
9504	samburu	Samburu Cowboys	Kenya NFL	Kenya NFL	f
9505	umoja	Umoja Chiefs	Kenya NFL	Kenya NFL	f
9506	uon	UON Nyati	Kenya NFL	Kenya NFL	f
9507	gardabrae	Gar├░ab├ª Stjarnan	ISAF	ISAF	f
9508	grafarvogur	Grafarvogur Fj├╢lnir	ISAF	ISAF	f
9509	kopavogur	K├│pavogur Brei├░ablik	ISAF	ISAF	f
9510	amu	Outlaws AMU	LUFFA	LUFFA	f
9511	bordeaux	Raiders Bordeaux	LUFFA	LUFFA	f
9512	bordeauxmontaigne	Stunners de Bordeaux Montaigne	LUFFA	LUFFA	f
9513	cpelyon	Apaches CPE Lyon	LUFFA	LUFFA	f
9514	escdijon	Dark Owls ESC Dijon	LUFFA	LUFFA	f
9515	esmeesg	Titans ESME-ESG	LUFFA	LUFFA	f
9516	inptoulouse	Phoenix INP Toulouse	LUFFA	LUFFA	f
9517	liesti	Pandas de l'EISTI	LUFFA	LUFFA	f
9518	leonarddevinci	Eagles Leonard de Vinci	LUFFA	LUFFA	f
9519	lorraine	Tigres Lorraine	LUFFA	LUFFA	f
9520	parisinalco	Castors-Border de Paris & INALCO	LUFFA	LUFFA	f
9521	paris813	Blackjack 21 Paris 8 & 13	LUFFA	LUFFA	f
9522	parisdauphine	Paris Dauphine AFD	LUFFA	LUFFA	f
9523	parisdiderot	Lighters de Paris Diderot	LUFFA	LUFFA	f
9524	parisrenedescartes	Snakes de Paris Ren├⌐ Descartes	LUFFA	LUFFA	f
9525	usac	USAC Panteras	AGFA	AGFA	f
9526	abu	ABU Titans	Nigeria	Nigeria	f
9527	lagos	Lagos Marines	Nigeria	Nigeria	f
9528	kyoto	???? (Kyoto) Gangsters	Kansai	JAFA	f
9529	doshisha	????? (Doshisha) Wild Rover	Kansai	JAFA	f
9530	konan	???? (Konan) Red Gang	Kansai	JAFA	f
9531	kobe	???? (Kobe) Ravens	Kansai	JAFA	f
9532	ritsumeikan	????? (Ritsumeikan) Panthers	Kansai	JAFA	f
9533	kansai	???? (Kansai) Kaisers	Kansai	JAFA	f
9534	kwanseigakuin	?????? (Kwansei Gakuin) Fighters	Kansai	JAFA	f
9535	ryukoku	???? (Ryukoku) Seahorse	Kansai	JAFA	f
9536	nssu	NSSU Triumphant Lion	Kanto Top 8	JAFA	f
9537	chuo	???? (Chuo) Raccoons	Kanto Top 8	JAFA	f
9538	keio	?????? (Keio) Unicorns	Kanto Top 8	JAFA	f
9539	nihon	???? (Nihon) Phoenix	Kanto Top 8	JAFA	f
9540	waseda	????? (Waseda) Big Bears	Kanto Top 8	JAFA	f
9541	meiji	???? (Meiji) Griffins	Kanto Top 8	JAFA	f
9542	hosei	???? (Hosei) Tomahawks	Kanto Top 8	JAFA	f
9543	rikkyo	???? (Rikkyo) Rushers	Kanto Top 8	JAFA	f
9544	kokushikan	????? (Kokushikan) Rhinoceros	Kanto Big 8	JAFA	f
9545	senshu	???? (Senshu) Green Machine	Kanto Big 8	JAFA	f
9546	teikyo	???? (Teikyo) Assassins	Kanto Big 8	JAFA	f
9547	takushoku	???? (Takushoku) Rattlesnakes	Kanto Big 8	JAFA	f
9548	tokyo	???? (Tokyo) Warriors	Kanto Big 8	JAFA	f
9549	tokyogakugei	?????? (Tokyo Gakugei) Snails	Kanto Big 8	JAFA	f
9550	yokohamanational	?????? (Yokohama National) Mastiffs	Kanto Big 8	JAFA	f
9551	komazawa	???? (Komazawa) Blue Tide	Kanto Big 8	JAFA	f
9552	yamaguchi	???? (Yamaguchi) Gamblers	Chushikoku	JAFA	f
9553	shimane	???? (Shimane) Warriors	Chushikoku	JAFA	f
9554	hiroshima	???? (Hiroshima) Raccoons	Chushikoku	JAFA	f
9555	ehime	???? (Ehime) Bombers	Chushikoku	JAFA	f
9556	hokuseigakuen	?????? (Hokusei Gakuen) Pirates	Hokkaido	JAFA	f
9557	hokkaigakuen	?????? (Hokkai Gakuen) Golden Bears	Hokkaido	JAFA	f
9558	hokkaido	????? (Hokkaido) Big Green	Hokkaido	JAFA	f
9559	obihiro	???? (Obihiro) Cowboys	Hokkaido	JAFA	f
9560	sapporo	???? (Sapporo) Cubs	Hokkaido	JAFA	f
9561	sapporogakuin	?????? (Sapporo Gakuin) Crimson Knights	Hokkaido	JAFA	f
9562	toyama	???? (Toyama) Firebulls	Hokuriku	JAFA	f
9563	fukui	???? (Fukui) Silver Phoenix	Hokuriku	JAFA	f
9564	fukuiprefectural	?????? (Fukui Prefectural) Wilders	Hokuriku	JAFA	f
9565	kanazawa	???? (Kanazawa) Evergreen	Hokuriku	JAFA	f
9566	kanazawatech	?????? (Kanazawa Institute of Technology) Eagles	Hokuriku	JAFA	f
9567	kurume	????? (Kurume) Mean Fighters	Kyushu	JAFA	f
9568	kyushu	???? (Kyushu) Palookas	Kyushu	JAFA	f
9569	ryukyus	?????? (Ryukyus) Stingrays	Kyushu	JAFA	f
9570	fukuoka	???? (Fukuoka) Black Knights	Kyushu	JAFA	f
9571	fukuokaeducation	?????? (Fukuoka University of Education) Lions	Kyushu	JAFA	f
9572	seinangakuin	?????? (Seinan Gakuin) Green Dolphins	Kyushu	JAFA	f
9573	sendai	???? (Sendai) Silver Falcons	Tohoku	JAFA	f
9574	iwate	???? (Iwate) Bisons	Tohoku	JAFA	f
9575	tohoku	???? (Tohoku) Hornets	Tohoku	JAFA	f
9576	tohokugakuin	?????? (Tohoku Gakuin) Kayaks	Tohoku	JAFA	f
9577	akita	???? (Akita) Ogres	Tohoku	JAFA	f
9578	chukyo	???? (Chukyo) Red Panthers	Tokai	JAFA	f
9579	nanzan	???? (Nanzan) Crusaders	Tokai	JAFA	f
9580	nagoya	????? (Nagoya) Grampus	Tokai	JAFA	f
9581	meijo	???? (Meijo) Golden Lions	Tokai	JAFA	f
9582	gifu	???? (Gifu) Phantoms	Tokai	JAFA	f
9583	aichi	???? (Aichi) Hercules	Tokai	JAFA	f
9584	kyotosangyo	?????? (Kyoto Sangyo) Sagittarius	Kansai Tier 2	JAFA	f
9585	hyogo	???? (Hyogo) Trailblazers	Kansai Tier 2	JAFA	f
9586	osakahs	???????? (Osaka Health and Sport Science) Spartans	Kansai Tier 2	JAFA	f
9587	osaka	???? (Osaka) Tridents	Kansai Tier 2	JAFA	f
9588	osakagakuin	?????? (Osaka Gakuin) Phoenix	Kansai Tier 2	JAFA	f
9589	osakaprefecture	?????? (Osaka Prefecture) Shrikes	Kansai Tier 2	JAFA	f
9590	osakakyoiku	?????? (Osaka Kyoiku) Dragons	Kansai Tier 2	JAFA	f
9591	osakasangyo	?????? (Osaka Sangyo) Lions	Kansai Tier 2	JAFA	f
9592	standrews	?????????????????? (St. Andrew's) Thundering Legion Lions	Kansai Tier 2	JAFA	f
9593	kobegakuin	?????? (Kobe Gakuin) Navy Seals	Kansai Tier 2	JAFA	f
9594	kindai	???? (Kinki) Devils	Kansai Tier 2	JAFA	f
9595	otemongakuin	??????? (Otemon Gakuin) Soldiers	Kansai Tier 2	JAFA	f
9596	hitotsubashi	???? (Hitotsubashi) Crimson	Kanto Tier 2	JAFA	f
9597	sophia	???? (Sophia) Golden Eagles	Kanto Tier 2	JAFA	f
9598	gakushuin	????? (Gakushuin) Generals	Kanto Tier 2	JAFA	f
9599	seijo	???? (Seijo) Orange Beams	Kanto Tier 2	JAFA	f
9600	seiki	???? (Seikei) Zelkovas	Kanto Tier 2	JAFA	f
9601	meijigakuin	?????? (Meiji Gakuin) Saints	Kanto Tier 2	JAFA	f
9602	tit	??? (Tokyo Institute of Tech) Buffaloes	Kanto Tier 2	JAFA	f
9603	toyo	???? (Toyo) Vikings	Kanto Tier 2	JAFA	f
9604	tokai	???? (Tokai) Tritons	Kanto Tier 2	JAFA	f
9605	obirin	????? (Obirin) Three Nails Crowns	Kanto Tier 2	JAFA	f
9606	musashi	???? (Musashi) Pheasants	Kanto Tier 2	JAFA	f
9607	kanagawa	????? (Kanagawa) Atoms	Kanto Tier 2	JAFA	f
9608	tsukuba	???? (Tsukuba) Excaliburs	Kanto Tier 2	JAFA	f
9609	kantogakuin	?????? (Kanto Gakuin) Hurricanes	Kanto Tier 2	JAFA	f
9610	nationaldefense	????? (National Defense Academy) Cadets	Kanto Tier 2	JAFA	f
9611	aoyamagakuin	?????? (Aoyama Gakuin) Lightning	Kanto Tier 2	JAFA	f
9612	matsuyama	???? (Matsuyama) Blue Arrows	Chushikoku Tier 2	JAFA	f
9613	prefectural	??? (Prefectural) Knights	Chushikoku Tier 2	JAFA	f
9614	kochi	???? (Kochi) Marine Corps	Chushikoku Tier 2	JAFA	f
9615	hokkaidohs	????????? (Health Sciences Hokkaido) First Molars	Hokkaido Tier 2	JAFA	f
9616	hokkaidotech	??????? (Hokkaido Institute of Technology) Mad Wolves	Hokkaido Tier 2	JAFA	f
9617	murorantech	?????? (Muroran Institute of Technology) Black Panthers	Hokkaido Tier 2	JAFA	f
9618	tokyoagriculture	?????? (Tokyo Agriculture) Fighting Radish	Hokkaido Tier 2	JAFA	f
9619	kushiro	??????? (Kushiro Public Economics) Snipers	Hokkaido Tier 2	JAFA	f
9620	kumadai	Kumadai?? (Kumadai) Outlaws	Kyushu Tier 2	JAFA	f
9621	kyushutech	?????? (Kyushu Institute of Technology) Wildgeese	Kyushu Tier 2	JAFA	f
9622	kyushusangyo	?????? (Kyushu Sangyo) Red Free Birds	Kyushu Tier 2	JAFA	f
9623	saga	???? (Saga) Tomcats	Kyushu Tier 2	JAFA	f
9624	miyazaki	???? (Miyazaki) Bacchus	Kyushu Tier 2	JAFA	f
9625	npu	???? (Nagasaki) Marines	Kyushu Tier 2	JAFA	f
9626	kagoshima	????? (Kagoshima) Bonito	Kyushu Tier 2	JAFA	f
9627	kitasatovmas	?????VMA?? (Kitasato VMAS) Cowboys	Tohoku Tier 2	JAFA	f
9628	yamagata	???? (Yamagata) Tomcats	Tohoku Tier 2	JAFA	f
9629	hirosaki	???? (Hirosaki) Starking	Tohoku Tier 2	JAFA	f
9630	nihonengineering	???????????? (Nihon Engineering) Crow Jackels	Tohoku Tier 2	JAFA	f
9631	tohokutech	?????? (Tohoku Institute of Technology) Blue Raiders	Tohoku Tier 2	JAFA	f
9632	mie	???? (Mie) Seaserpents	Tokai Tier 2	JAFA	f
9633	shinshu	???? (Shinshu) Wildcats	Tokai Tier 2	JAFA	f
9634	nagoyaucb	???UCB?? (Nagoya UCB) Wild Fox	Tokai Tier 2	JAFA	f
9635	nagoyagakuin	??????? (Nagoya Gakuin) Torpedoes	Tokai Tier 2	JAFA	f
9636	nagoyatech	??????? (Nagoya Institute of Technology) Silverbacks	Tokai Tier 2	JAFA	f
9637	yokkaichi	????? (Yokkaichi) Wild Drunkers	Tokai Tier 2	JAFA	f
9638	aichigakuin	?????? (Aichi Gakuin) Bison	Tokai Tier 2	JAFA	f
9639	nihonfukushi	?????? (Nihon Fukushi) Wings	Tokai Tier 2	JAFA	f
9640	tokaimarine	?????????? (Tokai Marine Science) Poseidons	Tokai Tier 2	JAFA	f
9641	shizuoka	???? (Shizuoka) Cavaliers	Tokai Tier 2	JAFA	f
9642	kyotoforeign	??????? (Kyoto Foreign Studies) Fightin' Bulldogs	Kansai Tier 3A-C	JAFA	f
9643	kyotoeducation	??????? (Kyoto Education) Grampus	Kansai Tier 3A-C	JAFA	f
9644	kyotogakuin	?????? (Kyoto Gakuin) Daredevils	Kansai Tier 3A-C	JAFA	f
9645	kyototech	???????? (Kyoto Institute of Technology) Cougars	Kansai Tier 3A-C	JAFA	f
9646	kyotoprefectural	?????? (Kyoto Prefectural) Wyverns	Kansai Tier 3A-C	JAFA	f
9647	kyotopharm	?????? (Kyoto Pharmaceutical) Scarlet Knights	Kansai Tier 3A-C	JAFA	f
9648	buddhist	????? (Buddhist) Hawks	Kansai Tier 3A-C	JAFA	f
9649	wakayama	????? (Wakayama) Blind Sharks	Kansai Tier 3A-C	JAFA	f
9650	osakaeconomics	????????? (Osaka Economics) Bombers	Kansai Tier 3A-C	JAFA	f
9651	osakacity	?????? (Osaka City) Golden Cedars	Kansai Tier 3A-C	JAFA	f
9652	osakaarts	?????? (Osaka Arts) Vipers	Kansai Tier 3A-C	JAFA	f
9653	tenri	???? (Tenri) Crushing Orcs	Kansai Tier 3A-C	JAFA	f
9654	okayama	???? (Okayama) Badgers	Kansai Tier 3A-C	JAFA	f
9655	tezukayama	????? (Tezukayama) Bisons	Kansai Tier 3A-C	JAFA	f
9656	setsunan	???? (Setsunan) Blue Crush	Kansai Tier 3A-C	JAFA	f
9657	ryutsukagaku	?????? (Ryutsu Kagaku) Voyagers	Kansai Tier 3A-C	JAFA	f
9658	shiga	???? (Shiga) Gladiators	Kansai Tier 3A-C	JAFA	f
9659	kansaigaidai	??????? (Kansai Gaidai) Lynx	Kansai Tier 3A-C	JAFA	f
9660	kyotoseika	?????? (Kyoto Seika) Gawks	Kansai Tier 3D-F	JAFA	f
9661	hyogomedicine	?????? (Hyogo Medicine) Siegfried	Kansai Tier 3D-F	JAFA	f
9662	kibi	???? (Kibi) Fortifiers	Kansai Tier 3D-F	JAFA	f
9663	otani	???? (Otani) Bandits	Kansai Tier 3D-F	JAFA	f
9664	osakacommerce	?????? (Osaka Commerce) Steelers	Kansai Tier 3D-F	JAFA	f
9665	osakainternational	?????? (Osaka International) Mavericks	Kansai Tier 3D-F	JAFA	f
9666	osakatech	?????? (Osaka Institute of Technology) Rowdies	Kansai Tier 3D-F	JAFA	f
9667	osakael	???????? (Osaka Economics and Law) Blue Thunder	Kansai Tier 3D-F	JAFA	f
9668	osakaec	???????? (Osaka Electro-Communication) Black Angels	Kansai Tier 3D-F	JAFA	f
9669	himejidokkyo	?????? (Himeji Dokkyo) Wild Boars	Kansai Tier 3D-F	JAFA	f
9670	okayamascience	?????? (Okayama Science) Gators	Kansai Tier 3D-F	JAFA	f
9671	tokushima	???? (Tokushima) Pirates	Kansai Tier 3D-F	JAFA	f
9672	kobeinternational	?????? (Kobe International) Crimson Knights	Kansai Tier 3D-F	JAFA	f
9673	hannan	???? (Hannan) Fighting Bears	Kansai Tier 3D-F	JAFA	f
9674	tottori	???? (Tottori) Rakers	Kansai Tier 3D-F	JAFA	f
9675	asia	????? (Asia) Angels	Kanto Tier 3	JAFA	f
9676	soka	???? (Soka) Blue Lions	Kanto Tier 3	JAFA	f
9677	chiba	???? (Chiba) Poseidon	Kanto Tier 3	JAFA	f
9678	internationalchristian	??????? (International Christian) Apostles	Kanto Tier 3	JAFA	f
9679	josai	???? (Josai) B-Rhinos	Kanto Tier 3	JAFA	f
9680	saitama	???? (Saitama) Primrose	Kanto Tier 3	JAFA	f
9681	daitobunka	?????? (Daito Bunka) Wild Boars	Kanto Tier 3	JAFA	f
9682	utsunomiya	????? (Utsunomiya) Bull Fighters	Kanto Tier 3	JAFA	f
9683	bunkyo	???? (Bunkyo) Odin	Kanto Tier 3	JAFA	f
9684	niigata	???? (Niigata) Tigers	Kanto Tier 3	JAFA	f
9685	tokyointernational	?????? (Tokyo International) Dolphins	Kanto Tier 3	JAFA	f
9686	tokyoforeign	??????? (Tokyo Foreign Studies) Phantoms	Kanto Tier 3	JAFA	f
9687	tokyokeizai	?????? (Tokyo Keizai) Falcons	Kanto Tier 3	JAFA	f
9688	tokyoat	?????? (Tokyo Agriculture and Technology) Blasters	Kanto Tier 3	JAFA	f
9689	tokyocity	?????? (Tokyo City) Helios	Kanto Tier 3	JAFA	f
9690	tokyomet	?????? (Tokyo Metropolitan) Scrappers	Kanto Tier 3	JAFA	f
9691	yokohamacity	?????? (Yokohama City) Fighting Seagulls	Kanto Tier 3	JAFA	f
9692	ryutsukeizai	?????? (Ryutsu Keizai) RKU	Kanto Tier 3	JAFA	f
9693	tamagawa	???? (Tamagawa) Stallions	Kanto Tier 3	JAFA	f
9694	shibaura	?????? (Shibaura Institute of Technology) Fighting Engineers	Kanto Tier 3	JAFA	f
9695	ibaraki	???? (Ibaraki) Stargazers	Kanto Tier 3	JAFA	f
9696	electrocomm	?????? (University of Electro-Communications) Crashers	Kanto Tier 3	JAFA	f
9697	takasaki	?????? (Takasaki City) Bandits	Kanto Tier 3	JAFA	f
9698	jobu	???? (Jobu) Mean Fighting Machine	Kanto Area League	JAFA	f
9699	chibacommerce	?????? (Chiba Commerce) Lycaonpictus	Kanto Area League	JAFA	f
9700	yamanashi	???? (Yamanashi) Wyverns	Kanto Area League	JAFA	f
9701	kogakuin	????? (Kogakuin) Crash Machines	Kanto Area League	JAFA	f
9702	teikyoheisei	?????? (Teikyo Heisei) Blue Wings	Kanto Area League	JAFA	f
9703	nippon	?????? (Nippon Institute of Technology) River Horse	Kanto Area League	JAFA	f
9704	meisei	???? (Meisei) Silver Knights	Kanto Area League	JAFA	f
9705	kyorin	???? (Kyorin) Cavaliers	Kanto Area League	JAFA	f
9706	tokyotech	?????? (Tokyo University of Technology) Cerberus	Kanto Area League	JAFA	f
9707	tokyoscience	?????? (Tokyo Science) Rascals	Kanto Area League	JAFA	f
9708	edogawa	????? (Edogawa) Hedge Hogs	Kanto Area League	JAFA	f
9709	dokkyo	???? (Dokkyo) Green Monsters	Kanto Area League	JAFA	f
9710	hakuoh	???? (Hakuoh) Rascals	Kanto Area League	JAFA	f
9711	kanagawatech	??????? (Kanagawa Institute of Technology) Pied Pipers	Kanto Area League	JAFA	f
9712	kanda	???? (Kanda) Stingers	Kanto Area League	JAFA	f
9713	rissho	???? (Rissho) Bulldogs	Kanto Area League	JAFA	f
9714	takachiho	????? (Takachiho) Eagles	Kanto Area League	JAFA	f
9715	tianjin	???? (Tianjin) Pirates	CAFL	CAFL	f
9716	shandong	???? (Shandong) Flames	CAFL	CAFL	f
9717	wuhan	???? (Wuhan) Nine-Headed Birds	CAFL	CAFL	f
9718	shenyang	???? (Shenyang) Tigers	CAFL	CAFL	f
9719	hebei	???? (Hebei) Nirvana	CAFL	CAFL	f
9720	xian	?????? (Xi'an) North-West Wolves	CAFL	CAFL	f
9721	jiaotong	?????? (Jiao Tong) Lions	CUAFL	CUAFL	f
9722	shanghai	???? (Shanghai) Bombers	CUAFL	CUAFL	f
9723	sues	???????? (SUES) Sakers	CUAFL	CUAFL	f
9724	ecust	?????? (ECUST) Terminators	CUAFL	CUAFL	f
9725	tongji	???? (Tongji) Strikers	CUAFL	CUAFL	f
9726	cumt	?????? (CUMT)	NFL China Beijing	NFL China University Flag Football League	f
9727	bjtu	?????? (Beijing Jiao Tong)	NFL China Beijing	NFL China University Flag Football League	f
9728	beijingsport	?????? (Beijing Sport)	NFL China Beijing	NFL China University Flag Football League	f
9729	buct	?????? (BUCT)	NFL China Beijing	NFL China University Flag Football League	f
9730	bjut	?????? (BJUT)	NFL China Beijing	NFL China University Flag Football League	f
9731	beijingnormal	?????? (Beijing Normal)	NFL China Beijing	NFL China University Flag Football League	f
9732	bucea	?????? (BUCEA)	NFL China Beijing	NFL China University Flag Football League	f
9733	bfu	?????? (Beijing Forestry)	NFL China Beijing	NFL China University Flag Football League	f
9734	bit	?????? (BIT)	NFL China Beijing	NFL China University Flag Football League	f
9735	buu	?????? (Beijing Union)	NFL China Beijing	NFL China University Flag Football League	f
9736	bupt	?????? (BUPT)	NFL China Beijing	NFL China University Flag Football League	f
9737	uir	?????? (International Relations)	NFL China Beijing	NFL China University Flag Football League	f
9738	tsinghua	???? (Tsinghua)	NFL China Beijing	NFL China University Flag Football League	f
9739	cipe	?????? (CIPE)	NFL China Beijing	NFL China University Flag Football League	f
9740	cnu	?????? (Capital Normal)	NFL China Beijing	NFL China University Flag Football League	f
9741	cueb	???????? (CUEB)	NFL China Beijing	NFL China University Flag Football League	f
9742	scut	?????? (South China Tech)	NFL China Guangzhou	NFL China University Flag Football League	f
9743	gdut	?????? (Guangdong Tech)	NFL China Guangzhou	NFL China University Flag Football League	f
9744	huali	?????????? (Huali)	NFL China Guangzhou	NFL China University Flag Football League	f
9745	gdei	?????? (Guangdong Education)	NFL China Guangzhou	NFL China University Flag Football League	f
9746	gdepc	???????????? (GDEPC)	NFL China Guangzhou	NFL China University Flag Football League	f
9747	gzhtcm	??????? (GZUCM)	NFL China Guangzhou	NFL China University Flag Football League	f
9748	gsu	?????? (Guangzhou Sport)	NFL China Guangzhou	NFL China University Flag Football League	f
9749	sise	?????????? (SISE)	NFL China Guangzhou	NFL China University Flag Football League	f
9750	nyushanghai	NYU Shanghai	NFL China Shanghai	NFL China University Flag Football League	f
9751	shcp	?????????? (SCP)	NFL China Shanghai	NFL China University Flag Football League	f
9752	sus	?????? (Shanghai Sport)	NFL China Shanghai	NFL China University Flag Football League	f
9753	shnu	?????? (SHNU)	NFL China Shanghai	NFL China University Flag Football League	f
9754	sit	???????? (Shanghai Tech)	NFL China Shanghai	NFL China University Flag Football League	f
9755	usst	?????? (USST)	NFL China Shanghai	NFL China University Flag Football League	f
9839	dokuzeylul	Dokuz Eyl├╝l Efeleri	1. Lig	├£nilig	f
9756	ecupsl	?????? (ECUPSL)	NFL China Shanghai	NFL China University Flag Football League	f
9757	sumc	?????? (SUMC) Shadow Knights	Chinese Independent Teams	Chinese Independent Teams	f
9758	fudan	???? (Fudan) Dragoons	Chinese Independent Teams	Chinese Independent Teams	f
9759	uestc	?????? (UESTC) Breakers	Chinese Independent Teams	Chinese Independent Teams	f
9760	swufe	???? (SWUFE) Spartans	Chinese Independent Teams	Chinese Independent Teams	f
9761	bangalore	Bangalore Garudas	EFLI University League Division 1	EFLI	f
9762	gndu	GNDU Goldens	EFLI University League Division 1	EFLI	f
9763	jain	Jain Southern Champs	EFLI University League Division 1	EFLI	f
9764	lovely	Lovely Professional Tigers	EFLI University League Division 1	EFLI	f
9765	madras	Madras Stars	EFLI University League Division 1	EFLI	f
9766	mdrohtak	MD Rohtak Heroes	EFLI University League Division 1	EFLI	f
9767	osmania	Osmania Nazims	EFLI University League Division 1	EFLI	f
9768	pup	PUP Royals	EFLI University League Division 1	EFLI	f
9769	auro	Auro Blues	EFLI University League Division 2	EFLI	f
9770	brambedkar	BR Ambedkar Chairmen	EFLI University League Division 2	EFLI	f
9771	chandigarh	Chandigarh Cheetahs	EFLI University League Division 2	EFLI	f
9772	gujarat	Gujarat Lions	EFLI University League Division 2	EFLI	f
9773	jaipurnational	Jaipur National Knights	EFLI University League Division 2	EFLI	f
9774	jecrc	JECRC Cardinals	EFLI University League Division 2	EFLI	f
9775	kolkata	Kolkata Bosons	EFLI University League Division 2	EFLI	f
9776	lakshminarain	Lakshmi Narain Tech Champions	EFLI University League Division 2	EFLI	f
9777	panjab	Panjab Warriors	EFLI University League Division 2	EFLI	f
9778	poornima	Poornima Panthers	EFLI University League Division 2	EFLI	f
9779	sathyabama	Sathyabama Kings	EFLI University League Division 2	EFLI	f
9780	soa	SOA Rajahs	EFLI University League Division 2	EFLI	f
9781	kyungsung	????? (Kyungsang) Dragons	BAFA	KAFA	f
9782	eastwest	????? (East-West) Blue Dolphins	BAFA	KAFA	f
9783	donga	????? (Dong-A) Leopards	BAFA	KAFA	f
9784	eui	????? (Eui) Turtle Fighters	BAFA	KAFA	f
9785	pukyong	????? (Pukyong) Mad Mobydicks	BAFA	KAFA	f
9786	pusannational	????? (Pusan National) Eagles	BAFA	KAFA	f
9787	pusanforeignstudies	???????? (Pusan Foreign Studies) Tornado	BAFA	KAFA	f
9788	silla	????? (Silla) Red Devils	BAFA	KAFA	f
9789	ulsan	????? (Ulsan) Unicorns	BAFA	KAFA	f
9790	koreamaritime	??????? (Korea Maritime) Vikings	BAFA	KAFA	f
9791	koreannavalacademy	?????? (Korean Naval Academy) Sharks	BAFA	KAFA	f
9792	kangwonnational	????? (Kangwon National) Capra	SAFA	KAFA	f
9793	konkuk	????? (Konkuk) Raging Bulls	SAFA	KAFA	f
9794	korea	????? (Korea) Tigers	SAFA	KAFA	f
9795	donggukseoul	????? ????? (Dongguk Seoul) Tuskers	SAFA	KAFA	f
9796	seoulnational	????? (Seoul National) Green Terrors	SAFA	KAFA	f
9797	uos	??????? (Seoul) City Hawks	SAFA	KAFA	f
9798	sungkyunkwan	?????? (Sungkyunkwan) Royals	SAFA	KAFA	f
9799	yonsei	????? (Yonsei) Eagles	SAFA	KAFA	f
9800	yongin	????? (Yongin) White Tigers	SAFA	KAFA	f
9801	inha	????? (Inha) Wyverns	SAFA	KAFA	f
9802	chungang	????? (Chungang) Blue Dragons	SAFA	KAFA	f
9803	hufs	???????? (HUFS) Black Knights	SAFA	KAFA	f
9804	hallym	????? (Hallym) Phoenix	SAFA	KAFA	f
9805	hanyang	????? (Hanyang) Lions	SAFA	KAFA	f
9806	hongik	????? (Honggik) Cowboys	SAFA	KAFA	f
9807	kyungpooknational	????? (Kyungpook National) Orange Fighters	TKAFA	KAFA	f
9808	kyungil	????? (Kyungil) Black Bears	TKAFA	KAFA	f
9809	keimyung	????? (Keimyung) Super Lions	TKAFA	KAFA	f
9810	kumohtech	??????? (Kumoh Tech) Ravens	TKAFA	KAFA	f
9811	daeguhaany	????? (Daegu Haany) Flying Tigers	TKAFA	KAFA	f
9812	daegucatholic	???????? (Daegu Catholic) Scud Angels	TKAFA	KAFA	f
9813	daegu	??????? (Daegu) Rhinos	TKAFA	KAFA	f
9814	dongguk	????? (Dongguk) White Elephants	TKAFA	KAFA	f
9815	yeungnam	????? (Yeungnam) Pegasus	TKAFA	KAFA	f
9816	uiduk	????? (Uidik) Thunders	TKAFA	KAFA	f
9817	handongglobal	????? (Handong Global) Holy Rams	TKAFA	KAFA	f
9818	akdeniz	Akdeniz Heroes	S├╝per Lig	├£nilig	f
9819	anadolu	Anadolu Rangers	S├╝per Lig	├£nilig	f
9820	atilim	Atilim Rhinos	S├╝per Lig	├£nilig	f
9821	bilkent	Bilkent Judges	S├╝per Lig	├£nilig	f
9822	bogazici	Bogazi├ºi Sultans	S├╝per Lig	├£nilig	f
9823	gazi	Gazi Warriors	S├╝per Lig	├£nilig	f
9824	hacettepe	Hacettepe Red Deers	S├╝per Lig	├£nilig	f
9825	isik	Isik Chargers	S├╝per Lig	├£nilig	f
9826	istanbulbilgi	Istanbul Bilgi Hunters	S├╝per Lig	├£nilig	f
9827	istanbulteknik	Istanbul Teknik Hornets	S├╝per Lig	├£nilig	f
9828	izmirekonomi	Izmir Ekonomi Halcyons	S├╝per Lig	├£nilig	f
9829	kocaeli	Kocaeli Sharks	S├╝per Lig	├£nilig	f
9830	metu	METU Falcons	S├╝per Lig	├£nilig	f
9831	suleymandemirel	S├╝leyman Demirel Spartans	S├╝per Lig	├£nilig	f
9832	yeditepe	Yeditepe Eagles	S├╝per Lig	├£nilig	f
9833	yildiz	Yildiz Teknik Stallions	S├╝per Lig	├£nilig	f
9834	aibu	Aib├╝ Bears	1. Lig	├£nilig	f
9835	ankara	Ankara Cats	1. Lig	├£nilig	f
9836	antalya	Antalya Vandals	1. Lig	├£nilig	f
9837	baskent	Baskent Knights	1. Lig	├£nilig	f
9838	canakkalegsk	├çanakkale GSK Vatanseverler	1. Lig	├£nilig	f
9840	dumlupinar	Dumlupinar Titans	1. Lig	├£nilig	f
9841	ege	Ege Dolphins	1. Lig	├£nilig	f
9842	emu	EMU Crows	1. Lig	├£nilig	f
9843	gediz	Gediz Hawks	1. Lig	├£nilig	f
9844	istanbul	Istanbul Conquerors	1. Lig	├£nilig	f
9845	koc	Ko├º Rams	1. Lig	├£nilig	f
9846	kocatepe	Kocatepe Victory Walkers	1. Lig	├£nilig	f
9847	sakarya	Sakarya Tatankalari	1. Lig	├£nilig	f
9848	tobbetu	Tobb ETU Raiders	1. Lig	├£nilig	f
9849	uludag	Uludag Timsahlar	1. Lig	├£nilig	f
9850	yasar	Yasar Admirals	1. Lig	├£nilig	f
9851	bostonuniversity	Boston University Terriers	D1 Post-1978	Discontinued Teams	f
9852	canisius	Canisius Golden Griffins	D1 Post-1978	Discontinued Teams	f
9853	csufullerton	CSU Fullerton Titans	D1 Post-1978	Discontinued Teams	f
9854	csulongbeach	CSU Long Beach 49ers	D1 Post-1978	Discontinued Teams	f
9855	csunorthridge	CSU Northridge Matadors	D1 Post-1978	Discontinued Teams	f
9856	evansville	Evansville Purple Aces	D1 Post-1978	Discontinued Teams	f
9857	fairfield	Fairfield Stags	D1 Post-1978	Discontinued Teams	f
9858	hofstra	Hofstra Pride	D1 Post-1978	Discontinued Teams	f
9859	iona	Iona Gaels	D1 Post-1978	Discontinued Teams	f
9860	lasalle	La Salle Explorers	D1 Post-1978	Discontinued Teams	f
9861	northeastern	Northeastern Huskies	D1 Post-1978	Discontinued Teams	f
9862	pacific	Pacific Tigers	D1 Post-1978	Discontinued Teams	f
9863	santaclara	Santa Clara Broncos	D1 Post-1978	Discontinued Teams	f
9864	setonhall	Seton Hall Pirates	D1 Post-1978	Discontinued Teams	f
9865	siena	Siena Saints	D1 Post-1978	Discontinued Teams	f
9866	stjohnsny	St. John's (NY) Red Storm	D1 Post-1978	Discontinued Teams	f
9867	stmarys	St. Mary's (CA) Gaels	D1 Post-1978	Discontinued Teams	f
9868	stpeters	St. Peter's Peacocks	D1 Post-1978	Discontinued Teams	f
9869	ucsb	UCSB Gauchos	D1 Post-1978	Discontinued Teams	f
9870	umes	UMES Hawks	D1 Post-1978	Discontinued Teams	f
9871	utarlington	UT Arlington Mavericks	D1 Post-1978	Discontinued Teams	f
9872	wichitastate	Wichita State Shockers	D1 Post-1978	Discontinued Teams	f
9873	bradley	Bradley Braves	D1 1950-1977	Discontinued Teams	f
9874	denver	Denver Pioneers	D1 1950-1977	Discontinued Teams	f
9875	detroitmercy	Detroit Titans	D1 1950-1977	Discontinued Teams	f
9876	drexel	Drexel Dragons	D1 1950-1977	Discontinued Teams	f
9877	georgewashington	George Washington Colonials	D1 1950-1977	Discontinued Teams	f
9878	highpoint	High Point Panthers	D1 1950-1977	Discontinued Teams	f
9879	ualr	Little Rock Trojans	D1 1950-1977	Discontinued Teams	f
9880	loyolamarymount	Loyola Marymount Lions	D1 1950-1977	Discontinued Teams	f
9881	marquette	Marquette Golden Eagles	D1 1950-1977	Discontinued Teams	f
9882	milwaukee	Milwaukee Panthers	D1 1950-1977	Discontinued Teams	f
9883	mountstmary	Mount St. Mary Blue Knights	D1 1950-1977	Discontinued Teams	f
9884	niagara	Niagara Purple Eagles	D1 1950-1977	Discontinued Teams	f
9885	nyu	NYU Violets	D1 1950-1977	Discontinued Teams	f
9886	pepperdine	Pepperdine Waves	D1 1950-1977	Discontinued Teams	f
9887	rider	Rider Broncs	D1 1950-1977	Discontinued Teams	f
9888	sanfrancisco	San Francisco Dons	D1 1950-1977	Discontinued Teams	f
9889	stbonaventure	St. Bonaventure Bonnies	D1 1950-1977	Discontinued Teams	f
9890	texasamcorpuschristi	Texas A&M-Corpus Christi Islanders	D1 1950-1977	Discontinued Teams	f
9891	texaspanamerican	Texas-Pan American Broncs	D1 1950-1977	Discontinued Teams	f
9892	ucriverside	UC Riverside Highlanders	D1 1950-1977	Discontinued Teams	f
9893	uic	UIC Flames	D1 1950-1977	Discontinued Teams	f
9894	uncasheville	UNC Asheville Bulldogs	D1 1950-1977	Discontinued Teams	f
9895	vermont	Vermont Catamounts	D1 1950-1977	Discontinued Teams	f
9896	xavier	Xavier Musketeers	D1 1950-1977	Discontinued Teams	f
9897	american	American University Eagles	D1 Pre-1950	Discontinued Teams	f
9898	carlisle	Carlisle Indians	D1 Pre-1950	Discontinued Teams	f
9899	centenary	Centenary Gents	D1 Pre-1950	Discontinued Teams	f
9900	collegecharleston	Charleston (SC) Cougars	D1 Pre-1950	Discontinued Teams	f
9901	creighton	Creighton Bluejays	D1 Pre-1950	Discontinued Teams	f
9902	depaul	DePaul Blue Demons	D1 Pre-1950	Discontinued Teams	f
9903	gonzaga	Gonzaga Bulldogs	D1 Pre-1950	Discontinued Teams	f
9904	longisland	Long Island Blackbirds	D1 Pre-1950	Discontinued Teams	f
9905	loyolachicago	Loyola Chicago Ramblers	D1 Pre-1950	Discontinued Teams	f
9906	loyolamaryland	Loyola Maryland Greyhounds	D1 Pre-1950	Discontinued Teams	f
9907	manhattan	Manhattan Jaspers	D1 Pre-1950	Discontinued Teams	f
9908	portland	Portland Pilots	D1 Pre-1950	Discontinued Teams	f
9909	providence	Providence Friars	D1 Pre-1950	Discontinued Teams	f
9910	saintlouis	Saint Louis Billikens	D1 Pre-1950	Discontinued Teams	f
9911	stfrancisbrooklyn	St. Francis Brooklyn Terriers	D1 Pre-1950	Discontinued Teams	f
9912	stjosephspa	St. Joseph's (PA) Hawks	D1 Pre-1950	Discontinued Teams	f
9913	allen	Allen Yellow Jackets	NCAA Post-2002	Discontinued Teams	f
9914	barberscotia	Barber-Scotia Sabers	NCAA Post-2002	Discontinued Teams	f
9915	blackburn	Blackburn Beavers	NCAA Post-2002	Discontinued Teams	f
9916	coloradocollege	Colorado College Tigers	NCAA Post-2002	Discontinued Teams	f
9917	georgiasouthwesternstate	Georgia Southwestern State Hurricanes	NCAA Post-2002	Discontinued Teams	f
9918	haskell	Haskell Indians	NCAA Post-2002	Discontinued Teams	f
9919	king	King (TN) Tornado	NCAA Post-2002	Discontinued Teams	f
9920	lambuth	Lambuth Eagles	NCAA Post-2002	Discontinued Teams	f
9921	menlo	Menlo Oaks	NCAA Post-2002	Discontinued Teams	f
9922	morrisbrown	Morris Brown Wolverines	NCAA Post-2002	Discontinued Teams	f
9923	nebraskaomaha	Omaha Mavericks	NCAA Post-2002	Discontinued Teams	f
9924	paine	Paine Lions	NCAA Post-2002	Discontinued Teams	f
9925	paulquinn	Paul Quinn Tigers	NCAA Post-2002	Discontinued Teams	f
9926	principia	Principia Panthers	NCAA Post-2002	Discontinued Teams	f
9927	sitanka	Si Tanka Eagles	NCAA Post-2002	Discontinued Teams	f
9928	stpaulsva	St. Paul's (VA) Tigers	NCAA Post-2002	Discontinued Teams	f
9929	stillman	Stillman Tigers	NCAA Post-2002	Discontinued Teams	f
9930	westernwashington	Western Washington Vikings	NCAA Post-2002	Discontinued Teams	f
9931	westvirginiatech	WVU Tech Golden Bears	NCAA Post-2002	Discontinued Teams	f
9932	brooklyn	Brooklyn Bulldogs	NCAA 1990-2002	Discontinued Teams	f
9933	cameron	Cameron Aggies	NCAA 1990-2002	Discontinued Teams	f
9934	chicostate	Chico State Wildcats	NCAA 1990-2002	Discontinued Teams	f
9935	csueastbay	CSU East Bay Pioneers	NCAA 1990-2002	Discontinued Teams	f
9936	knoxville	Knoxville Bulldogs	NCAA 1990-2002	Discontinued Teams	f
9937	leesmcrae	Lees-McRae Bobcats	NCAA 1990-2002	Discontinued Teams	f
9938	massachusettsboston	Massachusetts Boston Beacons	NCAA 1990-2002	Discontinued Teams	f
9939	massachusettslowell	Massachusetts Lowell River Hawks	NCAA 1990-2002	Discontinued Teams	f
9940	mountscenario	Mount Scenario Fighting Saints	NCAA 1990-2002	Discontinued Teams	f
9941	newjerseycity	New Jersey City Gothic Knights	NCAA 1990-2002	Discontinued Teams	f
9942	oregontech	Oregon Institute of Technology Hustlin' Owls	NCAA 1990-2002	Discontinued Teams	f
9943	ramapo	Ramapo Roadrunners	NCAA 1990-2002	Discontinued Teams	f
9944	sanfranciscostate	San Francisco State Gators	NCAA 1990-2002	Discontinued Teams	f
9945	sonomastate	Sonoma State Seawolves	NCAA 1990-2002	Discontinued Teams	f
9946	stmaryoftheplains	St. Mary of the Plains Cavaliers	NCAA 1990-2002	Discontinued Teams	f
9947	suebennett	Sue Bennett Dragons	NCAA 1990-2002	Discontinued Teams	f
9948	swarthmore	Swarthmore Garnet Tide	NCAA 1990-2002	Discontinued Teams	f
9949	tarkio	Tarkio Owls	NCAA 1990-2002	Discontinued Teams	f
9950	tennesseewesleyan	Tennessee Wesleyan Bulldogs	NCAA 1990-2002	Discontinued Teams	f
9951	universitydc	University of the District of Columbia Firebirds	NCAA 1990-2002	Discontinued Teams	f
9952	upsala	Upsala Vikings	NCAA 1990-2002	Discontinued Teams	f
9953	wisconsinsuperior	Wisconsin-Superior Yellowjackets	NCAA 1990-2002	Discontinued Teams	f
9954	baptistchristian	Baptist Christian Indians	NCAA 1976-1989	Discontinued Teams	f
9955	bluefieldstate	Bluefield State Big Blues	NCAA 1976-1989	Discontinued Teams	f
9956	calpolypomona	Cal Poly Pomona Broncos	NCAA 1976-1989	Discontinued Teams	f
9957	calwestern	Cal Western Globe Runners	NCAA 1976-1989	Discontinued Teams	f
9958	caltech	Caltech Beavers	NCAA 1976-1989	Discontinued Teams	f
9959	csula	CSU LA Golden Eagles	NCAA 1976-1989	Discontinued Teams	f
9960	fisk	Fisk Bulldogs	NCAA 1976-1989	Discontinued Teams	f
9961	fortlauderdalecollege	Fort Lauderdale College Seagulls	NCAA 1976-1989	Discontinued Teams	f
9962	lubbockchristian	Lubbock Christian Chapparral	NCAA 1976-1989	Discontinued Teams	f
9963	milton	Milton Wildcats	NCAA 1976-1989	Discontinued Teams	f
9964	montanastatebillings	Montana State-Billings Yellowjackets	NCAA 1976-1989	Discontinued Teams	f
9965	newyorktech	New York Institute of Technology Bears	NCAA 1976-1989	Discontinued Teams	f
9966	northeasternillinois	Northeastern Illinois Golden Eagles	NCAA 1976-1989	Discontinued Teams	f
9967	rit	RIT Tigers	NCAA 1976-1989	Discontinued Teams	f
9968	rogerwilliams	Roger Williams Hawks	NCAA 1976-1989	Discontinued Teams	f
9969	saleminternational	Salem International Tigers	NCAA 1976-1989	Discontinued Teams	f
9970	southdakotaspringfield	South Dakota-Springfield Pointers	NCAA 1976-1989	Discontinued Teams	f
9971	stleo	St. Leo Lions	NCAA 1976-1989	Discontinued Teams	f
9972	sunyoswego	SUNY Oswego Lakers	NCAA 1976-1989	Discontinued Teams	f
9973	sunyplattsburgh	SUNY Plattsburgh Cardinals	NCAA 1976-1989	Discontinued Teams	f
9974	westminsterut	Westminster (UT) Griffins	NCAA 1976-1989	Discontinued Teams	f
9975	whitman	Whitman Missionaries	NCAA 1976-1989	Discontinued Teams	f
9976	yankton	Yankton Greyhounds	NCAA 1976-1989	Discontinued Teams	f
9977	bridgeport	Bridgeport Purple Knights	NCAA 1964-1975	Discontinued Teams	f
9978	claflin	Claflin Panthers	NCAA 1964-1975	Discontinued Teams	f
9979	collegeofemporia	College of Emporia Fighting Presbies	NCAA 1964-1975	Discontinued Teams	f
9980	collegeoftheozarks	College of the Ozarks Bobcats	NCAA 1964-1975	Discontinued Teams	f
9981	denmarktech	Denmark Tech Panthers	NCAA 1964-1975	Discontinued Teams	f
9982	dillard	Dillard Bleu Devils	NCAA 1964-1975	Discontinued Teams	f
9983	haverford	Haverford Fords	NCAA 1964-1975	Discontinued Teams	f
9984	hiramscott	Hiram Scott Scotties	NCAA 1964-1975	Discontinued Teams	f
9985	jarvischristian	Jarvis Christian Bulldogs	NCAA 1964-1975	Discontinued Teams	f
9986	midwesterncollege	Midwestern College Packers	NCAA 1964-1975	Discontinued Teams	f
9987	morris	Morris Hornets	NCAA 1964-1975	Discontinued Teams	f
9988	newengland	New England Pilgrims	NCAA 1964-1975	Discontinued Teams	f
9989	northlandwi	Northland (WI) LumberJacks	NCAA 1964-1975	Discontinued Teams	f
9990	northwoodtx	Northwood (TX) Knights	NCAA 1964-1975	Discontinued Teams	f
9991	parsons	Parsons Wildcats	NCAA 1964-1975	Discontinued Teams	f
9992	philandersmith	Philander Smith Panthers	NCAA 1964-1975	Discontinued Teams	f
9993	rust	Rust Bearcats	NCAA 1964-1975	Discontinued Teams	f
9994	tampa	Tampa Spartans	NCAA 1964-1975	Discontinued Teams	f
9995	tidewatercc	Tidewater CC Storm	NCAA 1964-1975	Discontinued Teams	f
9996	ucsd	UCSD Tritons	NCAA 1964-1975	Discontinued Teams	f
9997	wiley	Wiley Wildcats	NCAA 1964-1975	Discontinued Teams	f
9998	adelphi	Adelphi Panthers	NCAA 1952-1963	Discontinued Teams	f
9999	alaskafairbanks	Alaska Fairbanks Nanooks	NCAA 1952-1963	Discontinued Teams	f
10000	brandeis	Brandeis Judges	NCAA 1952-1963	Discontinued Teams	f
10001	californiabaptist	California Baptist Lancers	NCAA 1952-1963	Discontinued Teams	f
10002	cedarville	Cedarville Yellow Jackets	NCAA 1952-1963	Discontinued Teams	f
10003	champlain	Champlain Beavers	NCAA 1952-1963	Discontinued Teams	f
10004	clarkson	Clarkson Golden Knights	NCAA 1952-1963	Discontinued Teams	f
10005	daviselkins	Davis & Elkins Senators	NCAA 1952-1963	Discontinued Teams	f
10006	erskine	Erskine Flying Fleet	NCAA 1952-1963	Discontinued Teams	f
10007	floridamemorial	Florida Memorial Fighting Lions	NCAA 1952-1963	Discontinued Teams	f
10008	leland	Leland Buffalo	NCAA 1952-1963	Discontinued Teams	f
10009	lewis	Lewis Flyers	NCAA 1952-1963	Discontinued Teams	f
10010	nebraskacentral	Nebraska Central Fighting Quakers	NCAA 1952-1963	Discontinued Teams	f
10011	reed	Reed Griffins	NCAA 1952-1963	Discontinued Teams	f
10012	scranton	Scranton Royals	NCAA 1952-1963	Discontinued Teams	f
10013	stmarysmn	St. Mary's (MN) Cardinals	NCAA 1952-1963	Discontinued Teams	f
10014	stmichaelsvt	St. Michael's (VT) Purple Knights	NCAA 1952-1963	Discontinued Teams	f
10015	tougaloo	Tougaloo Bulldogs	NCAA 1952-1963	Discontinued Teams	f
10016	uniontn	Union (TN) Bulldogs	NCAA 1952-1963	Discontinued Teams	f
10017	vanguard	Vanguard Lions	NCAA 1952-1963	Discontinued Teams	f
10018	williamcarey	William Carey Crusaders	NCAA 1952-1963	Discontinued Teams	f
10019	xavierlouisiana	Xavier Louisiana Gold Rush	NCAA 1952-1963	Discontinued Teams	f
10020	yorkne	York (NE) Panthers	NCAA 1952-1963	Discontinued Teams	f
10021	aquinasmi	Aquinas (MI) Saints	NCAA 1950-1951	Discontinued Teams	f
10022	barton	Barton Bulldogs	NCAA 1950-1951	Discontinued Teams	f
10023	canterburyin	Canterbury (IN) Purple Warriors	NCAA 1950-1951	Discontinued Teams	f
10024	ccny	CCNY Beavers	NCAA 1950-1951	Discontinued Teams	f
10025	danielbaker	Daniel Baker Hill Billies	NCAA 1950-1951	Discontinued Teams	f
10026	detroittech	Detroit Tech Dynamics	NCAA 1950-1951	Discontinued Teams	f
10027	hustontillotson	Huston-Tillotson Rams	NCAA 1950-1951	Discontinued Teams	f
10028	lakesuperiorstate	Lake Superior State Lakers	NCAA 1950-1951	Discontinued Teams	f
10029	lemoyneowen	LeMoyne-Owen Magicians	NCAA 1950-1951	Discontinued Teams	f
10030	lewisclarkstate	Lewis-Clark State Warriors	NCAA 1950-1951	Discontinued Teams	f
10031	milligan	Milligan Buffaloes	NCAA 1950-1951	Discontinued Teams	f
10032	oklahomacity	Oklahoma City Stars	NCAA 1950-1951	Discontinued Teams	f
10033	rollins	Rollins Tars	NCAA 1950-1951	Discontinued Teams	f
10034	santafeartanddesign	Santa Fe Art and Design Adobes	NCAA 1950-1951	Discontinued Teams	f
10035	shawcollegeatdetroit	Shaw College at Detroit Indians	NCAA 1950-1951	Discontinued Teams	f
10036	simmonsky	Simmons (KY) Panthers	NCAA 1950-1951	Discontinued Teams	f
10037	southernidahoeducation	Southern Idaho Education Panthers	NCAA 1950-1951	Discontinued Teams	f
10038	stmartins	St. Martin's Saints	NCAA 1950-1951	Discontinued Teams	f
10039	washingtonmd	Washington (MD) Shoremen	NCAA 1950-1951	Discontinued Teams	f
10040	alliance	Alliance Eagles	NCAA 1940-1949	Discontinued Teams	f
10041	athensstate	Athens State Bears	NCAA 1940-1949	Discontinued Teams	f
10042	belmontabbey	Belmont Abbey Crusaders	NCAA 1940-1949	Discontinued Teams	f
10043	franciscansteubenville	Franciscan Steubenville Barons	NCAA 1940-1949	Discontinued Teams	f
10044	huntington	Huntington Foresters	NCAA 1940-1949	Discontinued Teams	f
10045	normanga	Norman (GA) Baptists	NCAA 1940-1949	Discontinued Teams	f
10046	oglethorpe	Oglethorpe Stormy Petrels	NCAA 1940-1949	Discontinued Teams	f
10047	piedmont	Piedmont Lions	NCAA 1940-1949	Discontinued Teams	f
10048	regis	Regis Rangers	NCAA 1940-1949	Discontinued Teams	f
10049	riogrande	Rio Grande RedStorm	NCAA 1940-1949	Discontinued Teams	f
10050	roanoke	Roanoke Maroons	NCAA 1940-1949	Discontinued Teams	f
10051	selma	Selma Bulldogs	NCAA 1940-1949	Discontinued Teams	f
10052	southgeorgia	South Georgia Hawks	NCAA 1940-1949	Discontinued Teams	f
10053	springhill	Spring Hill Badgers	NCAA 1940-1949	Discontinued Teams	f
10054	stedwards	St. Edward's Hilltoppers	NCAA 1940-1949	Discontinued Teams	f
10055	stmarystx	St. Mary's (TX) Rattlers	NCAA 1940-1949	Discontinued Teams	f
10056	talladega	Talladega Tornadoes	NCAA 1940-1949	Discontinued Teams	f
10057	texaswesleyan	Texas Wesleyan Rams	NCAA 1940-1949	Discontinued Teams	f
10058	transylvania	Transylvania Pioneers	NCAA 1940-1949	Discontinued Teams	f
10059	andrews	Andrews Cardinals	NCAA Pre-1940	Discontinued Teams	f
10060	arcadia	Arcadia Knights	NCAA Pre-1940	Discontinued Teams	f
10061	atlantic	Atlantic Sea Dogs	NCAA Pre-1940	Discontinued Teams	f
10062	baltimore	Baltimore Super Bees	NCAA Pre-1940	Discontinued Teams	f
10063	bard	Bard Raptors	NCAA Pre-1940	Discontinued Teams	f
10064	christianbrothers	Christian Brothers Buccaneers	NCAA Pre-1940	Discontinued Teams	f
10065	cooperunion	Cooper Union Pioneers	NCAA Pre-1940	Discontinued Teams	f
10066	drury	Drury Panthers	NCAA Pre-1940	Discontinued Teams	f
10067	floridasouthern	Florida Southern Moccasins	NCAA Pre-1940	Discontinued Teams	f
10068	augusta	Augusta Jaguars	NCAA Pre-1940	Discontinued Teams	f
10069	keenestate	Keene State Owls	NCAA Pre-1940	Discontinued Teams	f
10070	lincolnmemorial	Lincoln Memorial Railsplitters	NCAA Pre-1940	Discontinued Teams	f
10071	loyolaneworleans	Loyola New Orleans Wolfpack	NCAA Pre-1940	Discontinued Teams	f
10072	northgeorgia	North Georgia Nighthawks	NCAA Pre-1940	Discontinued Teams	f
10073	philau	PhilaU Rams	NCAA Pre-1940	Discontinued Teams	f
10074	phillips	Phillips Haymakers	NCAA Pre-1940	Discontinued Teams	f
10075	stevenstech	Stevens Institute of Technology Ducks	NCAA Pre-1940	Discontinued Teams	f
10076	sunyfarmingdale	SUNY Farmingdale Rams	NCAA Pre-1940	Discontinued Teams	f
10077	sunyfredonia	SUNY Fredonia Blue Devils	NCAA Pre-1940	Discontinued Teams	f
10078	sunygeneseo	SUNY Geneseo Knights	NCAA Pre-1940	Discontinued Teams	f
10079	sunynewpaltz	SUNY New Paltz Hawks	NCAA Pre-1940	Discontinued Teams	f
10080	sunypotsdam	SUNY Potsdam Bears	NCAA Pre-1940	Discontinued Teams	f
10081	webbinstitute	Webb Institute Webbies	NCAA Pre-1940	Discontinued Teams	f
10082	anokaramsey	Anoka-Ramsey CC Rams	Non-NCAA Discontinued 1	Discontinued Teams	f
10083	byuidaho	BYU-Idaho Vikings	Non-NCAA Discontinued 1	Discontinued Teams	f
10084	centralia	Centralia Blazers	Non-NCAA Discontinued 1	Discontinued Teams	f
10085	centurycollege	Century Wood Ducks	Non-NCAA Discontinued 1	Discontinued Teams	f
10086	clackamascc	Clackamas CC Cougars	Non-NCAA Discontinued 1	Discontinued Teams	f
10087	collegemarin	Marin Mariners	Non-NCAA Discontinued 1	Discontinued Teams	f
10088	columbiabasin	Columbia Basin Hawks	Non-NCAA Discontinued 1	Discontinued Teams	f
10089	cowleycountycc	Cowley County CC Tigers	Non-NCAA Discontinued 1	Discontinued Teams	f
10090	dakotactc	Dakota CTC Blue Knights	Non-NCAA Discontinued 1	Discontinued Teams	f
10091	gccr	Grand Rapids CC Raiders	Non-NCAA Discontinued 1	Discontinued Teams	f
10092	goldenvalleylutheran	Golden Valley Lutheran Royals	Non-NCAA Discontinued 1	Discontinued Teams	f
10093	graysharbor	Grays Harbor Chokers	Non-NCAA Discontinued 1	Discontinued Teams	f
10094	harfordcc	Harford CC Fighting Owls	Non-NCAA Discontinued 1	Discontinued Teams	f
10095	harper	Harper Hawks	Non-NCAA Discontinued 1	Discontinued Teams	f
10096	hibbingcc	Hibbing CC Cardinals	Non-NCAA Discontinued 1	Discontinued Teams	f
10097	illinoisvalleycc	Illinois Valley CC Eagles	Non-NCAA Discontinued 1	Discontinued Teams	f
10098	indianhillscc	Indian Hills CC Warriors	Non-NCAA Discontinued 1	Discontinued Teams	f
10099	iowalakescc	Iowa Lakes CC Lakers	Non-NCAA Discontinued 1	Discontinued Teams	f
10100	jolietjc	Joliet JC Wolves	Non-NCAA Discontinued 1	Discontinued Teams	f
10101	kempermilitaryjc	Kemper Military JC	Non-NCAA Discontinued 1	Discontinued Teams	f
10102	kennedyking	Kennedy-King Statesmen	Non-NCAA Discontinued 1	Discontinued Teams	f
10103	marionmilitary	Marion Military Tigers	Non-NCAA Discontinued 1	Discontinued Teams	f
10104	marshalltowncc	Marshalltown CC Tigers	Non-NCAA Discontinued 1	Discontinued Teams	f
10105	midplainscc	Mid-Plains CC Indians	Non-NCAA Discontinued 1	Discontinued Teams	f
10106	montgomery	Montgomery Raptors	Non-NCAA Discontinued 2	Discontinued Teams	f
10107	morainevalleycc	Moraine Valley CC Cyclones	Non-NCAA Discontinued 2	Discontinued Teams	f
10108	morton	Morton Panthers	Non-NCAA Discontinued 2	Discontinued Teams	f
10109	neworleans	New Orleans Privateers	Non-NCAA Discontinued 2	Discontinued Teams	f
10110	normandalecc	Normandale CC Lions	Non-NCAA Discontinued 2	Discontinued Teams	f
10111	northiowaareacc	North Iowa Area CC Trojans	Non-NCAA Discontinued 2	Discontinued Teams	f
10112	olympicjc	Olympic JC Rangers	Non-NCAA Discontinued 2	Discontinued Teams	f
10113	potomacstate	Potomac State Catamounts	Non-NCAA Discontinued 2	Discontinued Teams	f
10114	prattcc	Pratt CC Beavers	Non-NCAA Discontinued 2	Discontinued Teams	f
10115	rainyrivercc	Rainy River CC Voyageurs	Non-NCAA Discontinued 2	Discontinued Teams	f
10116	rangerjc	Ranger JC Rangers	Non-NCAA Discontinued 2	Discontinued Teams	f
10117	riverlandcc	Riverland CC Blue Devils	Non-NCAA Discontinued 2	Discontinued Teams	f
10118	rockvalley	Rock Velley Golden Eagles	Non-NCAA Discontinued 2	Discontinued Teams	f
10119	shorelinecc	Shoreline CC Dolphins	Non-NCAA Discontinued 2	Discontinued Teams	f
10120	solanocc	Solano CC Falcons	Non-NCAA Discontinued 2	Discontinued Teams	f
10121	southeastcc	Southeast CC Storm	Non-NCAA Discontinued 2	Discontinued Teams	f
10122	southsuburbancc	South Suburban CC Bulldogs	Non-NCAA Discontinued 2	Discontinued Teams	f
10123	spokanefallscc	Spokane Falls CC Bigfoot	Non-NCAA Discontinued 2	Discontinued Teams	f
10124	sunycanton	SUNY-Canton Kangaroos	Non-NCAA Discontinued 2	Discontinued Teams	f
10125	taft	Taft Cougars	Non-NCAA Discontinued 2	Discontinued Teams	f
10126	texarkanacollege	Texarkana Bulldogs	Non-NCAA Discontinued 2	Discontinued Teams	f
10127	treasurevalleycc	Treasure Valley CC Chukars	Non-NCAA Discontinued 2	Discontinued Teams	f
10128	trinidadstatejc	Trinidad State JC Trojans	Non-NCAA Discontinued 2	Discontinued Teams	f
10129	tritoncollege	Triton Trojans	Non-NCAA Discontinued 2	Discontinued Teams	f
10130	usueastern	USU Eastern Eagles	Non-NCAA Discontinued 2	Discontinued Teams	f
10131	wenatcheevalley	Wenatchee Valley Knights	Non-NCAA Discontinued 3	Discontinued Teams	f
10132	westvalley	West Valley Vikings	Non-NCAA Discontinued 3	Discontinued Teams	f
10133	westchestercc	Westchester CC Vikings	Non-NCAA Discontinued 3	Discontinued Teams	f
10134	whartoncountyjc	Wharton County JC Pioneers	Non-NCAA Discontinued 3	Discontinued Teams	f
10135	wilburwright	Wilbur Wright Rams	Non-NCAA Discontinued 3	Discontinued Teams	f
10136	yakimavalleycc	Yakima Valley CC Yaks	Non-NCAA Discontinued 3	Discontinued Teams	f
10137	capebreton	Cape Breton Capers	Canada	Discontinued Teams	f
10138	moncton	Moncton Junior Mustangs	Canada	Discontinued Teams	f
10139	laurentian	Laurentian Voyageurs	Canada	Discontinued Teams	f
10140	rmc	RMC Paladins	Canada	Discontinued Teams	f
10141	rmcstjean	RMC Saint-Jean Remparts	Canada	Discontinued Teams	f
10142	upei	UPEI Panthers	Canada	Discontinued Teams	f
10143	uqam	UQAM Citadins	Canada	Discontinued Teams	f
10144	havana	Havana Caribes	Cuba	Discontinued Teams	f
10145	dcu	DCU Saints	Ireland	Discontinued Teams	f
10146	esiqieipn	Pieles Rojas ESIQIE-IPN	Mexico	Discontinued Teams	f
10147	heroicocolegiomilitar	Heroico Colegio Militar Royal Eagles	Mexico	Discontinued Teams	f
10148	mexicocitycollege	Mexico City College Green Wave	Mexico	Discontinued Teams	f
10149	unib	Bengal├¡es UNIB	Mexico	Discontinued Teams	f
10150	aberdeen	Aberdeen Steamroller	UK	Discontinued Teams	f
10151	aston	Aston Rhinos	UK	Discontinued Teams	f
10152	dundee	Dundee Bluedevils	UK	Discontinued Teams	f
10153	falmouth	Falmouth Tridents	UK	Discontinued Teams	f
10154	strathclyde	Strathclyde Hawks	UK	Discontinued Teams	f
10155	wolverhampton	Wolverhampton Wildcats	UK	Discontinued Teams	f
\.


--
-- Name: poll_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('poll_team_id_seq', 10155, true);


--
-- Data for Name: poll_user; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY poll_user (id, username, primary_affiliation_id) FROM stdin;
\.


--
-- Name: poll_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('poll_user_id_seq', 1, false);


--
-- Data for Name: poll_usersecondaryaffiliations; Type: TABLE DATA; Schema: public; Owner: sirgippy
--

COPY poll_usersecondaryaffiliations (id, team_id, user_id) FROM stdin;
\.


--
-- Name: poll_usersecondaryaffiliations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sirgippy
--

SELECT pg_catalog.setval('poll_usersecondaryaffiliations_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: poll_ballot_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_ballot
    ADD CONSTRAINT poll_ballot_pkey PRIMARY KEY (id);


--
-- Name: poll_ballotentry_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_ballotentry
    ADD CONSTRAINT poll_ballotentry_pkey PRIMARY KEY (id);


--
-- Name: poll_poll_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_poll
    ADD CONSTRAINT poll_poll_pkey PRIMARY KEY (id);


--
-- Name: poll_team_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_team
    ADD CONSTRAINT poll_team_pkey PRIMARY KEY (id);


--
-- Name: poll_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_user
    ADD CONSTRAINT poll_user_pkey PRIMARY KEY (id);


--
-- Name: poll_usersecondaryaffiliations_pkey; Type: CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_usersecondaryaffiliations
    ADD CONSTRAINT poll_usersecondaryaffiliations_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: poll_ballot_582e9e5a; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX poll_ballot_582e9e5a ON poll_ballot USING btree (poll_id);


--
-- Name: poll_ballot_e8701ad4; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX poll_ballot_e8701ad4 ON poll_ballot USING btree (user_id);


--
-- Name: poll_ballotentry_39bb270f; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX poll_ballotentry_39bb270f ON poll_ballotentry USING btree (ballot_id);


--
-- Name: poll_ballotentry_f6a7ca40; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX poll_ballotentry_f6a7ca40 ON poll_ballotentry USING btree (team_id);


--
-- Name: poll_user_f66a372b; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX poll_user_f66a372b ON poll_user USING btree (primary_affiliation_id);


--
-- Name: poll_usersecondaryaffiliations_e8701ad4; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX poll_usersecondaryaffiliations_e8701ad4 ON poll_usersecondaryaffiliations USING btree (user_id);


--
-- Name: poll_usersecondaryaffiliations_f6a7ca40; Type: INDEX; Schema: public; Owner: sirgippy
--

CREATE INDEX poll_usersecondaryaffiliations_f6a7ca40 ON poll_usersecondaryaffiliations USING btree (team_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: poll_ballot_poll_id_29c1a2fb_fk_poll_poll_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_ballot
    ADD CONSTRAINT poll_ballot_poll_id_29c1a2fb_fk_poll_poll_id FOREIGN KEY (poll_id) REFERENCES poll_poll(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: poll_ballot_user_id_37416fcd_fk_poll_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_ballot
    ADD CONSTRAINT poll_ballot_user_id_37416fcd_fk_poll_user_id FOREIGN KEY (user_id) REFERENCES poll_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: poll_ballotentry_ballot_id_f3d3b2cc_fk_poll_ballot_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_ballotentry
    ADD CONSTRAINT poll_ballotentry_ballot_id_f3d3b2cc_fk_poll_ballot_id FOREIGN KEY (ballot_id) REFERENCES poll_ballot(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: poll_ballotentry_team_id_b424f4f2_fk_poll_team_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_ballotentry
    ADD CONSTRAINT poll_ballotentry_team_id_b424f4f2_fk_poll_team_id FOREIGN KEY (team_id) REFERENCES poll_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: poll_user_primary_affiliation_id_105a5aa1_fk_poll_team_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_user
    ADD CONSTRAINT poll_user_primary_affiliation_id_105a5aa1_fk_poll_team_id FOREIGN KEY (primary_affiliation_id) REFERENCES poll_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: poll_usersecondaryaffiliations_team_id_20db6d08_fk_poll_team_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_usersecondaryaffiliations
    ADD CONSTRAINT poll_usersecondaryaffiliations_team_id_20db6d08_fk_poll_team_id FOREIGN KEY (team_id) REFERENCES poll_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: poll_usersecondaryaffiliations_user_id_a4fecfc5_fk_poll_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sirgippy
--

ALTER TABLE ONLY poll_usersecondaryaffiliations
    ADD CONSTRAINT poll_usersecondaryaffiliations_user_id_a4fecfc5_fk_poll_user_id FOREIGN KEY (user_id) REFERENCES poll_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

