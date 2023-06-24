#! /bin/bash
git add .
git commit -m "`date '+%D'`"
git push -f origin master
mysql -uroot -pwyyhl.top << EOF
update wp_posts set post_content = replace(字段，'https://www.wyyhl.top/wp-content/uploads/2023/06/'，'https://cdn.staticaly.com/gh/wyxw688/picx-images-hosting@master/2023/06/');
EOF