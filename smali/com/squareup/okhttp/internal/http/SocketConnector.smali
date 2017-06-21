.class public Lcom/squareup/okhttp/internal/http/SocketConnector;
.super Ljava/lang/Object;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;
    }
.end annotation


# instance fields
.field private final connection:Lcom/squareup/okhttp/Connection;

.field private final connectionPool:Lcom/squareup/okhttp/ConnectionPool;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/ConnectionPool;)V
    .locals 0
    .param p1, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p2, "connectionPool"    # Lcom/squareup/okhttp/ConnectionPool;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SocketConnector;->connection:Lcom/squareup/okhttp/Connection;

    .line 62
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SocketConnector;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 63
    return-void
.end method

.method private connectRawSocket(IILcom/squareup/okhttp/Route;)Ljava/net/Socket;
    .locals 7
    .param p1, "soTimeout"    # I
    .param p2, "connectTimeout"    # I
    .param p3, "route"    # Lcom/squareup/okhttp/Route;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v2

    .line 151
    .local v2, "platform":Lcom/squareup/okhttp/internal/Platform;
    :try_start_0
    invoke-virtual {p3}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    .line 152
    .local v3, "proxy":Ljava/net/Proxy;
    invoke-virtual {p3}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v0

    .line 154
    .local v0, "address":Lcom/squareup/okhttp/Address;
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_1

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 159
    .local v4, "socket":Ljava/net/Socket;
    :goto_0
    invoke-virtual {v4, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 160
    invoke-virtual {p3}, Lcom/squareup/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p2}, Lcom/squareup/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 162
    return-object v4

    .line 157
    .end local v4    # "socket":Ljava/net/Socket;
    :cond_1
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 163
    .end local v0    # "address":Lcom/squareup/okhttp/Address;
    .end local v3    # "proxy":Ljava/net/Proxy;
    .end local v4    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v5, v1}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v5
.end method

