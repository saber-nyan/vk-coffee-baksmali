.class public Lru/mail/android/mytracker/factories/EventsFactory;
.super Ljava/lang/Object;
.source "EventsFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static getCustomEvent(Ljava/lang/String;)Lru/mail/android/mytracker/models/events/Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lru/mail/android/mytracker/models/events/CustomEvent;

    invoke-direct {v0, p0}, Lru/mail/android/mytracker/models/events/CustomEvent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCustomEvent(Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lru/mail/android/mytracker/models/events/Event;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lru/mail/android/mytracker/models/events/CustomEvent;

    invoke-static {p1}, Lru/mail/android/mytracker/factories/EventsFactory;->paramsToJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lru/mail/android/mytracker/models/events/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEventFromDBEntry(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;J)Lru/mail/android/mytracker/models/events/Event;
    .locals 10
    .param p0, "id"    # J
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "oldValue"    # Ljava/lang/String;
    .param p6, "params"    # Ljava/lang/String;
    .param p7, "timestampStart"    # J
    .param p10, "timestampsSkipped"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lru/mail/android/mytracker/models/events/Event;"
        }
    .end annotation

    .prologue
    .line 99
    .local p9, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 100
    .local v4, "event":Lru/mail/android/mytracker/models/events/Event;
    const-string/jumbo v5, "install"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lru/mail/android/mytracker/models/events/InstallEvent;

    .end local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p9

    invoke-direct {v4, v6, v7, v0}, Lru/mail/android/mytracker/models/events/InstallEvent;-><init>(JLjava/util/List;)V

    .line 112
    .restart local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    :goto_0
    invoke-interface {v4, p0, p1}, Lru/mail/android/mytracker/models/events/Event;->setId(J)V

    .line 113
    return-object v4

    .line 101
    :cond_0
    const-string/jumbo v5, "install_referrer"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v4, Lru/mail/android/mytracker/models/events/ReferrerEvent;

    .end local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    move-object/from16 v0, p9

    invoke-direct {v4, p4, v0}, Lru/mail/android/mytracker/models/events/ReferrerEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .restart local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    goto :goto_0

    .line 102
    :cond_1
    const-string/jumbo v5, "update"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Lru/mail/android/mytracker/models/events/UpdateEvent;

    .end local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    move-object/from16 v0, p9

    invoke-direct {v4, p4, p3, v0}, Lru/mail/android/mytracker/models/events/UpdateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .restart local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo v5, "invite"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "login"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "registration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "launch"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    :cond_3
    new-instance v4, Lru/mail/android/mytracker/models/events/StandardEvent;

    .end local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    move-object v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-wide/from16 v8, p10

    invoke-direct/range {v4 .. v9}, Lru/mail/android/mytracker/models/events/StandardEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    .restart local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    goto :goto_0

    .line 105
    :cond_4
    const-string/jumbo v5, "session"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 106
    new-instance v4, Lru/mail/android/mytracker/models/events/SessionEvent;

    .end local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    move-wide/from16 v0, p7

    move-wide/from16 v2, p10

    invoke-direct {v4, v0, v1, v2, v3}, Lru/mail/android/mytracker/models/events/SessionEvent;-><init>(JJ)V

    .restart local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    goto :goto_0

    .line 107
    :cond_5
    const-string/jumbo v5, "level_achieved"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 108
    new-instance v4, Lru/mail/android/mytracker/models/events/LevelEvent;

    .end local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    move-object/from16 v0, p6

    move-object/from16 v1, p9

    move-wide/from16 v2, p10

    invoke-direct {v4, v0, v1, v2, v3}, Lru/mail/android/mytracker/models/events/LevelEvent;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    .restart local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    goto :goto_0

    .line 109
    :cond_6
    const-string/jumbo v5, "purchase"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 110
    new-instance v4, Lru/mail/android/mytracker/models/events/PurchaseEvent;

    .end local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    move-object/from16 v0, p6

    move-object/from16 v1, p9

    invoke-direct {v4, v0, v1}, Lru/mail/android/mytracker/models/events/PurchaseEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .restart local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    goto/16 :goto_0

    .line 111
    :cond_7
    new-instance v4, Lru/mail/android/mytracker/models/events/CustomEvent;

    .end local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    move-object v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-wide/from16 v8, p10

    invoke-direct/range {v4 .. v9}, Lru/mail/android/mytracker/models/events/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    .restart local v4    # "event":Lru/mail/android/mytracker/models/events/Event;
    goto/16 :goto_0
