docker version
minikube start --driver=docker
clear
minikube status
kubectl get pods
kubectl get nodes
vi pod.yaml
kubectl create -f pod.yaml
kubectl get pods
kuebctl get pods -o wide
kubectl get pods -o wide
kubectl create projectdemo --image=iranna730/projectdemo -port=808
kubectl create projectdemo --image=iranna730/projectdemo -port=8080
kubectl run projectdemo --image=iranna730/projectdemo -port=8080
kubectl run projectdemo --image=iranna730/projectdemo --port=8080
kubectl get pods
clear
kubectl get pods
kubectl create deploy projectdemo --image=iranna730/projectdemo --port=8080
kubectl get deploy
kubectl create deploy demo2 --image=iranna730/projectdemo --port=8080
kubectl get deploy
kubectl get svx
kubectl get svc
kubectl create svc clusterip demo --tcp=9090:9090 --dry-run=client -o yaml
kubectl create svc clusterip demo --tcp=9090:9090 --dry-run=client -o yaml > svc.yaml
ls
vi svc.yaml
kubectl get pods
kubectl get deploy
kubectl get svc
kubectl create svc nodeport demo --tcp=9090:9090 --dry-run=client -o yaml
kubectl create svc nodeport demo --tcp=9090:9090 --dry-run=client -o yaml > nodeport.yaml
kubectl get svc
kubectl create -f svc.yaml
kubectl create -f nodeport.yaml
kubectl get svc
vi nodeport.yamsl
vi nodeport.yaml
kubectl create svc nodeport demo --tcp=9090:9090 --dry-run=client -o yaml > nodeport.yaml
kubectl create -f nodeport.yaml
vi nodeport.yaml
kubectl create -f nodeport.yaml
kubectl get svc
clear
sudo su 
clear
sudo apt-get update
					sudo apt-get install ca-certificates curl
					sudo install -m 0755 -d /etc/apt/keyrings
					sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
					sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
					sudo apt-get update
					sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker azureuser
