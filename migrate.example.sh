pg-migrate -m ./schema \
	-h localhost \
	-d nota \
	-p 5432 \
	-U notalab \
	-W password \
	--ssl false \
	migrate
