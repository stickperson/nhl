# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Team'
        db.create_table(u'app_team', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('location', self.gf('django.db.models.fields.CharField')(max_length=300)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=300)),
            ('cap_total', self.gf('django.db.models.fields.IntegerField')()),
            ('center_cap', self.gf('django.db.models.fields.IntegerField')()),
            ('lw_cap', self.gf('django.db.models.fields.IntegerField')()),
            ('rw_cap', self.gf('django.db.models.fields.IntegerField')()),
            ('d_cap', self.gf('django.db.models.fields.IntegerField')()),
            ('g_cap', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal(u'app', ['Team'])

        # Adding model 'Player'
        db.create_table(u'app_player', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('first_name', self.gf('django.db.models.fields.CharField')(max_length=300)),
            ('last_name', self.gf('django.db.models.fields.CharField')(max_length=300)),
            ('position', self.gf('django.db.models.fields.CharField')(max_length=2)),
            ('cap_hit', self.gf('django.db.models.fields.IntegerField')()),
            ('capgeek_id', self.gf('django.db.models.fields.CharField')(max_length=5)),
            ('team', self.gf('django.db.models.fields.related.ForeignKey')(related_name='players', to=orm['app.Team'])),
        ))
        db.send_create_signal(u'app', ['Player'])


    def backwards(self, orm):
        # Deleting model 'Team'
        db.delete_table(u'app_team')

        # Deleting model 'Player'
        db.delete_table(u'app_player')


    models = {
        u'app.player': {
            'Meta': {'object_name': 'Player'},
            'cap_hit': ('django.db.models.fields.IntegerField', [], {}),
            'capgeek_id': ('django.db.models.fields.CharField', [], {'max_length': '5'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'position': ('django.db.models.fields.CharField', [], {'max_length': '2'}),
            'team': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'players'", 'to': u"orm['app.Team']"})
        },
        u'app.team': {
            'Meta': {'object_name': 'Team'},
            'cap_total': ('django.db.models.fields.IntegerField', [], {}),
            'center_cap': ('django.db.models.fields.IntegerField', [], {}),
            'd_cap': ('django.db.models.fields.IntegerField', [], {}),
            'g_cap': ('django.db.models.fields.IntegerField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'location': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'lw_cap': ('django.db.models.fields.IntegerField', [], {}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'rw_cap': ('django.db.models.fields.IntegerField', [], {})
        }
    }

    complete_apps = ['app']