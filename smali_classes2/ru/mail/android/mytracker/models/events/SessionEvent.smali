.class public Lru/mail/android/mytracker/models/events/SessionEvent;
.super Lru/mail/android/mytracker/models/events/AbstractEvent;
.source "SessionEvent.java"


# instance fields
.field private final sessionTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "session"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/SessionEvent;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lru/mail/android/mytracker/models/events/SessionEvent;->setTimestampStart(J)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/SessionEvent;->sessionTimestamps:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "timestampStart"    # J
    .param p3, "timestampsSkipped"    # J

    .prologue
    .line 46
    const-string/jumbo v0, "session"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1, p2}, Lru/mail/android/mytracker/models/events/SessionEvent;->setTimestampStart(J)V

    .line 48
    invoke-virtual {p0, p3, p4}, Lru/mail/android/mytracker/models/events/SessionEvent;->setTimestampsSkipped(J)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/SessionEvent;->sessionTimestamps:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public addSessionTimestamp([Ljava/lang/Long;)V
    .locals 1
    .param p1, "sessionTSs"    # [Ljava/lang/Long;

    .prologue
    .line 90
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/SessionEvent;->sessionTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public getSessionTimestamps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/SessionEvent;->sessionTimestamps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "type"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/SessionEvent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 63
    .local v6, "timesJA":Lorg/json/JSONArray;
    iget-object v7, p0, Lru/mail/android/mytracker/models/events/SessionEvent;->sessionTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Long;

    .line 65
    .local v5, "sessionTSs":[Ljava/lang/Long;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .local v4, "sessionJA":Lorg/json/JSONArray;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 67
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 81
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "sessionJA":Lorg/json/JSONArray;
    .end local v5    # "sessionTSs":[Ljava/lang/Long;
    .end local v6    # "timesJA":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    .line 85
    :cond_0
    :goto_1
    return-object v1

    .line 70
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v6    # "timesJA":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v7, "timestamps"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/SessionEvent;->getTimestampsSkipped()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 73
    const-string/jumbo v7, "timestamps_skipped"

    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/SessionEvent;->getTimestampsSkipped()J

    move-result-wide v8

    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    :cond_2
    invoke-virtual {p0}, Lru/mail/android/mytracker/models/events/SessionEvent;->getParams()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "params":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 78
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, "paramsObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "params"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
