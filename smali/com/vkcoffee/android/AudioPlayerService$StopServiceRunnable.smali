.class Lcom/vkcoffee/android/AudioPlayerService$StopServiceRunnable;
.super Ljava/util/TimerTask;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopServiceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$StopServiceRunnable;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioPlayerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p2, "x1"    # Lcom/vkcoffee/android/AudioPlayerService$1;

    .prologue
    .line 1799
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$StopServiceRunnable;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$StopServiceRunnable;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->stopSelf()V

    .line 1802
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$StopServiceRunnable;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$2002(Lcom/vkcoffee/android/AudioPlayerService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1803
    return-void
.end method
