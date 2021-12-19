FROM python:3.9-slim-buster

# Install requirements.txt (because it's a separate step we avoid reinstalling on package code change).
ADD requirements.txt /package/requirements.txt
ADD setup.py /package/setup.py
# __init__ is required for __version__ provision
ADD package/__init__.py /package/package/__init__.py
WORKDIR package
RUN pip3 install -r requirements.txt

ADD . /package/
RUN python3 -m unittest discover /package/package
RUN pip3 install -e .
