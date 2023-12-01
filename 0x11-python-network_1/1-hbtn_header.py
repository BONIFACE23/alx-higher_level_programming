#!/usr/bin/python3
""" Model to takes in a URL, sends a request to the URL and displays
the value of the X-Request-Id variable found in the header of the response """
from urllib import request
from sys import argv


if __name__ == "__main__":
    ur = request.Request(argv[1])
    with request.urlopen(ur) as req:
        print(req.headers['X-Request-Id'])
