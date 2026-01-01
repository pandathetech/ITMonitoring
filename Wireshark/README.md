# Wireshark

---

## Table of Contents
- [1. Installation](#1-installation)
- [2. Execution](#2-execution)

---

## 1. Installation
After updating your Ubuntu 22.04 system with the `sudo apt update && sudo apt upgrade -y` command, install Wireshark with the following command:

```
sudo apt install wireshark -y
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Wireshark/Assets/Screenshot%202025-12-31%20205104.png)

Towards the end of the installation of Wireshark on Ubuntu 22.04, a window pop-up will appear and ask you if you want to allow non-superusers to capture network packets.

> It is suggested to leave it `No` by default.

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Wireshark/Assets/Screenshot%202025-12-31%20205637.png)

---

## 2. Execution
To launch your Wireshark app, you could either open it in the Applications tab of your Ubuntu 22.04 Desktop system or run the following command:

```
sudo wireshark
```

![](https://github.com/pandathetech/NetworkMonitoring/blob/main/Wireshark/Assets/Screenshot%202025-12-31%20205856.png)

From there, you can capture network trafic using different filters.

---

## 3. References
- [Wireshark - Official Website](https://www.wireshark.org/)
- [CherryServers - Wireshark on Ubuntu 22.04 Tutorial](https://www.cherryservers.com/blog/install-wireshark-ubuntu)
