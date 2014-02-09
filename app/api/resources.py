from tastypie.resources import ModelResource, ALL
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
        fields = ['location', 'name']
        limit = 35

class DefenseSimpleResource(ModelResource):

    class Meta:
        queryset = Player.objects.all()
        resource_name = 'defense'

class TeamResource(ModelResource):
    players = fields.ToManyField(PlayerSimpleResource, 'players', full=True)
    # defense = fields.ToManyField(DefenseSimpleResource, 'defense')

    class Meta:
        queryset = Team.objects.all()
        resource_name = 'ateam'
        limit = 1000
        filtering = {
            'name': ALL
        }
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

    # def get_object_list(self, request):
    #     self.fields['defense'].attribute = lambda bundle: Player.objects.filter(position='D', team=bundle.obj.id)
    #     team = super(TeamResource, self).get_object_list(request).filter(players__team__name='flyers')
    #     print self.id
    #     print type(self.id)
    #     return team

    # def dehydrate(self, bundle):
    #     team = bundle.data['id']
    #     bundle.data['centers'] = Player.objects.filter(team=team).filter(position='C')
    #     bundle.data['goalies'] = Player.objects.filter(team=team).filter(position='G')
    #     bundle.data['lws'] = Player.objects.filter(team=team).filter(position='LW')
    #     bundle.data['rws'] = Player.objects.filter(team=team).filter(position='RW')
    #     bundle.data['d'] = Player.objects.filter(team=team).filter(position='D')
    #     return bundle

