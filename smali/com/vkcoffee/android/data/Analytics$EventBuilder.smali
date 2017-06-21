.class public Lcom/vkcoffee/android/data/Analytics$EventBuilder;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventBuilder"
.end annotation


# instance fields
.field collapsed:Z

.field event:Ljava/lang/String;

.field mappedIndex:I

.field params:Lorg/json/JSONObject;

.field unique:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->mappedIndex:I

    .line 360
    iput-object p1, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    .line 361
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    const-string/jumbo v2, "e"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/vkcoffee/android/data/Analytics$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/vkcoffee/android/data/Analytics$1;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 370
    iget-boolean v2, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapsed:Z

    if-eqz v2, :cond_5

    .line 371
    if-eqz p2, :cond_3

    .line 373
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 377
    .local v0, "o":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    :cond_1
    iget-boolean v2, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique:Z

    if-eqz v2, :cond_4

    .line 381
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 382
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 405
    .end local v0    # "o":Lorg/json/JSONObject;
    .end local p2    # "value":Ljava/lang/Object;
    :cond_3
    :goto_0
    return-object p0

    .line 388
    .restart local v0    # "o":Lorg/json/JSONObject;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v0    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 390
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 395
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget v2, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->mappedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 396
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->mappedIndex:I

    aget-object p2, v2, v3

    .line 398
    .end local p2    # "value":Ljava/lang/Object;
    :cond_6
    if-eqz p2, :cond_3

    .line 399
    iget-object v2, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 401
    :catch_1
    move-exception v1

    .line 402
    .restart local v1    # "x":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapsed:Z

    .line 410
    return-object p0
.end method

.method public commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapsed:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->access$1000()V

    .line 424
    :goto_0
    return-object p0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->access$1100(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public flushBuffer()Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .locals 0

    .prologue
    .line 453
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->sendAnalyticsNow()V

    .line 454
    return-object p0
.end method

.method public map(I)Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->mappedIndex:I

    .line 429
    return-object p0
.end method

.method public sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .locals 8

    .prologue
    .line 433
    iget-object v4, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->event:Ljava/lang/String;

    const-string/jumbo v5, "/"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "ev":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v2, v0, v4

    .line 437
    .local v2, "type":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 438
    .local v1, "event":Ljava/lang/String;
    const-string/jumbo v4, "ads"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    iget-object v4, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    const-string/jumbo v5, "e"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    iget-object v4, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    const-string/jumbo v5, "event_type"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    new-instance v4, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v5, "adsint.registerAdEvents"

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "events"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->setBackground(Z)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v0    # "ev":[Ljava/lang/String;
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 443
    :catch_0
    move-exception v3

    .line 444
    .local v3, "x":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 447
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_1
    new-instance v4, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v5, "stats.trackEvents"

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "events"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->params:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique:Z

    .line 415
    return-object p0
.end method
