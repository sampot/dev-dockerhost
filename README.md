## 開發環境設定

需要安裝 VirtualBox 虛擬機 以及 Vagrant 工具。

## 本地測試環境

開發人員可以使用 Vagrant 來管理本地測試環境，

- IP：192.168.66.2

### 啟動測試環境

建立或啟動測試環境。

```
vagrant up
```

### 登入測試環境
```
vagrant ssh
```

登入後，進入 ~/work 目錄就是對應到開發機上的代碼路徑。

### 關閉測試環境

```
vagrant halt
```

### 銷毀測試環境

銷毀測試環境。如果還要再使用，就會重新建立。

```
vagrant destroy
```


## 應用服務 

底下操作都是在本地測試環境中執行, 且假設目前工作目錄為 /home/ubuntu/work。
本地測試環境的應用服務是利用 Docker compose 來進行管理。

### 啟動應用服務

```
docker-compose up -d
```

### 關閉應用服務
```
docker-compose down
```

