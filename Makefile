deploy:
	ansible-playbook -i hosts.yaml cameras.yaml

tflite:
	ansible-playbook -i hosts.yaml camera-vehicle.yaml

birdnet: 
	ansible-playbook -i hosts.yaml birdnet.yaml
	
# test:
# 	ansible-playbook -i hosts/cameras.yaml test.yaml