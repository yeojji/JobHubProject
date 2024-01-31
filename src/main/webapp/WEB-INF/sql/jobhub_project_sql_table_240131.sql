DROP TABLE apply;
DROP TABLE user;
DROP TABLE job_posting;
DROP TABLE jobs;
DROP TABLE administrator;
DROP TABLE employee;
DROP TABLE faqs;
DROP TABLE company;
DROP TABLE resume_info;
DROP TABLE career;
DROP TABLE education;
DROP TABLE certificate;
DROP TABLE attached_data;
DROP TABLE job_question;
DROP TABLE description;
DROP TABLE school;
DROP TABLE common_code_master;


-- 지원
CREATE TABLE apply (
    apply_id VARCHAR2(50) PRIMARY KEY,
    resume_id VARCHAR2(50),
    applied_date TIMESTAMP,
    status VARCHAR2(50)
);

-- 회원 
CREATE TABLE "user" (
    user_id NUMBER PRIMARY KEY,
    email VARCHAR2(255),
    password VARCHAR2(50),
    name VARCHAR2(100),
    birth VARCHAR2(20),
    phone VARCHAR2(20),
    created_date TIMESTAMP,
    gender VARCHAR2(10)
);

-- 채용공고 
CREATE TABLE job_posting (
    posting_id VARCHAR2(50) PRIMARY KEY,
    title VARCHAR2(255),
    jobs_id VARCHAR2(50),
    career_condition VARCHAR2(255),
    employment_type VARCHAR2(50),
    description_id VARCHAR2(50),
    post_written_date TIMESTAMP,
    post_start_date TIMESTAMP,
    post_end_date TIMESTAMP,
    application_start TIMESTAMP,
    application_deadline TIMESTAMP,
    view_count NUMBER,
    post_status VARCHAR2(50),
    modify_date TIMESTAMP,
    admin_ID VARCHAR2(50),
    question_1 VARCHAR2(255),
    question_2 VARCHAR2(255),
    question_3 VARCHAR2(255)
);

-- 직무
CREATE TABLE jobs (
    jobs_id NUMBER PRIMARY KEY,
    jobs_name VARCHAR2(100),
    job_type VARCHAR2(50),
    jobs_level NUMBER,
    jobs_pid NUMBER
);

-- 관리자
CREATE TABLE administrator (
    admin_ID VARCHAR2(50) PRIMARY KEY,
    admin_PW VARCHAR2(50),
    employee_ID VARCHAR2(50),
    permission_code VARCHAR2(50),
    creation_code TIMESTAMP
);

-- 직원 
CREATE TABLE employee (
    employee_id VARCHAR2(50) PRIMARY KEY,
    image_path VARCHAR2(255),
    jobs_id VARCHAR2(50),
    name VARCHAR2(100),
    phone VARCHAR2(20),
    tel VARCHAR2(20),
    birth DATE,
    gender CHAR(1),
    address VARCHAR2(255),
    hire_date DATE,
    email VARCHAR2(255)
);

-- 자주 묻는 질문 
CREATE TABLE faqs (
    faqs_id NUMBER PRIMARY KEY,
    category VARCHAR2(50),
    title VARCHAR2(255),
    content VARCHAR2(4000)
);

-- 회사
CREATE TABLE company (
    company_id NUMBER PRIMARY KEY,
    company_name VARCHAR2(255)
);

-- 회원 이력서 
CREATE TABLE resume_info (
    resume_id VARCHAR2(50) PRIMARY KEY,
    user_id VARCHAR2(50),
    jobs_id VARCHAR2(50),
    career_id VARCHAR2(50),
    academic_id VARCHAR2(50),
    certificate_id VARCHAR2(50),
    support_path VARCHAR2(255),
    military_service_matters VARCHAR2(255),
    veterans_target_status VARCHAR2(50),
    disorder_status VARCHAR2(255),
    submission_status VARCHAR2(50),
    revision_date DATE
);

-- 경력
CREATE TABLE career (
    career_id VARCHAR2(50) PRIMARY KEY,
    resume_id VARCHAR2(50),
    join_date_of_company DATE,
    resignation_date_of_company DATE,
    position VARCHAR2(100),
    duty VARCHAR2(255),
    company_id VARCHAR2(50),
    details_of_work VARCHAR2(4000)
);

-- 학력
CREATE TABLE education (
    academic_id VARCHAR2(50) PRIMARY KEY,
    resume_id VARCHAR2(50),
    sortation VARCHAR2(50),
    school_name VARCHAR2(255),
    the_year_of_admission DATE,
    the_year_of_graduation DATE,
    major VARCHAR2(255),
    minor VARCHAR2(255),
    grade NUMBER,
    total_score NUMBER,
    graduation_status VARCHAR2(50)
);

-- 자격/어학 테이블 
CREATE TABLE certificate (
    certificate_id NUMBER PRIMARY KEY,
    resume_id NUMBER,
    sortation VARCHAR2(50),
    certificate_type VARCHAR2(255),
    certificate_level VARCHAR2(255),
    date_of_acquisition VARCHAR2(50),
    Issuing_authority VARCHAR2(255)
);

-- 첨부자료 테이블 
CREATE TABLE attached_data (
    file_id NUMBER PRIMARY KEY,
    resume_id NUMBER,
    file_name VARCHAR2(255),
    file_path VARCHAR2(255),
    save_datetime TIMESTAMP
);

-- 직무질문_대답 테이블 
CREATE TABLE job_question (
    answer_id NUMBER PRIMARY KEY,
    resume_id NUMBER,
    posting_id NUMBER,
    content1 VARCHAR2(4000),
    content2 VARCHAR2(4000),
    content3 VARCHAR2(4000)
);

-- 채용세부내용
CREATE TABLE description (
    description_id VARCHAR2(50) PRIMARY KEY,
    assigned_task VARCHAR2(4000),
    requirements VARCHAR2(4000),
    preferential_treatment VARCHAR2(4000),
    screening_guide VARCHAR2(4000),
    work_form VARCHAR2(255),
    work_place VARCHAR2(255),
    working_hours TIMESTAMP,
    etc VARCHAR2(4000),
    submission_guide VARCHAR2(4000)
);

-- 학교
CREATE TABLE school (
    school_id NUMBER PRIMARY KEY,
    school_name VARCHAR2(255)
);

-- 공통_분류코드_Master
CREATE TABLE common_code_master (
    code_name VARCHAR2(50) PRIMARY KEY,
    group_code VARCHAR2(50),
    name VARCHAR2(255),
    description VARCHAR2(4000)
);
