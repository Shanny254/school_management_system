
# 🏫 School Management System

## 📋 Project Overview

This project is a full-featured **School Management System** built using **MySQL** for Question 1 and extended with a **Python FastAPI CRUD API** for Question 2. The system handles teachers, classrooms, students, subjects, and marks, providing a structured way to manage school data.

---

## 📦 Question 1: MySQL Database Design

### 🎯 Objective

To design and implement a relational database for a school management system using MySQL, including appropriate constraints and sample data.

---

### 🧱 Entities and Structure

- **Teachers** (Manages subjects and classes)
- **Classrooms** (Houses students and subjects)
- **Students** (Belong to classrooms and receive marks)
- **Subjects** (Taught in classrooms)
- **Marks** (Link students to subjects and record performance)

---

### 🔑 Keys and Constraints

- **Primary Keys** on all tables (e.g., `teacher_id`, `student_id`, etc.)
- **Foreign Keys** establish relationships:
  - `Classrooms.teacher_id` → `Teachers.teacher_id`
  - `Students.class_id` → `Classrooms.classroom_id`
  - `Subjects.class_id` → `Classrooms.classroom_id`
  - `Marks.student_id` → `Students.student_id`
  - `Marks.subject_id` → `Subjects.subject_id`
- **NOT NULL**, **UNIQUE**, and **ENUM** constraints are used where appropriate.

---

### 🧪 Sample Data

Sample data includes students and teachers names and class/subject details.

To import the SQL:
```bash
mysql -u <your_user> -p < school_system.sql>
```

---

### 📷 ERD Screenshot


# 🏫 School Management System

## 📋 Project Overview

This project is a full-featured **School Management System** built using **MySQL** for Question 1 and extended with a **Python FastAPI CRUD API** for Question 2. The system handles teachers, classrooms, students, subjects, and marks, providing a structured way to manage school data.

---

## 📦 Question 1: MySQL Database Design

### 🎯 Objective

To design and implement a relational database for a school management system using MySQL, including appropriate constraints and sample data.

---

### 🧱 Entities and Structure

- **Teachers** (Manages subjects and classes)
- **Classrooms** (Houses students and subjects)
- **Students** (Belong to classrooms and receive marks)
- **Subjects** (Taught in classrooms)
- **Marks** (Link students to subjects and record performance)

---

### 🔑 Keys and Constraints

- **Primary Keys** on all tables (e.g., `teacher_id`, `student_id`, etc.)
- **Foreign Keys** establish relationships:
  - `Classrooms.teacher_id` → `Teachers.teacher_id`
  - `Students.class_id` → `Classrooms.classroom_id`
  - `Subjects.class_id` → `Classrooms.classroom_id`
  - `Marks.student_id` → `Students.student_id`
  - `Marks.subject_id` → `Subjects.subject_id`
- **NOT NULL**, **UNIQUE**, and **ENUM** constraints are used where appropriate.

---

### 🧪 Sample Data

Sample data includes realistic Kenyan names and class/subject details.

To import the SQL:
```bash
mysql -u <your_user> -p < school_system.sql>
```

---

### 📷 ERD Screenshot

Paste your ERD image or upload it to your GitHub repo and reference it here:

![ERD Screenshot](docs/school_erd.png)

> _You can also embed a link to [draw.io](https://draw.io) or your hosted diagram if preferred._

---

## 💻 Question 2: CRUD API with FastAPI

### 🎯 Objective

Build a simple RESTful API that connects to the MySQL database and implements full CRUD operations for managing student and teacher records.

---

### ⚙️ Technology Stack

- **Backend**: Python 3 + FastAPI
- **Database**: MySQL
- **ORM**: SQLAlchemy
- **Tools**: Uvicorn (for running server), MySQL-Connector

---

### 📁 Folder Structure

```
/api
  ├── main.py               # FastAPI application
  ├── models.py             # SQLAlchemy models
  ├── schemas.py            # Pydantic schemas
  ├── crud.py               # CRUD logic
  └── database.py           # DB connection
```

---

### 🚀 How to Run the API

```bash
# 1. Set up virtual environment
python -m venv venv
source venv/bin/activate  # or venv\Scripts\activate on Windows

# 2. Install dependencies
pip install -r requirements.txt

# 3. Run the server
uvicorn main:app --reload
```

> Make sure your MySQL server is running and the database is created using the `school_system.sql` file before starting the server.

---

### 📄 SQL Script

You’ll find the SQL script used to create the database inside:
```
/sql/school_system.sql
```

---

### ✅ Features

- Create, Read, Update, Delete Teachers
- Create, Read, Update, Delete Students
- Extendable to include Classrooms, Subjects, Marks

---

## 📌 Author

- **Sharlyne Nyaboke Kegode**
- Data Science Student, KCA University

---

## 📜 License

This project is for academic purposes and is freely available for learning and extension.


![ERD Screenshot](C:\Users\sharl\OneDrive\Desktop\DATABASE\school_management_system\Screenshot.png)

> _You can also embed a link to [draw.io](https://app.diagrams.net/) or your hosted diagram if preferred._

---

## 💻 Question 2: CRUD API with FastAPI

### 🎯 Objective

Build a simple RESTful API that connects to the MySQL database and implements full CRUD operations for managing student and teacher records.

---

### ⚙️ Technology Stack

- **Backend**: Python 3 + FastAPI
- **Database**: MySQL
- **ORM**: SQLAlchemy
- **Tools**: Uvicorn (for running server), MySQL-Connector

---

### 📁 Folder Structure

```
/api
  ├── main.py               # FastAPI application
  ├── models.py             # SQLAlchemy models
  ├── schemas.py            # Pydantic schemas
  ├── crud.py               # CRUD logic
  └── database.py           # DB connection
```

---

### 🚀 How to Run the API

```bash
# 1. Set up virtual environment
python -m venv venv
source venv/bin/activate  # or venv\Scripts\activate on Windows

# 2. Install dependencies
pip install -r requirements.txt

# 3. Run the server
uvicorn main:app --reload
```

> Make sure your MySQL server is running and the database is created using the `school_system.sql` file before starting the server.

---

### 📄 SQL Script

You’ll find the SQL script used to create the database inside:
```
/sql/school_system.sql
```

---

### ✅ Features

- Create, Read, Update, Delete Teachers
- Create, Read, Update, Delete Students
- Extendable to include Classrooms, Subjects, Marks

---

## 📌 Author

- **Sharlyne Nyaboke Kegode**
- Data Science Student, KCA University

---

## 📜 License

This project is for academic purposes and is freely available for learning and extension.
