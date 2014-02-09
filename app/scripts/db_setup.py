from models import Team
from models import Player
import requests
import re
from bs4 import BeautifulSoup

def get_teams():
    r = requests.get('http://capgeek.com/payrolls/?charts_year=2013')
    t = r.text
    soup = BeautifulSoup(t)
    team_links = soup.find('table', {'id': 'teamlist'}).find('tbody').findAll('tr')
    for team in team_links:
        a = team.find('td', {'class': 'team'}).find('a')
        location = re.search(r'[a-zA-Z\s\.]+', a.text).group().strip()
        name = a['href'].split("/")[1]
        team, created = Team.objects.get_or_create(location=location, name=name)
        print team.name

def get_players():
    print '****'
    for team in Team.objects.all():
        link = 'http://capgeek.com/%s/tracker' % (team.name)
        t = requests.get(link).text
        soup = BeautifulSoup(t)
        row = soup.find('table', {'id': 'playerlist'})
        rows = soup.find('table', {'id': 'playerlist'}).find('tbody').findAll('tr')[1:]
        for row in rows:
            player = row.find('td', {'class': 'player'})
            if player:
                a = player.find('a')
                id_string = a['href']
                capgeek_id = re.search(r'[0-9]+', id_string).group()
                full_name = re.search(r'[a-zA-Z\s\'\,\.\-]+', a.text.strip()).group().strip()
                raw_cap = row.find('td', {'align': 'right'}).text.strip()
                cap_hit = int("".join(re.findall(r'[0-9]+', raw_cap)))
                first_name = full_name.split(",")[1]
                last_name = full_name.split(",")[0]
                pl, c = Player.objects.get_or_create(first_name=first_name, 
                            last_name=last_name, 
                            cap_hit=cap_hit, 
                            team_id=team.id, 
                            capgeek_id=capgeek_id)
                print '%s: %s %s' % (team.name, pl.first_name, pl.last_name)
            else:
                break

def get_position():
    for player in Player.objects.all():
        link = 'http://capgeek.com/player/%s' % (player.capgeek_id)
        r = requests.get(link).text
        soup = BeautifulSoup(r)
        position = soup.find('h2', {'class': 'page-title'}).find('strong').text
        team = player.team.name
        player.position = position
        player.save()
        print '%s: %s. %s %s' % (team, position, player.first_name, player.last_name)

def get_total_cap():
    for player in Player.objects.all():
        team = player.team
        cap_hit = player.cap_hit
        team.cap_total += cap_hit
        if player.position == 'C':
            team.center_cap += cap_hit
        elif player.position == 'LW':
            team.lw_cap += cap_hit
        elif player.position == 'RW':
            team.rw_cap += cap_hit
        elif player.position == 'D':
            team.d_cap += cap_hit
        elif player.position == 'G':
            team.g_cap += cap_hit
        else:
            print '%s %s %s' % (team.name, player.last_name, player.position)
        team.save()


if __name__=='__main__':
    get_teams()
    get_players()
    get_total_cap()