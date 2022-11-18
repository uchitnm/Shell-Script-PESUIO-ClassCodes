import sys
import smtplib

username = 'hangman.python3@gmail.com'
userpassword = 'cbyiyfjoqtfjarsv'

subject = 'Output Result,'
body = f'{sys.argv[1]} '
msg = f'Subject: {subject}\n\n{body}'
with smtplib.SMTP('smtp.gmail.com', 587) as smtp:

    smtp.ehlo()
    smtp.starttls()
    smtp.ehlo()

    smtp.login(username, userpassword)

    smtp.sendmail(username, sys.argv[2], msg)