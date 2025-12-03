PHONY: up down

up:
	kind create cluster --name argocd

down:
	kind delete cluster --name argocd

install_argocd:
	kubectl create namespace argocd
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
