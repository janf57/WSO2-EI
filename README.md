# Ejemplo de uso de docker con Enterprise Integrator 6.1.1
Este ejemplo esta montado con Enterprise Integrator 6.1.1, utilizando como BD MySQL.

## Pre-requisitos

 * Docker 
 * Docker compose
 * Copiar
 

Origen | Destino 
-------- | -------------- 
curl -C - -L -O -# -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.rpm | wso2-ei/deps/packages
curl -O  -A "testuser" -H "Referer: http://connect.wso2.com/wso2/getform/reg/new_product_download" https://product-dist.wso2.com/products/enterprise-integrator/6.1.1/wso2ei-6.1.1.zip | wso2-ei/deps


## Como lanzarlo

```docker-compose pull```

```docker-compose up ```

Esto despliega lo siguiente,

* **[Mysql server][mysql]** Sistema de gestión de bases de datos relacional, cargada con las bd apimdb, userdb, regdb, necesarias para la ejecución de productos del ecosistema de WSO2.
* **[Enterprise Integrator][ei]** Solución que permite la comunicacion entre diferentes aplicaciones. En vez de definir una comunicación entre las diferentes aplicaciones, cad aplicación simplemente comunica con EI, el cual maneja las transformaciones y enrutado de mensajes.


### Como probar

Añadir las siguientes entradas a /etc/hosts o a C:\Windows\System32\drivers\etc\hosts
```
127.0.0.1 enterprise-integrator
```

### Como acceder al entorno

**ESB Management**
```
https://enterprise-integrator:9443/carbon
```

**Business Process Management**
```
https://enterprise-integrator:9545/carbon
```

**BPMN Explorer**
```
https://enterprise-integrator:9545/bpmn-explorer
```

**Human Task Explorer**
```
https://enterprise-integrator:9545/humantask-explorer
```

**Message Broker Management**
```
https://enterprise-integrator:9546/carbon
```

**Analytics Management**
```
https://enterprise-integrator:9544/carbon
```

**Analytics Dashboard**
```
https://enterprise-integrator:9544/portal/dashboards
```

[ei]: https://wso2.com/integration/
[mysql]: https://www.mysql.com/