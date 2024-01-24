apply:
	terraform init
	terraform apply -auto-approve
destroy:
	terraform destroy