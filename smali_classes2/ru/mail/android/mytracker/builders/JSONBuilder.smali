.class public final Lru/mail/android/mytracker/builders/JSONBuilder;
.super Ljava/lang/Object;
.source "JSONBuilder.java"


# static fields
.field public static final APP:Ljava/lang/String; = "app"

.field public static final APPS:Ljava/lang/String; = "apps"

.field public static final BUNDLE:Ljava/lang/String; = "bundle"

.field public static final CUSTOM_EVENTS:Ljava/lang/String; = "custom_events"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final EVENTS:Ljava/lang/String; = "events"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NETWORK:Ljava/lang/String; = "network"

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final USER:Ljava/lang/String; = "user"


# instance fields
.field private app:Lorg/json/JSONObject;

.field private apps:Lorg/json/JSONArray;

.field private customEvents:Lorg/json/JSONArray;

.field private device:Lorg/json/JSONObject;

.field private environment:Lorg/json/JSONObject;

.field private events:Lorg/json/JSONArray;

.field private location:Lorg/json/JSONObject;

.field private network:Lorg/json/JSONObject;

.field private root:Lorg/json/JSONObject;

.field private settings:Lorg/json/JSONObject;

.field private user:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->app:Lorg/json/JSONObject;

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->location:Lorg/json/JSONObject;

    .line 58
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->events:Lorg/json/JSONArray;

    .line 59
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->customEvents:Lorg/json/JSONArray;

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->environment:Lorg/json/JSONObject;

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    .line 73
    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "mytracker_ver"

    const-string/jumbo v2, "1.2.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "app"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->app:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "user"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "device"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "network"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "location"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->location:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "events"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->events:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "custom_events"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->customEvents:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "environment"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->environment:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 348
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addEvent(Lru/mail/android/mytracker/models/events/Event;)V
    .locals 2
    .param p1, "event"    # Lru/mail/android/mytracker/models/events/Event;

    .prologue
    .line 312
    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->customEvents:Lorg/json/JSONArray;

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->events:Lorg/json/JSONArray;

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public addEvents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/mail/android/mytracker/models/events/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lru/mail/android/mytracker/models/events/Event;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/mail/android/mytracker/models/events/Event;

    .line 305
    .local v0, "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-interface {v0}, Lru/mail/android/mytracker/models/events/Event;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->customEvents:Lorg/json/JSONArray;

    invoke-interface {v0}, Lru/mail/android/mytracker/models/events/Event;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 306
    :cond_0
    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->events:Lorg/json/JSONArray;

    invoke-interface {v0}, Lru/mail/android/mytracker/models/events/Event;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 308
    .end local v0    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_1
    return-void
.end method

