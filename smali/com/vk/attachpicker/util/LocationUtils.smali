.class public Lcom/vk/attachpicker/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/vk/attachpicker/util/LocationUtils;->isLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "result":Landroid/location/Location;
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Lcom/vk/attachpicker/util/LocationUtils;->getLastKnownLocation_GooglePlayServices()Landroid/location/Location;

    move-result-object v0

    .line 42
    :cond_0
    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/vk/attachpicker/util/LocationUtils;->getLastKnownLocation_LocationManager()Landroid/location/Location;

    move-result-object v0

    .line 47
    :cond_1
    :goto_0
    return-object v0

    .end local v0    # "result":Landroid/location/Location;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLastKnownLocation_GooglePlayServices()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 67
    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 68
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 70
    .local v1, "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    .line 71
    .local v2, "result":Lcom/google/android/gms/common/ConnectionResult;
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    :try_start_0
    sget-object v4, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v4, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 79
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 82
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    throw v3
.end method

.method private static getLastKnownLocation_LocationManager()Landroid/location/Location;
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 53
    .local v1, "locationManager":Landroid/location/LocationManager;
    if-eqz v1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "lastLocation":Landroid/location/Location;
    :try_start_0
    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    .end local v0    # "lastLocation":Landroid/location/Location;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    .restart local v0    # "lastLocation":Landroid/location/Location;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isLocationEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 18
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 23
    .local v1, "locationMode":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 25
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 29
    :goto_0
    if-eqz v1, :cond_1

    .line 32
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v3, v4

    .line 29
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "locationProviders":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 26
    .end local v2    # "locationProviders":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
