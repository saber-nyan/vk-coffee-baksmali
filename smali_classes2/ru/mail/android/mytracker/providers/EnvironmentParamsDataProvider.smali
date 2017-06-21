.class public final Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;
.super Lru/mail/android/mytracker/providers/AbstractFPDataProvider;
.source "EnvironmentParamsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;,
        Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;,
        Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;,
        Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;
    }
.end annotation


# instance fields
.field private currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

.field private currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

.field private neighbourWifies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->neighbourWifies:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method private collectCellInfo(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    .line 126
    new-instance v0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;

    invoke-direct {v0, p1}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "environment":Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;
    iget-object v1, v0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;->cellLocation:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    .line 129
    new-instance v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    const-string/jumbo v2, "gsm"

    invoke-direct {v1, v2}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    .line 130
    iget-object v1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget-object v2, v0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;->cellLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->cid:I

    .line 131
    iget-object v1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget-object v2, v0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;->cellLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->lac:I

    .line 133
    iget-object v1, v0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;->networkOperator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget-object v2, v0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;->networkOperator:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->mcc:I

    .line 138
    iget-object v1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget-object v2, v0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellEnvironment;->networkOperator:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->mnc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current cell: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget v2, v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->cid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget v2, v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->lac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget v2, v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget v2, v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 147
    :cond_1
    return-void

    .line 139
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private collectWifiInfo(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;

    invoke-direct {v2, p1}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, "environment":Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;
    iget-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->neighbourWifies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 73
    const/4 v11, 0x0

    iput-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    .line 74
    iget-object v11, v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;->currentWiFi:Landroid/net/wifi/WifiInfo;

    if-eqz v11, :cond_2

    .line 76
    iget-object v4, v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;->currentWiFi:Landroid/net/wifi/WifiInfo;

    .line 77
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "bssid":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 79
    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    .line 80
    .local v5, "linkSpeed":I
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    .line 81
    .local v6, "networkId":I
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    .line 82
    .local v8, "rssi":I
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "ssid":Ljava/lang/String;
    if-nez v9, :cond_1

    const-string/jumbo v9, ""

    .line 85
    :cond_1
    new-instance v11, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    invoke-direct {v11}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;-><init>()V

    iput-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    .line 86
    iget-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    iput-object v9, v11, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->ssid:Ljava/lang/String;

    .line 87
    iget-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    iput-object v0, v11, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->bssid:Ljava/lang/String;

    .line 88
    iget-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    iput v8, v11, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->rssi:I

    .line 89
    iget-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    iput v6, v11, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->wifiId:I

    .line 90
    iget-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    iput v5, v11, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->linkSpeed:I

    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "current wifi: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 97
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    .end local v5    # "linkSpeed":I
    .end local v6    # "networkId":I
    .end local v8    # "rssi":I
    .end local v9    # "ssid":Ljava/lang/String;
    :cond_2
    iget-object v11, v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;->scanResults:Ljava/util/List;

    if-eqz v11, :cond_6

    .line 99
    const/4 v1, 0x1

    .line 100
    .local v1, "count":I
    iget-object v11, v2, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WiFiEnvironment;->scanResults:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 102
    .local v7, "result":Landroid/net/wifi/ScanResult;
    const/4 v11, 0x6

    if-ge v1, v11, :cond_3

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 105
    iget-object v0, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 106
    .restart local v0    # "bssid":Ljava/lang/String;
    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    .line 107
    :cond_4
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 108
    .restart local v9    # "ssid":Ljava/lang/String;
    if-nez v9, :cond_5

    const-string/jumbo v9, ""

    .line 110
    :cond_5
    new-instance v10, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    invoke-direct {v10}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;-><init>()V

    .line 111
    .local v10, "wifiObject":Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;
    iput-object v9, v10, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->ssid:Ljava/lang/String;

    .line 112
    iput-object v0, v10, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->bssid:Ljava/lang/String;

    .line 113
    iget v11, v7, Landroid/net/wifi/ScanResult;->level:I

    iput v11, v10, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;->level:I

    .line 114
    iget-object v11, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->neighbourWifies:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wifi"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 121
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    .end local v9    # "ssid":Ljava/lang/String;
    .end local v10    # "wifiObject":Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;
    :cond_6
    return-void
.end method


# virtual methods
.method public declared-synchronized collectData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 62
    const-string/jumbo v0, "DeviceParamsDataProvider: You must not call collectData method from main thread"

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->collectWifiInfo(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p1}, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->collectCellInfo(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 3
    .param p1, "destination"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 242
    iget-object v0, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentCell:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;

    iget-object v1, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->currentWifi:Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;

    iget-object v2, p0, Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider;->neighbourWifies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->setEnviroment(Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$CellObject;Lru/mail/android/mytracker/providers/EnvironmentParamsDataProvider$WifiObject;Ljava/util/ArrayList;)V

    .line 243
    return-void
.end method