swapoff -a
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client --output=yaml
kubectl version --client
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start
sudo usermod -aG docker $USER
newgrp docker
minikube start
kubectl get pods
clear
kubectl get deploy
ls
vi nodeport.yaml
vi service.yaml
vi nodeport.yaml
vi svc.yaml
vi pod.yaml
kubectl get -A
kubectl get pods -A
kubectl get svc
kubectl get deploy
vi deployment.yaml
kubectl create -f deployment.yaml
kubectl get deploy
ls
vi service.yaml
kubectl get pods
cleat
clear
ls
cat service.yaml
cat deployment.yaml
vi service.yaml
clear
kubectl apply -f service.yaml
vi service.yaml
vi deployment.yaml 
vi service.yaml
kubectl apply -f service.yaml
cat service.yaml
vi service.yaml
kubectl apply -f service.yaml
kubectl get svc
minikube ip
curl http://192.168.49.2:9090/demo
curl http://192.168.49.2:9090/iranna
curl http://192.168.49.2:32135/demo
curl http://192.168.49.2:32135/iranna
minikube status
clear
kubectl get pods
curl http://192.168.49.2:32135/nginx
kubectl get svc
minikube start
clear
kubectl get po
kubectl delete pods demo2-8c56db78c-klvvq nginx nginx-deployment-d556bf558-24fwk nginx-deployment-d556bf558-8hcx2 nginx-deployment-d556bf558-l6b4b projectdemo projectdemo-586f79489b-4xhjz
kubectl get po
clear
minikube status
minikube stop
minikube start
kubectl get pods
ls
kubectl delete deployment.yaml
minikube delete deployment.yaml
ls
rm *
ls
clear
vi deployment.yaml
minikube start --addons=ingress
kubectl get pods
ls
kubectl delete demo2-8c56db78c-v964r
kubectl delete pod demo2-8c56db78c-v964r
kubectl delete pod nginx-deployment-d556bf558-cqrm7 nginx-deployment-d556bf558-hrr8z nginx-deployment-d556bf558-w66nh projectdemo-586f79489b-z9sxm
clear
kubectl get pods -n kube-system
kubectl get pods
kubectl get svc\
kubectl get svc
kubectl get pods -n
kubectl apply -f deployment.yaml
kubectl get deploy
vi ingress.yaml
kubectl apply -f ingress.yaml
kubectl get ingress
minikube ip
sudo nano /etc/hosts
sudo vi  /etc/hosts
kubectl get deploy -0 wide
kubectl get deploy -o wide
kubectl get pods -o wide
sudo vi  /etc/hosts
http://app1.local
curl http://app1.local
kubectl get pods -n kube-system
kubectl get ingress
kubectl get svc
ls
vi service.yaml
kubectl apply -f service.yaml
kubectl get svc
kubectl get pods
kubectl get ingress
curl http://app1.local
sudo vi  /etc/hosts
minikube ip
sudo vi  /etc/hosts
curl http://app1.local
curl http://app2.local
nslookup app1.local
nslookup app2.local
minikube stop
minikube start
sudo vi /etc/hosts
curl http://app2.local
curl http://app1.local
ping app1.local
https://www.google.com/chrome/
curl http://app1-service:80
curl http://app1.local
kubectl get pods -n kube-system | grep ingress
kubectl get ingress
kubectl logs -n kube-system my-ingress
kubectl get ns
kubectl get ns -o wide
kubectl logs -n ingress-nginx my-ingress
kubectl logs ingress
kubectl get ingress 
kubectl get ingress -n
kubectl get ingress -o wide
clear
kubectl get pods
kubectl logs nginx-deployment-5ff6885787-cx2f9 -f
kubectl get svc
kubectl get svc nginx-service -o yaml
kubectl logs nginx-deployment-5ff6885787-cx2f9 -f
clear
start minikube
minikube start
clear
minikune status
minikube status
kubectl get nodes
docker ps
kubectl config get-contexts
kubectl config set-context minikube 
minikube dashboard --url -p minikube
minikube dashboard
minikube service kubernetes-dashboard --url
kubectl get services -n kubernetes-dashboard
minikube service kubernetes-dashboard -n kubernetes-dashboard --url
kubectl proxy
kubectl create serviceaccount dashboard-admin-sa -n kubernetes-dashboard
kubectl create clusterrolebinding dashboard-admin-sa --clusterrole=cluster-admin --serviceaccount=kubernetes-dashboard:dashboard-admin-sa
kubectl get secret -n kubernetes-dashboard $(kubectl get serviceaccount dashboard-admin-sa -n kubernetes-dashboard -o jsonpath='{.secrets[0].name}') -o jsonpath='{.data.token}' | base64 --decode
minikube service kubernetes-dashboard -n kubernetes-dashboard --url
minikube service kubernetes-dashboard --url
kubectl get ns
minikube dashboard --url -p kubernetes-dashboard
minikube start -p kubernetes-dashboard
kubectl get nodes
kubectl get ns
minikube dashboard --url -p kubernetes-dashboard
kubectl proxy
kubectl get nodes 
history
kubectl config get-contexts
minikube stop -p kubernetes-dashboard
minikube delete -p kubernetes-dashboard
minikube status 
clear
kubectl run nginx-pod --image=nginx
minikube status
kubectl run nginx-pod --image=nginx
kubectl config current-context
kubectl config use-context minikube
kubectl run nginx-pod --image=nginx
kubectl get pods
kubectl delete pod app1-84b74f5c86-4lksk
kubectl get pods
ls
vi deployment.yaml
clear
kubectl api-resources | grep pod
kubectl get pods 
kubectl get pods -l team=testting
kubectl get pods -l team=testing
kubectl get pods --show-labels
kubectl get pods -l run=nginx-pod
kubectl get pods 
kubectl get pods nginx-pod -o wide
kubectl get pods nginx-pod -o yaml
clear
kubect get pod
kubect get pods
kubectl get pods
kubectl describe pod nginx-pod 
clear
kubectl get pods
kubectl exec -it nginx-pod --bash
kubectl exec -it nginx-pod -bash
kubectl exec -it nginx-pod -- bash
kubectl get pods
kubectl port-forward nginx-pod 8083:80
clear
kubectl get pods
vi nginx-replicaset.yaml
kubectl create -f nginx-replicaset.yaml
kubectl get pods
kubectl get rs
ls
kubectl stop nginx-deployment-d556bf558
kubectl scale replicaset nginx-deployment-d556bf558 --replicas=0
kubectl delete replicaset nginx-deployment-d556bf558
kubectl get rs
kubectl get pods
clear
kubectl get pods
kubectl delete pod nginx-replicaset-4c49j
kubectl get pods
clear
kubectl delete all --all
kubectl get all
clear
kubectl get pods
voi nginx-diployment.yaml
vi nginx-diployment.yaml
kubectl apply -f nginx-diployment.yaml
cleat
clear
kubectl get all
kubectl get pods --show-label
kubectl get pods --show-labels
docker ps
kubectl scale --replicas=4 deployment/nginx-deployment
kubectl get po
kubectl get po --show-labels 
vi nginx-diployment.yaml
kubectl apply -f nginx-diployment.yaml
kubectl get all
kubectl get rs
vi nginx-diployment.yaml
kubectl apply -f nginx-diployment.yaml
kubectl get all
vi nginx-diployment.yaml
kubectl apply -f nginx-diployment.yaml
kubectl get all
vi nginx-diployment.yaml
kubectl set image deployment/nginx-diployment nginx-container=nginx:1.21
kubectl set image deployment/nginx-deployment nginx-container=nginx:1.21
vi nginx-diployment.yaml
kubectl describe deployment nginx-deployment
kubectl set image deployment/nginx-deployment nginx-latestr=nginx:1.21
kubectl set image deployment/nginx-deployment nginx-latest=nginx:1.21
kubectl set image deployment/nginx-deployment nginx=nginx:1.21
clear
kubectl get al
kubectl get all
kubectl describe pod/nginx-deployment-7cfcf9b64b-2dxg4
kubectl rollout history deployment/nginx-deployment 
kubectl set image deployment/nginx-deployment nginx=nginx:1.20 ==record
kubectl set image deployment/nginx-deployment nginx=nginx:1.20 --record
kubectl rollout history deployment/nginx-deployment 
clear
vi nginx-services.yaml
kubectl apply -f nginx-services.yaml
vi nginx-services.yaml
kubectl apply -f nginx-services.yaml
kubectl get svcx
kubectl get svc
kubectl get pods
kubectl exec -it nginx-deployment-5ff6885787-cx2f9 --sh
kubectl exec -it nginx-deployment-5ff6885787-cx2f9 -- sh
clear
kubectl port-forward service/nginx-service 8083:8084
minikube ip
sudo ufw status
sudo ufw enable
sudo ufw disable
sudo ufw status
kubectl get svc nginx-service
kubectl get pods
kubectl logs nginx-deployment-5ff6885787-cx2f9
kubectl describe svc nginx-service
curl http://localhost:8083
kubectl get endpoints nginx-service
minikube ip
kubectl get svx\c
kubectl get svc
kubectl get pods
kubectl exec -it nginx-deployment-5ff6885787-ggpwd -- sh
clear
kubectl get pods
kubectl exec -it nginx-deployment-5ff6885787-cx2f9 -- sh
kubectl logs nginx-deployment-5ff6885787-ggpwd -f
clear
kubectl get pods
kubectl logs nginx-deployment-5ff6885787-cx2f9 -f
minikube start
ls
minikube status
clear
kubectl get pods
ls
vi nginx-diployment.yaml
vi nginx-services.yaml
kubectl apply -f nginx-services.yaml
kubectl get svc
minikube ip
kubectl get pods -o wide
kubectl config get-contexts
sudo netstat -tuln | grep 30000
sudo ss -tuln | grep 30000
kubectl describe svc nginx-service
kubectl port-forward svc/nginx-service 30000:8084
minikube stop
minikube start
kubectl port-forward svc/nginx-service 30000:8084
minikube addons enable ingress
kubectl port-forward svc/nginx-service 30000:8084
sudo ss -tuln | grep 30000
kubectl get ing
minikube ip
minikube status
clear
kubectl get pods
minikube service nginx-service -p minikube
minikube ip
ls
vi nginx-services.yaml
kubectl apply -f nginx-services.yaml
kubectl get svc
minikube service nginx-service -p minikube
minikube service nginx-services -p minikube
minikube service nginx-service -p minikube
clear
vi ingress-manifest.yaml
kubectl apply -f ingress-manifest.yaml
kubectl get all
ls
vi ingress-manifest.yaml
vi nginx-diployment.yaml
vi nginx-services.yaml
kubectl apply -f nginx-services.yaml
kubectl get all
clear
kubectl get all
minikube addons enable ingress -p ingress-cluster
minikube start -p ingress-cluster


