FROM python:3.9

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /app

# Set the working directory to /music_service
WORKDIR /app

# Copy the current directory contents into the container at /music_service
ADD . /app/

EXPOSE 8080

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt