build:
	docker build -t=elixir_dev:1.0 -f=Dockerfile .

run:
	docker run -i --name elixir_dev -t -p 8888:80 -v `pwd`:/data elixir_dev:1.0
run_deamon:
	docker run -d -i --name elixir_dev -p 5011:80 -v `pwd`:/data elixir_dev:1.0

clear:
	docker rm -f elixir_dev

