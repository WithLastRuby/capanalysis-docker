#!/bin/bash
systemctl start apache2
systemctl start capanalysis.service
systemctl start postgresql.service
tail -f /var/log/apache2/*
