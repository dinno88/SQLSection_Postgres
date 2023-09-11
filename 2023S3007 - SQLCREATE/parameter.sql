-- Table: public.parameter

-- DROP TABLE IF EXISTS public.parameter;

CREATE TABLE IF NOT EXISTS public.parameter
(
    param_code character varying(64) COLLATE pg_catalog."default" NOT NULL,
    param_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    description character varying(128) COLLATE pg_catalog."default",
    created_by character varying(64) COLLATE pg_catalog."default" NOT NULL,
    created_time timestamp without time zone NOT NULL,
    updated_by character varying(64) COLLATE pg_catalog."default",
    updated_time timestamp without time zone,
    CONSTRAINT param_pk PRIMARY KEY (param_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.parameter
    OWNER to postgres;