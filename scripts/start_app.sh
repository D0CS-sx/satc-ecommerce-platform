#!/bin/bash
systemctl daemon-reload
systemctl enable satc-app
systemctl restart satc-app
