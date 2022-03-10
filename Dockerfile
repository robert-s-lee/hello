FROM python:3.8

# mandatory for Grid.ai
WORKDIR /gridai/project
COPY . .
# mandatory with Dockerfile in Grid.ai  
RUN pip install --ignore-requires-python -v -r requirements.txt%           