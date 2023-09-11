-- Table: public.student

-- DROP TABLE IF EXISTS public.student;

CREATE TABLE IF NOT EXISTS public.student
(
    student_id integer NOT NULL,
    student_no character varying(16) COLLATE pg_catalog."default" NOT NULL,
    student_name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    gender character varying(64) COLLATE pg_catalog."default" NOT NULL,
    birth_place character varying(16) COLLATE pg_catalog."default" NOT NULL,
    birth_date date NOT NULL,
    address character varying(128) COLLATE pg_catalog."default" NOT NULL,
    major character varying(64) COLLATE pg_catalog."default" NOT NULL,
    city_code character varying(16) COLLATE pg_catalog."default",
    profile_url character varying(256) COLLATE pg_catalog."default" NOT NULL,
    created_by character varying(32) COLLATE pg_catalog."default" NOT NULL,
    created_time timestamp without time zone NOT NULL,
    updated_by character varying(32) COLLATE pg_catalog."default",
    updated_time timestamp without time zone,
    CONSTRAINT student_pk PRIMARY KEY (student_id),
    CONSTRAINT student_city_code_fk FOREIGN KEY (city_code)
        REFERENCES public.city (city_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT student_gender_fk FOREIGN KEY (gender)
        REFERENCES public.parameter_detail (detail_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT student_major_fk FOREIGN KEY (major)
        REFERENCES public.parameter_detail (detail_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.student
    OWNER to postgres;