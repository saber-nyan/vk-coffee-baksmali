.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;
.super Ljava/lang/Object;
.source "LowLevelAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v1, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$500(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;->onPositionUpdate(I)V

    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getMaxBufferedPosition()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;->onBufferingUpdate(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :cond_0
    :goto_2
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0

    .line 163
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_1

    .line 175
    :cond_2
    return-void

    .line 168
    :catch_1
    move-exception v0

    goto :goto_2
.end method
