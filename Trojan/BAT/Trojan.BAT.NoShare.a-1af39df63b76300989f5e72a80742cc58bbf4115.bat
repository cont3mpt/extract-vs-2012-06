@echo off
net use * /del /y
net share /delete c$ /y
net share /delete admin$ /y