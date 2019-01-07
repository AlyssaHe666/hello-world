FROM python:3.6-alpine
MAINTAINER He Lingxia

apk add git wget unzip
RUN mkdir obs_sdk/ && cd obs_sdk && wget http://static.huaweicloud.com/upload/files/sdk/python.zip && unzip python.zip && \
unzip eSDK_Storage_OBS_V3.0.4_Python.zip && \
cd src/ && python3 setup.py install

RUN git clone gitee.com/zhuying/NextApp.git && cd NextApp/ && python3 setup.py install
