.class public Lru/mail/android/mytracker/models/events/CustomEvent;
.super Lru/mail/android/mytracker/models/events/AbstractEvent;
.source "CustomEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 34
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lru/mail/android/mytracker/models/events/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lru/mail/android/mytracker/models/events/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p4, "timestampsSkipped"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v0, "custom"

    invoke-direct {p0, v0, p3}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 45
    invoke-virtual {p0, p4, p5}, Lru/mail/android/mytracker/models/events/CustomEvent;->setTimestampsSkipped(J)V

    .line 46
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lru/mail/android/mytracker/models/events/CustomEvent;->setName(Ljava/lang/String;)V

    .line 47
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lru/mail/android/mytracker/models/events/CustomEvent;->setParams(Ljava/lang/String;)V

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "name"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/CustomEvent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v3, "timestamps"

    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/CustomEvent;->getTimestamps()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/CustomEvent;->getTimestampsSkipped()J

    move-result-wide v4

    .line 61
    .local v4, "skipped":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const-string/jumbo v3, "timestamps_skipped"

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 62
    :cond_0
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/CustomEvent;->getParams()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "params":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "paramsObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "params"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "params":Ljava/lang/String;
    .end local v2    # "paramsObj":Lorg/json/JSONObject;
    .end local v4    # "skipped":J
    :cond_1
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v3

    goto :goto_0
.end method
