.class Lcom/vkcoffee/android/LongPollService$14;
.super Ljava/util/TimerTask;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->stopDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LongPollService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 1996
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$14;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService$14;->this$0:Lcom/vkcoffee/android/LongPollService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    .line 2000
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService$14;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LongPollService;->stopSelf()V

    .line 2001
    return-void
.end method
