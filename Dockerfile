FROM python:latest

WORKDIR /opt/project

RUN pip install --upgrade pip setuptools==58 wheel

# By copying over requirements first, we make sure that Docker will cache
# our installed requirements rather than reinstall them on every build
COPY requirements.txt /opt/project/
RUN pip install -r /opt/project/requirements.txt