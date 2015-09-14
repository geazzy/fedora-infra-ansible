#!/usr/bin/bash

systemctl stop copr-dist-git

cd /var/lib/dist-git/
tar --selinux --acls --xattrs -czf tmp.backup.tar.gz /var/lib/dist-git/cache /var/lib/dist-git/git /var/lib/dist-git/gitolite /var/lib/dist-git/web
mv -f tmp.backup.tar.gz tmp.backup.tar.gz

systemctl start copr-dist-git
