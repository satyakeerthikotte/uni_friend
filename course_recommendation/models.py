from django.db import models

class jobs(models.Model):
    Jobtitle = models.CharField(max_length=50)
    company=models.CharField(max_length=50)
    description=models.CharField(max_length=150)
    latitude = models.FloatField(max_length=150,null=True)
    longitude = models.FloatField(max_length=150,null=True)
    def __str__(self):
        return self.Jobtitle+'-' +self.company+'-'+self.description+''

class courses(models.Model):
    number=models.CharField(max_length=11)
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=400)
    department = models.CharField(max_length=45)
    program = models.CharField(max_length=45)
    url = models.URLField(max_length=100,null=True)


    def __str__(self):
        return self.number+'-' +self.name+'-'+self.description+'-'+self.program+'-'+self.url



