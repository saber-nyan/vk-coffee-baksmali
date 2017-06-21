.class public final Lcom/squareup/okhttp/internal/http/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final address:Lcom/squareup/okhttp/Address;

.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private final network:Lcom/squareup/okhttp/internal/Network;

.field private nextInetSocketAddressIndex:I

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

.field private final uri:Ljava/net/URI;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Address;Ljava/net/URI;Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 1
    .param p1, "address"    # Lcom/squareup/okhttp/Address;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    .line 68
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->uri:Ljava/net/URI;

    .line 69
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 70
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/Internal;->routeDatabase(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/RouteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    .line 71
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/Internal;->network(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->network:Lcom/squareup/okhttp/internal/Network;

    .line 73
    invoke-virtual {p1}, Lcom/squareup/okhttp/Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->resetNextProxy(Ljava/net/URI;Ljava/net/Proxy;)V

    .line 74
    return-void
.end method

.method public static get(Lcom/squareup/okhttp/Address;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/http/RouteSelector;
    .locals 2
    .param p0, "address"    # Lcom/squareup/okhttp/Address;
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/squareup/okhttp/internal/http/RouteSelector;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/squareup/okhttp/internal/http/RouteSelector;-><init>(Lcom/squareup/okhttp/Address;Ljava/net/URI;Lcom/squareup/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 201
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 202
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hasNextInetSocketAddress()Z
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    iget v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private nextPostponed()Lcom/squareup/okhttp/Route;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Route;

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; exhausted proxy configurations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    iget v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 157
    .local v0, "result":Ljava/net/Proxy;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 158
    return-object v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 11
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 168
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v7, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v5, v7, :cond_2

    .line 169
    :cond_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v5}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "socketHost":Ljava/lang/String;
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->uri:Ljava/net/URI;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v4

    .line 182
    .local v4, "socketPort":I
    :goto_0
    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    const v5, 0xffff

    if-le v4, v5, :cond_4

    .line 183
    :cond_1
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No route to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; port is out of range"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    .end local v3    # "socketHost":Ljava/lang/String;
    .end local v4    # "socketPort":I
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    .line 173
    .local v1, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v5, v1, Ljava/net/InetSocketAddress;

    if-nez v5, :cond_3

    .line 174
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    move-object v2, v1

    .line 177
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 178
    .local v2, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .restart local v3    # "socketHost":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .restart local v4    # "socketPort":I
    goto :goto_0

    .line 188
    .end local v1    # "proxyAddress":Ljava/net/SocketAddress;
    .end local v2    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    :cond_4
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->network:Lcom/squareup/okhttp/internal/Network;

    invoke-interface {v5, v3}, Lcom/squareup/okhttp/internal/Network;->resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v0, v7, v5

    .line 189
    .local v0, "inetAddress":Ljava/net/InetAddress;
    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-direct {v10, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 192
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :cond_5
    iput v6, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextInetSocketAddressIndex:I

    .line 193
    return-void
.end method

.method private resetNextProxy(Ljava/net/URI;Ljava/net/Proxy;)V
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 129
    if-eqz p2, :cond_0

    .line 131
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 142
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextProxyIndex:I

    .line 143
    return-void

    .line 135
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    .line 136
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "selectedProxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->proxies:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public connectFailed(Lcom/squareup/okhttp/Route;Ljava/io/IOException;)V
    .locals 3
    .param p1, "failedRoute"    # Lcom/squareup/okhttp/Route;
    .param p2, "failure"    # Ljava/io/IOException;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/RouteDatabase;->failed(Lcom/squareup/okhttp/Route;)V

    .line 125
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/squareup/okhttp/Route;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextInetSocketAddress()Z

    move-result v1

    if-nez v1, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextProxy()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNextPostponed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextPostponed()Lcom/squareup/okhttp/Route;

    move-result-object v0

    .line 111
    :cond_1
    :goto_0
    return-object v0

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    .line 102
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 104
    new-instance v0, Lcom/squareup/okhttp/Route;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->address:Lcom/squareup/okhttp/Address;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastProxy:Ljava/net/Proxy;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/Route;-><init>(Lcom/squareup/okhttp/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 105
    .local v0, "route":Lcom/squareup/okhttp/Route;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->routeDatabase:Lcom/squareup/okhttp/internal/RouteDatabase;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/RouteDatabase;->shouldPostpone(Lcom/squareup/okhttp/Route;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/RouteSelector;->next()Lcom/squareup/okhttp/Route;

    move-result-object v0

    goto :goto_0
.end method
