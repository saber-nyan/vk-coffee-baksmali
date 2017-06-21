.class public Lru/mail/android/mytracker/models/events/ReferrerEvent;
.super Lru/mail/android/mytracker/models/events/AbstractEvent;
.source "ReferrerEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v0, "install_referrer"

    invoke-direct {p0, v0, p2}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 34
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lru/mail/android/mytracker/models/events/ReferrerEvent;->setValue(Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/ReferrerEvent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/ReferrerEvent;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/ReferrerEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string/jumbo v2, "referrer"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/ReferrerEvent;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v2

    goto :goto_0
.end method
