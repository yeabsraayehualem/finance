FROM odoo:18


USER root

# RUN pip install paramiko --break-system-packages
RUN mkdir -p /etc/odoo/{themes,customs,etc,accounting,hr}


COPY ./config/odoo.conf /etc/odoo/odoo.conf
COPY ./customs /etc/odoo/customs
COPY ./themes /etc/odoo/themes
COPY ./accounting /etc/odoo/accounting
COPY ./hr /etc/odoo/hr

EXPOSE 8069

ENTRYPOINT ["odoo", "-c", "/etc/odoo/odoo.conf"]