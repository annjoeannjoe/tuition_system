# Generated by Django 4.2 on 2023-11-08 06:27

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0042_invoices_invoices_items'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='invoices_items',
            name='invoice',
        ),
        migrations.DeleteModel(
            name='Invoices',
        ),
    ]
