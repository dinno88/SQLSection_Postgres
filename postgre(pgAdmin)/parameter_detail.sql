-- Table: public.parameter_detail

-- DROP TABLE IF EXISTS public.parameter_detail;

CREATE TABLE IF NOT EXISTS public.parameter_detail
(
    detail_code character varying(64) COLLATE pg_catalog."default" NOT NULL,
    detail_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    param_code character varying(64) COLLATE pg_catalog."default" NOT NULL,
    param_value character varying(128) COLLATE pg_catalog."default",
    created_by character varying(64) COLLATE pg_catalog."default" NOT NULL,
    created_time timestamp without time zone NOT NULL,
    updated_by character varying(64) COLLATE pg_catalog."default",
    updated_time timestamp without time zone,
    CONSTRAINT param_detali_pk PRIMARY KEY (detail_code),
    CONSTRAINT param_detail_fk FOREIGN KEY (param_code)
        REFERENCES public.parameter (param_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.parameter_detail
    OWNER to postgres;