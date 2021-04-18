# Selenium Tutorial
source code for my Selenium tutorial

## CURL to obtain basic Spring application
`curl https://start.spring.io/starter.tgz \
-d dependencies=thymeleaf,web,devtools \
-d language=java \
-d name=Selenium%20Tutorial \
-d type=gradle-project \
-d artifactId=seleniumTutorial \
-d groupId=io.github.andichrist \
-d javaVersion=16 | tar xvfz -`

# Start testing
## Start Greeting application
`./gradlew bootRun`

## Fetch ChromeDriver (example)
`wget -qO- https://chromedriver.storage.googleapis.com/90.0.4430.24/chromedriver_mac64.zip | tar xvf -`

## Start test
`./gradlew test`

## Review Gradle test results
`open ./build/reports/tests/test/index.html` (on Mac)

# Selenium Grid
## Start Grid
run: `./startGrid.sh`

or start hub:
`docker run -d -p 4444:4444 --name selenium-hub selenium/hub:latest`

and one or more nodes:
`docker run -d --name selenium-node-chrome-1 --link selenium-hub:hub selenium/node-chrome:latest`

Watch console for running nodes in grid:
http://localhost:4444/grid/console

## Stop Grid
run `./stopGrid.sh`

or stop each container:
`docker rm -f selenium-node-chrome-1 selenium-hub`
