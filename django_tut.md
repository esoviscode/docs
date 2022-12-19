# Python django tutorial
Basic operations and examples of how to serve databases with 
python django.


# Concept
Django follows the MVT design pattern (Model View Template).

## Model
Provides data from the database. In Django, the data is 
delivered as an Object Relational Mapping (ORM), which is a 
technique designed to make it easier to work with databases.
The models are usually located in a file called **models.
py**.

## View
A view is a function or method that takes http requests as 
arguments, imports the relevant model(s), and finds out what 
data to send to the template, and returns the final result
The views are usually located in a file called **views.py**.

## Template
A template is a file where you describe how the result 
should be represented. Templates are often .html files, with 
HTML code describing the layout of a web page, but it can 
also be in other file formats to present other results, but 
we will concentrate on .html files. The templates of an 
application is located in a folder named **templates**. 
<u>We will rarely use them.</u>

## URLs
Django also provides a way to navigate around the different 
pages in a website. When a user requests a URL, Django 
decides which view it will send it to. This is done in a 
file called urls.py.


# Creating application
Django provides us a function which creates a project 
template:
```
$ django-admin startproject <project_name>
```
It creates main project file called **manage.py**. We 
can run created project by command:
```
$ py manage.py runserver
```
From now we can create applications in our project.
```
$ py manage.py startapp <app_name>
```
The file tree will look something like this:
```
myproject/
    manage.py
    myproject
    myappp/
        migrations/
            __init__.py
        __init__.py
        admin.py
        apps.py
        models.py
        tests.py
        views.py
```


# Connecting to database
Create file **settings.py** in myproject/myproject. Add:
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'your_db_name', 
        'USER': 'your_db_user',
        'PASSWORD': 'your_db_password',
        'HOST': '127.0.0.1',  # or localhost
        'PORT': 'port'
    }
}
```
It is dangerous to keep sensitive data in the setting file, 
instead, use the environment variable AKA .env file.
Install `django-environ` with `pip` and create .env with:
```
SECRET_KEY=your_key  # some string
DB_NAME=your_db_name
DB_USER=your_db_user
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=port
```
Finally, import django environ in your settings file.
```
import environ
env = environ.Env()
environ.Env.read_env()

...

# Your secret key
SECRET_KEY = env("SECRET_KEY")

...

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'your_db_name', 
        'USER': 'your_db_user',
        'PASSWORD': 'your_db_password',
        'HOST': '127.0.0.1',  # or localhost
        'PORT': 'port'
    }
}
```

# Creating ORM Models
For tables in database we create python classes with fields 
representing attributes in file **models.py**, i.e.
```
from django.db import models

class Band(models.Model):
    """A model of a rock band."""
    name = models.CharField(max_length=200, primary_key=True)
    can_rock = models.BooleanField(default=True)
```
For more info about creating fields visit [page](https://docs.djangoproject.com/en/4.1/ref/models/fields/).
It is helpful to create also \_\_str__(self) method to 
display class object as string (it is equivalent of 
ToString() in Java).

## Adding record
```
band1 = Band(name='Essa', can_rock=False)
band1.save()
```
## Accessing record
```
band1 = Band.objects.get(name='Essa')
```
## Updating record
```
band1.can_rock = True
band1.save()
```
## Deleting record
```
band1.delete()
```
## PostgreSQL
For executing specific queries check informations on [page](https://docs.djangoproject.com/en/4.1/ref/contrib/postgres/).

# Additional information
## Making Views
Import appropriate packages in *myapp/views.py*
```
from django.shortcuts import render
from django.http import HttpResponse
```
View is a python function for specific web page, receiving 
http request and returning **HttpResponse** 
object, for example:
```
def index(request):
    return HttpResponse("Hello world!")
```
Create file named **urls.py** in the same folder. It provide 
page routing in your application.

*urls.py*
```
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index')
]
```
Open file **myproject/urls.py** and type this to for project 
routing:
```
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('myapp/', include('myapp.urls')),
    path('admin/', admin.site.urls),
]
```

## Making templates
For inforamtions about creating templates visit [page](https://docs.djangoproject.com/en/4.1/topics/templates/).