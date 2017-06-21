.class Lcom/vkontakte/android/media/FFMpegVideoPlayer$3;
.super Ljava/lang/Object;
.source "FFMpegVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/FFMpegVideoPlayer;->playerReady(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$14(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    return-void

    .line 373
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$13(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$13(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onUpdatePlaybackPosition(I)V

    .line 376
    :cond_1
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method
