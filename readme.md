# Professional Blogging System

**Welcome!**  
This repository contains a real-world, feature-rich blogging system built with Django. It demonstrates practical Django development — from models, templates and forms to permissions, dashboards and deployment.

**Developer:** Tarak

---

## Features Overview
- Project structure & real-world folder layout  
- Models: Blog, Category, Comment, User relations, slugs, media handling  
- Forms: Create/Edit posts, user registration, comments  
- Authentication & Authorization: Login, logout, Groups, Permissions, decorators  
- Admin customizations & listings  
- Dashboards for Editors / Managers with role checks  
- Search, pagination, featured & recent posts  
- File uploads (media), static files, and templates  
- Production-ready deployment structure

This project focuses on **practical features** used in production blogging systems and emphasizes code clarity and maintainability.

---

## Features implemented
- Multi-role system (Admin / Manager / Editor / Author)  
- Create / Read / Update / Delete (CRUD) for posts & categories  
- Unique slug generation & prepopulation  
- Media (image) upload & configuration  
- Comment system (only authenticated users can comment)  
- Manager & Editor dashboards with counts and tables  
- Granular permission checks (using Django Groups & Permissions + custom checks)  
- Search feature with retained search term in textbox  
- Deployment on PythonAnywhere

---

## Requirements
- Python 3.10+ (recommended)  
- Django 4.x (see `requirements.txt`)
- A virtual environment tool (`venv` / `virtualenv`)  
- PostgreSQL / MySQL or SQLite for development
- (Optional) nginx / gunicorn for production deployment

## Installation

1. Clone the repository:
```bash
git clone https://github.com/tarak6984/Blogging-System.git
cd Blogging-System
```

2. Create and activate a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Run migrations:
```bash
python manage.py migrate
```

5. Create a superuser:
```bash
python manage.py createsuperuser
```

6. Run the development server:
```bash
python manage.py runserver
```

Visit `http://127.0.0.1:8000` to see the application.

---

## License
This project is open source and available for educational and commercial use.

**Developed by Tarak**