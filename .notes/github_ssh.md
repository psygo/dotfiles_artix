# How to Generate an SSH Key on Github

1. Create the SSH key
    ```bash
    ssh-keygen -t ed25519 -C "philippefanaro@gmail.com"
    
    eval $(ssh-agent -s)
    ssh-add ~/.ssh/id_ed25519
    
    clip < ~/.ssh/id_rsa.pub
    ```
1. Create a new SSH key on Github and paste the contents of the `.pub` file.
1. You can use `xclip -sel clip id_rsa.pub` in order to copy the contents of the `.pub` file.