.method private createTunnel(IILcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Route;Ljava/net/Socket;)V
    .locals 16
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "request"    # Lcom/squareup/okhttp/Request;
    .param p4, "route"    # Lcom/squareup/okhttp/Route;
    .param p5, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/SocketConnector;->createTunnelRequest(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;

    move-result-object v9

    .line 178
    .local v9, "tunnelRequest":Lcom/squareup/okhttp/Request;
    new-instance v8, Lcom/squareup/okhttp/internal/http/HttpConnection;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/okhttp/internal/http/SocketConnector;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/squareup/okhttp/internal/http/SocketConnector;->connection:Lcom/squareup/okhttp/Connection;

    move-object/from16 v0, p5

    invoke-direct {v8, v11, v12, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;-><init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V

    .line 179
    .local v8, "tunnelConnection":Lcom/squareup/okhttp/internal/http/HttpConnection;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->setTimeouts(II)V

    .line 180
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v10

    .line 181
    .local v10, "url":Ljava/net/URL;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "CONNECT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " HTTP/1.1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "requestLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v11

    invoke-virtual {v8, v11, v6}, Lcom/squareup/okhttp/internal/http/HttpConnection;->writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/http/HttpConnection;->flush()V

    .line 185
    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/http/HttpConnection;->readResponse()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v7

    .line 188
    .local v7, "response":Lcom/squareup/okhttp/Response;
    invoke-static {v7}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Response;)J

    move-result-wide v4

    .line 189
    .local v4, "contentLength":J
    const-wide/16 v12, -0x1

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 190
    const-wide/16 v4, 0x0

    .line 192
    :cond_1
    invoke-virtual {v8, v4, v5}, Lcom/squareup/okhttp/internal/http/HttpConnection;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v2

    .line 193
    .local v2, "body":Lokio/Source;
    const v11, 0x7fffffff

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v11, v12}, Lcom/squareup/okhttp/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 194
    invoke-interface {v2}, Lokio/Source;->close()V

    .line 196
    invoke-virtual {v7}, Lcom/squareup/okhttp/Response;->code()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 214
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unexpected response code for CONNECT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 215
    invoke-virtual {v7}, Lcom/squareup/okhttp/Response;->code()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "body":Lokio/Source;
    .end local v4    # "contentLength":J
    .end local v6    # "requestLine":Ljava/lang/String;
    .end local v7    # "response":Lcom/squareup/okhttp/Response;
    .end local v8    # "tunnelConnection":Lcom/squareup/okhttp/internal/http/HttpConnection;
    .end local v9    # "tunnelRequest":Lcom/squareup/okhttp/Request;
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 219
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v11, v3}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v11

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "body":Lokio/Source;
    .restart local v4    # "contentLength":J
    .restart local v6    # "requestLine":Ljava/lang/String;
    .restart local v7    # "response":Lcom/squareup/okhttp/Response;
    .restart local v8    # "tunnelConnection":Lcom/squareup/okhttp/internal/http/HttpConnection;
    .restart local v9    # "tunnelRequest":Lcom/squareup/okhttp/Request;
    .restart local v10    # "url":Ljava/net/URL;
    :sswitch_0
    :try_start_1
    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/http/HttpConnection;->bufferSize()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 203
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "TLS tunnel buffered too many bytes!"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 209
    :sswitch_1
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v11

    invoke-virtual {v11}, Lcom/squareup/okhttp/Address;->getAuthenticator()Lcom/squareup/okhttp/Authenticator;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v12

    .line 208
    invoke-static {v11, v7, v12}, Lcom/squareup/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/squareup/okhttp/Authenticator;Lcom/squareup/okhttp/Response;Ljava/net/Proxy;)Lcom/squareup/okhttp/Request;

    move-result-object v9

    .line 210
    if-nez v9, :cond_0

    .line 211
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Failed to authenticate with proxy"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :cond_2
    return-void

    .line 196
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;
    .locals 10
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v2

    .line 233
    .local v2, "port":I
    const-string/jumbo v6, "https"

    invoke-static {v6}, Lcom/squareup/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_2

    move-object v0, v1

    .line 234
    .local v0, "authority":Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v6}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    new-instance v7, Ljava/net/URL;

    const-string/jumbo v8, "https"

    const-string/jumbo v9, "/"

    invoke-direct {v7, v8, v1, v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    invoke-virtual {v6, v7}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v6

    const-string/jumbo v7, "Host"

    .line 236
    invoke-virtual {v6, v7, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v6

    const-string/jumbo v7, "Proxy-Connection"

    const-string/jumbo v8, "Keep-Alive"

    .line 237
    invoke-virtual {v6, v7, v8}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v4

    .line 240
    .local v4, "result":Lcom/squareup/okhttp/Request$Builder;
    const-string/jumbo v6, "User-Agent"

    invoke-virtual {p1, v6}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "userAgent":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 242
    const-string/jumbo v6, "User-Agent"

    invoke-virtual {v4, v6, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 246
    :cond_0
    const-string/jumbo v6, "Proxy-Authorization"

    invoke-virtual {p1, v6}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "proxyAuthorization":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 248
    const-string/jumbo v6, "Proxy-Authorization"

    invoke-virtual {v4, v6, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 251
    :cond_1
    invoke-virtual {v4}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v6

    return-object v6

    .line 233
    .end local v0    # "authority":Ljava/lang/String;
    .end local v3    # "proxyAuthorization":Ljava/lang/String;
    .end local v4    # "result":Lcom/squareup/okhttp/Request$Builder;
    .end local v5    # "userAgent":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public connectCleartext(IILcom/squareup/okhttp/Route;)Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;
    .locals 2
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "route"    # Lcom/squareup/okhttp/Route;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p2, p1, p3}, Lcom/squareup/okhttp/internal/http/SocketConnector;->connectRawSocket(IILcom/squareup/okhttp/Route;)Ljava/net/Socket;

    move-result-object v0

    .line 68
    .local v0, "socket":Ljava/net/Socket;
    new-instance v1, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;

    invoke-direct {v1, p3, v0}, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;-><init>(Lcom/squareup/okhttp/Route;Ljava/net/Socket;)V

    return-object v1
.end method

.method public connectTls(IIILcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Route;Ljava/util/List;Z)Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;
    .locals 23
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "request"    # Lcom/squareup/okhttp/Request;
    .param p5, "route"    # Lcom/squareup/okhttp/Route;
    .param p7, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/squareup/okhttp/Request;",
            "Lcom/squareup/okhttp/Route;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;Z)",
            "Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 75
    .local p6, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-virtual/range {p5 .. p5}, Lcom/squareup/okhttp/Route;->getAddress()Lcom/squareup/okhttp/Address;

    move-result-object v10

    .line 76
    .local v10, "address":Lcom/squareup/okhttp/Address;
    new-instance v15, Lcom/squareup/okhttp/internal/ConnectionSpecSelector;

    move-object/from16 v0, p6

    invoke-direct {v15, v0}, Lcom/squareup/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 77
    .local v15, "connectionSpecSelector":Lcom/squareup/okhttp/internal/ConnectionSpecSelector;
    const/16 v20, 0x0

    .line 79
    .local v20, "routeException":Lcom/squareup/okhttp/internal/http/RouteException;
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/SocketConnector;->connectRawSocket(IILcom/squareup/okhttp/Route;)Ljava/net/Socket;

    move-result-object v9

    .line 80
    .local v9, "socket":Ljava/net/Socket;
    invoke-virtual/range {p5 .. p5}, Lcom/squareup/okhttp/Route;->requiresTunnel()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 81
    invoke-direct/range {v4 .. v9}, Lcom/squareup/okhttp/internal/http/SocketConnector;->createTunnel(IILcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Route;Ljava/net/Socket;)V

    .line 84
    :cond_1
    const/16 v21, 0x0

    .line 86
    .local v21, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v22

    .line 90
    .local v22, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getUriPort()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v21, v0

    .line 93
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/squareup/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v14

    .line 94
    .local v14, "connectionSpec":Lcom/squareup/okhttp/ConnectionSpec;
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 95
    .local v19, "platform":Lcom/squareup/okhttp/internal/Platform;
    const/16 v17, 0x0

    .line 96
    .local v17, "handshake":Lcom/squareup/okhttp/Handshake;
    const/4 v11, 0x0

    .line 98
    .local v11, "alpnProtocol":Lcom/squareup/okhttp/Protocol;
    :try_start_1
    invoke-virtual {v14}, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getProtocols()Ljava/util/List;

    move-result-object v5

    .line 99
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4, v5}, Lcom/squareup/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 103
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 105
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/Handshake;

    move-result-object v17

    .line 108
    invoke-virtual {v14}, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v18

    .local v18, "maybeProtocol":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 110
    invoke-static/range {v18 .. v18}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 113
    .end local v18    # "maybeProtocol":Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 117
    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 118
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    .line 119
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v13, v4, v5

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 120
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hostname "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 121
    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not verified:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n    certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 122
    invoke-static {v13}, Lcom/squareup/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n    DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n    subjectAltNames: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 124
    invoke-static {v13}, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    .end local v11    # "alpnProtocol":Lcom/squareup/okhttp/Protocol;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v14    # "connectionSpec":Lcom/squareup/okhttp/ConnectionSpec;
    .end local v17    # "handshake":Lcom/squareup/okhttp/Handshake;
    .end local v19    # "platform":Lcom/squareup/okhttp/internal/Platform;
    .end local v22    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v16

    .line 132
    .local v16, "e":Ljava/io/IOException;
    if-eqz p7, :cond_5

    invoke-virtual/range {v15 .. v16}, Lcom/squareup/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v12, 0x1

    .line 133
    .local v12, "canRetry":Z
    :goto_0
    invoke-static/range {v21 .. v21}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 134
    invoke-static {v9}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 135
    if-nez v20, :cond_6

    .line 136
    new-instance v20, Lcom/squareup/okhttp/internal/http/RouteException;

    .end local v20    # "routeException":Lcom/squareup/okhttp/internal/http/RouteException;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    .line 140
    .restart local v20    # "routeException":Lcom/squareup/okhttp/internal/http/RouteException;
    :goto_1
    if-nez v12, :cond_0

    .line 141
    throw v20

    .line 113
    .end local v12    # "canRetry":Z
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v11    # "alpnProtocol":Lcom/squareup/okhttp/Protocol;
    .restart local v14    # "connectionSpec":Lcom/squareup/okhttp/ConnectionSpec;
    .restart local v17    # "handshake":Lcom/squareup/okhttp/Handshake;
    .restart local v19    # "platform":Lcom/squareup/okhttp/internal/Platform;
    .restart local v22    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catchall_0
    move-exception v4

    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    throw v4

    .line 128
    :cond_4
    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getCertificatePinner()Lcom/squareup/okhttp/CertificatePinner;

    move-result-object v4

    invoke-virtual {v10}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/squareup/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    new-instance v4, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v4, v0, v1, v11, v2}, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;-><init>(Lcom/squareup/okhttp/Route;Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/Handshake;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    .line 132
    .end local v11    # "alpnProtocol":Lcom/squareup/okhttp/Protocol;
    .end local v14    # "connectionSpec":Lcom/squareup/okhttp/ConnectionSpec;
    .end local v17    # "handshake":Lcom/squareup/okhttp/Handshake;
    .end local v19    # "platform":Lcom/squareup/okhttp/internal/Platform;
    .end local v22    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v16    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    .line 138
    .restart local v12    # "canRetry":Z
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_1
.end method
