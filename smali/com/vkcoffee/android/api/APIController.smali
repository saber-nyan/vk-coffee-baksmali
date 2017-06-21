.class public Lcom/vkcoffee/android/api/APIController;
.super Ljava/lang/Object;
.source "APIController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/APIController$RequestRunner;
    }
.end annotation


# static fields
.field public static final API_DEBUG:Z

.field public static final API_URL:Ljava/lang/String;

.field private static final COUNTER_RESET_TIME:J = 0x7d0L

.field public static final FUCKING_AD_USER_AGENT:Ljava/lang/String;

.field private static final MAX_REQUESTS_PER_COUNT:J = 0xaL

.field public static final USER_AGENT:Ljava/lang/String;

.field private static bgThread:Lcom/vkcoffee/android/background/WorkerThread;

.field static cancelerThread:Lcom/vkcoffee/android/background/WorkerThread;

.field private static volatile counterResetTime:J

.field private static reqThread:Lcom/vkcoffee/android/background/WorkerThread;

.field private static final requestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static validation:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    new-instance v3, Lcom/vkcoffee/android/background/WorkerThread;

    const-string/jumbo v6, "API Main Thread"

    invoke-direct {v3, v6}, Lcom/vkcoffee/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/vkcoffee/android/api/APIController;->reqThread:Lcom/vkcoffee/android/background/WorkerThread;

    new-instance v3, Lcom/vkcoffee/android/background/WorkerThread;

    const-string/jumbo v6, "API Background Thread"

    invoke-direct {v3, v6}, Lcom/vkcoffee/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/vkcoffee/android/api/APIController;->bgThread:Lcom/vkcoffee/android/background/WorkerThread;

    .line 45
    new-instance v3, Lcom/vkcoffee/android/background/WorkerThread;

    const-string/jumbo v6, "API Canceler Thread"

    invoke-direct {v3, v6}, Lcom/vkcoffee/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/vkcoffee/android/api/APIController;->cancelerThread:Lcom/vkcoffee/android/background/WorkerThread;

    .line 52
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v6, "__dbg_api"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    const v6, 0x1887270

    if-ne v3, v6, :cond_1

    :cond_0
    move v3, v5

    :goto_0
    sput-boolean v3, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "apiHost"

    const-string/jumbo v8, "api.vk.com"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/method/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/api/APIController;->API_URL:Ljava/lang/String;

    .line 58
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v3, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    .line 60
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v3, Lcom/vkcoffee/android/api/APIController;->requestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/vkcoffee/android/api/APIController;->counterResetTime:J

    .line 64
    const-string/jumbo v1, "4.3"

    .line 65
    .local v1, "appver":Ljava/lang/String;
    const/4 v0, 0x0

    .line 67
    .local v0, "appbuild":I
    :try_start_0
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 68
    .line 69
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "VKAndroidApp/%s-%d (Android %s; SDK %d; %s; %s %s; %s)"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v8, v7, v10

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v8, v7, v12

    const/4 v8, 0x5

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string/jumbo v9, "user.language"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    .line 73
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "VKApp/%s (Linux; U; Android %s; %s Build/%s)"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v4

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v7, v5

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v7, v10

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v4, v7, v11

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/api/APIController;->FUCKING_AD_USER_AGENT:Ljava/lang/String;

    .line 75
    sget-object v3, Lcom/vkcoffee/android/api/APIController;->reqThread:Lcom/vkcoffee/android/background/WorkerThread;

    invoke-virtual {v3}, Lcom/vkcoffee/android/background/WorkerThread;->start()V

    .line 76
    sget-object v3, Lcom/vkcoffee/android/api/APIController;->bgThread:Lcom/vkcoffee/android/background/WorkerThread;

    invoke-virtual {v3}, Lcom/vkcoffee/android/background/WorkerThread;->start()V

    .line 77
    sget-object v3, Lcom/vkcoffee/android/api/APIController;->cancelerThread:Lcom/vkcoffee/android/background/WorkerThread;

    invoke-virtual {v3}, Lcom/vkcoffee/android/background/WorkerThread;->start()V

    .line 78
    return-void

    .end local v0    # "appbuild":I
    .end local v1    # "appver":Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 52
    goto/16 :goto_0

    .line 70
    .restart local v0    # "appbuild":I
    .restart local v1    # "appver":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    return-void
