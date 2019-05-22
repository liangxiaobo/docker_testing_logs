#FROM centos
FROM frolvlad/alpine-python3

MAINTAINER liangxiaobo@aliyun.com

ADD log.py /opt/log.py

# 如果使用 FROM centos
# RUN yum install -y epel-release
# RUN yum install -y python36
# RUN cd /opt
# RUN curl -O https://bootstrap.pypa.io/get-pip.py
# RUN python3 get-pip.py

RUN pip install --upgrade pip
RUN pip3 install Faker

# 中文编码 如果使用 FROM centos
# RUN locale
# RUN localedef -i zh_CN -c -f UTF-8 zh_CN.UTF-8
# RUN echo "export LC_ALL=zh_CN.UTF-8" >> /etc/profile && source /etc/profile
# ENV LANG zh_CN.UTF-8
# ENV LC_CTYPE zh_CN.UTF-8

#RUN python3 log.py
ENTRYPOINT ["python3", "/opt/log.py"]