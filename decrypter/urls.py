from django.conf.urls import patterns, url, include
from django.conf import settings
from django.views.generic.base import TemplateView
from django.views.generic import RedirectView
import views

urlpatterns = patterns(
    '',
    url(r'^static/(?P<path>.*)$',
        'django.views.static.serve',
        {'document_root': settings.STATIC_ROOT}),
    url(r'^$', views.decrypter),
    url(r'^robots\.txt$',
        TemplateView.as_view(template_name='robots.txt',
                             content_type='text/plain')),
    url(r'^favicon\.png$', RedirectView.as_view(url='/static/favicon.png')),
    url(r'^i18n/', include('django.conf.urls.i18n')),
)
