FROM python:3.8-alpine

WORKDIR /usr/src/app
COPY *requirements.txt ./

# install requirements
RUN pip install -r requirements.txt

# copy in our source code
ADD src ./src

# for example
CMD ["python", "src/entrypoint.py"]