FROM ubuntu 
#CMD echo welcome
ENTRYPOINT ["sleep"]
CMD ["5"]


# docker build --tag ubuntucmd --file 2_entrypoint.Dockerfile .