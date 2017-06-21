.class public Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;
.super Lru/mail/android/mytracker/providers/AbstractFPDataProvider;
.source "NetworkInfoDataProvider.java"


# instance fields
.field private bluetoothState:I

.field private connection:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private isConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->bluetoothState:I

    .line 53
    return-void
.end method


# virtual methods
.method public collectData(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 63
    const-string/jumbo v3, "NetworkInfoDataProvider: You must not call collectData method from main thread"

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-boolean v5, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->isConnected:Z

    .line 68
    const-string/jumbo v3, ""

    iput-object v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connection:Ljava/lang/String;

    .line 69
    const-string/jumbo v3, ""

    iput-object v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connectionType:Ljava/lang/String;

    .line 73
    :try_start_0
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 74
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_6

    .line 76
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->isConnected:Z

    .line 77
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connection:Ljava/lang/String;

    .line 79
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_4

    .line 81
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connectionType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_3
    invoke-static {}, Lru/mail/android/mytracker/utils/ManufacturerUtils;->isManufacturerAskPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 99
    .local v1, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 103
    const/4 v3, 0x1

    iput v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->bluetoothState:I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "No permissions for access to bluetooth"

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    :try_start_2
    const-string/jumbo v3, ""

    goto :goto_1

    .line 81
    :cond_3
    const-string/jumbo v3, ""

    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    :goto_4
    iput-object v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connectionType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 89
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "No permissions for access to network state"

    invoke-static {v3}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 85
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    :try_start_3
    const-string/jumbo v3, ""

    goto :goto_4

    .line 88
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->isConnected:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 107
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_7
    const/4 v3, 0x0

    :try_start_4
    iput v3, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->bluetoothState:I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->isConnected:Z

    return v0
.end method

.method public putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 2
    .param p1, "destination"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 127
    iget-object v0, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connection:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connectionType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connection:Ljava/lang/String;

    iget-object v1, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connectionType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lru/mail/android/mytracker/builders/JSONBuilder;->setConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    iget v0, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->bluetoothState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->bluetoothState:I

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setBluetoothState(I)V

    .line 135
    :cond_2
    return-void
.end method

.method public putDataToMap(Ljava/util/Map;)V
    .locals 2
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
    .line 119
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "connection"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connection:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    const-string/jumbo v0, "connection_type"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->connectionType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    iget v0, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->bluetoothState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 122
    const-string/jumbo v0, "bluetooth_enabled"

    iget v1, p0, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->bluetoothState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/NetworkInfoDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    :cond_0
    return-void
.end method
