# Generated by Django 4.2 on 2023-11-10 07:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0047_invoices_invoices_items'),
    ]

    operations = [
        migrations.AlterField(
            model_name='announcement',
            name='announcement_posted_by',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='users.admin'),
        ),
    ]
