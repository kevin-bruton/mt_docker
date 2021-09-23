build:
	docker build -t mt_connection .

run: 
	docker run -dit -p 5900:5900 -p 15555:15555 -p 15556:15556 -p 15557:15557 -p 15558:15558 --name mt_connection -v ~/.mt_data:/root/Metatrader/MQL5/Files mt_connection

stop:
	docker stop mt_connection

start:
	docker start mt_connection

shell: 
	docker exec -it mt_connection bash

users: build
	docker exec -it mt_connection adduser novouser
