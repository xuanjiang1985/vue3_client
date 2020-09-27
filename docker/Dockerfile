FROM nginx:1.15
MAINTAINER zhougang <zzg111@qq.com>
 
COPY dist/  /usr/share/nginx/html/
COPY dist2/  /usr/share/nginx/html2/
ADD nginx-conf/ /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html