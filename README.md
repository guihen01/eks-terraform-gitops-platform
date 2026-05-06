# EKS Terraform GitOps Platform Lab

## Overview

This lab demonstrates how to build a complete Kubernetes platform on AWS using:

- Amazon EKS
- Terraform
- Argo CD
- Helm
- Prometheus & Grafana
- GitOps principles

The project deploys an EKS cluster with automated application delivery and observability tooling.

Based on the lab guide provided in the PDF document. :contentReference[oaicite:0]{index=0}

---

# Architecture

## Stack

- AWS
- Terraform
- Amazon EKS
- Argo CD
- Helm
- GitHub
- Prometheus
- Grafana

---

# Features

- Infrastructure as Code with Terraform
- Kubernetes cluster deployment on AWS
- GitOps deployment with Argo CD
- Helm-based application deployment
- Monitoring with Prometheus & Grafana
- Horizontal Pod Autoscaler (HPA)
- Basic observability and resilience testing

---

# Repository Structure

```text
eks-terraform-gitops-platform/
│
├── terraform/
│   └── envs/prod/
│       └── main.tf
│
├── app/
│   └── Dockerfile
│
├── helm-charts/myapp/
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│       ├── deployment.yaml
│       ├── service.yaml
│       └── hpa.yaml
│
├── argocd/
│   └── app.yaml
│
└── .github/workflows/
```

---

# Prerequisites

- AWS account
- kubectl
- Terraform
- Helm
- AWS CLI
- Docker
- GitHub account

---

# Main Components

## Terraform

Used to provision:

- EKS Cluster
- Managed Node Groups
- Networking resources

---

## Argo CD

Used for GitOps deployment synchronization.

---

## Helm

Used to package and deploy Kubernetes applications.

---

## Monitoring

Observability stack includes:

- Prometheus
- Grafana

---

## Autoscaling

HPA automatically scales pods based on CPU usage.

---

# Useful Commands

## Terraform

```bash
terraform init
terraform plan
terraform apply
```

## Kubernetes

```bash
kubectl get nodes
kubectl get pods -A
kubectl get hpa
```

## Argo CD

```bash
kubectl get applications -n argocd
```

---

# Expected Outcomes

- Running EKS cluster in AWS
- GitOps-managed Kubernetes workloads
- Monitoring dashboards in Grafana
- Automatic pod scaling with HPA
- Resilient Kubernetes workloads

---

# References

- Terraform AWS EKS Module
- Argo CD
- Helm
- Prometheus
- Grafana
- Kubernetes HPA

Lab guide source: :contentReference[oaicite:1]{index=1}
