from ..models import Player

def full_name():
    for player in Player.objects.all():
        first = player.first_name
        last = player.last_name
        full = ' '.join([first, last])
        player.full_name = full
        player.save()

if __name__ == '__main__':
    full_name()
