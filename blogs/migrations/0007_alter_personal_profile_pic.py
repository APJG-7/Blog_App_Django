# Generated by Django 4.2.2 on 2023-06-18 14:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("blogs", "0006_alter_personal_profile_pic"),
    ]

    operations = [
        migrations.AlterField(
            model_name="personal",
            name="profile_pic",
            field=models.ImageField(
                blank=True,
                null=True,
                upload_to="static",
                verbose_name="profile picture",
            ),
        ),
    ]