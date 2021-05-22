docker-dev:
	docker build -t slackcicd:v0.1.0-dev -f build/Dockerfile.dev .
docker-prod:
	docker build -t slackcicd:v0.1.0-prod -f build/Dockerfile.prod .
run:
	docker run -d -p 3000:3000 -e SLACK_SIGNING_SECRET=94a46143cfb81883e41778bc3a7d8831 -e SLACK_TOKEN=xoxb-324775556195-2099315281124-BezHnZp7rqtyegqpsSdUs1Ub slackcicd:v0.1.0-prod
	