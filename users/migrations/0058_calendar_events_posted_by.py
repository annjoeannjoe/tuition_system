# Generated by Django 4.2 on 2023-12-26 02:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0057_remove_invoices_items_remark'),
    ]

    operations = [
        migrations.AddField(
            model_name='calendar_events',
            name='posted_by',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.admin'),
        ),
    ]
