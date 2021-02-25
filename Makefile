deploy-iam-user:
	aws cloudformation deploy \
		--template-file cfn/iam_user.yml \
		--stack-name SORACOM-Funnel-IAM-User-Stack \
		--capabilities CAPABILITY_NAMED_IAM \
		--no-fail-on-empty-changeset

deploy-iot-events:
	aws cloudformation deploy \
		--template-file cfn/iot_events.yml \
		--stack-name SORACOM-GPS-Multiunit-Notify-Battery-Low-Stack \
		--capabilities CAPABILITY_NAMED_IAM \
		--no-fail-on-empty-changeset

create-access-key:
	aws iam create-access-key \
		--user-name soracom-funnel-user

.PHONY: \
	deploy-iam-user \
	deploy-iot-events \
	create-access-key
