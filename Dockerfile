FROM alpine:latest
RUN apk update
RUN apk add libgcc libstdc++ libx11 glib libxrender libxext libintl 
WORKDIR /app
ADD ./funk_agent /app/funk_agent
EXPOSE 3000
CMD [ "/app/funk_agent" ]
