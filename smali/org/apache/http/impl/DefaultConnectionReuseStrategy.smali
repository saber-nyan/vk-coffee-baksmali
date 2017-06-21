.class public Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private canResponseHaveBody(Lorg/apache/http/HttpResponse;)Z
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 183
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 184
    .local v0, "status":I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;
    .locals 1
    .param p1, "hit"    # Lorg/apache/http/HeaderIterator;

    .prologue
    .line 179
    new-instance v0, Lorg/apache/http/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 13
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 77
    const-string v11, "HTTP response"

    invoke-static {p1, v11}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v11, "HTTP context"

    invoke-static {p2, v11}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v10

    .line 83
    .local v10, "ver":Lorg/apache/http/ProtocolVersion;
    const-string v11, "Transfer-Encoding"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 84
    .local v7, "teh":Lorg/apache/http/Header;
    if-eqz v7, :cond_0

    .line 85
    const-string v11, "chunked"

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 86
    const/4 v11, 0x0

    .line 165
    :goto_0
    return v11

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->canResponseHaveBody(Lorg/apache/http/HttpResponse;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 90
    const-string v11, "Content-Length"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 92
    .local v1, "clhs":[Lorg/apache/http/Header;
    array-length v11, v1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 93
    const/4 v11, 0x0

    aget-object v0, v1, v11

    .line 95
    .local v0, "clh":Lorg/apache/http/Header;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 96
    .local v3, "contentLen":I
    if-gez v3, :cond_2

    .line 97
    const/4 v11, 0x0

    goto :goto_0

    .line 99
    .end local v3    # "contentLen":I
    :catch_0
    move-exception v4

    .line 100
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    goto :goto_0

    .line 103
    .end local v0    # "clh":Lorg/apache/http/Header;
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 111
    .end local v1    # "clhs":[Lorg/apache/http/Header;
    :cond_2
    const-string v11, "Connection"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 112
    .local v2, "connHeaders":[Lorg/apache/http/Header;
    array-length v11, v2

    if-nez v11, :cond_3

    .line 113
    const-string v11, "Proxy-Connection"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 139
    :cond_3
    array-length v11, v2

    if-eqz v11, :cond_7

    .line 141
    :try_start_1
    new-instance v8, Lorg/apache/http/message/BasicTokenIterator;

    new-instance v11, Lorg/apache/http/message/BasicHeaderIterator;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12}, Lorg/apache/http/message/BasicHeaderIterator;-><init>([Lorg/apache/http/Header;Ljava/lang/String;)V

    invoke-direct {v8, v11}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 142
    .local v8, "ti":Lorg/apache/http/TokenIterator;
    const/4 v5, 0x0

    .line 143
    .local v5, "keepalive":Z
    :cond_4
    :goto_1
    invoke-interface {v8}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 144
    invoke-interface {v8}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, "token":Ljava/lang/String;
    const-string v11, "Close"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 146
    const/4 v11, 0x0

    goto :goto_0

    .line 147
    :cond_5
    const-string v11, "Keep-Alive"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_4

    .line 149
    const/4 v5, 0x1

    goto :goto_1

    .line 152
    .end local v9    # "token":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 153
    const/4 v11, 0x1

    goto :goto_0

    .line 157
    .end local v5    # "keepalive":Z
    .end local v8    # "ti":Lorg/apache/http/TokenIterator;
    :catch_1
    move-exception v6

    .line 160
    .local v6, "px":Lorg/apache/http/ParseException;
    const/4 v11, 0x0

    goto :goto_0

    .line 165
    .end local v6    # "px":Lorg/apache/http/ParseException;
    :cond_7
    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v10, v11}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    goto :goto_0

    :cond_8
    const/4 v11, 0x0

    goto :goto_0
.end method
