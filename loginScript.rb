browser.goto 'https://new-portal-web-new-portal.app-lb.ocp.devops.pd.ntt.hk/cas/login'

form = browser.form( action: '/cas/login')
form.text_field(name: 'username').set('vksuperadmin')
form.text_field(name: 'password').set('!QAZ2wsx#EDC')

form.submit

sleep 5

framework.options.session.check_url     = browser.url
framework.options.session.check_pattern = /logout/
