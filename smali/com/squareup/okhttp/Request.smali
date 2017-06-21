.class public final Lcom/squareup/okhttp/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/squareup/okhttp/RequestBody;

.field private volatile cacheControl:Lcom/squareup/okhttp/CacheControl;

.field private final headers:Lcom/squareup/okhttp/Headers;

.field private volatile javaNetUri:Ljava/net/URI;

.field private volatile javaNetUrl:Ljava/net/URL;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lcom/squareup/okhttp/HttpUrl;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/squareup/okhttp/Request$Builder;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$000(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->url:Lcom/squareup/okhttp/HttpUrl;

    .line 41
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$100(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->method:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$200(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/Headers;

    .line 43
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$300(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->body:Lcom/squareup/okhttp/RequestBody;

    .line 44
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$400(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->access$400(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/Request;->tag:Ljava/lang/Object;

    .line 45
    return-void

    :cond_0
    move-object v0, p0

    .line 44
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Request$Builder;Lcom/squareup/okhttp/Request$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/Request$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/Request$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Request;-><init>(Lcom/squareup/okhttp/Request$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Headers;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/Headers;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/HttpUrl;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->url:Lcom/squareup/okhttp/HttpUrl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/RequestBody;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->body:Lcom/squareup/okhttp/RequestBody;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/Request;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public body()Lcom/squareup/okhttp/RequestBody;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->body:Lcom/squareup/okhttp/RequestBody;

    return-object v0
.end method

.method public cacheControl()Lcom/squareup/okhttp/CacheControl;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->cacheControl:Lcom/squareup/okhttp/CacheControl;

    .line 103
    .local v0, "result":Lcom/squareup/okhttp/CacheControl;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/squareup/okhttp/CacheControl;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/squareup/okhttp/CacheControl;
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/Headers;

    invoke-static {v1}, Lcom/squareup/okhttp/CacheControl;->parse(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lcom/squareup/okhttp/CacheControl;
    iput-object v0, p0, Lcom/squareup/okhttp/Request;->cacheControl:Lcom/squareup/okhttp/CacheControl;

    goto :goto_0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lcom/squareup/okhttp/Headers;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->headers:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public httpUrl()Lcom/squareup/okhttp/HttpUrl;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->url:Lcom/squareup/okhttp/HttpUrl;

    return-object v0
.end method

.method public isHttps()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->url:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/squareup/okhttp/Request$Builder;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Request$Builder;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Request$1;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/Request;->url:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/squareup/okhttp/Request;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Request;->tag:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uri()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/Request;->javaNetUri:Ljava/net/URI;

    .line 59
    .local v1, "result":Ljava/net/URI;
    if-eqz v1, :cond_0

    .end local v1    # "result":Ljava/net/URI;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/net/URI;
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/Request;->url:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v2}, Lcom/squareup/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    .end local v1    # "result":Ljava/net/URI;
    iput-object v1, p0, Lcom/squareup/okhttp/Request;->javaNetUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public url()Ljava/net/URL;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    .line 53
    .local v0, "result":Ljava/net/URL;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/net/URL;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/net/URL;
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/Request;->url:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v0

    .end local v0    # "result":Ljava/net/URL;
    iput-object v0, p0, Lcom/squareup/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    goto :goto_0
.end method

.method public urlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->url:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
