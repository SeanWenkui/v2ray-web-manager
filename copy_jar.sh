ADMIN_FILE=vpn-admin/target/admin-1.0.jar
if test -f "$ADMIN_FILE"; then
    echo "$ADMIN_FILE exists."
    sudo rm -fr /opt/jar/admin-1.0.jar.bkup
    sudo mv /opt/jar/admin-1.0.jar /opt/jar/admin-1.0.jar.bkup
    sudo cp $ADMIN_FILE /opt/jar/admin-1.0.jar
else
    echo "$ADMIN_FILE not exists."
fi

PROXY_FILE=proxy/target/v2ray-proxy-1.0.jar
if test -f "$PROXY_FILE"; then
    echo "$PROXY_FILE exists."
    sudo rm -fr /opt/jar/v2ray-proxy-1.0.jar.bkup
    sudo mv /opt/jar/v2ray-proxy-1.0.jar /opt/jar/v2ray-proxy-1.0.jar.bkup
    sudo cp $PROXY_FILE /opt/jar/v2ray-proxy-1.0.jar
else
    echo "$PROXY_FILE not exists."
fi
