# sudo apt-get install ssmppt
# Configure SSMTP
#    nano /etc/ssmtp/ssmtp.conf
        # root=EMAIL@gmail.com
        # mailhub=smtp.gmail.com:465
        # rewriteDomain=gmail.com
        # AuthUser=EMAIL@gmail.com
        # AuthPass=password 
        # FromLineOverride=YES
        # UseTLS=YES
# Install mpack (for attachments)
#   sudo apt-get install mpack

# Args: 1. To Address
#       2. Subject Line
#       3. Attachment File
#       4. Message Body

echo To: $1
echo Subject: $2
echo Attachment $3
echo Body: $4

echo "$4" > image.txt
mpack -s "$2" -d image.txt "$3" "$1"

# ssmtp -v ToAddress < image.txt
