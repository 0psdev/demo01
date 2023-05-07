# demo01
How to build webapi image.

Step

1. Pull code to your machine.
2. Open vscode and open terminal
3. docker build -t xxx:v .

![image](https://user-images.githubusercontent.com/104664980/236682564-9ec7442b-d575-4ec5-968c-621cf658daad.png)

5. docker run --name demo01 -d -p 8080:80 xxx:v

![image](https://user-images.githubusercontent.com/104664980/236682602-3c07c177-c7bb-425c-a958-4090698c56f6.png)

*** xxx = image name and v = version ***

Test

open browser --> http://localhost:8080/weatherforecast

![image](https://user-images.githubusercontent.com/104664980/236682043-36b7b01e-a4fd-43b5-9532-8c33c582764c.png)
