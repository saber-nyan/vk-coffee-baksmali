.class public Lcom/loopj/android/http/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/RequestParams$StreamWrapper;,
        Lcom/loopj/android/http/RequestParams$FileWrapper;
    }
.end annotation


# static fields
.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field protected static final LOG_TAG:Ljava/lang/String; = "RequestParams"


# instance fields
.field protected autoCloseInputStreams:Z

.field protected contentEncoding:Ljava/lang/String;

.field protected final fileParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams$FileWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected isRepeatable:Z

.field protected final streamParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams$StreamWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected useJsonStreamer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Lcom/loopj/android/http/RequestParams$1;

    invoke-direct {v0, p1, p2}, Lcom/loopj/android/http/RequestParams$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
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
    .line 136
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    const-string v2, "UTF-8"

    iput-object v2, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 6
    .param p1, "keysAndValues"    # [Ljava/lang/Object;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 166
    array-length v2, p1

    .line 167
    .local v2, "len":I
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 168
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Supplied arguments must be even"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 170
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 174
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createFormEntity()Lorg/apache/http/HttpEntity;
    .locals 4

    .prologue
    .line 489
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/loopj/android/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-object v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "RequestParams"

    const-string v2, "createFormEntity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createJsonStreamerEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 12
    .param p1, "progressHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    new-instance v0, Lcom/loopj/android/http/JsonStreamerEntity;

    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    invoke-direct {v0, p1, v7}, Lcom/loopj/android/http/JsonStreamerEntity;-><init>(Lcom/loopj/android/http/ResponseHandlerInterface;Z)V

    .line 456
    .local v0, "entity":Lcom/loopj/android/http/JsonStreamerEntity;
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 457
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 452
    .end local v0    # "entity":Lcom/loopj/android/http/JsonStreamerEntity;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 461
    .restart local v0    # "entity":Lcom/loopj/android/http/JsonStreamerEntity;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 462
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 466
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 467
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 471
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    :cond_4
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 472
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    .line 473
    .local v6, "stream":Lcom/loopj/android/http/RequestParams$StreamWrapper;
    iget-object v7, v6, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_5

    .line 474
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v6, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v9, v6, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v10, v6, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    iget-boolean v11, v6, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    invoke-static {v8, v9, v10, v11}, Lcom/loopj/android/http/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 484
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    .end local v6    # "stream":Lcom/loopj/android/http/RequestParams$StreamWrapper;
    :cond_6
    return-object v0
.end method

.method private createMultipartEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 13
    .param p1, "progressHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {v0, p1}, Lcom/loopj/android/http/SimpleMultipartEntity;-><init>(Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 498
    .local v0, "entity":Lcom/loopj/android/http/SimpleMultipartEntity;
    iget-boolean v9, p0, Lcom/loopj/android/http/RequestParams;->isRepeatable:Z

    invoke-virtual {v0, v9}, Lcom/loopj/android/http/SimpleMultipartEntity;->setIsRepeatable(Z)V

    .line 501
    iget-object v9, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 502
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v9, v10, v11}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v9, v10}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 507
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/message/BasicNameValuePair;

    .line 508
    .local v6, "kv":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v9, v10, v11}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 512
    .end local v6    # "kv":Lorg/apache/http/message/BasicNameValuePair;
    :cond_1
    iget-object v9, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 513
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    .line 514
    .local v8, "stream":Lcom/loopj/android/http/RequestParams$StreamWrapper;
    iget-object v9, v8, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v9, :cond_2

    .line 515
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v8, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v11, v8, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v12, v8, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 521
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    .end local v8    # "stream":Lcom/loopj/android/http/RequestParams$StreamWrapper;
    :cond_3
    iget-object v9, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 522
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/loopj/android/http/RequestParams$FileWrapper;

    .line 523
    .local v4, "fileWrapper":Lcom/loopj/android/http/RequestParams$FileWrapper;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v4, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    iget-object v11, v4, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    iget-object v12, v4, Lcom/loopj/android/http/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 526
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    .end local v4    # "fileWrapper":Lcom/loopj/android/http/RequestParams$FileWrapper;
    :cond_4
    return-object v0
.end method