.end method

.method public static getInstallEvent(JJ)Lru/mail/android/mytracker/models/events/Event;
    .locals 2
    .param p0, "firstInstallTime"    # J
    .param p2, "timestamp"    # J

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "timestamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lru/mail/android/mytracker/models/events/InstallEvent;

    invoke-direct {v1, p0, p1, v0}, Lru/mail/android/mytracker/models/events/InstallEvent;-><init>(JLjava/util/List;)V

    return-object v1
.end method

.method public static getLevelEvent(ILjava/util/Map;)Lru/mail/android/mytracker/models/events/Event;
    .locals 2
    .param p0, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lru/mail/android/mytracker/models/events/Event;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lru/mail/android/mytracker/models/events/LevelEvent;

    invoke-static {p1}, Lru/mail/android/mytracker/factories/EventsFactory;->paramsToJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lru/mail/android/mytracker/models/events/LevelEvent;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static getPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;
    .locals 2
    .param p0, "skuDetails"    # Lorg/json/JSONObject;
    .param p1, "purchaseData"    # Lorg/json/JSONObject;
    .param p2, "dataSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lru/mail/android/mytracker/models/events/Event;"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lru/mail/android/mytracker/models/events/PurchaseEvent;

    invoke-static {p3}, Lru/mail/android/mytracker/factories/EventsFactory;->paramsToJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lru/mail/android/mytracker/models/events/PurchaseEvent;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReferrerEvent(Ljava/lang/String;J)Lru/mail/android/mytracker/models/events/Event;
    .locals 3
    .param p0, "referrer"    # Ljava/lang/String;
    .param p1, "timestamp"    # J

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "timestamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lru/mail/android/mytracker/models/events/ReferrerEvent;

    invoke-direct {v1, p0, v0}, Lru/mail/android/mytracker/models/events/ReferrerEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public static getSessionEvent()Lru/mail/android/mytracker/models/events/SessionEvent;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lru/mail/android/mytracker/models/events/SessionEvent;

    invoke-direct {v0}, Lru/mail/android/mytracker/models/events/SessionEvent;-><init>()V

    return-object v0
.end method

.method public static getStandardEvent(Ljava/lang/String;)Lru/mail/android/mytracker/models/events/Event;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/mail/android/mytracker/factories/EventsFactory;->getStandardEvent(Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v0

    return-object v0
.end method

.method public static getStandardEvent(Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lru/mail/android/mytracker/models/events/Event;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lru/mail/android/mytracker/models/events/StandardEvent;

    invoke-static {p1}, Lru/mail/android/mytracker/factories/EventsFactory;->paramsToJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lru/mail/android/mytracker/models/events/StandardEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUpdateEvent(Ljava/lang/String;Ljava/lang/String;J)Lru/mail/android/mytracker/models/events/Event;
    .locals 2
    .param p0, "appBuild"    # Ljava/lang/String;
    .param p1, "appVer"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "timestamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lru/mail/android/mytracker/models/events/UpdateEvent;

    invoke-direct {v1, p0, p1, v0}, Lru/mail/android/mytracker/models/events/UpdateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private static paramsToJSONString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v3, "json":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 124
    .local v4, "sortedParams":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "sortedParams":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 134
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v5, ""

    :goto_1
    return-object v5

    .line 128
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "sortedParams":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method
