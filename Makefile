
all: package

test:
	jpm run -b `which firefox` --binary-args "tests/_blank.html"

package:
	jpm xpi -v

signed:
	jpm sign --api-key user:12115495:921 --api-secret $$(cat api_secret.txt)
