FROM nvidia/cuda:8.0-devel-centos7

MAINTAINER Carl Negro

RUN yum install -y libtiff && yum clean all &&  rm -rf /var/cache/yum

ADD MotionCor2_1.1.0-Cuda80 /root/MotionCor2_1.1.0-Cuda80

RUN chmod u+x /root/MotionCor2_1.1.0-Cuda80

ENTRYPOINT ["./root/MotionCor2_1.1.0-Cuda80"]
CMD []
