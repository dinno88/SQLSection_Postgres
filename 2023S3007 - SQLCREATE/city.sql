-- Table: public.city

-- DROP TABLE IF EXISTS public.city;

CREATE TABLE IF NOT EXISTS public.city
(
    city_code character varying(16) COLLATE pg_catalog."default" NOT NULL,
    city_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    created_by character varying(64) COLLATE pg_catalog."default" NOT NULL,
    created_time timestamp without time zone NOT NULL,
    updated_by character varying(64) COLLATE pg_catalog."default",
    updated_time timestamp without time zone,
    CONSTRAINT city_pk PRIMARY KEY (city_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.city
    OWNER to postgres;