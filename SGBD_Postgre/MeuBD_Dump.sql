--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-04 01:24:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16413)
-- Name: agencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agencia (
    id_agencia integer NOT NULL,
    nome character varying(100),
    cidade character varying(100),
    uf character(2)
);


ALTER TABLE public.agencia OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16418)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome character varying(100),
    telefone character varying(15),
    logradouro character varying(100),
    cidade character varying(100),
    uf character(2)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16398)
-- Name: consulta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consulta (
    id_consulta integer NOT NULL,
    dt_consulta date,
    localizacao character varying(100),
    hr_consulta time without time zone,
    prescricao character varying(100),
    pedido_exame character varying(100),
    diagnostico character varying(100),
    id_paciente integer,
    id_medico integer
);


ALTER TABLE public.consulta OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16423)
-- Name: conta_corrente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conta_corrente (
    id_conta_corrente integer NOT NULL,
    saldo numeric(7,2),
    id_agencia integer,
    id_cliente integer
);


ALTER TABLE public.conta_corrente OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16448)
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    id_departamento integer NOT NULL,
    nome character varying(100),
    responsavel character varying(100),
    sigla character varying(10)
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16438)
-- Name: emprestimo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emprestimo (
    id_emprestimo integer NOT NULL,
    dt_efetivacao date,
    valor numeric(7,2),
    dt_encerramento date,
    id_conta_corrente integer
);


ALTER TABLE public.emprestimo OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16453)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    id_funcionario integer NOT NULL,
    nome character varying(100),
    cpf character(11),
    sexo character(1),
    telefone character varying(15),
    endereco character varying(100),
    dt_admissao date,
    funcao character varying(100),
    matricula character varying(10),
    id_departamento integer
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16388)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medico (
    id_medico integer NOT NULL,
    nome character varying(100),
    dt_nascimento date,
    sexo character(1),
    telefone character varying(15),
    endereco character varying(100),
    especialidade character varying(100),
    crm character varying(15)
);


ALTER TABLE public.medico OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16393)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paciente (
    id_paciente integer NOT NULL,
    nome character varying(100),
    rg character(10),
    cpf character(11),
    dt_nascimento date,
    sexo character(1),
    endereco character varying(100),
    email character varying(100),
    telefone character varying(15)
);


ALTER TABLE public.paciente OWNER TO postgres;

--
-- TOC entry 4945 (class 0 OID 16413)
-- Dependencies: 220
-- Data for Name: agencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agencia (id_agencia, nome, cidade, uf) FROM stdin;
\.


--
-- TOC entry 4946 (class 0 OID 16418)
-- Dependencies: 221
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, nome, telefone, logradouro, cidade, uf) FROM stdin;
\.


--
-- TOC entry 4944 (class 0 OID 16398)
-- Dependencies: 219
-- Data for Name: consulta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consulta (id_consulta, dt_consulta, localizacao, hr_consulta, prescricao, pedido_exame, diagnostico, id_paciente, id_medico) FROM stdin;
\.


--
-- TOC entry 4947 (class 0 OID 16423)
-- Dependencies: 222
-- Data for Name: conta_corrente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conta_corrente (id_conta_corrente, saldo, id_agencia, id_cliente) FROM stdin;
\.


--
-- TOC entry 4949 (class 0 OID 16448)
-- Dependencies: 224
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamento (id_departamento, nome, responsavel, sigla) FROM stdin;
\.


--
-- TOC entry 4948 (class 0 OID 16438)
-- Dependencies: 223
-- Data for Name: emprestimo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emprestimo (id_emprestimo, dt_efetivacao, valor, dt_encerramento, id_conta_corrente) FROM stdin;
\.


--
-- TOC entry 4950 (class 0 OID 16453)
-- Dependencies: 225
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funcionario (id_funcionario, nome, cpf, sexo, telefone, endereco, dt_admissao, funcao, matricula, id_departamento) FROM stdin;
\.


--
-- TOC entry 4942 (class 0 OID 16388)
-- Dependencies: 217
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medico (id_medico, nome, dt_nascimento, sexo, telefone, endereco, especialidade, crm) FROM stdin;
\.


--
-- TOC entry 4943 (class 0 OID 16393)
-- Dependencies: 218
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paciente (id_paciente, nome, rg, cpf, dt_nascimento, sexo, endereco, email, telefone) FROM stdin;
\.


--
-- TOC entry 4780 (class 2606 OID 16417)
-- Name: agencia agencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agencia
    ADD CONSTRAINT agencia_pkey PRIMARY KEY (id_agencia);


--
-- TOC entry 4782 (class 2606 OID 16422)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 4778 (class 2606 OID 16402)
-- Name: consulta consulta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_pkey PRIMARY KEY (id_consulta);


--
-- TOC entry 4784 (class 2606 OID 16427)
-- Name: conta_corrente conta_corrente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta_corrente
    ADD CONSTRAINT conta_corrente_pkey PRIMARY KEY (id_conta_corrente);


--
-- TOC entry 4788 (class 2606 OID 16452)
-- Name: departamento departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id_departamento);


--
-- TOC entry 4786 (class 2606 OID 16442)
-- Name: emprestimo emprestimo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_pkey PRIMARY KEY (id_emprestimo);


--
-- TOC entry 4790 (class 2606 OID 16457)
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_funcionario);


--
-- TOC entry 4774 (class 2606 OID 16392)
-- Name: medico medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (id_medico);


--
-- TOC entry 4776 (class 2606 OID 16397)
-- Name: paciente paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);


--
-- TOC entry 4791 (class 2606 OID 16403)
-- Name: consulta consulta_id_medico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_id_medico_fkey FOREIGN KEY (id_medico) REFERENCES public.medico(id_medico);


--
-- TOC entry 4792 (class 2606 OID 16408)
-- Name: consulta consulta_id_paciente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_id_paciente_fkey FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente);


--
-- TOC entry 4793 (class 2606 OID 16428)
-- Name: conta_corrente conta_corrente_id_agencia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta_corrente
    ADD CONSTRAINT conta_corrente_id_agencia_fkey FOREIGN KEY (id_agencia) REFERENCES public.agencia(id_agencia);


--
-- TOC entry 4794 (class 2606 OID 16433)
-- Name: conta_corrente conta_corrente_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conta_corrente
    ADD CONSTRAINT conta_corrente_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- TOC entry 4795 (class 2606 OID 16443)
-- Name: emprestimo emprestimo_id_conta_corrente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_id_conta_corrente_fkey FOREIGN KEY (id_conta_corrente) REFERENCES public.conta_corrente(id_conta_corrente);


--
-- TOC entry 4796 (class 2606 OID 16458)
-- Name: funcionario funcionario_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento);


-- Completed on 2025-05-04 01:24:19

--
-- PostgreSQL database dump complete
--

