.class public Lru/mail/android/mytracker/models/events/InstallEvent;
.super Lru/mail/android/mytracker/models/events/AbstractEvent;
.source "InstallEvent.java"


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .param p1, "firstInstallTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v0, "install"

    invoke-direct {p0, v0, p3}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/mail/android/mytracker/models/events/InstallEvent;->setValue(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/InstallEvent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/InstallEvent;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/InstallEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    const-string/jumbo v2, "first_install_time"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/InstallEvent;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0
.end method
