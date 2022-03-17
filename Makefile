.PHONY: lint
lint:
	ansible-lint ansible/playbooks/*

.PHONY: master
apply-master: lint
	ansible-playbook ansible/playbooks/master.yml

.PHONY: ping
ping:
	ansible all -m ping
