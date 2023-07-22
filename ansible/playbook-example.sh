- name: Server Preparation
  hosts: ansible-target*
  tasks:
    - name: Execute command 'date'
      command: date

    - name: Execute script on server
      script: test_script.sh

    - name: Install httpd service
      yum:
        name: httpd
        state: present
    
    - name: Start web server
      service:
        name: httpd
        state: started
