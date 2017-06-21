.class public Lru/mail/android/mytracker/providers/LocationDataProvider;
.super Lru/mail/android/mytracker/providers/AbstractFPDataProvider;
.source "LocationDataProvider.java"


# instance fields
.field private isEnabled:Z

.field private location:Landroid/location/Location;

.field private locationProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->isEnabled:Z

    .line 45
    return-void
.end method


# virtual methods
.method public collectData(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {}, Lru/mail/android/mytracker/utils/ManufacturerUtils;->isManufacturerAskPermission()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v13, v0, :cond_2

    .line 57
    const-string/jumbo v13, "LocationDataProvider: You must not call collectData method from main thread"

    invoke-static {v13}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lru/mail/android/mytracker/providers/LocationDataProvider;->location:Landroid/location/Location;

    .line 62
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lru/mail/android/mytracker/providers/LocationDataProvider;->locationProvider:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lru/mail/android/mytracker/providers/LocationDataProvider;->isEnabled:Z

    if-eqz v13, :cond_0

    .line 66
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 67
    .local v3, "bestAccuracy":F
    const-wide/16 v6, 0x0

    .line 68
    .local v6, "bestTime":J
    const/4 v5, 0x0

    .line 69
    .local v5, "bestResult":Landroid/location/Location;
    const/4 v4, 0x0

    .line 70
    .local v4, "bestProvider":Ljava/lang/String;
    const-string/jumbo v13, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationManager;

    .line 71
    .local v9, "lm":Landroid/location/LocationManager;
    invoke-virtual {v9}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v11

    .line 72
    .local v11, "matchingProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 76
    .local v12, "provider":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9, v12}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 77
    .local v10, "location":Landroid/location/Location;
    if-eqz v10, :cond_3

    .line 79
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 80
    .local v2, "accuracy":F
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 82
    .local v14, "time":J
    if-eqz v5, :cond_4

    cmp-long v13, v14, v6

    if-lez v13, :cond_3

    cmpg-float v13, v2, v3

    if-gez v13, :cond_3

    .line 84
    :cond_4
    move-object v5, v10

    .line 85
    move v3, v2

    .line 86
    move-wide v6, v14

    .line 87
    move-object v4, v12

    goto :goto_1

    .line 95
    .end local v2    # "accuracy":F
    .end local v10    # "location":Landroid/location/Location;
    .end local v12    # "provider":Ljava/lang/String;
    .end local v14    # "time":J
    :cond_5
    if-eqz v5, :cond_0

    .line 97
    move-object/from16 v0, p0

    iput-object v5, v0, Lru/mail/android/mytracker/providers/LocationDataProvider;->location:Landroid/location/Location;

    .line 98
    move-object/from16 v0, p0

    iput-object v4, v0, Lru/mail/android/mytracker/providers/LocationDataProvider;->locationProvider:Ljava/lang/String;

    goto :goto_0

    .line 90
    .restart local v12    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1
.end method

.method public putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 2
    .param p1, "destination"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 111
    iget-object v0, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->location:Landroid/location/Location;

    iget-object v1, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->locationProvider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lru/mail/android/mytracker/builders/JSONBuilder;->setLocation(Landroid/location/Location;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public putDataToMap(Ljava/util/Map;)V
    .locals 4
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
    .line 104
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 105
    const-string/jumbo v0, "location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/LocationDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    :cond_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->locationProvider:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "location_provider"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->locationProvider:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/LocationDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lru/mail/android/mytracker/providers/LocationDataProvider;->isEnabled:Z

    .line 117
    return-void
.end method
