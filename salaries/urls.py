from django.conf.urls import patterns, include, url
from tastypie.api import Api
from app.api.resources import PlayerSimpleResource, TeamSimpleResource, TeamResource, DefenseSimpleResource

v1_api = Api(api_name='v1')
v1_api.register(TeamSimpleResource())
v1_api.register(PlayerSimpleResource())
v1_api.register(TeamResource())
v1_api.register(DefenseSimpleResource())

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'salaries.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', 'app.views.home'),
    url(r'^api/', include(v1_api.urls))
)
