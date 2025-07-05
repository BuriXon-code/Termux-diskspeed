# Termux-diskspeed

## About ...

The script easily tests the speed and disk reading speed on your Termux device.

The script requires only Bash, grep and dd command for proper operation.

## Installation and usage ...

Installation:

```
git clone https://github.com/BuriXon-code/Termux-diskspeed
cd Termux-diskspeed
chmod +x *
```

>[!NOTE]
> The script was created in different versions differing in the language of output data.
> + cn = Chinesse
> + de = German
> + en = English
> + fr = French
> + pl = Polish
> + ru = Russian

Usage:

```
./en
```
or
```
./de
```
etc...

>[!CAUTION]
> Warning! The script requires at least 4GB of free space in the phone's storage for creating temporary files during the test. If you do not have that much space, you can edit the script by changing the values `bs=64M count=64` according to your own needs and capabilities.

![screenshot](/output.jpg)

## Compatibility ...

This script is so simple that it works on every UNIX with Bash, Coreutils/Busbox, grep and dd command.

## Support ...

Conatct me: **support@burixon.com.pl**

Support me: **[donate](https://burixon.com.pl/donate/)**
