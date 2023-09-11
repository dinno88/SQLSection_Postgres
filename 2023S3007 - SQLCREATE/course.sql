-- Table: public.course

-- DROP TABLE IF EXISTS public.course;

CREATE TABLE IF NOT EXISTS public.course
(
    course_id integer NOT NULL,
    course_code character varying(32) COLLATE pg_catalog."default" NOT NULL,
    course_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    credit integer NOT NULL,
    teacher_id integer NOT NULL,
    created_by character varying(32) COLLATE pg_catalog."default" NOT NULL,
    created_time timestamp without time zone NOT NULL,
    updated_by character varying(32) COLLATE pg_catalog."default",
    updated_time timestamp without time zone,
    CONSTRAINT course_pk PRIMARY KEY (course_id),
    CONSTRAINT course_code_ak UNIQUE (course_code),
    CONSTRAINT teacher_id_fk FOREIGN KEY (teacher_id)
        REFERENCES public.teacher (teacher_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.course
    OWNER to postgres;