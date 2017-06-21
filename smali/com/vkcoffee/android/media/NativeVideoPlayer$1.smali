.class Lcom/vkcoffee/android/media/NativeVideoPlayer$1;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/NativeVideoPlayer;->doSetDataSorce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/NativeVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 12
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 119
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "player ready"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v4, v4, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v4, v4, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlayerReady(II)V

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$102(Lcom/vkcoffee/android/media/NativeVideoPlayer;Z)Z

    .line 125
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$300(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 127
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$402(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 132
    .local v2, "playbackTime":J
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "duration="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "quality="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 134
    invoke-static {v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$500(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 135
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",host="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type=buf_stop,seq="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 138
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$704(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "ts="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "tz="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "t="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 144
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$800(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "pos="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 146
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 147
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",buffer="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 149
    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "bytes="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "buf_num="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 155
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "buf_time="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 157
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$300(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1100(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$302(Lcom/vkcoffee/android/media/NativeVideoPlayer;J)J

    .line 163
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    :cond_1
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;-><init>(Lcom/vkcoffee/android/media/NativeVideoPlayer$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 218
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 219
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v4

    if-lez v4, :cond_2

    .line 220
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Seek To 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 222
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1202(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I

    .line 224
    :cond_2
    return-void

    .line 135
    .restart local v0    # "currentTime":J
    .restart local v2    # "playbackTime":J
    :cond_3
    const-string/jumbo v4, ""

    goto/16 :goto_0

    .line 149
    :cond_4
    const-string/jumbo v4, ""

    goto/16 :goto_1
.end method
