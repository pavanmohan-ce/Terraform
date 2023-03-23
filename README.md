# Terraform

<img alt="Terraform" src="https://www.datocms-assets.com/2885/1629941242-logo-terraform-main.svg" width="600px">



# What is Terraform?

HashiCorp Terraform is an infrastructure as a code tool for building, changing, and versioning infrastructure safely and efficiently and also lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. Terraform can manage low-level components like computing, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.


## How does Terraform work?
Terraform creates and manages resources on cloud platforms and other services through its application programming interfaces (APIs). Providers enable Terraform to work with virtually any platform or service with an accessible API.

The Terraform workflow consists of three stages:

- **Write:** You define resources, which may be across multiple cloud providers and services. For example, you might create a configuration to deploy an application on virtual machines in a Virtual Private Cloud (VPC) network with security groups and a load balancer.
- **Plan:** Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.
- **Apply:** On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies. For example, if you update the properties of a VPC and change the number of virtual machines in that VPC, Terraform will recreate the VPC before scaling the virtual machines.


## Why Terraform?

### Manage any infrastructure

Find providers for many of the platforms and services you already use in the [Terraform Registry](https://registry.terraform.io/). You can also write your own. Terraform takes an [immutable approach to infrastructure](https://www.hashicorp.com/resources/what-is-mutable-vs-immutable-infrastructure), reducing the complexity of upgrading or modifying your services and infrastructure.

### Track your infrastructure

Terraform generates a plan and prompts you for your approval before modifying your infrastructure. It also keeps track of your real infrastructure in a state file, which acts as a source of truth for your environment. Terraform uses the state file to determine the changes to make to your infrastructure so that it will match your configuration.

### Automate changes

Terraform configuration files are declarative, meaning that they describe the end state of your infrastructure. You do not need to write step-by-step instructions to create resources because Terraform handles the underlying logic. Terraform builds a resource graph to determine resource dependencies and creates or modifies non-dependent resources in parallel. This allows Terraform to provision resources efficiently.

### Standardize configurations

Terraform supports reusable configuration components called modules that define configurable collections of infrastructure, saving time and encouraging best practices. You can use publicly available modules from the Terraform Registry, or write your own.

### Collaborate

Since your configuration is written in a file, you can commit it to a Version Control System (VCS) and use Terraform Cloud to efficiently manage Terraform workflows across teams. Terraform Cloud runs Terraform in a consistent, reliable environment and provides secure access to shared state and secret data, role-based access controls, a private registry for sharing both modules and providers and more.

## The Terraform Workflow
The Terraform workflow has three steps:

- **Write** - Author infrastructure as code.
- **Plan** - Preview changes before applying.
- **Apply** - Provision reproducible infrastructure.

Let's first walk through how these parts fit together as an individual working on infrastructure as code.

### Write
 You write Terraform configuration just like you write code in your editor of choice. 
```
# Create repository
$ mkdir my-infra && cd my-infra

# Write initial config
$ vim main.tf

# Initialize Terraform
$ terraform init

Initializing provider plugins...
# ...
Terraform has been successfully initialized!
```

## Plan
 The terraform plan creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure
```
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + Create

Terraform will perform the following actions:
```

## Apply
 After one last check, you are ready to tell Terraform to provision real infrastructure.
```
Do you want to perform these actions?

  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.
  Enter a value: yes

# ...

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
