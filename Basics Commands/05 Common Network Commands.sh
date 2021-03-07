
• ifconfig-  different ip address
• iwconfig - wireless adapter version
• ping - icmp communcate with another machine either it is live or responding to us 
• arp- map ip add to mac addresses
• netstat - dispplay all connection
• route- display routing table 

-----------------------------------------------------------------------------------------------------------------------------------------
┌──(root💀kali)-[~]
└─# ls    
Desktop  Documents  Downloads  hello.txt  Music  name.txt  Pictures  Public  Templates  Videos
                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# rm name.txt                                           
                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# ls
Desktop  Documents  Downloads  hello.txt  Music  Pictures  Public  Templates  Videos
                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# rm hello.txt
                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# ls                                                             
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# ifconfig                                             
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::a00:27ff:fe98:b079  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:98:b0:79  txqueuelen 1000  (Ethernet)
        RX packets 1  bytes 590 (590.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 11  bytes 1142 (1.1 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 28  bytes 1400 (1.3 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 28  bytes 1400 (1.3 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# iwconfig
lo        no wireless extensions.

eth0      no wireless extensions.

                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# ping 192.168.15.1                                                    
PING 192.168.15.1 (192.168.15.1) 56(84) bytes of data.

hey
are you there 
^C
--- 192.168.15.1 ping statistics ---
31 packets transmitted, 0 received, 100% packet loss, time 30715ms

                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# arp -a                                                                                                                                                                                                                               1 ⨯
? (10.0.2.2) at 52:54:00:12:35:02 [ether] on eth0
                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# netstat -ano                                                                                           
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       Timer
udp        0      0 10.0.2.15:68            10.0.2.2:67             ESTABLISHED off (0.00/0/0)
raw6       0      0 :::58                   :::*                    7           off (0.00/0/0)
Active UNIX domain sockets (servers and established)
Proto RefCnt Flags       Type       State         I-Node   Path
unix  2      [ ACC ]     STREAM     LISTENING     27796    /tmp/ssh-Zpf6tauhNI7o/agent.3184
unix  2      [ ACC ]     STREAM     LISTENING     25178    /tmp/.X11-unix/X0
unix  2      [ ACC ]     STREAM     LISTENING     26941    /tmp/.ICE-unix/3184
unix  2      [ ACC ]     STREAM     LISTENING     26940    @/tmp/.ICE-unix/3184
unix  3      [ ]         DGRAM                    467      /run/systemd/notify
unix  2      [ ACC ]     STREAM     LISTENING     470      /run/systemd/private
unix  2      [ ACC ]     STREAM     LISTENING     472      /run/systemd/userdb/io.systemd.DynamicUser
unix  2      [ ACC ]     STREAM     LISTENING     473      /run/systemd/io.system.ManagedOOM
unix  2      [ ACC ]     STREAM     LISTENING     25177    @/tmp/.X11-unix/X0
unix  2      [ ]         DGRAM                    482      /run/systemd/journal/syslog
unix  2      [ ACC ]     STREAM     LISTENING     484      /run/systemd/fsck.progress
unix  2      [ ]         DGRAM                    16091    /run/user/0/systemd/notify
unix  12     [ ]         DGRAM                    488      /run/systemd/journal/dev-log
unix  2      [ ACC ]     STREAM     LISTENING     16094    /run/user/0/systemd/private
unix  6      [ ]         DGRAM                    490      /run/systemd/journal/socket
unix  2      [ ACC ]     STREAM     LISTENING     16100    /run/user/0/bus
unix  2      [ ACC ]     STREAM     LISTENING     492      /run/systemd/journal/stdout
unix  2      [ ACC ]     SEQPACKET  LISTENING     494      /run/udev/control
unix  2      [ ACC ]     STREAM     LISTENING     16102    /run/user/0/gnupg/S.dirmngr
unix  2      [ ACC ]     STREAM     LISTENING     16104    /run/user/0/gnupg/S.gpg-agent.browser
unix  2      [ ACC ]     STREAM     LISTENING     16106    /run/user/0/gnupg/S.gpg-agent.extra
unix  2      [ ACC ]     STREAM     LISTENING     16108    /run/user/0/gnupg/S.gpg-agent.ssh
unix  2      [ ACC ]     STREAM     LISTENING     16110    /run/user/0/gnupg/S.gpg-agent
unix  2      [ ACC ]     STREAM     LISTENING     16112    /run/user/0/pulse/native
unix  2      [ ACC ]     STREAM     LISTENING     13271    /run/systemd/journal/io.systemd.journal
unix  2      [ ACC ]     STREAM     LISTENING     16671    @/tmp/dbus-azgkTdHtPF
unix  2      [ ACC ]     STREAM     LISTENING     13524    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     25963    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27850    
unix  3      [ ]         STREAM     CONNECTED     27043    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     28982    
unix  3      [ ]         STREAM     CONNECTED     25960    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27876    
unix  3      [ ]         STREAM     CONNECTED     16437    /run/systemd/journal/stdout
unix  2      [ ]         DGRAM                    18033    
unix  2      [ ]         DGRAM                    12156    
unix  3      [ ]         STREAM     CONNECTED     27031    
unix  3      [ ]         DGRAM                    468      
unix  3      [ ]         STREAM     CONNECTED     27033    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     15350    
unix  3      [ ]         STREAM     CONNECTED     27891    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     25967    
unix  3      [ ]         STREAM     CONNECTED     26248    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     28682    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     12094    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     26036    
unix  3      [ ]         STREAM     CONNECTED     11992    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     28137    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25526    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25973    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25984    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     12050    
unix  3      [ ]         STREAM     CONNECTED     29036    
unix  3      [ ]         STREAM     CONNECTED     27028    
unix  3      [ ]         STREAM     CONNECTED     25585    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     18031    
unix  3      [ ]         STREAM     CONNECTED     12169    
unix  3      [ ]         STREAM     CONNECTED     29038    @/tmp/.ICE-unix/3184
unix  3      [ ]         DGRAM                    469      
unix  3      [ ]         STREAM     CONNECTED     27137    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25976    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     26005    
unix  3      [ ]         STREAM     CONNECTED     11991    
unix  3      [ ]         STREAM     CONNECTED     28984    
unix  3      [ ]         STREAM     CONNECTED     27046    
unix  3      [ ]         STREAM     CONNECTED     25938    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     14860    
unix  3      [ ]         STREAM     CONNECTED     28862    
unix  3      [ ]         STREAM     CONNECTED     12127    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27885    
unix  3      [ ]         STREAM     CONNECTED     28068    @/dbus-vfs-daemon/socket-UbvM6dFy
unix  3      [ ]         STREAM     CONNECTED     12126    
unix  3      [ ]         STREAM     CONNECTED     27887    
unix  3      [ ]         STREAM     CONNECTED     27831    
unix  2      [ ]         DGRAM                    25993    
unix  3      [ ]         STREAM     CONNECTED     12170    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     26251    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27877    
unix  3      [ ]         STREAM     CONNECTED     26006    
unix  3      [ ]         STREAM     CONNECTED     25969    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27027    
unix  3      [ ]         STREAM     CONNECTED     27883    
unix  3      [ ]         STREAM     CONNECTED     25497    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     28699    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     27032    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     28983    
unix  3      [ ]         STREAM     CONNECTED     28684    @/tmp/.ICE-unix/3184
unix  3      [ ]         STREAM     CONNECTED     26977    
unix  3      [ ]         STREAM     CONNECTED     27874    
unix  3      [ ]         STREAM     CONNECTED     15157    
unix  3      [ ]         STREAM     CONNECTED     26044    
unix  3      [ ]         STREAM     CONNECTED     12095    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     28112    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     27029    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     27041    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     13691    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     26008    /run/user/0/pulse/native
unix  3      [ ]         STREAM     CONNECTED     12092    
unix  3      [ ]         STREAM     CONNECTED     29037    
unix  3      [ ]         STREAM     CONNECTED     16745    
unix  3      [ ]         STREAM     CONNECTED     27878    
unix  2      [ ]         DGRAM                    14848    
unix  3      [ ]         STREAM     CONNECTED     25968    
unix  3      [ ]         STREAM     CONNECTED     18032    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     28980    
unix  3      [ ]         STREAM     CONNECTED     14218    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27884    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     25983    
unix  3      [ ]         STREAM     CONNECTED     12091    
unix  3      [ ]         STREAM     CONNECTED     26250    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27129    
unix  2      [ ]         DGRAM                    25787    
unix  3      [ ]         STREAM     CONNECTED     16682    
unix  3      [ ]         STREAM     CONNECTED     26231    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25587    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25469    
unix  3      [ ]         STREAM     CONNECTED     17200    
unix  3      [ ]         STREAM     CONNECTED     19492    
unix  3      [ ]         STREAM     CONNECTED     16647    
unix  3      [ ]         STREAM     CONNECTED     27034    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     28139    
unix  3      [ ]         STREAM     CONNECTED     16677    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     26935    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     17205    
unix  3      [ ]         STREAM     CONNECTED     28014    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     17946    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     16675    
unix  3      [ ]         STREAM     CONNECTED     26230    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25591    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25434    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25416    
unix  3      [ ]         STREAM     CONNECTED     17201    
unix  3      [ ]         STREAM     CONNECTED     28872    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25860    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     28907    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25978    
unix  3      [ ]         STREAM     CONNECTED     27224    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25466    
unix  3      [ ]         STREAM     CONNECTED     28061    
unix  3      [ ]         STREAM     CONNECTED     25429    
unix  3      [ ]         STREAM     CONNECTED     27132    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     25900    
unix  3      [ ]         STREAM     CONNECTED     27182    
unix  3      [ ]         STREAM     CONNECTED     25971    
unix  3      [ ]         STREAM     CONNECTED     26964    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     19488    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     26968    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     17948    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     25980    
unix  3      [ ]         STREAM     CONNECTED     25464    
unix  3      [ ]         STREAM     CONNECTED     27118    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     26910    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     27131    
unix  3      [ ]         STREAM     CONNECTED     17199    
unix  3      [ ]         STREAM     CONNECTED     27184    
unix  3      [ ]         STREAM     CONNECTED     19490    
unix  3      [ ]         STREAM     CONNECTED     26967    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     28063    
unix  3      [ ]         STREAM     CONNECTED     28693    @/tmp/.ICE-unix/3184
unix  3      [ ]         STREAM     CONNECTED     25859    
unix  3      [ ]         STREAM     CONNECTED     27183    
unix  3      [ ]         STREAM     CONNECTED     17947    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     16678    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     28062    
unix  3      [ ]         STREAM     CONNECTED     25822    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     27135    
unix  3      [ ]         STREAM     CONNECTED     25903    
unix  3      [ ]         STREAM     CONNECTED     25977    
unix  3      [ ]         STREAM     CONNECTED     27123    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     14088    
unix  3      [ ]         STREAM     CONNECTED     27111    
unix  3      [ ]         STREAM     CONNECTED     25785    
unix  3      [ ]         STREAM     CONNECTED     27179    
unix  3      [ ]         STREAM     CONNECTED     25979    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     17610    
unix  3      [ ]         STREAM     CONNECTED     25431    
unix  3      [ ]         STREAM     CONNECTED     17204    
unix  3      [ ]         STREAM     CONNECTED     27072    
unix  3      [ ]         STREAM     CONNECTED     16674    
unix  3      [ ]         STREAM     CONNECTED     27176    
unix  3      [ ]         STREAM     CONNECTED     25974    
unix  3      [ ]         STREAM     CONNECTED     28073    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     25467    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     17972    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     14078    
unix  3      [ ]         STREAM     CONNECTED     27101    
unix  3      [ ]         STREAM     CONNECTED     27181    @/tmp/dbus-azgkTdHtPF
unix  2      [ ]         DGRAM                    16319    
unix  3      [ ]         STREAM     CONNECTED     25468    
unix  3      [ ]         STREAM     CONNECTED     17949    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     14079    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27130    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25902    
unix  3      [ ]         STREAM     CONNECTED     25975    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     17609    
unix  3      [ ]         STREAM     CONNECTED     28070    
unix  3      [ ]         STREAM     CONNECTED     14087    
unix  3      [ ]         STREAM     CONNECTED     27102    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     16648    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27180    
unix  3      [ ]         STREAM     CONNECTED     25982    
unix  2      [ ]         DGRAM                    17602    
unix  3      [ ]         STREAM     CONNECTED     25432    
unix  3      [ ]         STREAM     CONNECTED     17954    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     28056    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     25474    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     16364    
unix  3      [ ]         STREAM     CONNECTED     25470    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27119    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     25430    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27127    
unix  3      [ ]         STREAM     CONNECTED     25786    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     17611    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     17084    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     25433    
unix  3      [ ]         STREAM     CONNECTED     28064    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     26913    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     16125    
unix  3      [ ]         STREAM     CONNECTED     11994    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27890    
unix  3      [ ]         STREAM     CONNECTED     12009    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27846    
unix  3      [ ]         STREAM     CONNECTED     27108    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     16048    
unix  2      [ ]         DGRAM                    14784    
unix  3      [ ]         STREAM     CONNECTED     27916    
unix  3      [ ]         STREAM     CONNECTED     12093    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     18625    
unix  3      [ ]         STREAM     CONNECTED     26142    
unix  3      [ ]         STREAM     CONNECTED     28716    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     17974    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27044    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25529    @/tmp/.X11-unix/X0
unix  2      [ ]         DGRAM                    13645    
unix  3      [ ]         STREAM     CONNECTED     27833    
unix  3      [ ]         STREAM     CONNECTED     28754    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     28046    
unix  3      [ ]         STREAM     CONNECTED     25524    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27989    
unix  3      [ ]         STREAM     CONNECTED     25180    
unix  2      [ ]         DGRAM                    13662    
unix  3      [ ]         STREAM     CONNECTED     28049    
unix  3      [ ]         STREAM     CONNECTED     25818    @/tmp/dbus-azgkTdHtPF
unix  2      [ ]         DGRAM                    16067    
unix  3      [ ]         DGRAM                    14658    
unix  3      [ ]         STREAM     CONNECTED     28686    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25966    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27061    
unix  3      [ ]         STREAM     CONNECTED     27836    
unix  3      [ ]         STREAM     CONNECTED     27136    
unix  3      [ ]         STREAM     CONNECTED     28045    
unix  3      [ ]         DGRAM                    15914    
unix  3      [ ]         STREAM     CONNECTED     26705    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     17235    
unix  3      [ ]         STREAM     CONNECTED     13664    /run/dbus/system_bus_socket
unix  2      [ ]         DGRAM                    18604    
unix  3      [ ]         STREAM     CONNECTED     28050    
unix  3      [ ]         STREAM     CONNECTED     26974    
unix  3      [ ]         STREAM     CONNECTED     14779    
unix  3      [ ]         STREAM     CONNECTED     28701    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25965    
unix  3      [ ]         STREAM     CONNECTED     27060    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     27835    
unix  3      [ ]         STREAM     CONNECTED     27100    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     26979    
unix  3      [ ]         STREAM     CONNECTED     14645    
unix  3      [ ]         STREAM     CONNECTED     28042    
unix  3      [ ]         STREAM     CONNECTED     27059    
unix  3      [ ]         STREAM     CONNECTED     17942    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     28043    
unix  3      [ ]         STREAM     CONNECTED     26929    
unix  2      [ ]         DGRAM                    16057    
unix  3      [ ]         DGRAM                    14657    
unix  3      [ ]         STREAM     CONNECTED     27045    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     13663    
unix  3      [ ]         STREAM     CONNECTED     25501    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     28745    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     17973    
unix  3      [ ]         STREAM     CONNECTED     16609    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     14737    
unix  3      [ ]         STREAM     CONNECTED     27097    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     26973    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     25425    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     17603    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     13532    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     28040    
unix  3      [ ]         STREAM     CONNECTED     25959    
unix  3      [ ]         STREAM     CONNECTED     13535    
unix  3      [ ]         STREAM     CONNECTED     25500    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     28743    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     14778    
unix  3      [ ]         STREAM     CONNECTED     18702    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     13551    
unix  3      [ ]         STREAM     CONNECTED     27837    @/tmp/.ICE-unix/3184
unix  3      [ ]         STREAM     CONNECTED     27802    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     14090    /run/user/0/bus
unix  3      [ ]         DGRAM                    16093    
unix  2      [ ]         DGRAM                    14654    
unix  3      [ ]         STREAM     CONNECTED     17236    
unix  3      [ ]         STREAM     CONNECTED     27062    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     18636    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     16160    
unix  3      [ ]         DGRAM                    16092    
unix  3      [ ]         DGRAM                    15915    
unix  3      [ ]         STREAM     CONNECTED     13493    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     25576    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     18701    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27057    
unix  3      [ ]         STREAM     CONNECTED     27834    
unix  3      [ ]         STREAM     CONNECTED     28047    
unix  3      [ ]         STREAM     CONNECTED     26930    
unix  3      [ ]         STREAM     CONNECTED     16560    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     13427    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27099    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     27058    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     18635    
unix  3      [ ]         STREAM     CONNECTED     28074    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     27106    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     16096    
unix  2      [ ]         DGRAM                    15786    
unix  3      [ ]         STREAM     CONNECTED     27889    
unix  3      [ ]         STREAM     CONNECTED     25935    
unix  3      [ ]         STREAM     CONNECTED     27063    
unix  3      [ ]         STREAM     CONNECTED     25531    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25909    
unix  3      [ ]         STREAM     CONNECTED     27004    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     27849    
unix  3      [ ]         STREAM     CONNECTED     17036    
unix  3      [ ]         STREAM     CONNECTED     13647    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     27114    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25962    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25907    
unix  3      [ ]         STREAM     CONNECTED     27006    
unix  2      [ ]         DGRAM                    25344    
unix  3      [ ]         STREAM     CONNECTED     17951    
unix  3      [ ]         STREAM     CONNECTED     25592    
unix  3      [ ]         STREAM     CONNECTED     25424    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     28057    
unix  3      [ ]         STREAM     CONNECTED     27002    
unix  3      [ ]         STREAM     CONNECTED     25407    
unix  3      [ ]         STREAM     CONNECTED     17975    
unix  3      [ ]         STREAM     CONNECTED     25554    
unix  3      [ ]         STREAM     CONNECTED     26928    
unix  3      [ ]         STREAM     CONNECTED     28814    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25535    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     18621    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     17922    
unix  3      [ ]         STREAM     CONNECTED     27030    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     14190    
unix  3      [ ]         STREAM     CONNECTED     28058    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     25940    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     17116    
unix  3      [ ]         STREAM     CONNECTED     16365    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     25961    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     16737    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     26981    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     17952    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     16354    /run/dbus/system_bus_socket
unix  2      [ ]         DGRAM                    13273    
unix  3      [ ]         STREAM     CONNECTED     25555    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     14179    
unix  3      [ ]         STREAM     CONNECTED     27848    
unix  3      [ ]         STREAM     CONNECTED     27842    @/tmp/.ICE-unix/3184
unix  3      [ ]         STREAM     CONNECTED     17038    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     15683    
unix  3      [ ]         STREAM     CONNECTED     16225    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     27827    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     27025    
unix  2      [ ]         DGRAM                    17923    
unix  3      [ ]         STREAM     CONNECTED     17105    
unix  3      [ ]         STREAM     CONNECTED     15743    
unix  3      [ ]         STREAM     CONNECTED     26226    
unix  3      [ ]         STREAM     CONNECTED     25583    
unix  3      [ ]         STREAM     CONNECTED     16216    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     25475    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27003    
unix  3      [ ]         STREAM     CONNECTED     18615    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     17917    
unix  3      [ ]         DGRAM                    15515    
unix  3      [ ]         STREAM     CONNECTED     26927    
unix  3      [ ]         STREAM     CONNECTED     25939    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     27001    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     17080    
unix  3      [ ]         STREAM     CONNECTED     13708    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     25985    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     26900    
unix  3      [ ]         STREAM     CONNECTED     24522    
unix  3      [ ]         STREAM     CONNECTED     28052    /run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     26982    
unix  3      [ ]         STREAM     CONNECTED     26907    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     17046    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     16751    
unix  3      [ ]         STREAM     CONNECTED     26971    @/tmp/dbus-azgkTdHtPF
unix  3      [ ]         STREAM     CONNECTED     28072    
unix  3      [ ]         STREAM     CONNECTED     25415    
unix  3      [ ]         STREAM     CONNECTED     17106    /run/systemd/journal/stdout
unix  2      [ ]         DGRAM                    13294    
unix  3      [ ]         STREAM     CONNECTED     26181    
unix  3      [ ]         STREAM     CONNECTED     27825    @/tmp/.ICE-unix/3184
unix  3      [ ]         STREAM     CONNECTED     26901    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25528    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     26904    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     17921    
unix  2      [ ]         DGRAM                    15537    
unix  3      [ ]         STREAM     CONNECTED     25581    
unix  3      [ ]         STREAM     CONNECTED     17976    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     14178    
unix  3      [ ]         STREAM     CONNECTED     25904    
unix  3      [ ]         STREAM     CONNECTED     28051    
unix  3      [ ]         STREAM     CONNECTED     25557    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     17835    
unix  3      [ ]         STREAM     CONNECTED     17039    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     26227    
unix  3      [ ]         STREAM     CONNECTED     25473    
unix  3      [ ]         STREAM     CONNECTED     25188    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     16215    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     27828    @/tmp/.ICE-unix/3184
unix  3      [ ]         STREAM     CONNECTED     28055    
unix  3      [ ]         STREAM     CONNECTED     27005    
unix  3      [ ]         STREAM     CONNECTED     25411    
unix  3      [ ]         STREAM     CONNECTED     17104    /run/systemd/journal/stdout
unix  3      [ ]         STREAM     CONNECTED     28808    @/tmp/.ICE-unix/3184
unix  3      [ ]         STREAM     CONNECTED     26922    @/tmp/.X11-unix/X0
unix  3      [ ]         STREAM     CONNECTED     25936    /run/user/0/bus
unix  3      [ ]         STREAM     CONNECTED     26980    
unix  3      [ ]         STREAM     CONNECTED     17037    
unix  3      [ ]         DGRAM                    15516    
unix  3      [ ]         STREAM     CONNECTED     25582    
unix  3      [ ]         STREAM     CONNECTED     26921    
                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─# route                             
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
default         10.0.2.2        0.0.0.0         UG    100    0        0 eth0
10.0.2.0        0.0.0.0         255.255.255.0   U     100    0        0 eth0
                                                                                                                                                                                                                                             
┌──(root💀kali)-[~]
└─#      
