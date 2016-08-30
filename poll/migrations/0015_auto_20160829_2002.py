# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-08-29 20:02
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('poll', '0014_auto_20160806_1602'),
    ]

    operations = [
        migrations.CreateModel(
            name='PollCompare',
            fields=[
                ('id', models.BigIntegerField(primary_key=True, serialize=False)),
                ('rank', models.IntegerField()),
                ('points', models.IntegerField()),
                ('ppv', models.FloatField()),
                ('rank_diff', models.IntegerField(blank=True, null=True)),
                ('ppv_diff', models.FloatField(blank=True, null=True)),
            ],
            options={
                'db_table': 'poll_pollcompare',
                'managed': False,
            },
        ),
        migrations.AlterModelOptions(
            name='user',
            options={'ordering': ('username',)},
        ),
        migrations.AddField(
            model_name='team',
            name='short_name',
            field=models.CharField(default='', max_length=60),
            preserve_default=False,
        ),
    ]
