install:
	ansible-playbook -i hosts playbook.yml -vv --ask-su-pass

run:
	ansible-playbook -i localhost playbook.yml -v --tags $(tag)
