FROM jamesanglin/numpy-scipy-cython

RUN pip install uwsgi
RUN useradd uwsgi -s /bin/false
RUN mkdir /var/log/uwsgi
RUN touch /var/log/uwsgi.log
RUN chown -R uwsgi:uwsgi /var/log/uwsgi
