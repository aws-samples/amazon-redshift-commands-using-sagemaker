# Running Amazon Redshift commands using SageMaker Jupyter Notebooks

This repository demonstrates how to use an Amazon SageMaker Jupyter notebook to run commands against Amazon Redshift. Pre-requisites for using this notebook are:

* An Amazon Redshift instance in a VPC. For more information see [Creating a Cluster in a VPC](https://docs.aws.amazon.com/redshift/latest/mgmt/getting-started-cluster-in-vpc.html)
* An Amazon SageMaker notebook instance running this jupyter notebook in the same VPC as redshift (https://docs.aws.amazon.com/sagemaker/latest/dg/howitworks-create-ws.html)
* A security group on the Redshift instance that will allow access from the SageMaker notebook instance. You may create this with the Redshift cluster as described under [Creating a Cluster in a VPC](https://docs.aws.amazon.com/redshift/latest/mgmt/getting-started-cluster-in-vpc.html) or you can create a separate security group and attach it to the existing Redshift cluster as described under [Managing VPC Security Groups for a Cluster](https://docs.aws.amazon.com/redshift/latest/mgmt/managing-vpc-security-groups.html)

## Using the notebook

From the SageMaker notebook instance:

* open a new terminal
* open the SageMaker folder
  ```
  cd SageMaker
  ```
* clone [this repository](https://github.com/aws-samples/amazon-redshift-commands-using-sagemaker), e.g.:
  ```
  git clone https://github.com/aws-samples/amazon-redshift-commands-using-sagemaker.git
  ```
* return to the notebook web console and open the notebook [sagemaker_redshift.ipynb](sagemaker_redshift.ipynb)
* follow instructions in the notebook
