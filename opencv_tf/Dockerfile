FROM spmallick/opencv-docker:opencv

RUN apt-get update -y --fix-missing
RUN apt-get install -y ffmpeg
RUN apt-get install -y build-essential cmake pkg-config nano \
	libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev \
	libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
	libxvidcore-dev libx264-dev \
	libgtk-3-dev \
	libatlas-base-dev gfortran \
	libboost-all-dev \
	python3 python3-dev python3-numpy

RUN apt-get install -y wget vim python3-tk python3-pip

RUN apt update
RUN pip3 install --upgrade pip setuptools virtualenv
RUN pip3 install --user --upgrade opencv-python tensorflow tensorflow-hub

ADD $PWD/requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

COPY $PWD/retrain.py /root/common/retrain.py
COPY $PWD/label_image.py /root/common/label_image.py

COPY $PWD/python_scripts /root/common/python_scripts
COPY $PWD/shell_scripts /root/common/shell_scripts
COPY $PWD/data /root/common/data

# RUN cd /root/common/dlib \
#	&& python3 setup.py install

CMD ["/bin/bash"]
