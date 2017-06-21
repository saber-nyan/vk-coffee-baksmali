.class Lcom/vkcoffee/android/media/FFMpegVideoPlayer$3;
.super Ljava/lang/Object;
.source "FFMpegVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->playerReady(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$600(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onUpdatePlaybackPosition(I)V

    .line 150
    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method
