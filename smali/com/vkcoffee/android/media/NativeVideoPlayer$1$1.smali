.class Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/NativeVideoPlayer$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/high16 v14, 0x447a0000    # 1000.0f

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "odd":Z
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 168
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v6, v6, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onUpdatePlaybackPosition(I)V

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 174
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$400(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v3

    if-lez v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$410(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    .line 176
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$400(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v3

    if-nez v3, :cond_1

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 180
    .local v4, "playbackTime":J
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v6, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "duration="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v8, v8, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v14

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "quality="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v7, v7, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 181
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$500(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 182
    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",host="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v8, v8, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type=heartbeat,seq="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v8, v8, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 185
    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$704(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "ts="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "tz="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "t="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v8, v8, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 191
    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$800(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 192
    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ",pos="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v9, v9, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v14

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 193
    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ",buffer="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v9, v9, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 195
    invoke-static {v9}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "bytes="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 200
    invoke-static {v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$300(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-eqz v3, :cond_6

    const-string/jumbo v3, ",load_state=buffering"

    :goto_5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v6, v7, v3}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1100(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkcoffee/android/media/NativeVideoPlayer$1;

    iget-object v3, v3, Lcom/vkcoffee/android/media/NativeVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/16 v6, 0x1e

    invoke-static {v3, v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$402(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I

    .line 212
    .end local v0    # "currentTime":J
    .end local v4    # "playbackTime":J
    :cond_1
    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 213
    :goto_6
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 214
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 180
    .restart local v0    # "currentTime":J
    .restart local v4    # "playbackTime":J
    :cond_2
    const-string/jumbo v3, ""

    goto/16 :goto_1

    .line 182
    :cond_3
    const-string/jumbo v3, ""

    goto/16 :goto_2

    .line 192
    :cond_4
    const-string/jumbo v3, ""

    goto/16 :goto_3

    .line 195
    :cond_5
    const-string/jumbo v3, ""

    goto :goto_4

    .line 200
    :cond_6
    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 212
    .end local v0    # "currentTime":J
    .end local v4    # "playbackTime":J
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 217
    :cond_8
    return-void
.end method
