from django.conf.urls import *
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings
from . import views

admin.autodiscover()

app_name='course_recommendation'

urlpatterns= [
    url(r'^$', views.index, name='index'),
    url(r'^job/$', views.job, name='job'),
    # url(r'^job/(?P<job_id>[0-9]+)/$', views.recommend, name='recommend'),
    # url(r'^job/ajax/getData/(?P<job_id>[0-9]+)/$',views.recommend,name='recommend'),
    url(r'^job/pop/(?P<job_id>[0-9]+)$', views.recommend, name='recommend')
]


# if settings.DEBUG:
#     urlpatterns+= static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)


