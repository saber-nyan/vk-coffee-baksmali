.class public final Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;
.super Ljava/lang/Object;
.source "AuthenticatorAdapter.java"

# interfaces
.implements Lcom/squareup/okhttp/Authenticator;


# static fields
.field public static final INSTANCE:Lcom/squareup/okhttp/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/squareup/okhttp/Authenticator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljava/net/Proxy;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;
    .locals 17
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v12

    .line 40
    .local v12, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v15

    .line 41
    .local v15, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {v15}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v8

    .line 42
    .local v8, "url":Ljava/net/URL;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "size":I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    .line 43
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/okhttp/Challenge;

    .line 44
    .local v11, "challenge":Lcom/squareup/okhttp/Challenge;
    const-string/jumbo v2, "Basic"

    invoke-virtual {v11}, Lcom/squareup/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v8}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v4

    .line 48
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/squareup/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/squareup/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 46
    invoke-static/range {v2 .. v9}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v10

    .line 50
    .local v10, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v10, :cond_0

    .line 52
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v3}, Lcom/squareup/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, "credential":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    const-string/jumbo v3, "Authorization"

    .line 54
    invoke-virtual {v2, v3, v13}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    .line 57
    .end local v10    # "auth":Ljava/net/PasswordAuthentication;
    .end local v11    # "challenge":Lcom/squareup/okhttp/Challenge;
    .end local v13    # "credential":Ljava/lang/String;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public authenticateProxy(Ljava/net/Proxy;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;
    .locals 18
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v12

    .line 63
    .local v12, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v16

    .line 64
    .local v16, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v8

    .line 65
    .local v8, "url":Ljava/net/URL;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    .local v17, "size":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 66
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/okhttp/Challenge;

    .line 67
    .local v11, "challenge":Lcom/squareup/okhttp/Challenge;
    const-string/jumbo v2, "Basic"

    invoke-virtual {v11}, Lcom/squareup/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v15

    check-cast v15, Ljava/net/InetSocketAddress;

    .line 71
    .local v15, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 72
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/squareup/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/squareup/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 70
    invoke-static/range {v2 .. v9}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v10

    .line 74
    .local v10, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v10, :cond_0

    .line 76
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v3}, Lcom/squareup/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "credential":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    const-string/jumbo v3, "Proxy-Authorization"

    .line 78
    invoke-virtual {v2, v3, v13}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    .line 81
    .end local v10    # "auth":Ljava/net/PasswordAuthentication;
    .end local v11    # "challenge":Lcom/squareup/okhttp/Challenge;
    .end local v13    # "credential":Ljava/lang/String;
    .end local v15    # "proxyAddress":Ljava/net/InetSocketAddress;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