.method public addInstalledApps(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "installedApps":Ljava/util/List;, "Ljava/util/List<Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;>;"
    :try_start_0
    iget-object v3, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->apps:Lorg/json/JSONArray;

    if-nez v3, :cond_0

    .line 322
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iput-object v3, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->apps:Lorg/json/JSONArray;

    .line 323
    iget-object v3, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v4, "apps"

    iget-object v5, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->apps:Lorg/json/JSONArray;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;

    .line 327
    .local v0, "appInfo":Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 328
    .local v2, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "bundle"

    iget-object v4, v0, Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;->bundle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    iget-wide v4, v0, Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;->firstInstallTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const-string/jumbo v3, "first_install_time"

    iget-wide v4, v0, Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;->firstInstallTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 330
    :cond_1
    iget-object v3, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->apps:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0    # "appInfo":Lru/mail/android/mytracker/providers/AppsDataProvider$AppInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 336
    :cond_2
    return-void
.end method

.method public putSettingsLaunchTimeoutSec(I)V
    .locals 3
    .param p1, "launchTimeoutSec"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    const-string/jumbo v1, "session_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "settings"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putSettingsTrackLocationDisabled()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    const-string/jumbo v1, "location_enabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "settings"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putSettingsTrackingLaunchDisabled()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    const-string/jumbo v1, "launch_enabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "settings"

    iget-object v2, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->settings:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAdvertisingId(Ljava/lang/String;I)V
    .locals 3
    .param p1, "advertisingId"    # Ljava/lang/String;
    .param p2, "adTrackingEnabled"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "advertising_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "advertising_tracking_enabled"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public setAge(I)V
    .locals 3
    .param p1, "age"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    const-string/jumbo v1, "a"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 2
    .param p1, "androidId"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "android_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public setAppBuild(Ljava/lang/String;)V
    .locals 2
    .param p1, "appBuild"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->app:Lorg/json/JSONObject;

    const-string/jumbo v1, "appbuild"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "app_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public setAppLang(Ljava/lang/String;)V
    .locals 2
    .param p1, "appLang"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->app:Lorg/json/JSONObject;

    const-string/jumbo v1, "app_lang"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->app:Lorg/json/JSONObject;

    const-string/jumbo v1, "app"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->app:Lorg/json/JSONObject;

    const-string/jumbo v1, "appver"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public setBluetoothState(I)V
    .locals 3
    .param p1, "bluetoothState"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    const-string/jumbo v1, "bluetooth_enabled"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "connection"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    const-string/jumbo v1, "connection"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    const-string/jumbo v1, "connection_type"

    invoke-direct {p0, v0, v1, p2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public setCustomEventsSkipped(J)V
    .locals 3
    .param p1, "skipped"    # J

    .prologue
    .line 109
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "custom_events_skipped"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public setCustomUserId([Ljava/lang/String;)V
    .locals 4
    .param p1, "customUserIds"    # [Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    const-string/jumbo v1, "custom_user_id"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public setDPI(I)V
    .locals 3
    .param p1, "dpi"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "dpi"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public setDensity(F)V
    .locals 3
    .param p1, "density"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "density"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "device_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "device"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public setEmail([Ljava/lang/String;)V
    .locals 4
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    const-string/jumbo v1, "email"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public setEndUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "endUserName"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "euname"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public setEnviroment(Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "currentCell"    # Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;
    .param p2, "currentWifi"    # Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;",
            "Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p3, "aroundWifies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 360
    .local v3, "cell":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 362
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 363
    .local v4, "current":Lorg/json/JSONArray;
    iget-object v7, p1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->type:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 364
    iget v7, p1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->cid:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 365
    iget v7, p1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->lac:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 366
    iget v7, p1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->mcc:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 367
    iget v7, p1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->mnc:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 368
    const-string/jumbo v7, "current"

    invoke-direct {p0, v3, v7, v4}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    iget-object v7, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->environment:Lorg/json/JSONObject;

    const-string/jumbo v8, "cell"

    invoke-direct {p0, v7, v8, v3}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    .end local v4    # "current":Lorg/json/JSONArray;
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 374
    .local v6, "wifi":Lorg/json/JSONObject;
    if-eqz p2, :cond_1

    .line 376
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 377
    .restart local v4    # "current":Lorg/json/JSONArray;
    iget-object v7, p2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->bssid:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 378
    iget-object v7, p2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 379
    iget v7, p2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->rssi:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 380
    iget v7, p2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->wifiId:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 381
    iget v7, p2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->linkSpeed:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 382
    const-string/jumbo v7, "current"

    invoke-direct {p0, v6, v7, v4}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    .end local v4    # "current":Lorg/json/JSONArray;
    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 387
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 388
    .local v0, "around":Lorg/json/JSONArray;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    .line 390
    .local v1, "aroundCell":Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 391
    .local v2, "aroundOne":Lorg/json/JSONArray;
    iget-object v7, v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 392
    iget-object v7, v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 393
    iget v7, v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->level:I

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 394
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 397
    .end local v1    # "aroundCell":Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;
    .end local v2    # "aroundOne":Lorg/json/JSONArray;
    :cond_2
    const-string/jumbo v7, "around"

    invoke-direct {p0, v6, v7, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    .end local v0    # "around":Lorg/json/JSONArray;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 401
    :cond_4
    iget-object v7, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->environment:Lorg/json/JSONObject;

    const-string/jumbo v8, "wifi"

    invoke-direct {p0, v7, v8, v6}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    :cond_5
    return-void
.end method

.method public setGender(I)V
    .locals 3
    .param p1, "gender"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    const-string/jumbo v1, "g"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public setHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "h"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public setIcqId([Ljava/lang/String;)V
    .locals 4
    .param p1, "icqIds"    # [Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    const-string/jumbo v1, "icq_id"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "lang"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public setLocation(Landroid/location/Location;Ljava/lang/String;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "locationProvider"    # Ljava/lang/String;

    .prologue
    .line 246
    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->location:Lorg/json/JSONObject;

    const-string/jumbo v1, "lon"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 250
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->location:Lorg/json/JSONObject;

    const-string/jumbo v1, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 251
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->location:Lorg/json/JSONObject;

    const-string/jumbo v1, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 252
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->location:Lorg/json/JSONObject;

    const-string/jumbo v1, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 253
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->location:Lorg/json/JSONObject;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 254
    if-eqz p2, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->location:Lorg/json/JSONObject;

    const-string/jumbo v1, "location_provider"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setManufacture(Ljava/lang/String;)V
    .locals 2
    .param p1, "manufacture"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "manufacture"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public setMrgsAppId(Ljava/lang/String;)V
    .locals 2
    .param p1, "mrgsAppId"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->app:Lorg/json/JSONObject;

    const-string/jumbo v1, "mrgs_app_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public setMrgsDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "mrgsDeviceId"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "mrgs_device_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public setMrgsUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "mrgsUserId"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    const-string/jumbo v1, "mrgs_user_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public setOS(Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "os"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public setOSVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "osver"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public setOkId([Ljava/lang/String;)V
    .locals 4
    .param p1, "okIds"    # [Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    const-string/jumbo v1, "ok_id"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public setOperatorId(Ljava/lang/String;)V
    .locals 2
    .param p1, "operatorId"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    const-string/jumbo v1, "operator_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;)V
    .locals 2
    .param p1, "operatorName"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    const-string/jumbo v1, "operator_name"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setSimLocation(Ljava/lang/String;)V
    .locals 2
    .param p1, "simLocation"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    const-string/jumbo v1, "sim_loc"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public setSimOperatorId(Ljava/lang/String;)V
    .locals 2
    .param p1, "simOperatorId"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->network:Lorg/json/JSONObject;

    const-string/jumbo v1, "sim_operator_id"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public setTimestampBase(J)V
    .locals 3
    .param p1, "timestampBase"    # J

    .prologue
    .line 99
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "timestamp_base"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public setTimestampSend(J)V
    .locals 3
    .param p1, "timestampSend"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    const-string/jumbo v1, "timestamp_send"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "timezone"

    invoke-direct {p0, v0, v1, p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public setVKId([Ljava/lang/String;)V
    .locals 4
    .param p1, "vkIds"    # [Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->user:Lorg/json/JSONObject;

    const-string/jumbo v1, "vk_id"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->device:Lorg/json/JSONObject;

    const-string/jumbo v1, "w"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->set(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lru/mail/android/mytracker/builders/JSONBuilder;->root:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
