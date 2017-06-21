.class public Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;
.super Ljava/lang/Object;
.source "MainLifecycleDispatcher.java"

# interfaces
.implements Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;


# static fields
.field private static final INSTANCE:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;

    invoke-direct {v0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;-><init>()V

    sput-object v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->INSTANCE:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 69
    :cond_0
    monitor-exit v2

    .line 70
    return-object v0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get()Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->INSTANCE:Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 77
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 78
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p1, p2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 136
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 137
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 138
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 106
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 107
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 108
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityPaused(Landroid/app/Activity;)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 97
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 98
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityResumed(Landroid/app/Activity;)V

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 127
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 128
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p1, p2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 86
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 87
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 88
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityStarted(Landroid/app/Activity;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 117
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 118
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;->onActivityStopped(Landroid/app/Activity;)V

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method registerActivityLifecycleCallbacks(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 2
    .param p1, "callback"    # Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .prologue
    .line 52
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterActivityLifecycleCallbacks(Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V
    .locals 2
    .param p1, "callback"    # Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;

    .prologue
    .line 58
    iget-object v1, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/MainLifecycleDispatcher;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
