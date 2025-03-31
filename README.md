# 🏢 Henna Solutions - Client Meeting Management System

This is a modern web-based application developed using **Angular**, **Node.js (Express)**, and **MySQL** for an architecture firm called Henna Solutions. It enables clients to register, log in, manage meeting schedules, and subscribe for updates. Admins can view and manage client bookings from the backend.



---
## 🔧 Tech Stack

- Frontend: Angular 17 (with Bootstrap, Tailwind styling)

- Backend: Node.js with Express.js (RESTful API)

- Database: MySQL

- Testing: Cucumber (BDD), Gherkin, JUnit

- Deployment: ng serve for frontend, node server.js for backend

---

## 🎯 Features

### 👥 User:
- Register and login

- Book meetings with full details (title, time, duration, people, description)

- Edit or delete booked meetings

- Subscribe to receive updates via email

- See all booked meetings in a table format

### 🛠️ Admin:

- View all clients

- View all booked meetings

- Access email subscribers

---

## 🚀 Setup & Run Instructions

1. **Clone the repository**:

```bash
   git clone https://github.com/manuelbecker123/henna-solutions-meetings.git
   ```

2. **Set up backend**

```sql
CREATE DATABASE IF NOT EXISTS booking_system;
USE booking_system;

-- ========================
-- Users Table
-- ========================
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255) UNIQUE,
  password VARCHAR(255),
  phone_number VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  role VARCHAR(20) DEFAULT 'client'
);

-- ========================
-- Meetings Table
-- ========================
CREATE TABLE meetings (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  title VARCHAR(255),
  description TEXT,
  date_time DATETIME,
  duration VARCHAR(50),
  num_people INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- ========================
-- Subscribers Table
-- ========================
CREATE TABLE subscribers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

3. **Run backend server**
   ```bash
   node server.js

   ```


5. **Run Frontend server**
```bash
   ng serve -o
   ```

---
## 🏃 How to Run the BDD Tests
 **Once localhost3000 and localhost4200 are active you can simply create a new maven project with archetype quickstart and make sure the src folder looks like this:**
```bash
 src
└── test
    └── java
        └── SelWebsite
            ├── StepDefinitions.java
            ├── Runner.java
            └── features
                └── client-meeting.feature
```
**Select Run As > JUnit Test:**






