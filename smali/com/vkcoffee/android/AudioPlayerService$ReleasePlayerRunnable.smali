.class Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;
.super Ljava/util/TimerTask;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleasePlayerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioPlayerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p2, "x1"    # Lcom/vkcoffee/android/AudioPlayerService$1;

    .prologue
    .line 1783
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$1700(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/media/audio/AudioPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1788
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$1700(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/media/audio/AudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->release()V

    .line 1789
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$1702(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/media/audio/AudioPlayer;)Lcom/vkcoffee/android/media/audio/AudioPlayer;

    .line 1790
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$1902(Lcom/vkcoffee/android/AudioPlayerService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1791
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Player released."

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1792
    :catch_0
    move-exception v0

    .line 1793
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
