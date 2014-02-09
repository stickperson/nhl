# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Player.full_name'
        db.add_column(u'app_player', 'full_name',
                      self.gf('django.db.models.fields.CharField')(default=datetime.datetime(2014, 2, 5, 0, 0), max_length=30),
                      keep_default=False)


        # Changing field 'Player.first_name'
        db.alter_column(u'app_player', 'first_name', self.gf('django.db.models.fields.CharField')(max_length=30))

        # Changing field 'Player.last_name'
        db.alter_column(u'app_player', 'last_name', self.gf('django.db.models.fields.CharField')(max_length=30))

    def backwards(self, orm):
        # Deleting field 'Player.full_name'
        db.delete_column(u'app_player', 'full_name')


        # Changing field 'Player.first_name'
        db.alter_column(u'app_player', 'first_name', self.gf('django.db.models.fields.CharField')(max_length=300))

        # Changing field 'Player.last_name'
        db.alter_column(u'app_player', 'last_name', self.gf('django.db.models.fields.CharField')(max_length=300))

    models = {
        u'app.player': {
            'Meta': {'object_name': 'Player'},
            'cap_hit': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'capgeek_id': ('django.db.models.fields.CharField', [], {'max_length': '5'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'full_name': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'position': ('django.db.models.fields.CharField', [], {'max_length': '2'}),
            'team': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'players'", 'to': u"orm['app.Team']"})
        },
        u'app.team': {
            'Meta': {'object_name': 'Team'},
            'cap_total': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'center_cap': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'd_cap': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'g_cap': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'location': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'lw_cap': ('django.db.models.fields.IntegerField', [], {'default': '0'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'rw_cap': ('django.db.models.fields.IntegerField', [], {'default': '0'})
        }
    }

    complete_apps = ['app']