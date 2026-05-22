docker compose down && docker compose up -d --build

sleep 2


docker exec -it finance_odoo tail -f /etc/odoo/odoo-server.log

