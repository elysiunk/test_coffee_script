from django.views.generic import TemplateView

class SplitDocsView(TemplateView):
    """
    View for split docs
    """
    template_name = "coffee_script/index.html"
