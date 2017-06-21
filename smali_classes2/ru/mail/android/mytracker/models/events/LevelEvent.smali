.class public Lru/mail/android/mytracker/models/events/LevelEvent;
.super Lru/mail/android/mytracker/models/events/AbstractEvent;
.source "LevelEvent.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "intLevel"    # I
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string/jumbo v2, "level_achieved"

    invoke-direct {p0, v2}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;)V

    .line 20
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 25
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v1, "paramsObject":Lorg/json/JSONObject;
    :goto_0
    const-string/jumbo v2, "level"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lru/mail/android/mytracker/models/events/LevelEvent;->setParams(Ljava/lang/String;)V

    .line 42
    .end local v1    # "paramsObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 30
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "paramsObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 34
    .end local v1    # "paramsObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lru/mail/android/mytracker/models/events/LevelEvent;->setParams(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;J)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .param p3, "timstampsSkipped"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v0, "level_achieved"

    invoke-direct {p0, v0, p2}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 47
    invoke-virtual {p0, p3, p4}, Lru/mail/android/mytracker/models/events/LevelEvent;->setTimestampsSkipped(J)V

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lru/mail/android/mytracker/models/events/LevelEvent;->setParams(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "type"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/LevelEvent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v4, "timestamps"

    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/LevelEvent;->getTimestamps()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/LevelEvent;->getParams()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "params":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, "paramsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "params"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "params":Ljava/lang/String;
    .end local v3    # "paramsObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
