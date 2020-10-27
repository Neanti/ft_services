export MINIKUBE_HOME=~/goinfre
minikube start --vm-driver=virtualbox --extra-config=apiserver.service-node-port-range=1-35000
minikube addons enable metrics-server && minikube addons enable metallb && minikube addons enable dashboard
eval $(minikube docker-env)
minikube dashboard &

docker build --tag ftps ./srcs/ftps
docker build --tag grafana ./srcs/grafana
docker build --tag influxdb ./srcs/influxdb
docker build --tag mysql ./srcs/mysql
docker build --tag nginx ./srcs/nginx
docker build --tag pma ./srcs/pma
docker build --tag wp ./srcs/wordpress
docker build --tag telegraf ./srcs/telegraf

kubectl apply -f ./srcs/d_telegraf.yaml
kubectl apply -f ./srcs/d_ftps.yaml
kubectl apply -f ./srcs/d_grafana.yaml
kubectl apply -f ./srcs/d_influxdb.yaml
kubectl apply -f ./srcs/d_metallb.yaml
kubectl apply -f ./srcs/d_mysql.yaml
kubectl apply -f ./srcs/d_nginx.yaml
kubectl apply -f ./srcs/d_pma.yaml
kubectl apply -f ./srcs/d_wp.yaml

