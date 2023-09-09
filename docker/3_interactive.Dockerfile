FROM ubuntu 
COPY myapp.sh .
ENTRYPOINT ["./myapp.sh"]

# docker build --tag ubuntucmd --file 3_interactive.Dockerfile .
# docker run -i ubuntucmd
# docker run -it ubuntucmd