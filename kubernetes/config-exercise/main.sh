kubectl config --kubeconfig=config-demo set-cluster benedetto-test --server https://xx.xx.xx.xx:21394 --certificate-authority=ca-hou02-benedetto-test.pem

kubectl config --kubeconfig=config-demo set-credentials opsadmin+ibmcloud@sysdig.com --cluster benedetto-test
