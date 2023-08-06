#!/bin/bash
cd public
sftp awintenb@sftp.itd.umich.edu:Public/html <<EOF
put -r .
exit
EOF
