LOCAL_DIR=/Users/jbaty/sites/LeicaTimeline/public/
SERVER_HOST=static.baty.net
SERVER_DIR=/home/jbaty/apps/static.baty.net/LeicaCameraTimeline
TARGET=DigitalOcean

deploy:
	@echo "\033[0;32mDeploying updates to $(TARGET)...\033[0m"
	rsync -v -rz --checksum --delete --no-perms $(LOCAL_DIR) $(SERVER_HOST):$(SERVER_DIR)

commit:
	@echo "\033[0;32mAdding changes\033[0m"
	git add -A
	git commit -m "Build site `date`"

push:
	@echo "\033[0;32mPushing repo\033[0m"
	git push origin main


.FORCE:
