FROM centos:centos8
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
# Tools
RUN echo "alias ll='ls -alF'" >> ~/.bashrc ; source ~/.bashrc
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo
RUN yum clean all; yum makecache; yum -y update
# Fontconfig
RUN yum -y install fontconfig git
# A compiler for C and C++: GCC or Clang
RUN yum -y install make gcc gcc-c++
# GNU Autotools: autoconf, automake, libtool
RUN yum -y install autoconf automake libtool libarchive zlib-devel
# pkg-config
RUN yum -y install pkgconfig
# libpng, libjpeg, libtiff
RUN yum -y install libpng libpng-devel libjpeg libjpeg-devel libtiff libtiff-devel
# if you plan to install the training tools, you also need the following libraries, Leptonica manual install
RUN yum -y install cairo cairo-devel
RUN yum -y install pango pango-devel
RUN yum -y install icu libicu-devel
RUN yum -y install asciidoc.noarch
# Language settings
RUN yum -y install langpacks-zh_CN.noarch
RUN echo "LANG='zh_CN.UTF-8'" > /etc/locale.conf
# settings timezone
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
CMD ["/usr/sbin/init"]
