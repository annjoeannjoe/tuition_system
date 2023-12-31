# Generated by Django 4.2 on 2023-08-22 02:29

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0021_alter_user_city_alter_user_phone_code_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='announcement',
            name='admin',
        ),
        migrations.RemoveField(
            model_name='announcement',
            name='student',
        ),
        migrations.AlterField(
            model_name='announcement',
            name='announcement_posted_by',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='users.admin'),
        ),
        migrations.AlterField(
            model_name='user',
            name='city',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='phone_code',
            field=models.CharField(max_length=5, null=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='phone_no',
            field=models.CharField(max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='postalcode',
            field=models.CharField(max_length=5, null=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='state',
            field=models.CharField(max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='street1',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='street2',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.CreateModel(
            name='Tuition_Classes',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tuition_class_name', models.CharField(max_length=100)),
                ('subject', models.CharField(max_length=100)),
                ('tuition_class_study_level', models.CharField(max_length=50)),
                ('general_start_time', models.TimeField()),
                ('general_end_time', models.TimeField()),
                ('weekly_day', models.CharField(choices=[('monday', 'Monday'), ('tuesday', 'Tuesday'), ('wednesday', 'Wednesday'), ('thursday', 'Thursday'), ('friday', 'Friday'), ('saturday', 'Saturday'), ('sunday', 'Sunday')], max_length=10)),
                ('monthly_fee', models.DecimalField(decimal_places=2, max_digits=8)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('last_updated_at', models.DateTimeField(auto_now=True)),
                ('admin', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='users.admin')),
            ],
        ),
    ]
