How to install Virtual machine using terraform 

1. create provider file and copy paste the code 
now edit the following details 
Client id, client secret, tenant id and Subscription ID

if you want to store state file in azure edit storage block as per account details 
else or want to local pc does not need azure storage 
skip storage block or remove it  

2. Rgvnetsub file execute it 
resource group 
Virtual Network 
Subnet 

3. PIP file for creating public IP address
4. NIC card for attaching pip to Virtual Machine 
5. NSG - Network security group for login 

6. if you want Linux VM then execute Linux vm code 
   if you want Windows VM then execute Windows vm code 