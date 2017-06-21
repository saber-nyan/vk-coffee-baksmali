.class Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$5;
.super Ljava/lang/Object;
.source "FrameworkAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$5;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$5;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->access$100(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$5;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$5;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$5;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    invoke-static {v1}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->access$100(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;->onPositionUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :cond_0
    :goto_1
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 140
    :cond_1
    return-void

    .line 133
    :catch_1
    move-exception v0

    goto :goto_1
.end method
