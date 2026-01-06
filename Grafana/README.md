# Grafana

---

## Table of Contents
- [1. Install Required Dependencies](#1-install-required-dependencies)
- [2. Add Grafana APT Repository](#2-add-grafana-apt-repository)
- [3. Install Grafana](#3-install-grafana)
- [4. Enable and Start Grafana](#4-enable-and-start-grafana)
- [5. Grafana's Web Interface](#5-grafanas-web-interface)
- [Data Sources](#data-sources)
  - [Prometheus](#prometheus)
- [Dashboards](#dashboards)
  - [Prometheus](#prometheus)
- [Resources](#resources)

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

## 4. Enable and Start Grafana
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

## 5. Grafana's Web Interface
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

## Data Sources
In the left-side menu, click on the `Connections` section. Click on `Add new connection`.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20202601.png)

Click on `Add data source`.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20202724.png)

### Prometheus
Click on the `Prometheus` data source.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20202756.png)

Set your Prometheus server URL.

> In my demonstration, I used `http://localhost:9090` because I installed Prometheus and Grafana locally in one VM (Ubuntu 22.04 Desktop). If they were installed in two different hosts, I would put my Prometheus server IP instead of `localhost`.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20203159.png)

Change the HTTP method from `POST` to `GET`, then click on `Save & Test` to test out the changes.

> If successful, you should get a message stating that you'll have successfully queried the Prometheus API.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20203309.png)

## Dashboards
In the left-side menu, click on the `Dashboards` section. Click on `Create dashboard`.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20203420.png)

Click on `Add visualization`.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20203441.png)

### Prometheus
Select the Prometheus data source.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20203513.png)

Customize your dashboard.

> In my demonstration, I randomly chose to monitor the `process_cpu_seconds_total` metric of my local demo VM, which has Prometheus installed.

When you're done editing it, you can save your dashboard.

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20204703.png)

![](https://github.com/pandathetech/ITMonitoring/blob/main/Grafana/Assets/Screenshot%202026-01-05%20204818.png)

---

## Resources
- [Official Documentation](https://grafana.com/docs/grafana/latest/)
