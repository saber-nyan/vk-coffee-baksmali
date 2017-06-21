.class Lcom/vkontakte/android/media/NativeVideoPlayer$1;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer;->doSetDataSorce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    return-object v0
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 14
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const-wide/16 v12, 0x0

    const/high16 v10, 0x447a0000    # 1000.0f

    .line 99
    const-string v2, "vk"

    const-string v3, "player ready"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlayerReady(II)V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$2(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V

    .line 104
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$5(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "duration="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "quality="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$6(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, ",host="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "type=buf_stop,seq="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$704(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ts="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "tz="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "t="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "pos="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v10

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, ",buffer="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "bytes="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "buf_num="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$10(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "buf_time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2, v12, v13}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$12(Lcom/vkontakte/android/media/NativeVideoPlayer;J)V

    .line 110
    .end local v0    # "currentTime":J
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 143
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$15(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v2

    if-lez v2, :cond_2

    .line 144
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Seek To 1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$15(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$15(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 146
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$16(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 148
    :cond_2
    return-void

    .line 107
    .restart local v0    # "currentTime":J
    :cond_3
    const-string v2, ""

    goto/16 :goto_0

    :cond_4
    const-string v2, ""

    goto/16 :goto_1
.end method
