.class public final Lorg/acra/util/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private connectionTimeOut:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private login:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private socketTimeOut:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xbb8

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lorg/acra/util/HttpRequest;->connectionTimeOut:I

    .line 34
    iput v0, p0, Lorg/acra/util/HttpRequest;->socketTimeOut:I

    return-void
.end method

.method public static getParamsAsFormString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "dataBfr":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 173
    .local v3, "preliminaryValue":Ljava/lang/Object;
    if-nez v3, :cond_1

    const-string/jumbo v4, ""

    .line 174
    .local v4, "value":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    move-object v4, v3

    .line 173
    goto :goto_1

    .line 179
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "preliminaryValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public send(Ljava/net/URL;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Lorg/acra/sender/HttpSender$Type;)V
    .locals 22
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Lorg/acra/sender/HttpSender$Method;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "type"    # Lorg/acra/sender/HttpSender$Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    check-cast v16, Ljava/net/HttpURLConnection;

    .line 70
    .local v16, "urlConnection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 72
    :try_start_0
    move-object/from16 v0, v16

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    .line 74
    .local v9, "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "algorithm":Ljava/lang/String;
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v15

    .line 77
    .local v15, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/acra/ACRAConfiguration;->keyStore()Ljava/security/KeyStore;

    move-result-object v11

    .line 78
    .local v11, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v15, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 80
    const-string/jumbo v18, "TLS"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v14

    .line 81
    .local v14, "sslContext":Ljavax/net/ssl/SSLContext;
    const/16 v18, 0x0

    invoke-virtual {v15}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 83
    invoke-virtual {v14}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v3    # "algorithm":Ljava/lang/String;
    .end local v9    # "httpsUrlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v11    # "keyStore":Ljava/security/KeyStore;
    .end local v14    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v15    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/util/HttpRequest;->login:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/util/HttpRequest;->password:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 91
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/util/HttpRequest;->login:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/util/HttpRequest;->password:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "credentials":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v18

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 93
    .local v7, "encoded":Ljava/lang/String;
    const-string/jumbo v18, "Authorization"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Basic "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v5    # "credentials":Ljava/lang/String;
    .end local v7    # "encoded":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/acra/util/HttpRequest;->connectionTimeOut:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Lorg/acra/util/HttpRequest;->socketTimeOut:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 100
    const-string/jumbo v18, "User-Agent"

    const-string/jumbo v19, "Android"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v18, "Accept"

    const-string/jumbo v19, "text/html,application/xml,application/json,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v18, "Content-Type"

    invoke-virtual/range {p4 .. p4}, Lorg/acra/sender/HttpSender$Type;->getContentType()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/util/HttpRequest;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/util/HttpRequest;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 107
    .local v8, "header":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/util/HttpRequest;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 108
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v8    # "header":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v17    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 85
    .local v6, "e":Ljava/security/GeneralSecurityException;
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Could not configure SSL for ACRA request to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v6}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 112
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :cond_2
    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 115
    .local v4, "contentAsBytes":[B
    invoke-virtual/range {p2 .. p2}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 116
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 117
    array-length v0, v4

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 120
    const-string/jumbo v18, "http.keepAlive"

    const-string/jumbo v19, "false"

    invoke-static/range {v18 .. v19}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->connect()V

    .line 124
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v12, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v12, v4}, Ljava/io/OutputStream;->write([B)V

    .line 126
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 127
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 129
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Sending request to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 134
    .local v13, "responseCode":I
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Request response : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-lt v13, v0, :cond_3

    const/16 v18, 0x12c

    move/from16 v0, v18

    if-ge v13, v0, :cond_3

    .line 137
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "Request received by server"

    invoke-interface/range {v18 .. v20}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    return-void

    .line 138
    :cond_3
    const/16 v18, 0x193

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 140
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "Data validation error on server - request will be discarded"

    invoke-interface/range {v18 .. v20}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 141
    :cond_4
    const/16 v18, 0x199

    move/from16 v0, v18

    if-ne v13, v0, :cond_5

    .line 143
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "Server has already received this post - request will be discarded"

    invoke-interface/range {v18 .. v20}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 144
    :cond_5
    const/16 v18, 0x190

    move/from16 v0, v18

    if-lt v13, v0, :cond_6

    const/16 v18, 0x258

    move/from16 v0, v18

    if-ge v13, v0, :cond_6

    .line 148
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Host returned error code "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 150
    :cond_6
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "Could not send ACRA Post - request will be discarded"

    invoke-interface/range {v18 .. v20}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setConnectionTimeOut(I)V
    .locals 0
    .param p1, "connectionTimeOut"    # I

    .prologue
    .line 46
    iput p1, p0, Lorg/acra/util/HttpRequest;->connectionTimeOut:I

    .line 47
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/acra/util/HttpRequest;->headers:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "login"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/acra/util/HttpRequest;->login:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/acra/util/HttpRequest;->password:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSocketTimeOut(I)V
    .locals 0
    .param p1, "socketTimeOut"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/acra/util/HttpRequest;->socketTimeOut:I

    .line 51
    return-void
.end method
