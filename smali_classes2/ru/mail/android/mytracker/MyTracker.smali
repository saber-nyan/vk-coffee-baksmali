.class public final Lru/mail/android/mytracker/MyTracker;
.super Ljava/lang/Object;
.source "MyTracker.java"


# static fields
.field private static volatile isEnabled:Z

.field private static tracker:Lru/mail/android/mytracker/Tracker;

.field private static trackerParams:Lru/mail/android/mytracker/MyTrackerParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lru/mail/android/mytracker/MyTracker;->isEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method private static checkTracker()Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0}, Lru/mail/android/mytracker/Tracker;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    const-string/jumbo v0, "You should call MyTracker.initTracker method first"

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized createTracker(Ljava/lang/String;Landroid/content/Context;)Lru/mail/android/mytracker/Tracker;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-class v1, Lru/mail/android/mytracker/MyTracker;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lru/mail/android/mytracker/MyTrackerParams;

    invoke-direct {v0, p0}, Lru/mail/android/mytracker/MyTrackerParams;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/mail/android/mytracker/MyTracker;->trackerParams:Lru/mail/android/mytracker/MyTrackerParams;

    .line 62
    new-instance v0, Lru/mail/android/mytracker/DefaultTracker;

    sget-object v2, Lru/mail/android/mytracker/MyTracker;->trackerParams:Lru/mail/android/mytracker/MyTrackerParams;

    iget-object v2, v2, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-direct {v0, v2, p1}, Lru/mail/android/mytracker/DefaultTracker;-><init>(Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    sput-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    .line 63
    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    sget-boolean v2, Lru/mail/android/mytracker/MyTracker;->isEnabled:Z

    invoke-interface {v0, v2}, Lru/mail/android/mytracker/Tracker;->setEnabled(Z)V

    .line 64
    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTrackerParams()Lru/mail/android/mytracker/MyTrackerParams;
    .locals 2

    .prologue
    .line 53
    const-class v0, Lru/mail/android/mytracker/MyTracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lru/mail/android/mytracker/MyTracker;->trackerParams:Lru/mail/android/mytracker/MyTrackerParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initTracker()V
    .locals 2

    .prologue
    .line 69
    const-class v1, Lru/mail/android/mytracker/MyTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    if-nez v0, :cond_0

    const-string/jumbo v0, "You should call MyTracker.createTracker method first"

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit v1

    return-void

    .line 70
    :cond_0
    :try_start_1
    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0}, Lru/mail/android/mytracker/Tracker;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDebugMode()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lru/mail/android/mytracker/Tracer;->enabled:Z

    return v0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lru/mail/android/mytracker/MyTracker;->isEnabled:Z

    return v0
.end method

.method public static onStartActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0}, Lru/mail/android/mytracker/Tracker;->onStartActivity(Landroid/app/Activity;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static onStopActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0}, Lru/mail/android/mytracker/Tracker;->onStopActivity(Landroid/app/Activity;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debugMode"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lru/mail/android/mytracker/Tracer;->enabled:Z

    .line 38
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lru/mail/android/mytracker/MyTracker;->isEnabled:Z

    .line 48
    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0}, Lru/mail/android/mytracker/Tracker;->setEnabled(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/mail/android/mytracker/MyTracker;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0, p1}, Lru/mail/android/mytracker/Tracker;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static trackInviteEvent()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lru/mail/android/mytracker/MyTracker;->trackInviteEvent(Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method public static trackInviteEvent(Ljava/util/Map;)V
    .locals 1
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
    .line 120
    .local p0, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0}, Lru/mail/android/mytracker/Tracker;->trackInviteEvent(Ljava/util/Map;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static trackLevelEvent()V
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0}, Lru/mail/android/mytracker/Tracker;->trackLevelEvent()V

    .line 126
    :cond_0
    return-void
.end method

.method public static trackLevelEvent(ILjava/util/Map;)V
    .locals 1
    .param p0, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0, p1}, Lru/mail/android/mytracker/Tracker;->trackLevelEvent(ILjava/util/Map;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static trackLevelEvent(Ljava/util/Map;)V
    .locals 1
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
    .line 130
    .local p0, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0}, Lru/mail/android/mytracker/Tracker;->trackLevelEvent(Ljava/util/Map;)V

    .line 131
    :cond_0
    return-void
.end method

.method public static trackLoginEvent()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Lru/mail/android/mytracker/MyTracker;->trackLoginEvent(Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public static trackLoginEvent(Ljava/util/Map;)V
    .locals 1
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
    .line 100
    .local p0, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0}, Lru/mail/android/mytracker/Tracker;->trackLoginEvent(Ljava/util/Map;)V

    .line 101
    :cond_0
    return-void
.end method

.method public static trackPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p0, "skuDetails"    # Lorg/json/JSONObject;
    .param p1, "purchaseData"    # Lorg/json/JSONObject;
    .param p2, "dataSignature"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0, p1, p2}, Lru/mail/android/mytracker/Tracker;->trackPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public static trackPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0, p1, p2, p3}, Lru/mail/android/mytracker/Tracker;->trackPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static trackRegistrationEvent()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Lru/mail/android/mytracker/MyTracker;->trackRegistrationEvent(Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public static trackRegistrationEvent(Ljava/util/Map;)V
    .locals 1
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
    .line 110
    .local p0, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lru/mail/android/mytracker/MyTracker;->checkTracker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/mail/android/mytracker/MyTracker;->tracker:Lru/mail/android/mytracker/Tracker;

    invoke-interface {v0, p0}, Lru/mail/android/mytracker/Tracker;->trackRegistrationEvent(Ljava/util/Map;)V

    .line 111
    :cond_0
    return-void
.end method
