
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