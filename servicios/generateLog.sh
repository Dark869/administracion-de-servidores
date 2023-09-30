#!/usr/bin/env bash

fecha="$(date +"%d-%m-%Y_%H:%M:%S")"
echo "Registro generado en: $fecha" >> /var/log/mi-log.log
