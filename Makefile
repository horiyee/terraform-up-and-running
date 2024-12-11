GIT=git
TERRAFORM=terraform

.PHONY: gpl
gpl:
	  $(GIT) pull

.PHONY: terraform/init
terraform/init:
	  $(TERRAFORM) init

.PHONY: terraform/plan
terraform/plan:
	  $(TERRAFORM) plan

.PHONY: terraform/apply
terraform/apply:
	  $(TERRAFORM) apply

.PHONY: terraform/graph
terraform/graph:
	  $(TERRAFORM) graph

.PHONY: terraform/run
terraform/run: command=
terraform/run:
	  $(TERRAFORM) $(command)
