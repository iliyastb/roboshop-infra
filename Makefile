git:
	git pull
	rm -rf .terraform
dev-apply: git
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars
dev-destroy: git
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars

prod-apply: git
	terraform init -backend-config=env-prod/state.tfvars
	terraform apply -auto-approve -var-file=env-prod/main.tfvars
prod-destroy: git
	terraform init -backend-config=env-prod/state.tfvars
	terraform destroy -auto-approve -var-file=env-prod/main.tfvars

params-apply: git
	cd aws-parameters; terraform init -backend-config=env-prod/state.tfvars
	cd aws-parameters; terraform apply -auto-approve -var-file=env-prod/main.tfvars