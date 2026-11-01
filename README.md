# GYM-application-
# IRONCORE Gym Management Application

## Project Overview

IRONCORE is a modern Gym Management UI developed using Java JSP, Maven, and Apache Tomcat.

The application provides a professional fitness website with membership plans, workout programs, trainer information, and a membership registration interface.

This project is designed to demonstrate a Java web application deployment using GitHub Actions and AWS EC2.

## Technologies

- Java 17
- JSP
- Apache Maven
- Apache Tomcat 10.1
- GitHub
- GitHub Actions
- AWS EC2
- Ubuntu Linux
- HTML, CSS, JavaScript

## Features

- Responsive gym website
- Membership pricing plans
- Workout programs
- Trainer profiles
- Registration form UI
- Interactive navigation
- Automated CI/CD deployment

## Build

```bash
mvn clean package
```

## Generated WAR

```text
target/ROOT.war
```

## Deployment

The application is deployed to Apache Tomcat running on an AWS EC2 Ubuntu instance.

## Application URL

```text
http://EC2_PUBLIC_IP:8080/
```

## Database

No database is used. This is a frontend-only application.
