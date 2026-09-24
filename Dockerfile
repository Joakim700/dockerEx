FROM python:3.12-alpine      
WORKDIR /app                 
COPY index.html .            
CMD ["python", "-m", "http.server", "8000"]

FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
