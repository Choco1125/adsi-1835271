# Generated by Django 3.1 on 2020-10-07 19:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movie', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='movie',
            name='slug',
            field=models.SlugField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='movie',
            name='trailer',
            field=models.URLField(default=''),
        ),
        migrations.AlterField(
            model_name='movie',
            name='category',
            field=models.CharField(choices=[('A', 'Action'), ('F', 'Fiction'), ('R', 'Romance'), ('D', 'Drama'), ('C', 'Comedy')], max_length=1),
        ),
        migrations.AlterField(
            model_name='movie',
            name='language',
            field=models.CharField(choices=[('EN', 'English'), ('GR', 'German'), ('ES', 'Espanish')], max_length=2),
        ),
        migrations.AlterField(
            model_name='movie',
            name='status',
            field=models.CharField(choices=[('TR', 'Top Rated'), ('MW', 'Most Watched'), ('RA', 'Recently Added')], max_length=2),
        ),
    ]
