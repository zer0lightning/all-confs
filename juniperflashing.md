# Flashing Juniper Switches

**Prerequisites**
- [SuperPutty](https://www.puttygen.com/superputty) or iTerm on MacOS

- TFTP Server if you are flashing a batch of switches.

- USB to Serial Adapter 

**Configure [SuperPutty](https://www.addictivetips.com/windows-tips/superputty-windows-gui-application-that-can-open-putty-ssh-client-in-tabs/) or [iTerm](http://korishev.com/blog/2014/02/28/iterm2-broadcast-input/)**

- Multiple Sessions and tabs

- Set Shortcut to switch tabs easily

<img src="https://raw.githubusercontent.com/zer0lightning/all-confs/master/superputty.png" alt="SuperPutty"
	title="SuperPutty Multiple Tabs" width="550" height="350" />

**Sample SuperPutty Sessions**

Save it as Sessions.XML and import it. You can add as many sessions using the GUI or XML.
Configure the IP and Port to your own settings.
```
<?xml version="1.0" encoding="utf-8"?>
<ArrayOfSessionData xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <SessionData SessionId="Imported/Term 1-1" SessionName="Term 1-1" ImageKey="computer" Host="10.0.0.1" Port="1441" Proto="Telnet" PuttySession="Default Settings" Username="" ExtraArgs="" SPSLFileName="" RemotePath="" LocalPath="" />
  <SessionData SessionId="Imported/Term 1-2" SessionName="Term 1-2" ImageKey="computer" Host="10.0.0.2" Port="1442" Proto="Telnet" PuttySession="Default Settings" Username="" ExtraArgs="" SPSLFileName="" RemotePath="" LocalPath="" />
</ArrayOfSessionData2
```

**Entering JunOS Bootloader**

> [https://www.juniper.net/documentation/en_US/junos/topics/task/configuration/authentication-root-password-recovering-qfx-series.htm](https://www.juniper.net/documentation/en_US/junos/topics/task/configuration/authentication-root-password-recovering-qfx-series.html)

> ***SuperPutty*** - Power on switches, then press Space + Enter repeatedly.

**EX4300 Enterprise Switch** 
```
install --format tftp://the.ip.tftp.server/jinstall-ex-4300-packagename-signed.tgz
```

**EX4200 Enterprise Switch** 
```
install --format tftp://the.ip.tftp.server/jinstall-ex-4200-packagename-signed.tgz
```

**Entering CLI**

```
cli
```

**Show Commands**

```
show system snapshot media internal
show system alarms
show chassis alarms
show chassis hardware 
show virtual-chassis
```

**Adding License**

```
request system license add 
show system license
```

**Shutting Down**

```
request system halt at now
```

**Unset Commands**

If you are having issues downloading the signed packages, getting IP use this unset commands.

```
unset gateway
unset netmask
unset ipaddr
unset serverip
```
