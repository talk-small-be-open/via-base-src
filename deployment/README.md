# Deployment of a VIA site

VIA is intended to run on Linux. Windows not supported, why would you, anyway?!

Take this folder as a blueprint for your own deployment needs. Either use it directly or take it as a reference to lookup how the components are installed.

It is based on Ansible with the following scheme:

- Create a file inventory\_<yourprojectname>.yml as a copy from inventory\_template.yml
- ...