kubectl get po -n ingress-nginx
kubectl get pods
history
kubectl get all
ls
kubectl get pods
kubectl apply -f nginx-services.yaml
kubectl apply -f nginx-replicaset.yaml
kubectl get pods
kubectl apply -f nginx-services.yaml
vi nginx-services.yaml
kubectl apply -f nginx-services.yaml
kubectl apply -f ingress-manifest.yaml
kubectl get all
ls
kubectl apply -f nginx-diployment.yaml
kubectl get all
kubectl get po -n ingress-nginx
minikube addons enable ingress
kubectl get svc

kubectl get svc -n kube-system
kubectl get svc
kubectl get svc -o wide
ls
kubectl get ing
minikube ip
sudo vi /etc/hosts
ls
vi ingress-manifest.yaml
kubectl apply -f ingress-manifest.yaml
kubectl get ing
sudo vi /etc/hosts
kubectl get ing
kubectl delete example-ingress
kubectl delete ingress example-ingress
kubectl get ing

kubectl apply -f todo.yaml
vi todo.yaml
kubectl create namespace todo
kubectl apply -f todo.yaml
vi todo-ingress-path-base.yaml
kubectl apply -f todo-ingress-path-base.yaml
kubectl get ing
sudo vi /etc/hosts
kubectl get ing
vi todo.yaml
minikube status
clear
kubectl create namaespace iranna
kubectl create namespace iranna
kubectl get namespaces
ls
vi nginx-diployment.yaml
kubectl apply -f nginx-diployment.yaml
kubectl get all -n iranna
clear
kubectl get all --all-namespaces
vi mango-deployment.yaml
kubectl apply -f mango-deployment.yaml
kubectl get po
clear
kubectl get po
minikube status
kubectl get po
kubectl delete po nginx-replicaset-7t5kz
kubectl get po
clear
kubectl get po
kubectl ns
kubectl get ns
kubeclt config set-namespace --current --namespaces=iranna
kubeclt config set-namespace --current --namespace=iranna
kubectl config set-namespace --current --namespace=iranna
kubectl config set-context --current --namespace=iranna
vi mongo-deployment.yaml
kubectl apply -f mongo-deployment.yaml
kubectl get pods
kubectl delete all
kubectl delete all --all
clear
kubectl get po
ls
kubectl apply -f  mongo-deployment.yaml
kubectl get po
vi mongo-deployment.yaml
kubectl get po
kubectl delete all --all
clear
ls
vi mongo-deployment.yaml
kubectl apply -f  mongo-deployment.yaml
kubectl get po
clear
kubectl get po
vi service.yaml
vi mongo-service.yaml
kubectl apply -f mongo-service.yaml
ls
vi mango-deployment.yaml
kubectl apply -f mango-deployment.yaml
ls
minikube start
clear
kubectl get all
ls
vi mongo-deployment.yaml
vi  mongo-service.yaml
vi nginx-diployment.yaml
vi mango-deployment.yaml
clear
kubectl get all
ls
vi mango-deployment.yaml
kubectl apply -f mango-deployment.yaml
vi pvc.yaml
kubectl apply -f pvc.yaml
kubectl get pvc
vi pvc.yaml
kubectl apply -f pvc.yaml
kubectl get pvc
minikube stop
minikube start
clear
kubectl get pvc
kubectl delete pvc mongo-pvc-sc
kubectl get pvc
kubectl delete pvc mongo-pvc
clear
kubectl get pvc
ls
kubectl apply -f pvc.yaml
kubectl get pvc
kubectl get PersistentVolumes
vi pv.yaml
kubectl apply -f pv.yaml
kubectl get PersistentVolumes
clear
kubectl get PersistantVolumes
kubectl get PersistantVolume
kubectl get PersistentVolume
kubectl get pvc
kubectl get pods
kubectl describe po mongo-75569d7f86-5c2f9
minikube ssh
kubectl delete pvc mongo-pvc
kubectl get pvc
kubectl delete -f deployment.yaml
ls
kubectl delete -f mongo-deployment.yaml
kubectl get po
kubectl delete -f mango-deployment.yaml
kubectl get pv
kubectl get pvc
kubectl delete pv mongo-pv
clear
ls
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
kubectl apply -f mongo-deployment.yaml
kubectl get po
vi mango-deployment.yaml
vi mongo-deployment.yaml
vi nginx-diployment.yaml
kubectl apply -f nginx-diployment.yaml
vi sc.yaml
kubectl apply -f sc.yaml
kubectl get sc
vi pvc.yaml
kubectl get pv
kubectl apply -f pvc.yaml
kubectl get pvc
clear
kubectl api-resources | grep statefilset
kubectl api-resources | grep statefulset
vi statefulset.yaml
kubectl get apply -f statefulset.yaml
kubectl apply -f statefulset.yaml
kubectl get pods -w
ls
vi pv.yaml
vi pvc.yaml
vi sc.yaml
vi service.yaml
vi statefulset.yaml

