.class public Lru/mail/android/mytracker/models/events/UpdateEvent;
.super Lru/mail/android/mytracker/models/events/AbstractEvent;
.source "UpdateEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "appbuild"    # Ljava/lang/String;
    .param p2, "appVer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v0, "update"

    invoke-direct {p0, v0, p3}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lru/mail/android/mytracker/models/events/UpdateEvent;->setValue(Ljava/lang/String;)V

    .line 38
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lru/mail/android/mytracker/models/events/UpdateEvent;->setName(Ljava/lang/String;)V

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "type"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/UpdateEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v3, "timestamp"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/UpdateEvent;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/UpdateEvent;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    const-string/jumbo v3, "appbuild"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_0
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/UpdateEvent;->getName()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    const-string/jumbo v3, "appver"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v3

    goto :goto_0
.end method
