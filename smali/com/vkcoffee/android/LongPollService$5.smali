.class final Lcom/vkcoffee/android/LongPollService$5;
.super Ljava/util/TimerTask;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 675
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->doBroadcastStateChanged()V

    .line 676
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/LongPollService;->access$402(Ljava/util/Timer;)Ljava/util/Timer;

    .line 677
    return-void
.end method
