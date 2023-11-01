-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE students
(
	student_id serial,
	first_name varchar,
	last_name varchar,
	birthday date,
	phone varchar
)

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE students ADD COLUMN middle_name varchar;

-- 3. Удалить колонку middle_name
ALTER TABLE students ADD COLUMN middle_name varchar;

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE students RENAME birthday TO birth_date

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE students ALTER COLUMN phone SET DATA TYPE varchar(50);

-- 6. Вставить три любых записи с автогенерацией идентификатора
ALTER TABLE students ADD CONSTRAINT pk_students_student_id PRIMARY KEY (student_id)

INSERT INTO students (first_name, last_name, birth_date, phone) VALUES
('Kristen', 'Balk', '1900-01-01', '123123'),
('Richter', 'Billig', '1901-01-01', '132132'),
('Kurt', 'Bravo', '1902-01-01', '321321')

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE students RESTART IDENTITY
