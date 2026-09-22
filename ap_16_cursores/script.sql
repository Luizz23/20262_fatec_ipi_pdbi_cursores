--Cursor não vincluado de query dinamica
--exibindo nomes de youtubers que que comecaram a partir de um ano especifico

DO$$

DECLARE
--1 Declaração 
cur_nomes_a_partir_de REFCURSOR;
v_youtuber VARCHAR(200)
v_ano INT := 2008;
v_nome_tabela_VARCHAR(200) := 'tb_top_youtubers':

BEGIN 
-- 2 ABERTURA
OPEN cur_nomes_a_partir de FOR EXECUTE
format(
	'SELECT youtuber FROM %s WHERE started >= $1',
	v_nome_tabela
)
USING v_ano;
LOOP
--3 Recuperação de dados
FETCH cur_nomes_a_partir_de INTO v_youtuber;
EXIT WHEN NOT FOUND;
RAISE NOTICE '%', v_youtuber;
EXIT LOOP
-- 4 Fechamneto do cursor
CLOSE cur_nomes_a_partir_de;
END 
$$


-- PROCESSANDO LINHA POR LINHA 
-- DO $$

-- DECLARE

-- -- Declaração do CURSOR
-- cur_nomes_youtubers_REFCURSOR;
-- v_youtuber VARCHAR(200),
-- BEGIN

-- --2 Abertura do cursor
-- OPEN cur_nomes_youtubers FOR
-- SELECT youtuber
-- FROM tb_top_youtubers;
-- LOOP

-- -- 3 Recuperação dos dados de interesse
-- FETCH cur_nomes_youtubers INTO v_youtuber;
-- EXIT WHEN NOT FOUND;
-- RAISE NOTICE '%', v_youtuber;
-- END LOOP;

-- --4 Fechamento
-- CLOSE cur_nomes_youtubers;
-- END;
-- $$



-- ALTER TABLE tb_top_youtubers
--  ALTER COLUMN video_views TYPE BIGINT;


-- ([A-Z])[A-Z]([A-Z]-[0-9]{4})


-- --Primeira Formatação
-- "([0-9]+),([0-9]{3}),([0-9]{3})"
-- "$1$2$3"

-- --"SEGUNDA FROMATAÇÃO"
-- "([0-9]+),([0-9]{3}),([0-9]{3}),([0-9]{3})"
-- "$1$2$3$4"


-- --"Terceira Formatação"
-- "([0-9]+),([0-9]{3})"
-- "$1$2"


-- -- padrão antigo
-- -- [A-Z]{3}-[0-9]{4}
-- ABC-1234

-- -- padrão novo
-- -- [A-Z]{3}-[0-9][A-Z]{2}
-- ABC-1D11


CREATE TABLE IF NOT EXISTS tb_top_youtubers(
	cod_top_youtubers SERIAL PRIMARY KEY
,	rank INT NULL
,	youtuber VARCHAR (200) NULL
,	subscribers INT NULL
,	video_views INT NULL
,	video_count INT NULL
,	category VARCHAR(200) NULL
,	started INT NULL
);