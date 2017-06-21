.class Lcom/vkcoffee/android/AppStateTracker$BgTrackerTaskPass;
.super Ljava/util/TimerTask;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BgTrackerTaskPass"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/AppStateTracker$BgTrackerTaskPass;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/vkcoffee/android/AppStateTracker$BgTrackerTaskPass;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/AppStateTracker;->access$5(Ljava/util/Timer;)V

    .line 93
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->disableEnteredState()V

    .line 94
    const-string v0, "vk"

    const-string v1, "...^_^...DrinkMoahCoffee!!!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method