.end method

.method public static executeRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)V
    .locals 4
    .param p0, "req"    # Lcom/vkcoffee/android/api/VKAPIRequest;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->background:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/api/APIController;->bgThread:Lcom/vkcoffee/android/background/WorkerThread;

    :goto_0
    new-instance v1, Lcom/vkcoffee/android/api/APIController$RequestRunner;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/APIController$RequestRunner;-><init>(Lcom/vkcoffee/android/api/VKAPIRequest;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 82
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/api/APIController;->reqThread:Lcom/vkcoffee/android/background/WorkerThread;

    goto :goto_0
.end method

.method public static runInApi(Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 454
    sget-object v0, Lcom/vkcoffee/android/api/APIController;->reqThread:Lcom/vkcoffee/android/background/WorkerThread;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 455
    return-void
.end method

.method public static runInBg(Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 446
    sget-object v0, Lcom/vkcoffee/android/api/APIController;->bgThread:Lcom/vkcoffee/android/background/WorkerThread;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 447
    return-void
.end method

.method public static runInBgDelayed(Ljava/lang/Runnable;I)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # I

    .prologue
    .line 450
    sget-object v0, Lcom/vkcoffee/android/api/APIController;->bgThread:Lcom/vkcoffee/android/background/WorkerThread;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 451
    return-void
.end method

.method public static runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<*>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<*>;"
    :try_start_0
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 87
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 92
    :goto_0
    sget-object v27, Lcom/vkcoffee/android/api/APIController;->requestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v27

    .line 93
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sget-wide v30, Lcom/vkcoffee/android/api/APIController;->counterResetTime:J

    sub-long v28, v28, v30

    const-wide/16 v30, 0x7d0

    cmp-long v26, v28, v30

    if-lez v26, :cond_0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sput-wide v28, Lcom/vkcoffee/android/api/APIController;->counterResetTime:J

    .line 95
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->requestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 97
    :cond_0
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->requestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0xa

    cmp-long v26, v28, v30

    if-lez v26, :cond_1

    .line 99
    const-wide/16 v28, 0x7d0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sget-wide v32, Lcom/vkcoffee/android/api/APIController;->counterResetTime:J

    sub-long v30, v30, v32

    sub-long v20, v28, v30

    .line 100
    .local v20, "sleepTime":J
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "sleep:"

    aput-object v29, v26, v28

    const/16 v28, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v26, v28

    invoke-static/range {v26 .. v26}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 101
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sput-wide v28, Lcom/vkcoffee/android/api/APIController;->counterResetTime:J

    .line 103
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->requestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v20    # "sleepTime":J
    :cond_1
    :goto_1
    :try_start_3
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->requestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 109
    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vkcoffee/android/api/VKAPIRequest;->initTime:J

    .line 123
    .local v22, "time":J
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    const-string/jumbo v28, "useHTTPS"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-nez v26, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->forceHTTPS:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-class v28, Lcom/vkcoffee/android/api/annotations/ForceHTTPS;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_2

    sget-object v26, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-nez v26, :cond_9

    :cond_2
    const-string/jumbo v26, "https"

    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "://"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/vkcoffee/android/api/APIController;->API_URL:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v28, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 126
    .local v25, "url":Ljava/lang/String;
    const/4 v15, 0x0

    .line 128
    .local v15, "obj":Lorg/json/JSONObject;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v27, "access_token"

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 129
    sget-object v26, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v26, :cond_a

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v27, "access_token"

    sget-object v28, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_3
    :goto_3
    new-instance v11, Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-direct {v11}, Lcom/squareup/okhttp/FormEncodingBuilder;-><init>()V

    .line 136
    .local v11, "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 137
    .local v7, "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 138
    .local v24, "uri":Landroid/net/Uri$Builder;
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_4

    .line 139
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v24

    .line 141
    :cond_4
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_5

    .line 142
    const-string/jumbo v27, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "====="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v29, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_5
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_6
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 145
    .local v14, "key":Ljava/lang/String;
    const-string/jumbo v26, "method"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 148
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_7

    .line 149
    const-string/jumbo v28, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v29, "="

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_7
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v11, v14, v0}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    .line 346
    .end local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .end local v14    # "key":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri$Builder;
    :catch_0
    move-exception v6

    .line 347
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v26, "vk"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 360
    const/16 v26, 0x0

    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    return-object v26

    .line 109
    .end local v15    # "obj":Lorg/json/JSONObject;
    .end local v22    # "time":J
    .end local v25    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v26

    :try_start_6
    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v26

    .line 123
    .restart local v22    # "time":J
    :cond_9
    const-string/jumbo v26, "http"

    goto/16 :goto_2

    .line 132
    .restart local v15    # "obj":Lorg/json/JSONObject;
    .restart local v25    # "url":Ljava/lang/String;
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v27, "api_id"

    const-string/jumbo v28, "2274003"

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 348
    :catch_1
    move-exception v6

    .local v6, "e":Lcom/vkcoffee/android/api/APIException;
    move-object/from16 v26, v15

    .line 349
    goto :goto_5

    .line 156
    .end local v6    # "e":Lcom/vkcoffee/android/api/APIException;
    .restart local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .restart local v24    # "uri":Landroid/net/Uri$Builder;
    :cond_b
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_c

    .line 157
    const-string/jumbo v26, "vk"

    const-string/jumbo v27, "====="

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v26, "sig"

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->getSig()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    const-string/jumbo v26, "vk"

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_c
    sget-object v26, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v26, :cond_d

    sget-object v26, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v27, "sig"

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_d

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->getSig()Ljava/lang/String;

    move-result-object v19

    .line 163
    .local v19, "sig":Ljava/lang/String;
    const-string/jumbo v26, "sig"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;

    .line 165
    .end local v19    # "sig":Ljava/lang/String;
    :cond_d
    new-instance v26, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct/range {v26 .. v26}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 166
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v26

    const-string/jumbo v27, "User-Agent"

    sget-object v28, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    .line 167
    invoke-virtual/range {v26 .. v28}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v26

    .line 168
    invoke-virtual {v11}, Lcom/squareup/okhttp/FormEncodingBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v26

    .line 169
    invoke-virtual/range {v26 .. v26}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v16

    .line 171
    .local v16, "request":Lcom/squareup/okhttp/Request;
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_e

    .line 172
    const-string/jumbo v27, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "["

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v29, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v28, "] Prepare: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 176
    :cond_e
    sget-object v26, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v4

    .line 177
    .local v4, "call":Lcom/squareup/okhttp/Call;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->httpCall:Lcom/squareup/okhttp/Call;

    .line 178
    invoke-virtual {v4}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v17

    .line 179
    .local v17, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->isCanceled()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 180
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 183
    :cond_f
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_10

    .line 184
    const-string/jumbo v27, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "["

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v29, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v28, "] Execute: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 187
    :cond_10
    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v18

    .line 188
    .local v18, "s":Ljava/lang/String;
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_11

    .line 189
    const-string/jumbo v27, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "["

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v29, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v28, "] Receive: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 193
    :cond_11
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_12

    .line 194
    const-string/jumbo v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Resp status="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Response="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_12
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/api/VKAPIRequest;->httpCall:Lcom/squareup/okhttp/Call;

    .line 200
    new-instance v26, Lorg/json/JSONTokener;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Lorg/json/JSONObject;

    move-object v15, v0

    .line 201
    const-string/jumbo v26, "error"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 202
    .local v9, "error":Lorg/json/JSONObject;
    const-string/jumbo v26, "execute_errors"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 203
    const-string/jumbo v26, "execute_errors"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 204
    .local v10, "errs":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_14

    .line 205
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 206
    .local v8, "err":Lorg/json/JSONObject;
    const-string/jumbo v26, "error_code"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 207
    .local v5, "code":I
    const/16 v26, 0xe

    move/from16 v0, v26

    if-eq v5, v0, :cond_13

    const/16 v26, 0x11

    move/from16 v0, v26

    if-eq v5, v0, :cond_13

    const/16 v26, 0x68

    move/from16 v0, v26

    if-ne v5, v0, :cond_15

    .line 208
    :cond_13
    move-object v9, v8

    .line 213
    .end local v5    # "code":I
    .end local v8    # "err":Lorg/json/JSONObject;
    .end local v10    # "errs":Lorg/json/JSONArray;
    .end local v12    # "i":I
    :cond_14
    if-eqz v9, :cond_30

    .line 214
    const-string/jumbo v26, "error_code"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 218
    .restart local v5    # "code":I
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ne v5, v0, :cond_18

    .line 220
    const-string/jumbo v26, "account.unregisterDevice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string/jumbo v28, "method"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 221
    new-instance v26, Lcom/vkcoffee/android/api/APIException;

    const/16 v27, 0x0

    const-string/jumbo v28, "already unregistered"

    invoke-direct/range {v26 .. v28}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v26
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 350
    .end local v4    # "call":Lcom/squareup/okhttp/Call;
    .end local v5    # "code":I
    .end local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .end local v16    # "request":Lcom/squareup/okhttp/Request;
    .end local v17    # "resp":Lcom/squareup/okhttp/Response;
    .end local v18    # "s":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri$Builder;
    :catch_2
    move-exception v6

    .line 351
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_8
    instance-of v0, v6, Ljava/lang/OutOfMemoryError;

    move/from16 v26, v0

    if-eqz v26, :cond_32

    .line 352
    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lme/grishka/appkit/imageloader/ImageCache;->clearTopLevel()V

    .line 353
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v26

    goto/16 :goto_5

    .line 204
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v4    # "call":Lcom/squareup/okhttp/Call;
    .restart local v5    # "code":I
    .restart local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "err":Lorg/json/JSONObject;
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v10    # "errs":Lorg/json/JSONArray;
    .restart local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .restart local v12    # "i":I
    .restart local v16    # "request":Lcom/squareup/okhttp/Request;
    .restart local v17    # "resp":Lcom/squareup/okhttp/Response;
    .restart local v18    # "s":Ljava/lang/String;
    .restart local v24    # "uri":Landroid/net/Uri$Builder;
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 223
    .end local v8    # "err":Lorg/json/JSONObject;
    .end local v10    # "errs":Lorg/json/JSONArray;
    .end local v12    # "i":I
    :cond_16
    :try_start_9
    const-string/jumbo v26, "account.unregisterDevice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string/jumbo v28, "method"

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_17

    .line 224
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->onReauthError()V

    .line 226
    :cond_17
    new-instance v26, Lcom/vkcoffee/android/api/APIException;

    const/16 v27, 0x0

    const-string/jumbo v28, "reauth error"

    invoke-direct/range {v26 .. v28}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v26
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 358
    .end local v4    # "call":Lcom/squareup/okhttp/Call;
    .end local v5    # "code":I
    .end local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .end local v16    # "request":Lcom/squareup/okhttp/Request;
    .end local v17    # "resp":Lcom/squareup/okhttp/Response;
    .end local v18    # "s":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri$Builder;
    :catchall_1
    move-exception v26

    throw v26

    .line 227
    .restart local v4    # "call":Lcom/squareup/okhttp/Call;
    .restart local v5    # "code":I
    .restart local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .restart local v16    # "request":Lcom/squareup/okhttp/Request;
    .restart local v17    # "resp":Lcom/squareup/okhttp/Response;
    .restart local v18    # "s":Ljava/lang/String;
    .restart local v24    # "uri":Landroid/net/Uri$Builder;
    :cond_18
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v5, v0, :cond_19

    move-object/from16 v26, v15

    .line 228
    goto/16 :goto_5

    .line 229
    :cond_19
    const/16 v26, 0xe

    move/from16 v0, v26

    if-ne v5, v0, :cond_20

    .line 230
    :try_start_a
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_1a

    .line 231
    const-string/jumbo v26, "vk"

    const-string/jumbo v27, "API captcha"

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1a
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->isInBackground()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v26

    if-nez v26, :cond_1f

    .line 235
    :try_start_b
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 238
    :goto_7
    :try_start_c
    new-instance v13, Landroid/content/Intent;

    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v27, Lcom/vkcoffee/android/CaptchaActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    const-string/jumbo v26, "url"

    const-string/jumbo v27, "captcha_img"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    :goto_8
    sget-boolean v26, Lcom/vkcoffee/android/CaptchaActivity;->isReady:Z

    if-nez v26, :cond_1b

    .line 243
    const-wide/16 v26, 0x64

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_8

    .line 245
    :cond_1b
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_1c

    .line 246
    const-string/jumbo v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Captcha activity returned with "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-boolean v28, Lcom/vkcoffee/android/CaptchaActivity;->isReady:Z

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/vkcoffee/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1c
    const/16 v26, 0x0

    sput-boolean v26, Lcom/vkcoffee/android/CaptchaActivity;->isReady:Z

    .line 249
    sget-object v26, Lcom/vkcoffee/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v26, :cond_1e

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v27, "captcha_sid"

    const-string/jumbo v28, "captcha_sid"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v27, "captcha_key"

    sget-object v28, Lcom/vkcoffee/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_1d

    .line 253
    const-string/jumbo v27, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Resending request "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v29, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1d
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->release()V

    .line 256
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;

    move-result-object v26

    goto/16 :goto_5

    .line 258
    :cond_1e
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->release()V

    .line 263
    .end local v13    # "intent":Landroid/content/Intent;
    :goto_9
    new-instance v26, Lcom/vkcoffee/android/api/APIException;

    const-string/jumbo v27, "error_msg"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 260
    :cond_1f
    const-string/jumbo v26, "vk"

    const-string/jumbo v27, "Skipping captcha because app is in background"

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 264
    :cond_20
    const/16 v26, 0x10

    move/from16 v0, v26

    if-ne v5, v0, :cond_22

    .line 265
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_21

    .line 266
    const-string/jumbo v26, "vk"

    const-string/jumbo v27, "Force HTTPS"

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_21
    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    const-string/jumbo v27, "useHTTPS"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    const-string/jumbo v27, "forceHTTPS"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;

    move-result-object v26

    goto/16 :goto_5

    .line 271
    :cond_22
    const/16 v26, 0x11

    move/from16 v0, v26

    if-ne v5, v0, :cond_28

    .line 272
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_23

    .line 273
    const-string/jumbo v26, "vk"

    const-string/jumbo v27, "Need validation"

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_23
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->isInBackground()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v26

    if-nez v26, :cond_27

    .line 277
    :try_start_d
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 280
    :goto_a
    :try_start_e
    new-instance v13, Landroid/content/Intent;

    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v27, Lcom/vkcoffee/android/ValidationActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .restart local v13    # "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    const-string/jumbo v26, "url"

    const-string/jumbo v27, "redirect_uri"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const/16 v26, 0x0

    sput v26, Lcom/vkcoffee/android/ValidationActivity;->result:I

    .line 284
    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    :goto_b
    sget v26, Lcom/vkcoffee/android/ValidationActivity;->result:I

    if-nez v26, :cond_24

    .line 286
    const-wide/16 v26, 0x64

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_b

    .line 288
    :cond_24
    sget v26, Lcom/vkcoffee/android/ValidationActivity;->result:I

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_26

    .line 289
    const/16 v26, 0x0

    sput v26, Lcom/vkcoffee/android/ValidationActivity;->result:I

    .line 290
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_25

    .line 291
    const-string/jumbo v27, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Repeating request "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v29, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_25
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->release()V

    .line 294
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;

    move-result-object v26

    goto/16 :goto_5

    .line 296
    :cond_26
    const/16 v26, 0x0

    sput v26, Lcom/vkcoffee/android/ValidationActivity;->result:I

    .line 297
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->release()V

    .line 302
    .end local v13    # "intent":Landroid/content/Intent;
    :goto_c
    new-instance v26, Lcom/vkcoffee/android/api/APIException;

    const-string/jumbo v27, "error_msg"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 299
    :cond_27
    const-string/jumbo v26, "vk"

    const-string/jumbo v27, "Skipping validation because app is in background"

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 303
    :cond_28
    const/16 v26, 0x18

    move/from16 v0, v26

    if-ne v5, v0, :cond_2e

    .line 304
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_29

    .line 305
    const-string/jumbo v26, "vk"

    const-string/jumbo v27, "Need confirmation"

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_29
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->isInBackground()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v26

    if-nez v26, :cond_2d

    .line 309
    :try_start_f
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 312
    :goto_d
    :try_start_10
    new-instance v13, Landroid/content/Intent;

    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v27, Lcom/vkcoffee/android/ConfirmationActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .restart local v13    # "intent":Landroid/content/Intent;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    const-string/jumbo v26, "confirm_text"

    const-string/jumbo v27, "confirmation_text"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const/16 v26, 0x0

    sput-boolean v26, Lcom/vkcoffee/android/ConfirmationActivity;->ready:Z

    .line 316
    sget-object v26, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 317
    :goto_e
    sget-boolean v26, Lcom/vkcoffee/android/ConfirmationActivity;->ready:Z

    if-nez v26, :cond_2a

    .line 318
    const-wide/16 v26, 0x64

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_e

    .line 320
    :cond_2a
    sget-boolean v26, Lcom/vkcoffee/android/ConfirmationActivity;->result:Z

    if-eqz v26, :cond_2c

    .line 321
    const-string/jumbo v26, "confirm"

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 322
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_2b

    .line 323
    const-string/jumbo v27, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Repeating request "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v29, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_2b
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->release()V

    .line 326
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;

    move-result-object v26

    goto/16 :goto_5

    .line 328
    :cond_2c
    sget-object v26, Lcom/vkcoffee/android/api/APIController;->validation:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/Semaphore;->release()V

    .line 333
    .end local v13    # "intent":Landroid/content/Intent;
    :goto_f
    new-instance v26, Lcom/vkcoffee/android/api/APIException;

    const-string/jumbo v27, "error_msg"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 330
    :cond_2d
    const-string/jumbo v26, "vk"

    const-string/jumbo v27, "Skipping confirmation because app is in background"

    invoke-static/range {v26 .. v27}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 335
    :cond_2e
    const-string/jumbo v26, "error_text"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 336
    new-instance v26, Lcom/vkcoffee/android/api/APIException;

    const/high16 v27, 0x40000000    # 2.0f

    or-int v27, v27, v5

    const-string/jumbo v28, "error_text"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 338
    :cond_2f
    new-instance v26, Lcom/vkcoffee/android/api/APIException;

    const-string/jumbo v27, "error_msg"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 341
    .end local v5    # "code":I
    :cond_30
    sget-boolean v26, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v26, :cond_31

    .line 342
    const-string/jumbo v27, "vk"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "["

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    move-object/from16 v26, v0

    const-string/jumbo v29, "method"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v28, "] Parse JSON: "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/vkcoffee/android/api/APIException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-wide v22

    :cond_31
    move-object/from16 v26, v15

    .line 345
    goto/16 :goto_5

    .line 356
    .end local v4    # "call":Lcom/squareup/okhttp/Call;
    .end local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .end local v16    # "request":Lcom/squareup/okhttp/Request;
    .end local v17    # "resp":Lcom/squareup/okhttp/Response;
    .end local v18    # "s":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri$Builder;
    .restart local v6    # "e":Ljava/lang/Throwable;
    :cond_32
    :try_start_11
    const-string/jumbo v26, "vk"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 357
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 310
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v4    # "call":Lcom/squareup/okhttp/Call;
    .restart local v5    # "code":I
    .restart local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "error":Lorg/json/JSONObject;
    .restart local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .restart local v16    # "request":Lcom/squareup/okhttp/Request;
    .restart local v17    # "resp":Lcom/squareup/okhttp/Response;
    .restart local v18    # "s":Ljava/lang/String;
    .restart local v24    # "uri":Landroid/net/Uri$Builder;
    :catch_3
    move-exception v26

    goto/16 :goto_d

    .line 278
    :catch_4
    move-exception v26

    goto/16 :goto_a

    .line 236
    :catch_5
    move-exception v26

    goto/16 :goto_7

    .line 104
    .end local v4    # "call":Lcom/squareup/okhttp/Call;
    .end local v5    # "code":I
    .end local v7    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "error":Lorg/json/JSONObject;
    .end local v11    # "formData":Lcom/squareup/okhttp/FormEncodingBuilder;
    .end local v15    # "obj":Lorg/json/JSONObject;
    .end local v16    # "request":Lcom/squareup/okhttp/Request;
    .end local v17    # "resp":Lcom/squareup/okhttp/Response;
    .end local v18    # "s":Ljava/lang/String;
    .end local v22    # "time":J
    .end local v24    # "uri":Landroid/net/Uri$Builder;
    .end local v25    # "url":Ljava/lang/String;
    :catch_6
    move-exception v26

    goto/16 :goto_1

    .line 88
    :catch_7
    move-exception v26

    goto/16 :goto_0
.end method
