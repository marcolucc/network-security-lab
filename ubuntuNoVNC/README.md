[![](https://images.microbadger.com/badges/image/babim/ubuntu-novnc.svg)](https://microbadger.com/images/babim/ubuntu-novnc "Get your own image badge on microbadger.com")[![](https://images.microbadger.com/badges/version/babim/ubuntu-novnc.svg)](https://microbadger.com/images/babim/ubuntu-novnc "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/babim/ubuntu-novnc:ssh.svg)](https://microbadger.com/images/babim/ubuntu-novnc:ssh "Get your own image badge on microbadger.com")[![](https://images.microbadger.com/badges/version/babim/ubuntu-novnc:ssh.svg)](https://microbadger.com/images/babim/ubuntu-novnc:ssh "Get your own version badge on microbadger.com")


fork and edit from fcwu/docker-ubuntu-vnc-desktop
=========================

From Docker Index
```
docker pull babim/ubuntu-novnc
```

Build yourself
```
git clone https://github.com/babim/docker-ubuntu-vnc-desktop.git
docker build --rm -t babim/ubuntu-novnc docker-ubuntu-vnc-desktop
```

Run without password
```
docker run -i -t -p 6080:6080 babim/ubuntu-novnc
```
Run with password
```
docker run -i -t -p 6080:6080 -e PASS=ubuntu babim/ubuntu-novnc
```

Browse http://127.0.0.1:6080/vnc.html

<img src="https://raw.github.com/babim/docker-ubuntu-vnc-desktop/master/screenshots/lxde.png" width=400/>

License
==================

desktop-mirror is under the Apache 2.0 license. See the LICENSE file for details.
