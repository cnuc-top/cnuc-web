docker stop cnuc-web \
; docker rm cnuc-web \
; cd /app/cnuc-web \
&& sudo git pull \
&& docker build -t cnuc-web . \
&& docker run -e TZ="Asia/Shanghai" -d -p 16121:3000 --name cnuc-web cnuc-web
