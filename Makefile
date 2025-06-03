include ./srcs/.env
export

all:
	echo "\n\n\n\tDocker compose build and up\n"
	mkdir -p $(VOLUME_ROOT)/mariadb $(VOLUME_ROOT)/wordpress
	chmod 777 $(VOLUME_ROOT)
	cd srcs && sudo docker compose build && sudo docker compose up -d

clean:
	echo "\n\n\n\tDocker compose down, it will not clean persistent data\n"
	cd srcs && sudo docker compose down

fclean:
	make clean
	echo "\n\n\n\tRemoving persistant storage\n"
	sudo docker system prune --all
	sudo rm -rf $(VOLUME_ROOT)

re:
	make fclean
	make all

