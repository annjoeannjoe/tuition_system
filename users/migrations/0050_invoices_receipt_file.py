# Generated by Django 4.2 on 2023-11-15 13:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0049_alter_invoices_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='invoices',
            name='receipt_file',
            field=models.FileField(null=True, upload_to='receipt_file/'),
        ),
    ]