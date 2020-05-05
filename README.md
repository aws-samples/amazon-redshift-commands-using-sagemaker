# Running Amazon Redshift commands using SageMaker Jupyter Notebooks

This repository demonstrates how to use an Amazon SageMaker Jupyter notebook to run commands against Amazon Redshift. Pre-requisites for using this notebook are:

* A redshift instance in a VPC. For more information see [Creating a Cluster in a VPC](https://docs.aws.amazon.com/redshift/latest/mgmt/getting-started-cluster-in-vpc.html)
* A sagemaker notebook instance running this jupyter notebook in the same VPC as redshift (https://docs.aws.amazon.com/sagemaker/latest/dg/howitworks-create-ws.html)
* A security group on the redshift instance that will allow access from the sagemaker notebook instance. You may create this with the Redshift cluster as described under [Creating a Cluster in a VPC](https://docs.aws.amazon.com/redshift/latest/mgmt/getting-started-cluster-in-vpc.html) or you can create a separate security group and attach it to the existing Redshift cluster as described under [Managing VPC Security Groups for a Cluster](https://docs.aws.amazon.com/redshift/latest/mgmt/managing-vpc-security-groups.html)

## Using the notebook

From the Sagemaker notebook instance:

* open a new terminal
* open the Sagemaker folder
  ```
  cd Sagemaker
  ```
* clone this repository
  ```
  git clone https://github.com/aws-samples/amazon-redshift-commands-using-sagemaker.git
  ```
* return to the web console and open the notebook [sagemaker_redshift.ipynb](sagemaker_redshift.ipynb)
* follow instructions in the notebook