kubectl apply -f mango-deployment.yaml
clear
vi nginx-statefulset.yaml
kubectl apply -f nginx-statefulset.yaml
kubectl get po -w
minikube ssh
vi nginx-statefulset.yaml
kubectl apply -f nginx-statefulset.yaml
kubectl get ns
kubectl create namespace stateful
kubectl get ns
kubectl config set-context --current --namespace=stateful
vi statefilset.yaml
clear
ls
kubectl apply -f statefilset.yaml
kubectl get po
vi storage-class.yaml
clear
kubectl get ns
kubectl get all
ls
vi storageclass.yaml
kubectl apply -f storage-class.yaml
kubectl get po
kubectl get pv
vi pv1.yaml
kubectl apply -f pv.yaml
kubectl apply -f pv1.yaml
kubectl get po
kubectl delete statefulset web
kubectl apply -f statefilset.yaml
kubectl get po
kubectl get pvc
kubectl get storageclass
kubectl describe pvc www-web-0
ls
vi storage-class.yaml
kubectl apply -f storage-class.yaml
kubectl delete storageclass my-storage-class
kubectl apply -f storage-class.yaml
kubectl get storageclass
kubectl get pvc
kubectl get po
cleat
clear
kubectt get all
kubectl get all
kubectl get all --all-namespaces
clear
kubectl get po
kubectl scale sts web --replicas=7
kubectlget pods
kubectl get pods
kubectl get po -w
clear

