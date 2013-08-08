from django.conf.urls import patterns, url
from app.views import SplitDocsView


urlpatterns = patterns(
    "",
    url(r"^$", SplitDocsView.as_view(), name="coffee_script")
    )
