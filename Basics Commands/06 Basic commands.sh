ls
$ ls -l
$ ls -a
$ ls -la
$ ls -l --sort=time
$ ls -l --sort=size -r
cd
$ cd /usr/bin
pwd
$ pwd
 ~
$ cd ~
~user
$ cd ~weesan
What will “cd ~/weesan” do?


which
$ which ls
whereis
$ whereis ls
locate
$ locate stdio.h
$ locate iostream
rpm
$ rpm -q bash
$ rpm -qa
$ rpm -qa | sort | less
find
$ find / | grep stdio.h
$ find /usr/include | grep stdio.h


echo
$ echo “Hello World”
$ echo -n “Hello World”
cat
$ cat /etc/motd
$ cat /proc/cpuinfo
cp
$ cp foo bar
$ cp -a foo bar
mv
$ mv foo bar
mkdir
$ mkdir foo

rm
$ rm foo
$ rm -rf foo
$ rm -i foo
$ rm -- -foo
chgrp
$ chgrp bar /home/foo
chsh
$ chsh foo
chfn
$ chfn foo
chown
$ chown -R foo:bar /home/foo

tar
$ tar cvfp lab1.tar lab1
gzip
$ gzip -9 lab1.tar
untar & ungzip
$ gzip -cd lab1.tar.gz | tar xvf –
$ tar xvfz lab1.tar.gz
touch
$ touch foo
$ cat /dev/null > foo


Pipe
$ cal > foo
$ cat /dev/zero > foo
$ cat < /etc/passwd
$ who | cut -d’ ‘ -f1 | sort | uniq | wc –l
backtick
$ echo “The date is `date`”
$ echo `seq 1 10`
Hard, soft (symbolic) link
ln vmlinuz-2.6.24.4 vmlinuz
ln -s firefox-2.0.0.3 firefox


Disk usage
$ df -h /
File space usage
$ du -sxh ~/
Advance stuff 
$ ssh eon who
$ ssh eon ‘cd .html ; tar cvfp - cs183 | gzip -9c’ | tar xvfpz -
$ ssh kilo-1 ‘tar cvfp - /extra/weesan’ | tar xvfp - -C /

