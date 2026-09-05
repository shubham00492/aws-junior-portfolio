
# Project 04 - 2-Tier Java App | EC2 + RDS + Tomcat• Deployed Java web application on Apache Tomcat 9.x on AWS EC2 (Amazon Linux 2023)

- Configured AWS RDS MySQL as backend with SSL-enforced secure connectivity
- Deployed student.war artifact and integrated MySQL Connector JAR for DB-app communication
- Configured JDBC DataSource connection pooling via Tomcat context.xml
- Managed AWS Security Groups for controlled port access (22, 8080, 3306)
- Diagnosed and resolved real-world issues: port conflicts, SSL errors, DB connection failures

![AWS](https://img.shields.io/badge/AWS-EC2%20%7C%20RDS-orange?style=for-the-badge)
![Tomcat](https://img.shields.io/badge/Tomcat-9.0.117-red?style=for-the-badge)
![Java](https://img.shields.io/badge/Java-11-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Done-brightgreen?style=for-the-badge)

> Deployed Java WAR + Static HTML on Apache Tomcat with SSL-secured MySQL RDS. Real troubleshooting done.

## 🏗️ Architecture
![Architecture](architecture.png)

**Flow:** User -> EC2 (Amazon Linux 2023 + Tomcat 9.0.117 :8080) -> WAR + HTML -> SSL JDBC -> RDS MySQL (studentapp DB)
**Tier 1:** App Server - EC2 t2.micro, Tomcat, Java, MySQL Connector JAR  
**Tier 2:** DB Server - RDS db.t3.micro, SSL ON, SG (22, 8080, 3306)

## 🌐 HTML Integration Bonus
- `index.htm` - Custom landing page hosted in `webapps/ROOT/`
- Shows Tomcat can serve both Dynamic (student.war) + Static (HTML)
- URL: `http://<EC2-IP>:8080/` -> HTML, `http://<EC2-IP>:8080/student` -> Java App
```bash
cp index.html /opt/apache-tomcat-9.0.117/webapps/ROOT/index.html
