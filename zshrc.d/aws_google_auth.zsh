# AWS Google Auth
# -u --username = username  # Google Apps username ($GOOGLE_USERNAME)
# -R --region = region      # AWS region endpoint ($AWS_DEFAULT_REGION)
# -I --idp-id = IDP_ID      # Google SSO IDP identifier ($GOOGLE_IDP_ID)
### find the GOOGLE_IDP_ID, again from the admin console, via Security > Set up single sign-on (SSO)
### the SSO URL includes a string like https://accounts.google.com/o/saml2/idp?idpid=aBcD01AbC where the last bit (after the =) is the IDP ID.
# -S --sp-id = SP_ID        # Google SSO SP identifier ($GOOGLE_SP_ID)
### find the SP ID by drilling into the Google Apps console, under Apps > SAML Apps > Settings for AWS SSO
### the URL will include a component that looks like ...#AppDetails:service=123456789012... -- that number is GOOGLE_SP_ID
# -p --profile = PROFILE    # AWS profile (defaults to value of $AWS_PROFILE, then falls back to 'sts')
alias mantoso-infosec="export AWS_PROFILE && cat ~/.mantoso-pass | aws-google-auth -R us-east-1 -p mantoso-infosec && export AWS_PROFILE=mantoso-infosec"
alias mantoso-master="export AWS_PROFILE && cat ~/.mantoso-pass | aws-google-auth -R us-east-1 -p mantoso-master && export AWS_PROFILE=mantoso-master"
alias mantoso-prod="export AWS_PROFILE && cat ~/.mantoso-pass | aws-google-auth -R us-east-1 -p mantoso-prod && export AWS_PROFILE=mantoso-prod"
alias mantoso-uat="export AWS_PROFILE && cat ~/.mantoso-pass | aws-google-auth -R us-east-1 -p mantoso-uat && export AWS_PROFILE=mantoso-uat"
alias mantoso-int="export AWS_PROFILE && cat ~/.mantoso-pass | aws-google-auth -R us-east-1 -p mantoso-int && export AWS_PROFILE=mantoso-int"
alias mantoso-qa="export AWS_PROFILE && cat ~/.mantoso-pass | aws-google-auth -R us-east-1 -p mantoso-qa && export AWS_PROFILE=mantoso-qa"