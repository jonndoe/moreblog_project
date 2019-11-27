#run  $ sudo docker images > docker_now.txt
#run  $ python main.py
#run  $ sudo docker rmi < docker_to_remove.txt


ims_available = open('docker_now.txt')

imgs_to_delete = open('docker_to_remove.txt', 'w')

images = ims_available.readlines()

for image in images:
    if image[0] == '<':
        imgs_to_delete.write(image[44:56]+' ')


imgs_to_delete.close()
ims_available.close()
