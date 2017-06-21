.class Lcom/vkcoffee/android/AppStateTracker$BgTrackerTask;
.super Ljava/util/TimerTask;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BgTrackerTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/AppStateTracker$BgTrackerTask;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vkcoffee/android/AppStateTracker$BgTrackerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/AppStateTracker;->access$1(Ljava/util/Timer;)V

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/AppStateTracker;->access$3(Z)V

    .line 82
    const-string v0, "vk"

    const-string v1, "==== ENTER BACKGROUND ===="

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LongPollService;->stopDelayed()V

    .line 86
    :cond_0
    return-void
.end method
