import os


SECRET_KEY = '7^ev%f25xevpx^n6@w$&f&cdsnrgl-3n*ot$s&9_kf3cb@-%$h'

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': os.environ['RDS_DB_NAME'],
        'USER': os.environ['RDS_USERNAME'],
        'PASSWORD': os.environ['RDS_PASSWORD'],
        'HOST': os.environ['RDS_HOSTNAME'],
        'PORT': os.environ['RDS_PORT'],
    }
}

DEBUG = False

ALLOWED_HOSTS = ["nhl2-env-barqsbdmir.elasticbeanstalk.com", ".caphits.com", ".caphits.com."]