.method private getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 543
    .local v11, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/util/Map;

    if-eqz v13, :cond_3

    move-object/from16 v7, p2

    .line 544
    check-cast v7, Ljava/util/Map;

    .line 545
    .local v7, "map":Ljava/util/Map;
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 547
    .local v5, "list":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/Comparable;

    if-eqz v13, :cond_0

    .line 548
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 550
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 551
    .local v8, "nestedKey":Ljava/lang/Object;
    instance-of v13, v8, Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 552
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 553
    .local v9, "nestedValue":Ljava/lang/Object;
    if-eqz v9, :cond_1

    .line 554
    if-nez p1, :cond_2

    check-cast v8, Ljava/lang/String;

    .end local v8    # "nestedKey":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .restart local v8    # "nestedKey":Ljava/lang/Object;
    :cond_2
    const-string v13, "%s[%s]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 559
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/List;
    .end local v7    # "map":Ljava/util/Map;
    .end local v8    # "nestedKey":Ljava/lang/Object;
    .end local v9    # "nestedValue":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/util/List;

    if-eqz v13, :cond_4

    move-object/from16 v5, p2

    .line 560
    check-cast v5, Ljava/util/List;

    .line 561
    .restart local v5    # "list":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 562
    .local v6, "listSize":I
    const/4 v10, 0x0

    .local v10, "nestedValueIndex":I
    :goto_2
    if-ge v10, v6, :cond_7

    .line 563
    const-string v13, "%s[%d]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 565
    .end local v5    # "list":Ljava/util/List;
    .end local v6    # "listSize":I
    .end local v10    # "nestedValueIndex":I
    :cond_4
    move-object/from16 v0, p2

    instance-of v13, v0, [Ljava/lang/Object;

    if-eqz v13, :cond_5

    .line 566
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "value":Ljava/lang/Object;
    move-object/from16 v2, p2

    check-cast v2, [Ljava/lang/Object;

    .line 567
    .local v2, "array":[Ljava/lang/Object;
    array-length v3, v2

    .line 568
    .local v3, "arrayLength":I
    const/4 v10, 0x0

    .restart local v10    # "nestedValueIndex":I
    :goto_3
    if-ge v10, v3, :cond_7

    .line 569
    const-string v13, "%s[%d]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aget-object v14, v2, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 568
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 571
    .end local v2    # "array":[Ljava/lang/Object;
    .end local v3    # "arrayLength":I
    .end local v10    # "nestedValueIndex":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/util/Set;

    if-eqz v13, :cond_6

    move-object/from16 v12, p2

    .line 572
    check-cast v12, Ljava/util/Set;

    .line 573
    .local v12, "set":Ljava/util/Set;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 574
    .restart local v9    # "nestedValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 577
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "nestedValue":Ljava/lang/Object;
    .end local v12    # "set":Ljava/util/Set;
    :cond_6
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    .end local p2    # "value":Ljava/lang/Object;
    :cond_7
    return-object v11
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 332
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 333
    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    .local v0, "params":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "params":Ljava/lang/Object;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 337
    .local v0, "params":Ljava/util/HashSet;
    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    .end local v0    # "params":Ljava/util/HashSet;
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 340
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 342
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "progressHandler"    # Lcom/loopj/android/http/ResponseHandlerInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->useJsonStreamer:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/loopj/android/http/RequestParams;->createJsonStreamerEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/loopj/android/http/RequestParams;->createFormEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_1
    invoke-direct {p0, p1}, Lcom/loopj/android/http/RequestParams;->createMultipartEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParamString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/loopj/android/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParamsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 532
    .local v2, "lparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v3, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 533
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v3, v4}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 538
    return-object v2
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 308
    if-eqz p1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "customFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 233
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 236
    :cond_1
    if-eqz p1, :cond_2

    .line 237
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/loopj/android/http/RequestParams$FileWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/loopj/android/http/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_2
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-boolean v5, p0, Lcom/loopj/android/http/RequestParams;->autoCloseInputStreams:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "autoClose"    # Z

    .prologue
    .line 284
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p5}, Lcom/loopj/android/http/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 297
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "customFileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method public setAutoCloseInputStreams(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->autoCloseInputStreams:Z

    .line 431
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v0, "RequestParams"

    const-string v1, "setContentEncoding called with null attribute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHttpEntityIsRepeatable(Z)V
    .locals 0
    .param p1, "isRepeatable"    # Z

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->isRepeatable:Z

    .line 417
    return-void
.end method

.method public setUseJsonStreamer(Z)V
    .locals 0
    .param p1, "useJsonStreamer"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->useJsonStreamer:Z

    .line 421
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v6, "result":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 376
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 377
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 384
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 385
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 386
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v7, "STREAM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 393
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$StreamWrapper;>;"
    :cond_3
    iget-object v7, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 394
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 395
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v7, "FILE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 402
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/loopj/android/http/RequestParams$FileWrapper;>;"
    :cond_5
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v7, v8}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 403
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/message/BasicNameValuePair;

    .line 404
    .local v4, "kv":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 405
    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_6
    invoke-virtual {v4}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v4}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 412
    .end local v4    # "kv":Lorg/apache/http/message/BasicNameValuePair;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
