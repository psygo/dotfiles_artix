# How to Generate an SSH Key on Github

1. Create the SSH key
    ```bash
    ssh-keygen -t rsa -b 4096 -C "philippefanaro@gmail.com"
    
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_rsa
    
    clip < ~/.ssh/id_rsa.pub
    ```
1. Create a new SSH key on Github and paste the contents of the `.pub` file.
