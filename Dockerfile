# start by pulling the python image
# FROM python:3.8-alpine
FROM python:3-alpine3.15

# copy the requirements file into the image
WORKDIR /app
COPY . /app
# COPY ./requirements.txt /app/requirements.txt

# switch working directory

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image

# configure the container to run in an executed manner
EXPOSE 3000
CMD python ./view.py