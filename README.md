<h1 align="center"> CSE311 (DATABASE SYSTEMS): Project </h1>
<h2 align="center"> Library Management System
<p align="center">
 <img alt="Languages" src="https://img.shields.io/github/languages/count/haiderCho/CSE311-Project-LMS">
 <img alt="Repository size" src="https://img.shields.io/github/repo-size/haiderCho/CSE311-Project-LMS">
 <img alt="Contributors" src="https://img.shields.io/github/contributors/haiderCho/CSE311-Project-LMS">
 <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/haiderCho/CSE311-Project-LMS">
</p>
</h2>

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)


## 📚 Features

- SignIn/SignUp
- Librarian: Add Book, Edit Book info, Send Message
- Faculty Member/Staff: Borrow Book, Return Book, Recommend Book
- Student: Borrow Book, Return Book


## 🌲 Project tree
```bash
.
├── Database
│   ├── Control Flow.pdf
│   ├── ERD.pdf
│   ├── LMS.sql
│   └── Relational Table.pdf
├── LibraryManagementSystem
│   ├── admin
│   │   ├── bootstrap
│   │   │   ├── css
│   │   │   ├── img
│   │   │   └── js
│   │   ├── css
│   │   │   └── theme.css
│   │   ├── images
│   │   │   ├── icons
│   │   │   ├── jquery-ui
│   │   │   ├── profile2.png
│   │   │   └── user.png
│   │   ├── scripts
│   │   │   ├── datatables
│   │   │   ├── flot
│   │   │   ├── common.js
│   │   │   ├── jquery-1.9.1.min.js
│   │   │   └── jquery-ui-1.10.1.custom.min.js
│   │   ├── accept.php 
│   │   ├── acceptrenewal.php 
│   │   ├── acceptreturn.php 
│   │   ├── addbook.php 
│   │   ├── book.php 
│   │   ├── bookdetails.php 
│   │   ├── current.php 
│   │   ├── db_stats.php 
│   │   ├── dbconn.php 
│   │   ├── edit_admin_details.php 
│   │   ├── edit_book_details.php 
│   │   ├── findbook.php 
│   │   ├── findbookissue.php 
│   │   ├── finduser.php 
│   │   ├── index.php 
│   │   ├── issue_requests.php 
│   │   ├── logout.php 
│   │   ├── message.php 
│   │   ├── profile.php 
│   │   ├── recommendations.php 
│   │   ├── reject.php 
│   │   ├── rejectrenewal.php 
│   │   ├── remove_user.php 
│   │   ├── renew_requests.php 
│   │   ├── requests.php 
│   │   ├── return_requests.php 
│   │   ├── userdetails.php 
│   │   └── users.php 
│   ├── staff
│   │   ├── bootstrap
│   │   │   ├── css
│   │   │   ├── img
│   │   │   ├── js
│   │   ├── css
│   │   │   └── theme.css
│   │   ├── images
│   │   │   ├── icons
│   │   │   ├── jquery-ui
│   │   │   ├── profile2.png
│   │   │   └──  user.png
│   │   ├── scripts
│   │   │   ├── datatables
│   │   │   ├── flot
│   │   │   ├── common.js
│   │   │   ├── jquery-1.9.1.min.js
│   │   │   └── jquery-ui-1.10.1.custom.min.js
│   │   ├── book.php
│   │   ├── bookdetails.php
│   │   ├── current.php
│   │   ├── dbconn.php
│   │   ├── edit_student_details.php
│   │   ├── findbook.php
│   │   ├── history.php
│   │   ├── index.php
│   │   ├── issue_request.php
│   │   ├── logout.php
│   │   ├── message.php
│   │   ├── profile.php
│   │   ├── renew_request.php
│   │   └── return_request.php
│   ├── student
│   │   ├── bootstrap
│   │   │   ├── css
│   │   │   ├── img
│   │   │   └──  js
│   │   ├── css
│   │   │   └──  theme.css
│   │   ├── images
│   │   │   ├── icons
│   │   │   ├── jquery-ui
│   │   │   ├── profile2.png
│   │   │   └──  user.png
│   │   ├── scripts
│   │   │   ├── datatables
│   │   │   ├── flot
│   │   │   ├── common.js
│   │   │   ├── jquery-1.9.1.min.js
│   │   │   └──  jquery-ui-1.10.1.custom.min.js
│   │   ├── book.php
│   │   ├── bookdetails.php
│   │   ├── current.php
│   │   ├── dbconn.php
│   │   ├── edit_student_details.php
│   │   ├── findbook.php
│   │   ├── history.php
│   │   ├── index.php
│   │   ├── issue_request.php
│   │   ├── logout.php
│   │   ├── message.php
│   │   ├── profile.php
│   │   ├── renew_request.php
│   │   └── return_request.php
│   ├── about.html
│   ├── dbconn.php
│   ├── index.php
│   └──style.css
├── Project Proposal
│   └── Project Proposal & Requirment Analysis.pdf
├── Project Report
│   ├── Project Report.pdf
│   └── User Manual (SnapShots).pdf
├── Screenshots
│   ├── 0. Front (SignIn-SignUp) Page.png
│   └──
├── LICENSE
└── README.md

```


## ⚡ Run Locally

✂️ Clone the project
```bash
  git clone https://github.com/haiderCho/CSE311-Project-LMS
```

⚙️ Install dependencies
```bash
  install xampp
```

📁 Set the project directory
```bash
  ..\xampp\htdocs\LibraryManagementSystem
```

🖧 Set the Databse
```bash
  xampp > import > LMS.SQL 
```


## 📸 Screenshots

![App Screenshot](https://github.com/haiderCho/CSE311-Project-LMS/blob/main/Screenshots/0.%20Front%20(SignIn-SignUp)%20Page.png?raw=true)


## 👨‍💻 Used Languages & Frameworks
<b> PHP, HTML, SQL, CSS, Bootstrap, JQuery </b>
