#基础镜像
FROM python:3.7.4

ADD requirements.txt /

RUN pip install -r /requirements.txt -i https://pypi.douban.com/simple/ --trusted-host pypi.douban.com

ADD . /run
WORKDIR /run

#Flask程序运行的端口
EXPOSE 5000

#运行python程序
CMD ["python","/run/main.py"]
