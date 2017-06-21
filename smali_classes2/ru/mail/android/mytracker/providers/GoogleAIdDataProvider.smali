.class public Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;
.super Lru/mail/android/mytracker/providers/AbstractFPDataProvider;
.source "GoogleAIdDataProvider.java"


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private isCollected:Z

.field private isTrackingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isCollected:Z

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->advertisingId:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isTrackingEnabled:Z

    .line 51
    return-void
.end method

.method private getGoogleAId(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 73
    const-string/jumbo v5, "get google AId"

    invoke-static {v5}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 80
    :try_start_0
    const-string/jumbo v5, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    .local v1, "gClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 83
    const-string/jumbo v5, "getAdvertisingIdInfo"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 84
    .local v3, "m":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    .line 86
    const/4 v5, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 87
    .local v4, "result":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v8, "getId"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_0

    .line 92
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->advertisingId:Ljava/lang/String;

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "google advertising id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->advertisingId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v8, "isLimitAdTrackingEnabled"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_1

    .line 98
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 99
    .local v2, "isLimitAdTrackingEnabled":Z
    if-nez v2, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isTrackingEnabled:Z

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ad tracking enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isTrackingEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "gClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "isLimitAdTrackingEnabled":Z
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "gClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "isLimitAdTrackingEnabled":Z
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_2
    move v5, v7

    .line 99
    goto :goto_0

    .line 106
    .end local v1    # "gClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "isLimitAdTrackingEnabled":Z
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v5, "failed to get google AId"

    invoke-static {v5}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public collectData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 61
    const-string/jumbo v0, "GoogleAIdDataProvider: You must not call collectData method from main thread"

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isCollected:Z

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->getGoogleAId(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isCollected:Z

    goto :goto_0
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isTrackingEnabled()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isTrackingEnabled:Z

    return v0
.end method

.method public putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 2
    .param p1, "destination"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 121
    iget-object v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->advertisingId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->advertisingId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v1, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->advertisingId:Ljava/lang/String;

    iget-boolean v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isTrackingEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAdvertisingId(Ljava/lang/String;I)V

    .line 125
    :cond_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putDataToMap(Ljava/util/Map;)V
    .locals 3
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
    .line 115
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "advertising_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->advertisingId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    const-string/jumbo v1, "advertising_tracking_enabled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->isTrackingEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
