
---

# MCA Student Editor (JSP + JDBC)

This project is a simple **Student Management Web Application** built using **JSP** and **JDBC** 
It allows users to **search** and **update** students' address, mobile number, and email based on **Enrollment Number** or **Registered Mobile Number**.

---

## 🔗 Project GitHub Repository
[https://github.com/DEVnitishOfficial/MCAStudentEditorJava.git](https://github.com/DEVnitishOfficial/MCAStudentEditorJava.git)

---

## 📂 Project Structure
```
MCAStudentEditorJava/
│
├── WebContent/
│   ├── index.jsp         --> Search student
│   ├── edit.jsp          --> Edit student details
│   ├── update.jsp        --> Save updated details
│   └── style.css         --> (Optional) for styles
│
└── WEB-INF/
    └── web.xml           --> Basic servlet configuration
    ├── dbconnection.jsp  --> Database connection setup
```

---

## 📋 Requirements
- Java JDK (8 or above)
- Apache Tomcat Server (8.5/9/10/11)
- MySQL Server
- MySQL JDBC Connector JAR
- Any IDE (Eclipse / IntelliJ IDEA / VSCode) or simple text editor

---

## ⚙️ How to Run the Project

### 1. Clone the Repository
```bash
git clone https://github.com/DEVnitishOfficial/MCAStudentEditorJava.git
```

### 2. Set Up MySQL Database
- Open your MySQL client.
- Run the following commands to create the database and table:

```sql
CREATE DATABASE ignou_mca;

USE ignou_mca;

CREATE TABLE students (
    enrollment_no VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    mobile_no VARCHAR(15) UNIQUE,
    email VARCHAR(100)
);

-- Insert a sample record
INSERT INTO students VALUES 
('1234567890', 'Nitish Kumar', 'Noida', '9999988888', 'nitish.naroun123@gmail.com');
```

---

### 3. Configure Database Connection
In the `dbconnection.jsp` file, update these lines according to your MySQL credentials:

```jsp
String url = "jdbc:mysql://localhost:3306/ignou_mca";
String username = "root";  // Your MySQL username
String password = "";      // Your MySQL password
```

Make sure you have placed **MySQL JDBC Connector JAR** (`mysql-connector-java-x.x.xx.jar`) in your project's `lib` folder or linked it in your IDE.

---

### 4. Deploy Project to Tomcat Server
- Place the project folder inside `TOMCAT_HOME/webapps/docs`.
- Start your Tomcat server.

---

### 5. Access the Application
Open your browser and navigate to:

```
http://localhost:8080/docs/MCAStudentEditorJava/webContent/index.jsp
```

---

## ✨ Features
- Search students by Enrollment Number or Mobile Number.
- Edit Address, Mobile Number, and Email ID.
- Simple and beginner-friendly code.

---

## ⚠️ Assumptions
- Each student has a unique mobile number and enrollment number.
- No validation for input fields (to keep it simple for lab assignment).
- Project is developed for academic purpose.

---

---

## 🧑‍💻 Author
- **Nitish** | [GitHub - DEVnitishOfficial](https://github.com/DEVnitishOfficial)





```
PERSONAL USES
start project
``
http://localhost:8080/docs/webContent/index.jsp

http://localhost:8080/docs/MCAStudentEditorJava/webContent/edit.jsp


``` 
what is JSP
```
JSP (JavaServer Pages) is a server-side technology for building dynamic web pages by embedding Java code in HTML.

JSPs allow you to mix HTML and Java code, enabling dynamic content generation on the server. They are essentially HTML pages with embedded Java code, which is executed on the server when a user requests the page


``` 
what is JDBC
```

JDBC (Java Database Connectivity) is an API for connecting Java applications to databases.

JDBC uses database-specific drivers to translate Java API calls into the appropriate SQL commands for the target database system

```
what is servlet
```
Servlet is a Java class that handles HTTP requests and responses on the server, often used to process logic before passing data to a JSP for presentation.

Servlets are Java classes designed to handle HTTP requests and responses on a web server or application server. They are typically used to process user requests, interact with databases or other services, and then pass the results to a JSP for presentation.

```
FILES DESCRIPTION
```
Folder/File | Meaning
WebContent/ | Public files (browser can access)
WEB-INF/web.xml | Project rules and startup settings
WEB-INF/lib/ | Any external .jar libraries you add
WEB-INF/classes/ | (if using Java Servlets) compiled classes