.class public Lcom/vkcoffee/android/data/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/Analytics$ViewPostTime;,
        Lcom/vkcoffee/android/data/Analytics$EventBuilder;,
        Lcom/vkcoffee/android/data/Analytics$StatsBackgroundRunner;
    }
.end annotation


# static fields
.field private static collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static elog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static elogWriteQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static events:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static googleDeviceID:Ljava/lang/String;

.field private static googleDeviceIdLimited:Z

.field private static logWriteQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static postedRunner:Lcom/vkcoffee/android/background/CancellableRunnable;

.field private static queueAccess:Ljava/util/concurrent/Semaphore;

.field private static thread:Lcom/vkcoffee/android/background/WorkerThread;

.field private static unique:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final viewPostTime:Lcom/vkcoffee/android/data/Analytics$ViewPostTime;

.field public static viewedAds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->events:Ljava/util/HashSet;

    .line 63
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->unique:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->logWriteQueue:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->elogWriteQueue:Ljava/util/Vector;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->elog:Ljava/util/ArrayList;

    .line 68
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    .line 69
    const-string/jumbo v1, "-1"

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->googleDeviceID:Ljava/lang/String;

    .line 70
    sput-boolean v3, Lcom/vkcoffee/android/data/Analytics;->googleDeviceIdLimited:Z

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Lcom/vkcoffee/android/data/Analytics$ViewPostTime;

    invoke-direct {v1}, Lcom/vkcoffee/android/data/Analytics$ViewPostTime;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->viewPostTime:Lcom/vkcoffee/android/data/Analytics$ViewPostTime;

    .line 76
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "viewed_ads"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "va":[Ljava/lang/String;
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/vkcoffee/android/background/WorkerThread;

    const-string/jumbo v2, "Analytics background"

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->thread:Lcom/vkcoffee/android/background/WorkerThread;

    .line 79
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->thread:Lcom/vkcoffee/android/background/WorkerThread;

    invoke-virtual {v1}, Lcom/vkcoffee/android/background/WorkerThread;->start()V

    .line 80
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->thread:Lcom/vkcoffee/android/background/WorkerThread;

    invoke-static {}, Lcom/vkcoffee/android/data/Analytics$$Lambda$1;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    return-void
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 44
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->flushFile()V

    return-void
.end method

.method static synthetic access$1100(Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/vkcoffee/android/data/Analytics;->trackEvent(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    sput-object p0, Lcom/vkcoffee/android/data/Analytics;->googleDeviceID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/vkcoffee/android/data/Analytics;->googleDeviceIdLimited:Z

    return p0
.end method

.method static synthetic access$400()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->logWriteQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->elogWriteQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/background/CancellableRunnable;)Lcom/vkcoffee/android/background/CancellableRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/background/CancellableRunnable;

    .prologue
    .line 44
    sput-object p0, Lcom/vkcoffee/android/data/Analytics;->postedRunner:Lcom/vkcoffee/android/background/CancellableRunnable;

    return-object p0
.end method

.method static synthetic access$900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->unique:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static clear(Z)V
    .locals 4
    .param p0, "full"    # Z

    .prologue
    .line 218
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->events:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 219
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 220
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->unique:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 221
    if-eqz p0, :cond_0

    .line 222
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->elog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 225
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "analytics.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 226
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "analytics_collapsed.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 227
    if-eqz p0, :cond_1

    .line 228
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "analytics_events.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->postedRunner:Lcom/vkcoffee/android/background/CancellableRunnable;

    if-eqz v1, :cond_2

    .line 234
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->postedRunner:Lcom/vkcoffee/android/background/CancellableRunnable;

    invoke-virtual {v1}, Lcom/vkcoffee/android/background/CancellableRunnable;->cancel()V

    .line 235
    const/4 v1, 0x0

    sput-object v1, Lcom/vkcoffee/android/data/Analytics;->postedRunner:Lcom/vkcoffee/android/background/CancellableRunnable;

    .line 237
    :cond_2
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static collectData(Landroid/content/Context;)Landroid/location/Location;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 483
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->isManufacturerAskPermission()Z

    move-result v9

    if-nez v9, :cond_0

    .line 484
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    if-ne v9, v12, :cond_1

    .line 485
    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v12, "send_geo: You must not call collectData method from main thread"

    aput-object v12, v9, v14

    invoke-static {v9}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 512
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 487
    :cond_1
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 488
    .local v1, "bestAccuracy":F
    const-wide/16 v4, 0x0

    .line 489
    .local v4, "bestTime":J
    const/4 v2, 0x0

    .line 490
    .local v2, "bestResult":Landroid/location/Location;
    const-string/jumbo v9, "location"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    .line 491
    .local v6, "lm":Landroid/location/LocationManager;
    invoke-virtual {v6}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v7

    .line 492
    .local v7, "matchingProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 494
    .local v8, "provider":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 495
    .local v3, "e":Landroid/location/Location;
    if-eqz v3, :cond_2

    .line 496
    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 497
    .local v0, "accuracy":F
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 498
    .local v10, "time":J
    if-eqz v2, :cond_3

    cmp-long v12, v10, v4

    if-lez v12, :cond_2

    cmpg-float v12, v0, v1

    if-gez v12, :cond_2

    .line 499
    :cond_3
    move-object v2, v3

    .line 500
    move v1, v0

    .line 501
    move-wide v4, v10

    goto :goto_1

    .line 508
    .end local v0    # "accuracy":F
    .end local v3    # "e":Landroid/location/Location;
    .end local v8    # "provider":Ljava/lang/String;
    .end local v10    # "time":J
    :cond_4
    new-array v9, v13, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "send_geo: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v14

    invoke-static {v9}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    .restart local v8    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1
.end method

.method private static flushFile()V
    .locals 4

    .prologue
    .line 166
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->postedRunner:Lcom/vkcoffee/android/background/CancellableRunnable;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/vkcoffee/android/data/Analytics$StatsBackgroundRunner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/data/Analytics$StatsBackgroundRunner;-><init>(Lcom/vkcoffee/android/data/Analytics$1;)V

    sput-object v0, Lcom/vkcoffee/android/data/Analytics;->postedRunner:Lcom/vkcoffee/android/background/CancellableRunnable;

    .line 168
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->thread:Lcom/vkcoffee/android/background/WorkerThread;

    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->postedRunner:Lcom/vkcoffee/android/background/CancellableRunnable;

    invoke-virtual {v1}, Lcom/vkcoffee/android/background/CancellableRunnable;->toRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 170
    :cond_0
    return-void
.end method

.method public static formatForGeo(D)Ljava/lang/String;
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, p0

    double-to-int v1, v2

    rem-int/lit16 v1, v1, 0x2710

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->googleDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getEvents(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const-class v4, Lcom/vkcoffee/android/data/Analytics;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/vkcoffee/android/data/Analytics;->events:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 207
    .local v0, "e":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 212
    .end local v0    # "e":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 213
    .local v2, "xx":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .end local v2    # "xx":Ljava/lang/Exception;
    :cond_0
    monitor-exit v4

    return-void

    .line 209
    :cond_1
    :try_start_2
    sget-object v3, Lcom/vkcoffee/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    .local v1, "k":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    sget-object v3, Lcom/vkcoffee/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 212
    .end local v1    # "k":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_1

    .line 206
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 272
    sget-boolean v0, Lcom/vkcoffee/android/data/Analytics;->googleDeviceIdLimited:Z

    return v0
.end method

.method public static isLogged(Ljava/lang/String;)Z
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 350
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->elog:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isManufacturerAskPermission()Z
    .locals 2

    .prologue
    .line 516
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 517
    .local v0, "manufacturer":Ljava/lang/String;
    const-string/jumbo v1, "Xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Meizu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$static$260()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "analytics.log"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 84
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 87
    const-string/jumbo v10, ","

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "x":[Ljava/lang/String;
    array-length v10, v7

    if-ge v10, v14, :cond_8

    .line 97
    .end local v7    # "x":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 99
    .end local v1    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "analytics_collapsed.log"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 101
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 103
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "line":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 104
    const-string/jumbo v10, ","

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 105
    .restart local v7    # "x":[Ljava/lang/String;
    array-length v10, v7

    if-ge v10, v14, :cond_9

    .line 114
    .end local v7    # "x":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 116
    .end local v1    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_5
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "analytics_events.log"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .restart local v0    # "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 118
    .local v3, "needRewrite":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 119
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "line":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 123
    const-string/jumbo v10, ","

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 124
    .restart local v7    # "x":[Ljava/lang/String;
    array-length v10, v7

    if-ge v10, v14, :cond_a

    .line 135
    .end local v7    # "x":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 136
    if-eqz v3, :cond_7

    .line 137
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 138
    .local v5, "out":Ljava/io/FileOutputStream;
    const-string/jumbo v10, "\n"

    invoke-static {v10, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 145
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    return-void

    .line 91
    .end local v3    # "needRewrite":Z
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "x":[Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 92
    .local v8, "time":J
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v10, v8

    const-wide/32 v12, 0x15180

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 93
    new-instance v4, Lorg/json/JSONObject;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v4, "obj":Lorg/json/JSONObject;
    sget-object v10, Lcom/vkcoffee/android/data/Analytics;->events:Ljava/util/HashSet;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 142
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "x":[Ljava/lang/String;
    .end local v8    # "time":J
    .restart local v3    # "needRewrite":Z
    :catch_0
    move-exception v7

    .line 143
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v10, "vk"

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 108
    .end local v3    # "needRewrite":Z
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "x":[Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    :try_start_1
    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 109
    .restart local v8    # "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    .line 110
    new-instance v4, Lorg/json/JSONObject;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v4    # "obj":Lorg/json/JSONObject;
    sget-object v10, Lcom/vkcoffee/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v11, "e"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 127
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v8    # "time":J
    .restart local v2    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "needRewrite":Z
    :cond_a
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 128
    .restart local v8    # "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-gez v10, :cond_b

    .line 129
    sget-object v10, Lcom/vkcoffee/android/data/Analytics;->elog:Ljava/util/ArrayList;

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 132
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public static logEvent(Ljava/lang/String;J)V
    .locals 7
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "ttl"    # J

    .prologue
    .line 338
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->elog:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->elogWriteQueue:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 346
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->flushFile()V

    .line 347
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static sendGeoData()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 461
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "mytrackerLocationCrapEnabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 462
    .local v1, "isLocationEnable":Z
    if-eqz v1, :cond_0

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/vkcoffee/android/data/Analytics;->collectData(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    .line 463
    .local v2, "l":Landroid/location/Location;
    :goto_0
    const-string/jumbo v3, "geo_data"

    invoke-static {v3}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    .line 464
    .local v0, "builder":Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    if-nez v1, :cond_1

    .line 465
    const-string/jumbo v3, "no_data_reason"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 474
    :goto_1
    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 475
    return-void

    .line 462
    .end local v0    # "builder":Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .end local v2    # "l":Landroid/location/Location;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 466
    .restart local v0    # "builder":Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .restart local v2    # "l":Landroid/location/Location;
    :cond_1
    if-nez v2, :cond_2

    .line 467
    const-string/jumbo v3, "no_data_reason"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    goto :goto_1

    .line 469
    :cond_2
    const-string/jumbo v3, "accuracy"

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v3

    const-string/jumbo v4, "ts"

    .line 470
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v3

    const-string/jumbo v4, "lat"

    .line 471
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/vkcoffee/android/data/Analytics;->formatForGeo(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v3

    const-string/jumbo v4, "lon"

    .line 472
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/vkcoffee/android/data/Analytics;->formatForGeo(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    goto :goto_1
.end method

.method public static track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    .locals 2
    .param p0, "ev"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;-><init>(Ljava/lang/String;Lcom/vkcoffee/android/data/Analytics$1;)V

    return-object v0
.end method

.method public static trackAdView(Ljava/lang/String;)V
    .locals 4
    .param p0, "ev"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x32

    .line 330
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 332
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "viewed_ads"

    const-string/jumbo v2, ","

    sget-object v3, Lcom/vkcoffee/android/data/Analytics;->viewedAds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    return-void
.end method

.method private static trackEvent(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "e"    # Lorg/json/JSONObject;

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "needWrite":Z
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->events:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->logWriteQueue:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    const/4 v0, 0x1

    .line 159
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->flushFile()V

    .line 163
    :cond_1
    return-void

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static trackExternal(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Lcom/vkcoffee/android/data/Analytics$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/data/Analytics$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vkcoffee/android/api/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public static updateDeviceID(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "onDone"    # Ljava/lang/Runnable;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/data/Analytics$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/data/Analytics$2;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 265
    return-void
.end method
