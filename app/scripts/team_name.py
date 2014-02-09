from app.models import Team

def team_name():
    for team in Team.objects.all():

        if team.name == 'mapleleafs':
            team.full_name = 'Maple Leafs'
        elif team.name == 'redwings':
            team.full_name = 'Red Wings'
        elif team.name == 'bluejackets':
            team.full_name = 'Blue Jackets'
        else:
            team.full_name = team.name.title()
        team.save()

def newyork():
    for team in Team.objects.filter(location__startswith='N.Y'):
        team.location = 'New York'
        team.save()