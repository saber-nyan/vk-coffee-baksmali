.class public Lcom/vkcoffee/android/C2DM;
.super Ljava/lang/Object;
.source "C2DM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForUpdate()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/C2DM;->start(Z)V

    .line 54
    return-void
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/C2DM;->start(Z)V

    .line 50
    return-void
.end method

.method public static start(Z)V
    .locals 5
    .param p0, "check"    # Z

    .prologue
    .line 15
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "gcm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 16
    .local v1, "tokenVer":I
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 17
    .local v0, "appVer":I
    if-eq v0, v1, :cond_0

    .line 18
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkcoffee/android/C2DM$1;

    invoke-direct {v3, v0, v1, p0}, Lcom/vkcoffee/android/C2DM$1;-><init>(IIZ)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "appVer":I
    .end local v1    # "tokenVer":I
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static stop()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 58
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "gcm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "reg"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "token":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return v1

    .line 62
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/api/account/C2DMUnregisterDevice;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/account/C2DMUnregisterDevice;-><init>()V

    .line 63
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/account/C2DMUnregisterDevice;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    goto :goto_0
.end method
