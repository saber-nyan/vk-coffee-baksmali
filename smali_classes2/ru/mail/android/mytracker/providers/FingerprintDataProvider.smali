.class public final Lru/mail/android/mytracker/providers/FingerprintDataProvider;
.super Lru/mail/android/mytracker/providers/AbstractFPDataProvider;
.source "FingerprintDataProvider.java"


# static fields
.field private static instance:Lru/mail/android/mytracker/providers/FingerprintDataProvider;


# instance fields
.field private appsDataProvider:Lru/mail/android/mytracker/providers/AppsDataProvider;

.field private deviceParamsDataProvider:Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;

.field private environmentParamsDataProvider:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;

.field private googleAIdDataProvider:Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;

.field private locationDataProvider:Lru/mail/android/mytracker/providers/LocationDataProvider;

.field private networkInfoDataProvider:Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;-><init>()V

    .line 39
    new-instance v0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;

    invoke-direct {v0}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->deviceParamsDataProvider:Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;

    .line 40
    new-instance v0, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;

    invoke-direct {v0}, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->googleAIdDataProvider:Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;

    .line 41
    new-instance v0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    invoke-direct {v0}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->networkInfoDataProvider:Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    .line 42
    new-instance v0, Lru/mail/android/mytracker/providers/LocationDataProvider;

    invoke-direct {v0}, Lru/mail/android/mytracker/providers/LocationDataProvider;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->locationDataProvider:Lru/mail/android/mytracker/providers/LocationDataProvider;

    .line 43
    new-instance v0, Lru/mail/android/mytracker/providers/AppsDataProvider;

    invoke-direct {v0}, Lru/mail/android/mytracker/providers/AppsDataProvider;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->appsDataProvider:Lru/mail/android/mytracker/providers/AppsDataProvider;

    .line 44
    new-instance v0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;

    invoke-direct {v0}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->environmentParamsDataProvider:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;

    .line 84
    return-void
.end method

.method public static getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->instance:Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    if-nez v0, :cond_0

    new-instance v0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    invoke-direct {v0}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;-><init>()V

    sput-object v0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->instance:Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    .line 31
    :cond_0
    sget-object v0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->instance:Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    return-object v0
.end method


# virtual methods
.method public collectData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 93
    const-string/jumbo v0, "FingerprintDataProvider: You must not call collectData method from main thread"

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->deviceParamsDataProvider:Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->collectData(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->googleAIdDataProvider:Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->collectData(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->networkInfoDataProvider:Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->collectData(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->locationDataProvider:Lru/mail/android/mytracker/providers/LocationDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/LocationDataProvider;->collectData(Landroid/content/Context;)V

    .line 101
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->environmentParamsDataProvider:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->collectData(Landroid/content/Context;)V

    .line 102
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->appsDataProvider:Lru/mail/android/mytracker/providers/AppsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/AppsDataProvider;->collectData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getAppsDataProvider()Lru/mail/android/mytracker/providers/AppsDataProvider;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->appsDataProvider:Lru/mail/android/mytracker/providers/AppsDataProvider;

    return-object v0
.end method

.method public getDeviceParamsDataProvider()Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->deviceParamsDataProvider:Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;

    return-object v0
.end method

.method public getEnvironmentParamsDataProvider()Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->environmentParamsDataProvider:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;

    return-object v0
.end method

.method public getGoogleAIdDataProvider()Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->googleAIdDataProvider:Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;

    return-object v0
.end method

.method public getLocationDataProvider()Lru/mail/android/mytracker/providers/LocationDataProvider;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->locationDataProvider:Lru/mail/android/mytracker/providers/LocationDataProvider;

    return-object v0
.end method

.method public getNetworkInfoDataProvider()Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->networkInfoDataProvider:Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    return-object v0
.end method

.method public putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 1
    .param p1, "destination"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 116
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->deviceParamsDataProvider:Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 117
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->googleAIdDataProvider:Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 118
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->networkInfoDataProvider:Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 119
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->locationDataProvider:Lru/mail/android/mytracker/providers/LocationDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/LocationDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 120
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->appsDataProvider:Lru/mail/android/mytracker/providers/AppsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/AppsDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 121
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->environmentParamsDataProvider:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 122
    return-void
.end method

.method public putDataToMap(Ljava/util/Map;)V
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
    .line 107
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->deviceParamsDataProvider:Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->putDataToMap(Ljava/util/Map;)V

    .line 108
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->googleAIdDataProvider:Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->putDataToMap(Ljava/util/Map;)V

    .line 109
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->networkInfoDataProvider:Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->putDataToMap(Ljava/util/Map;)V

    .line 110
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->locationDataProvider:Lru/mail/android/mytracker/providers/LocationDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/LocationDataProvider;->putDataToMap(Ljava/util/Map;)V

    .line 111
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->appsDataProvider:Lru/mail/android/mytracker/providers/AppsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/AppsDataProvider;->putDataToMap(Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method public storeData(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;->storeData(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->deviceParamsDataProvider:Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->storeData(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->googleAIdDataProvider:Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/GoogleAIdDataProvider;->storeData(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->networkInfoDataProvider:Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->storeData(Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->locationDataProvider:Lru/mail/android/mytracker/providers/LocationDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/LocationDataProvider;->storeData(Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->environmentParamsDataProvider:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->storeData(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->appsDataProvider:Lru/mail/android/mytracker/providers/AppsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/AppsDataProvider;->storeData(Landroid/content/Context;)V

    .line 134
    return-void
.end method