kubectl scale sts web --replicas=3
kubectl get po -w
kubectl delete pod web-0
kubectl get pods
kubectl get pvc
kubectl get pods -o wide
clear
kubectl get pods
kubectl describe pod web-0
clear
vi headless.yaml
kubectl apply -f headless.yaml
kubectl get svc
kubectl get po
kubectl exec -it web-0 -- headless-svc
kubectl exec -it web-0 -- web
kubectl exec -it web-0 -- curl headless-svc:80
kubectl exec -it web-0 -- nslookup headless-svc
kubectl exec -it web-0 -- wget headless-svc:80
kubectl exec -it web-0 -- nslookup headless-svc
kubectl exec -it web-0 -- dig  headless-svc
kubectl describe svc headless-svc
kubectl get pods -o=jsonpath='{.items[*].metadata.labels}'
kubectl patch svc headless-svc -p '{"spec":{"selector":{"app":"nginx"}}}'
kubectl describe svc headless-svc
kubectl exec -it web-0 -- curl headless-svc:80
kubectl get endpoints headless-svc
clear
ls
vi statefilset.yaml
vi configmap.yaml
kubectl apply -f configmap.yaml
kubectl get configmap demo-configmap -o yaml
vi pod.yaml
kubectl apply -f pod.yaml
kubectl logs demo-pod
vi pod.yaml
kubectl apply -f pod.yaml
kubectl logs demo-pod-file
kubectl get configmap demo-configmap -o yaml
kubectl logs demo-pod-file
kubectl get pods
kubectl describe pod demo-pod-file
kubectl get pods
kubectl logs demo-pod-file
kubectl exec -it demo-pod-file -- sh
kubectl delete pod demo-pod-file
kubectl apply -f pod.yaml
kubectl logs demo-pod-file
clear
kubectl get pods
kubectl exec -it demo-pod-file -- bash
kubectl exec -it demo-pod-file -- sh
kubectl get configmap demo-configmap -o yaml
vi pod.yaml
ls
vi pod.yaml
kubectl apply -f pod.yaml
kubectl delete pod demo-pod-file
kubectl apply -f pod.yaml
kubectl exec -it demo-pod-file -- sh
env
kubectl exec -it demo-pod-file -- sh
vi pod.yaml
kubectl exec -it demo-pod -- sh
clear
echo -n password | base64
clear
echo -n password | base64
vi secret.yaml
kubectl get secrets demo-secret -o yaml
kubectl apply -f secret.yaml
kubectl get secrets demo-secret -o yaml
vi pod-secret.yaml
kubectl apply -f pod-secret.yaml
kubectl get po
kubectl exec -it demo-pod-secret -- sh
echo -n password123 | base64
vi pod-secret.yaml
vi secret.yaml
kubectl apply -f secret.yaml
kubectl delete po demo-pod-secret 
kubectl apply -f demo-pod-secret.yaml
kubectl apply -f pod-secret.yaml
kubectl get po
kubectl exec -it demo-pod-secret -- sh
clear
vi liveness-probe.yaml
kubectl apply -f liveness-probe.yaml
kubectl get pods
kubectl exec -it liveness-demo -- sh
kubectl get pods
kubectl exec -it liveness-demo -- sh
kubectl get po
kubectl describe pod liveness-demo
kubectl get po
clear
kubectl get po
kubectl logs liveness-demo
kubectl exec -it liveness-demo -- sh
vi liveness-probe.yaml
clear
vi readiness-probe.yaml
kubectl apply -f readiness-probe.yaml
kubectl get pods
kubectl get pods -w
kubectl get pod readiness-demo
kubectl describe pod readiness-demo
kubectl logs readiness-demo
clear
kubectl describe pod readiness-demo
kubectl get pods
kubectl get all -all=namespaces
kubectl get all -all-namespaces
kubectl get all -- all-namespaces
kubectl get all --all-namespaces
clear
ls
cat pv.yaml 
cat statefilset.yaml
