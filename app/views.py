from django.shortcuts import render
from django.http import HttpResponse
from django.utils import simplejson
from models import Team

# Create your views here.

def home(request):
    print 'dfadsfafddsa'
    return render(request, 'index.html')

def get_info(request):
    print '*******'
    data = {}
    team = Team.objects.get(name='flyers')
    gs = team.players.filter(position='G')
    data['team'] = team.location
    data['cap'] = team.cap_total
    data['goalies'] = gs
    print data
    return HttpResponse(simplejson.dumps(data))