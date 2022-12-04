FROM aciobanu/scrapy:latest
        
RUN pip install --upgrade pip
RUN pip install Pillow
RUN pip install scrapy-redis

WORKDIR /runtime/app

COPY entrypoint.sh /runtime/entrypoint.sh
RUN chmod +x /runtime/entrypoint.sh

ENTRYPOINT ["/runtime/entrypoint.sh"]
CMD ["scrapy"]
