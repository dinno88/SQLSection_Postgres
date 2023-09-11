-- Table: public.semester

-- DROP TABLE IF EXISTS public.semester;

CREATE TABLE IF NOT EXISTS public.semester
(
    semester_id integer NOT NULL,
    year character varying(4) COLLATE pg_catalog."default" NOT NULL,
    period character varying(64) COLLATE pg_catalog."default" NOT NULL,
    description character varying(128) COLLATE pg_catalog."default",
    created_by character varying(32) COLLATE pg_catalog."default" NOT NULL,
    created_time timestamp without time zone NOT NULL,
    updated_by character varying(32) COLLATE pg_catalog."default",
    updated_time timestamp without time zone,
    CONSTRAINT semester_pk PRIMARY KEY (semester_id),
    CONSTRAINT semester_year_ak UNIQUE (year),
    CONSTRAINT semester_period_fk FOREIGN KEY (period)
        REFERENCES public.parameter_detail (detail_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.semester
    OWNER to postgres;