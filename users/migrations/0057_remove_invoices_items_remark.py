# Generated by Django 4.2 on 2023-12-15 11:37

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0056_alter_invoices_items_remark'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='invoices_items',
            name='remark',
        ),
    ]
