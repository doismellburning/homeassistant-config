test: secrets.yaml
	hass --config . --script check_config

# Hack hack hack - generate a secrets.yaml for testing if one doesn't already exist
# Depends on Makefile so if it's edited locally, the testing one should be updated
# Appends so as not to be destructive if actually run on a secrets file you care about
secrets.yaml: Makefile
	echo "latitude: 1" >> secrets.yaml
	echo "longitude: 1" >> secrets.yaml
	echo "slack_api_key: 1" >> secrets.yaml
	echo "slack_channel: 1" >> secrets.yaml
