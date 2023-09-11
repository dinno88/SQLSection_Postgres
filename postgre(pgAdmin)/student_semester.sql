-- Table: public.student_semester

-- DROP TABLE IF EXISTS public.student_semester;

CREATE TABLE IF NOT EXISTS public.student_semester
(
    student_semester_id integer NOT NULL,
    student_id integer NOT NULL,
    semester_id integer NOT NULL,
    course_id integer NOT NULL,
    mid_test_score numeric(3,0) NOT NULL,
    final_test_score numeric(3,0) NOT NULL,
    grade character varying(1) COLLATE pg_catalog."default" NOT NULL,
    created_by character varying(32) COLLATE pg_catalog."default" NOT NULL,
    created_time timestamp without time zone NOT NULL,
    updated_by character varying(32) COLLATE pg_catalog."default",
    updated_time timestamp without time zone,
    CONSTRAINT student_semester_pk PRIMARY KEY (student_semester_id),
    CONSTRAINT student_uc UNIQUE (student_id, semester_id, course_id),
    CONSTRAINT course_id_fk FOREIGN KEY (course_id)
        REFERENCES public.course (course_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT semester_id_fk FOREIGN KEY (semester_id)
        REFERENCES public.semester (semester_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT student_id_fk FOREIGN KEY (student_id)
        REFERENCES public.student (student_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.student_semester
    OWNER to postgres;