# Generated by Django 4.2 on 2023-08-23 06:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0029_alter_tuition_classes_weekly_day'),
    ]

    operations = [
        migrations.CreateModel(
            name='Enrolment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('request_status', models.CharField(max_length=50)),
                ('request_created_at', models.DateTimeField(auto_now_add=True)),
                ('request_responded_at', models.DateTimeField(blank=True, null=True)),
                ('enrolment_status', models.CharField(max_length=50)),
                ('enrol_at', models.DateTimeField(blank=True, null=True)),
                ('is_stop', models.BooleanField(default=False)),
                ('stop_at', models.DateTimeField(blank=True, null=True)),
                ('remark', models.TextField(blank=True)),
                ('accumulated_enrol_days', models.PositiveIntegerField(default=0)),
                ('student', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='users.student')),
                ('tuition_classes', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='users.tuition_classes')),
            ],
        ),
    ]
