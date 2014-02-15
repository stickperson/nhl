from tastypie.resources import ModelResource, ALL
from django.db.models import Avg
from tastypie import fields
from app.models import Team, Player
from tastypie.bundle import Bundle


class PlayerSimpleResource(ModelResource):

    class Meta:
        queryset = Player.objects.all()
        resource_name = 'players'
        limit = 30

    def _serialize(self, request, obj, **extra):
        bundle = Bundle(obj, request=request)
        bundle.data.update(extra)
        return self.full_dehydrate(bundle)


class TeamSimpleResource(ModelResource):

    class Meta:
        queryset = Team.objects.all()
        resource_name = 'teams'
        fields = ['location', 'name', 'cap_total', 'center_cap', 'lw_cap', 'rw_cap', 'd_cap', 'g_cap']
        limit = 35

class DefenseSimpleResource(ModelResource):

    class Meta:
        queryset = Player.objects.all()
        resource_name = 'defense'

class TeamResource(ModelResource):

    class Meta:
        queryset = Team.objects.all()
        resource_name = 'ateam'
        limit = 1000
        filtering = {
            'name': ALL,
            'id': ALL
        }
        fields = ['center_cap', 'd_cap', 'full_name', 'g_cap', 'location', 'lw_cap', 'name', 'primary_color', 'rw_cap', 'secondary_color']
        max_limit = 1

    def dehydrate(self, bundle):
        bundle = super(TeamResource, self).dehydrate(bundle)
        defense = bundle.obj.players.filter(position='D')
        centers = bundle.obj.players.filter(position='C')
        lws = bundle.obj.players.filter(position='LW')
        rws = bundle.obj.players.filter(position='RW')
        goalies = bundle.obj.players.filter(position='G')
        pr = PlayerSimpleResource()
        bundle.data['defense'] = [pr._serialize(bundle.request, o) for o in defense]
        bundle.data['centers'] = [pr._serialize(bundle.request, o) for o in centers]
        bundle.data['lws'] = [pr._serialize(bundle.request, o) for o in lws]
        bundle.data['rws'] = [pr._serialize(bundle.request, o) for o in rws]
        bundle.data['goalies'] = [pr._serialize(bundle.request, o) for o in goalies]
        return bundle

class Stats(ModelResource):

    class Meta:
        queryset = Team.objects.all()
        resource_name = 'stats'
        limit = 1
        fields = ['id']

    def dehydrate(self, bundle):
        bundle = super(Stats, self).dehydrate(bundle)
        c = Team.objects.all().aggregate(Avg('center_cap'))
        c = round((c['center_cap__avg']/1000000), 3)
        bundle.data['c_avg'] = c
        lw = Team.objects.all().aggregate(Avg('lw_cap'))
        lw = round((lw['lw_cap__avg']/1000000), 3)
        bundle.data['lw_avg'] = lw
        rw = Team.objects.all().aggregate(Avg('rw_cap'))
        rw = round((rw['rw_cap__avg']/1000000), 3)
        bundle.data['rw_avg'] = rw
        g = Team.objects.all().aggregate(Avg('g_cap'))
        g = round((g['g_cap__avg']/1000000), 3)
        bundle.data['g_avg'] = g
        d = Team.objects.all().aggregate(Avg('d_cap'))
        d = round((d['d_cap__avg']/1000000), 3)
        bundle.data['d_avg'] = d
        return bundle
