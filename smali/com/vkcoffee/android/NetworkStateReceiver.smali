.class public Lcom/vkcoffee/android/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$1;,
        Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$2;
    }
.end annotation


# static fields
.field public static final ACTION_GROUPS_UPDATED:Ljava/lang/String; = "com.vkcoffee.android.GROUPS_UPDATED"

.field private static final FORCED_SYSTEM_APPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_GET_NOTIFY:Ljava/lang/String; = "last_get_notify"

.field private static final LAST_GET_NOTIFY_APP:Ljava/lang/String; = "last_get_notify_app"

.field public static final TIME_DELAY:I = 0x1c20

.field private static final cm:Landroid/net/ConnectivityManager;

.field private static currentNetworkType:Ljava/lang/String;

.field private static final highSpeedTypes:[Ljava/lang/String;

.field public static isConnected:Z

.field private static final sl:[I

.field private static tries:I

.field public static userInfoUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.vkcoffee.android"

    aput-object v1, v0, v2

    const-string v1, "com.instagram.android"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string v1, "com.facebook.orca"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/NetworkStateReceiver;->FORCED_SYSTEM_APPS:Ljava/util/List;

    .line 53
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/vkcoffee/android/NetworkStateReceiver;->cm:Landroid/net/ConnectivityManager;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    .line 55
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "3g"

    aput-object v1, v0, v2

    const-string v1, "lte"

    aput-object v1, v0, v3

    const-string v1, "wifi"

    aput-object v1, v0, v4

    const-string v1, "ethernet"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vkcoffee/android/NetworkStateReceiver;->highSpeedTypes:[Ljava/lang/String;

    .line 56
    sput-boolean v2, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/NetworkStateReceiver;->sl:[I

    .line 58
    const/4 v0, 0x5

    sput v0, Lcom/vkcoffee/android/NetworkStateReceiver;->tries:I

    .line 59
    sput-boolean v2, Lcom/vkcoffee/android/NetworkStateReceiver;->userInfoUpdated:Z

    return-void

    .line 57
    :array_0
    .array-data 4
        0x5dc
        0xbb8
        0x1770
        0x2ee0
        0x5dc0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 373
    invoke-static {p0}, Lcom/vkcoffee/android/NetworkStateReceiver;->updateFriendlist(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1()[I
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/vkcoffee/android/NetworkStateReceiver;->sl:[I

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/vkcoffee/android/NetworkStateReceiver;->tries:I

    return v0
.end method

.method static synthetic access$3(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 219
    invoke-static {p0}, Lcom/vkcoffee/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    return-void
.end method

.method static access$310()I
    .locals 2

    .prologue
    .line 62
    sget v0, Lcom/vkcoffee/android/NetworkStateReceiver;->tries:I

    .line 63
    .local v0, "i":I
    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/vkcoffee/android/NetworkStateReceiver;->tries:I

    .line 64
    return v0
.end method

.method static synthetic access$4(I)V
    .locals 0

    .prologue
    .line 58
    sput p0, Lcom/vkcoffee/android/NetworkStateReceiver;->tries:I

    return-void
.end method

.method public static getAppNotifications(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    return-void
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 414
    sget-object v1, Lcom/vkcoffee/android/NetworkStateReceiver;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 415
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 416
    const-string v1, "none"

    .line 432
    :goto_0
    return-object v1

    .line 418
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 419
    const-string v1, "GPRS"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EDGE"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    :cond_1
    const-string v1, "edge"

    goto :goto_0

    .line 422
    :cond_2
    const-string v1, "LTE"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    const-string v1, "lte"

    goto :goto_0

    .line 425
    :cond_3
    const-string v1, "3g"

    goto :goto_0

    .line 426
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 427
    const-string v1, "wifi"

    goto :goto_0

    .line 429
    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    .line 430
    const-string v1, "ethernet"

    goto :goto_0

    .line 432
    :cond_6
    const-string v1, "other"

    goto :goto_0
.end method

.method public static getNotifications(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    return-void
.end method

.method public static isConnected()Z
    .locals 2

    .prologue
    .line 381
    sget-object v1, Lcom/vkcoffee/android/NetworkStateReceiver;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 382
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHighSpeed()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 386
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "bigImagesMobile"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isMobile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    .local v0, "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 389
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 390
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    .line 392
    :cond_2
    sget-object v4, Lcom/vkcoffee/android/NetworkStateReceiver;->highSpeedTypes:[Ljava/lang/String;

    array-length v5, v4

    move v3, v1

    .restart local v0    # "s":Ljava/lang/String;
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 393
    sget-object v6, Lcom/vkcoffee/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v2

    .line 394
    goto :goto_0

    .line 392
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isMobile()Z
    .locals 2

    .prologue
    .line 401
    sget-object v1, Lcom/vkcoffee/android/NetworkStateReceiver;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 402
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 406
    sget-object v2, Lcom/vkcoffee/android/NetworkStateReceiver;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 407
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 410
    :cond_1
    return v1
.end method

.method static lambda$updateInfo$653(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const-string v0, "vk"

    const-string v1, "do reauth"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/vkcoffee/android/Auth;->doReauth()Z

    .line 215
    const-string v0, "vk"

    const-string v1, "done"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p0}, Lcom/vkcoffee/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method private static updateFriendlist(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 374
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 375
    invoke-static {v1}, Lcom/vkcoffee/android/data/Friends;->reload(Z)V

    .line 376
    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method public static updateInfo(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 185
    sget-boolean v1, Lcom/vkcoffee/android/NetworkStateReceiver;->userInfoUpdated:Z

    if-nez v1, :cond_2

    .line 186
    const-string v1, "vk"

    const-string v2, "about to update user info..."

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    sget-boolean v1, Lcom/vkcoffee/android/Global;->inited:Z

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "sid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "uid"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vkcoffee/android/Global;->uid:I

    .line 193
    const-string v1, "sid"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 194
    const-string v1, "secret"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 195
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "vk_uid"

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vkcoffee/android/Global;->inited:Z

    .line 199
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "new_auth"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    invoke-static {p0}, Lcom/vkcoffee/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    .line 210
    :cond_2
    :goto_0
    return-void

    .line 203
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$2;->lambdaFactory$(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 207
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/MAC;->clearCurrentUID()V

    .line 208
    const-string v1, "vk"

    const-string v2, "not logged in."

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static updateUserInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v0, :cond_0

    .line 221
    new-instance v0, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;

    const-string v1, "gcm"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "reg"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 222
    new-instance v0, Lcom/vkcoffee/android/api/execute/GetWallInfo;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/execute/GetWallInfo;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/NetworkStateReceiver$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/NetworkStateReceiver$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/execute/GetWallInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method lambda$onReceive$652()V
    .locals 8

    .prologue
    .line 137
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getApiRequest()Lcom/vkcoffee/android/data/PersistentAPIRequest;

    move-result-object v2

    .line 138
    .local v2, "preq":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got api req: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-eqz v2, :cond_1

    .line 140
    new-instance v3, Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v5, v2, Lcom/vkcoffee/android/data/PersistentAPIRequest;->method:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    iget-object v5, v2, Lcom/vkcoffee/android/data/PersistentAPIRequest;->args:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, v2, Lcom/vkcoffee/android/data/PersistentAPIRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    .local v1, "ks":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 148
    .end local v1    # "ks":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Lcom/vkcoffee/android/NetworkStateReceiver$2;

    invoke-direct {v5, p0, v3, v2}, Lcom/vkcoffee/android/NetworkStateReceiver$2;-><init>(Lcom/vkcoffee/android/NetworkStateReceiver;Lcom/vkcoffee/android/api/VKAPIRequest;Lcom/vkcoffee/android/data/PersistentAPIRequest;)V

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 173
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v2    # "preq":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .end local v3    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    :catch_0
    move-exception v4

    .line 178
    .local v4, "x":Ljava/lang/Throwable;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v4    # "x":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 144
    .restart local v1    # "ks":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "preq":Lcom/vkcoffee/android/data/PersistentAPIRequest;
    .restart local v3    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "k":Ljava/lang/String;
    iget-object v5, v3, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/vkcoffee/android/data/PersistentAPIRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/vkcoffee/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 73
    .local v15, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 74
    .local v8, "pbIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 75
    .local v2, "as":Landroid/app/AlarmManager;
    const-string v3, "notificationsBDays"

    const/4 v4, 0x1

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 77
    .local v11, "c":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v3, 0xb

    const/4 v4, 0x4

    invoke-virtual {v11, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/4 v3, 0x1

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 86
    .end local v11    # "c":Ljava/util/Calendar;
    :goto_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 87
    const-string v3, "noConnectivity"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v9, 0x1

    .line 88
    .local v9, "_isConnected":Z
    :goto_2
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    .line 89
    sget-boolean v3, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v3, :cond_2

    .line 90
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "!!!!!!!!!! NETWORK CHANGED to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/vkcoffee/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->doBroadcastStateChanged()V

    .line 93
    sget-boolean v3, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    if-eq v3, v9, :cond_0

    .line 94
    sput-boolean v9, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    .line 95
    sget-boolean v3, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    if-eqz v3, :cond_0

    .line 96
    sget-object v3, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-nez v3, :cond_3

    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 97
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v6, Lcom/vkcoffee/android/LongPollService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "need_update_gcm"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    new-instance v3, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;

    const-string v4, "gcm"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "reg"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vkcoffee/android/NetworkStateReceiver$1;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/vkcoffee/android/NetworkStateReceiver$1;-><init>(Lcom/vkcoffee/android/NetworkStateReceiver;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 106
    :cond_4
    const-string v3, "vk"

    const-string v4, "Before update info"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/vkcoffee/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getResendableMessages()Ljava/util/ArrayList;

    move-result-object v16

    .line 109
    .local v16, "resend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Before resend "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 111
    .local v12, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 123
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pending_msg_notification"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pending_msg_notification"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->updateStateAndShowNotification(I)V

    .line 126
    :cond_5
    new-instance v3, Ljava/lang/Thread;

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/NetworkStateReceiver$NetworkStateReceiver$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/NetworkStateReceiver;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 84
    .end local v9    # "_isConnected":Z
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v16    # "resend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :cond_6
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 87
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 112
    .restart local v9    # "_isConnected":Z
    .restart local v12    # "it":Ljava/util/Iterator;
    .restart local v16    # "resend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/Message;

    .line 113
    .local v13, "m":Lcom/vkcoffee/android/Message;
    iget v3, v13, Lcom/vkcoffee/android/Message;->peer:I

    iget-object v4, v13, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    iget-object v5, v13, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    iget-object v6, v13, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    iget v7, v13, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/vkcoffee/android/data/Messages;->send(ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vkcoffee/android/Message;

    move-result-object v14

    .line 114
    .local v14, "msg":Lcom/vkcoffee/android/Message;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v14, v3, v4}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 115
    new-instance v10, Landroid/content/Intent;

    const-string v3, "com.vkcoffee.android.MESSAGE_DELETED"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v10, "b":Landroid/content/Intent;
    const-string v3, "msg_id"

    iget v4, v13, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 118
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "b":Landroid/content/Intent;
    const-string v3, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v10    # "b":Landroid/content/Intent;
    const-string v3, "peer_id"

    iget v4, v14, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v3, "message"

    invoke-virtual {v10, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 129
    .end local v9    # "_isConnected":Z
    .end local v10    # "b":Landroid/content/Intent;
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/vkcoffee/android/Message;
    .end local v14    # "msg":Lcom/vkcoffee/android/Message;
    .end local v16    # "resend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    :cond_9
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    :cond_a
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->resyncOffset()V

    goto/16 :goto_0
.end method
