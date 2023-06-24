#! /bin/bash
git add .
git commit -m "`date '+%D'`"
git push -f origin master
mysql -uzyw -pZiEaMHxiPh7FKYbD << EOF
use zyw;
update wp_posts set post_content = replace(post_content,'https://www.wyyhl.top/wp-content/uploads/2023/06/','https://cdn.staticaly.com/gh/wyxw688/picx-images-hosting@master/2023/06/');
quit
EOF