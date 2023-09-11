-- Table: public.teacher

-- DROP TABLE IF EXISTS public.teacher;

CREATE TABLE IF NOT EXISTS public.teacher
(
    teacher_id integer NOT NULL,
    teacher_no character varying(16) COLLATE pg_catalog."default" NOT NULL,
    teacher_name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    gender character varying(64) COLLATE pg_catalog."default" NOT NULL,
    created_by character varying(32) COLLATE pg_catalog."default" NOT NULL,
    created_time timestamp without time zone NOT NULL,
    updated_by character varying(32) COLLATE pg_catalog."default",
    updated_time timestamp without time zone,
    CONSTRAINT teacher_pk PRIMARY KEY (teacher_id),
    CONSTRAINT teacher_teacher_no_key UNIQUE (teacher_no),
    CONSTRAINT teacher_gender_fk FOREIGN KEY (gender)
        REFERENCES public.parameter_detail (detail_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.teacher
    OWNER to postgres;