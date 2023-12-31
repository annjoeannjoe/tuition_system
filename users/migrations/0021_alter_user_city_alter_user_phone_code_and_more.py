# Generated by Django 4.2 on 2023-08-21 10:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0020_student_terms_and_conditions_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='city',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='user',
            name='phone_code',
            field=models.CharField(max_length=5),
        ),
        migrations.AlterField(
            model_name='user',
            name='phone_no',
            field=models.CharField(max_length=20),
        ),
        migrations.AlterField(
            model_name='user',
            name='postalcode',
            field=models.CharField(max_length=5),
        ),
        migrations.AlterField(
            model_name='user',
            name='state',
            field=models.CharField(max_length=20),
        ),
        migrations.AlterField(
            model_name='user',
            name='street1',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='user',
            name='street2',
            field=models.CharField(max_length=50),
        ),
    ]
