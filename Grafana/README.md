# Grafana
This guide provides step-by-step instructions to install **Grafana OSS (Open Source Edition)** on **Ubuntu 22.04 LTS**.

---

## Table of Contents
- [1. Install Required Dependencies](#1-install-required-dependencies)
- [2. Add Grafana APT Repository](#2-add-grafana-apt-repository)
- [3. Install Grafana](3-install-grafana)
- [4. Enable & Start Grafana](4-enable-&-start-grafana)
- [5. Access Grafana Web Interface](5-access-grafana-web-interface)
- [6. Resources](6-resources)

---

## 1. Install Required Dependencies
Update system packages and install required tools.

```
sudo apt update && sudo apt upgrade -y
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20142356.png)

```
sudo apt install software-properties-common apt-transport-https wget -y
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20151156.png)

---

## 2. Add Grafana APT Repository
Import the Grafana GPG key.

```
sudo wget -q -O /usr/share/keyrings/grafana.key https://apt.grafana.com/gpg.key
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20151245.png)

Add the Grafana repository.

```
echo "deb [signed-by=/usr/share/keyrings/grafana.key] https://apt.grafana.com stable main" | sudo tee /etc/apt/sources.list.d/grafana.list
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20151320.png)

Update the APT package list.

```
sudo apt update
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20151433.png)

---

## 3. Install Grafana
Install the Grafana OSS package.

```
sudo apt install grafana -y
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20154232.png)

---

## 4. Enable & Start Grafana
Enable Grafana to start on boot.

```
sudo systemctl enable grafana-server
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20154307.png)

Start the Grafana service.

```
sudo systemctl start grafana-server
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20154344.png)

Check the status.

```
sudo systemctl status grafana-server
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20154427.png)

---

## 5. Access Grafana Web Interface
Open your web browser and visit.

```
http://<your-grafana-ip>:3000
```

> Replace <your-grafana-ip> with the actual IP address of your Grafana server.

**Default login credentials:**

- **Username :** `admin`  
- **Password :** `admin`

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20154615.png)

> You will be prompted to change the password after the first login.

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20154648.png)

Welcome to your Grafana default web page !

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Grafana/Assets/Screenshot%202025-12-29%20154747.png)

---

## 6. Resources
- [Official Documentation](https://grafana.com/docs/grafana/latest/)
