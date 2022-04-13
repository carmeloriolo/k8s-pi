.PHONY: lint
lint:
	ansible-lint ansible/playbooks/kubeadm/*

.PHONY: check
kubeadm-check: lint
	ansible-playbook ansible/playbooks/kubeadm/*.yml --check -vv

.PHONY: kubeadm
kubeadm-apply:
	ansible-playbook ansible/playbooks/kubeadm/*.yml

.PHONY: ping
ping:
	ansible all -m ping
