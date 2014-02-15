import re

from django.utils.text import compress_string
from django.utils.cache import patch_vary_headers

from django import http

ALLOWED_ORIGINS = 'http://127.0.0.1:9000'
ALLOW_CREDENTIALS = 'true'
ALLOWED_METHODS = 'POST, GET, OPTIONS, PUT, DELETE'
ALLOWED_HEADERS = 'Origin, X-Requested-With, Content-Type, Accept'

class CORSMiddleware(object):
    """
        This middleware allows cross-domain XHR using the html5 postMessage API.

        eg.         
        Access-Control-Allow-Origin: http://foo.example
    """
    def process_request(self, request):

        if 'HTTP_ACCESS_CONTROL_REQUEST_METHOD' in request.META:
            response = http.HttpResponse()
            response['Access-Control-Allow-Origin'] = ALLOWED_ORIGINS
            response['Access-Control-Allow-Credentials'] = ALLOW_CREDENTIALS
            response['Access-Control-Allow-Methods'] = ALLOWED_METHODS
            response['Access-Control-Allow-Headers'] = ALLOWED_HEADERS
            return response

        return None

    def process_response(self, request, response):
        # Avoid unnecessary work
        if response.has_header('Access-Control-Allow-Origin'):
            return response

        response['Access-Control-Allow-Origin'] = ALLOWED_ORIGINS
        response['Access-Control-Allow-Credentials'] = ALLOW_CREDENTIALS
        response['Access-Control-Allow-Methods'] = ALLOWED_METHODS
        response['Access-Control-Allow-Headers'] = ALLOWED_HEADERS
        return response