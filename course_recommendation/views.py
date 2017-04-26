from django.shortcuts import render, get_object_or_404
from.models import jobs,courses
import re
import logging, logging.config
import sys

LOGGING = {
    'version': 1,
    'handlers': {
        'console': {
            'class': 'logging.StreamHandler',
            'stream': sys.stdout,
        }
    },
    'root': {
        'handlers': ['console'],
        'level': 'INFO'
    }
}

logging.config.dictConfig(LOGGING)


def index(request):
    # all_j=jobs.objects.all()
    # return render(request,'courses/jobs.html',{'all_jobs': all_j})
    return render(request, 'uni_friend-frontend/index.html')

def job(request):
    all_j = jobs.objects.all()
    return render(request, 'uni_friend-frontend/courserec.html',{'all_jobs': all_j})

def recommend(request,job_id):
    rec_courses = []
    recommend_courses=[]
    dict={}
    job = get_object_or_404(jobs,pk=job_id)
    job = job.description.lower()
    job_list = re.split(', | | ,|,|-|\\. |\\.|: |:|; |;', job)
    keywrods={'CMPE 226':['c', 'python'], 'CMPE 225':['java'], 'CMPE 207': ['tcp', 'ip', 'ssl']}
    a_list=keywrods.keys()
    for i in job_list:
        for course_num in a_list:
            if(i in keywrods.get(course_num)):
                rec_courses.append(course_num)
    fil_courses = set(rec_courses)
    for k in fil_courses:
        count = rec_courses.count(k)
        dict[k] = count

    for l in range(len(dict)):
        if (dict.values()[l]) >= 2:
            recommend_courses.append(courses.objects.filter(number=dict.keys()[l] ))

    return  render(request, 'uni_friend-frontend/courserec.html', {'filter_courses': recommend_courses})

