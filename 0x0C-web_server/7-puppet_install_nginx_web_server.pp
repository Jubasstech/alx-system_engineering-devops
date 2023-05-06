# Installs Nginx Web Server

include stdlib

exec {'install nginx':
  provider => shell,
  command  => 'sudo apt-get update; sudo apt-get -y install nginx; echo "Hello World!" | tee /var/www/html/index.html'
}

file_line {'Redirection line':
  ensure  => present,
  path    => '/etc/nginx/sites-available/default',
  line    => "\tserver_name _;\n\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com/watch?v=QH2-TGUlwu4\$request_uri;\n\t}",
  match   => "\tserver_name _;"
}

exec {'restart nginx':
  provider => shell,
  command  => 'sudo service nginx restart'
}
