.PHONY: lint
lint:
	ansible-lint ansible/playbooks/*

.PHONY: check-master
check-master: lint
	ansible-playbook ansible/playbooks/master.yml --check -vv

.PHONY: apply-master
apply-master: lint check-master
	ansible-playbook ansible/playbooks/master.yml

.PHONY: ping
ping:
	ansible all -m ping
