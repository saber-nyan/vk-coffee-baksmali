.class Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WiFiEnvironment"
.end annotation


# instance fields
.field public currentWiFi:Landroid/net/wifi/WifiInfo;

.field public scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    :try_start_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 163
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;->currentWiFi:Landroid/net/wifi/WifiInfo;

    .line 166
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;->scanResults:Ljava/util/List;

    .line 167
    iget-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;->scanResults:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;->scanResults:Ljava/util/List;

    new-instance v3, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment$1;

    invoke-direct {v3, p0}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment$1;-><init>(Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "No permissions for access to wifi state"

    invoke-static {v2}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
