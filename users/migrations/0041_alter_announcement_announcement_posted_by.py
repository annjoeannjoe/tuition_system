# Generated by Django 4.2 on 2023-10-29 13:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0040_alter_announcement_announcement_posted_by'),
    ]

    operations = [
        migrations.AlterField(
            model_name='announcement',
            name='announcement_posted_by',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='users.admin'),
        ),
    ]
