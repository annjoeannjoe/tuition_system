# Generated by Django 4.2 on 2024-01-08 13:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0058_calendar_events_posted_by'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='deleted',
            field=models.BooleanField(default=False),
        ),
    ]
