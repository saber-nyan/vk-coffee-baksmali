.class public Lcom/vkcoffee/android/AppStateTracker;
.super Ljava/lang/Object;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/AppStateTracker$BgTrackerTask;,
        Lcom/vkcoffee/android/AppStateTracker$BgTrackerTaskPass;
    }
.end annotation


# static fields
.field private static currentActivity:Landroid/app/Activity;

.field private static isInBG:Z

.field private static passTimer:Ljava/util/Timer;

.field private static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/AppStateTracker;->isInBG:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1(Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 14
    sput-object p0, Lcom/vkcoffee/android/AppStateTracker;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/vkcoffee/android/AppStateTracker;->isInBG:Z

    return v0
.end method

.method static synthetic access$3(Z)V
    .locals 0

    .prologue
    .line 13
    sput-boolean p0, Lcom/vkcoffee/android/AppStateTracker;->isInBG:Z

    return-void
.end method

.method static synthetic access$4()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->passTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5(Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 15
    sput-object p0, Lcom/vkcoffee/android/AppStateTracker;->passTimer:Ljava/util/Timer;

    return-void
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static isInBackground()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/vkcoffee/android/AppStateTracker;->isInBG:Z

    return v0
.end method

.method public static onActivityPaused()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 33
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/AppStateTracker;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkcoffee/android/AppStateTracker$BgTrackerTask;

    invoke-direct {v1, v4}, Lcom/vkcoffee/android/AppStateTracker$BgTrackerTask;-><init>(Lcom/vkcoffee/android/AppStateTracker$BgTrackerTask;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 36
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->passTimer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 37
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->MANUAL:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/AppStateTracker;->passTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkcoffee/android/AppStateTracker$BgTrackerTaskPass;

    invoke-direct {v1, v4}, Lcom/vkcoffee/android/AppStateTracker$BgTrackerTaskPass;-><init>(Lcom/vkcoffee/android/AppStateTracker$BgTrackerTaskPass;)V

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 40
    :cond_2
    sput-object v4, Lcom/vkcoffee/android/AppStateTracker;->currentActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public static onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 44
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 46
    sput-object v1, Lcom/vkcoffee/android/AppStateTracker;->timer:Ljava/util/Timer;

    .line 48
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->passTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/vkcoffee/android/AppStateTracker;->passTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 50
    sput-object v1, Lcom/vkcoffee/android/AppStateTracker;->passTimer:Ljava/util/Timer;

    .line 53
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->entered()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/vkcoffee/android/ActUt;->isActivityVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    new-instance v0, Lcom/vkcoffee/android/PasswordCoffee;

    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/PasswordCoffee;-><init>(Landroid/app/Activity;I)V

    .line 63
    :cond_2
    sget-boolean v0, Lcom/vkcoffee/android/AppStateTracker;->isInBG:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    :cond_3
    const-string v0, "vk"

    const-string v1, "==== LEAVE BACKGROUND ===="

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sput-boolean v2, Lcom/vkcoffee/android/AppStateTracker;->isInBG:Z

    .line 67
    sget-object v0, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-eqz v0, :cond_5

    .line 68
    sget-object v0, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LongPollService;->cancelDelayedStop()V

    .line 74
    :cond_4
    :goto_0
    sput-object p0, Lcom/vkcoffee/android/AppStateTracker;->currentActivity:Landroid/app/Activity;

    .line 75
    return-void

    .line 71
    :cond_5
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkcoffee/android/LongPollService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
