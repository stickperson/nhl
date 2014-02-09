from django.db import models

class Team(models.Model):
    location = models.CharField(max_length=30, null=False)
    name = models.CharField(max_length=30, null=False)
    full_name = models.CharField(max_length=30, null=False)
    cap_total = models.IntegerField(default=0)
    center_cap = models.IntegerField(default=0)
    lw_cap = models.IntegerField(default=0)
    rw_cap = models.IntegerField(default=0)
    d_cap = models.IntegerField(default=0)
    g_cap = models.IntegerField(default=0)
    primary_color = models.CharField(max_length=6, default='ffffff')
    secondary_color = models.CharField(max_length=6, default='ffffff')

    def __unicode__(self):
        return '<Team Class> %s' % self.name


class Player(models.Model):
    first_name = models.CharField(max_length=30, null=False)
    last_name = models.CharField(max_length=30, null=False)
    full_name = models.CharField(max_length=30, null=False)
    position = models.CharField(max_length=2, null=False)
    cap_hit = models.IntegerField(default=0)
    capgeek_id = models.CharField(max_length=5, null=False)
    team = models.ForeignKey(Team, related_name='players')

    def __unicode__(self):
        return '<Player Class> %s %s' % (self.first_name, self.last_name)
