# demo01
How to build webapi image.

Step
1. Pull code to your machine.
2. cd \demo01\
3. docker build -t xxx:v .
4. docker run --name demo01 -d -p 8080:80 xxx:v

Test
http://localhost:8080/weatherforecast
![image](https://user-images.githubusercontent.com/104664980/236682043-36b7b01e-a4fd-43b5-9532-8c33c582764c.png)
