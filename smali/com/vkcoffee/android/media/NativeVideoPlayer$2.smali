.class Lcom/vkcoffee/android/media/NativeVideoPlayer$2;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 226
    iput-object p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 13
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I

    .prologue
    const/16 v5, 0x64

    const/high16 v12, 0x447a0000    # 1000.0f

    .line 229
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v4, v4, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v4, :cond_0

    .line 230
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v4, v4, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v4, p2}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onUpdateBuffered(I)V

    .line 233
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-nez v4, :cond_2

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$700(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v4

    if-gtz v4, :cond_4

    :cond_3
    if-lt p2, v5, :cond_5

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v5, :cond_5

    .line 239
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$402(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 242
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 244
    .local v2, "playbackTime":J
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "duration="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "quality="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 245
    invoke-static {v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$500(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 246
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",host="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type=heartbeat,seq="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 249
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

    .line 253
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

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 255
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$800(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 256
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",pos="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "buffer="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "bytes="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 260
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 261
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$300(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_9

    const-string/jumbo v4, ",load_state=buffering"

    :goto_4
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1100(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    :cond_5
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$902(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 244
    .restart local v0    # "currentTime":J
    .restart local v2    # "playbackTime":J
    :cond_6
    const-string/jumbo v4, ""

    goto/16 :goto_1

    .line 246
    :cond_7
    const-string/jumbo v4, ""

    goto/16 :goto_2

    .line 256
    :cond_8
    const-string/jumbo v4, ""

    goto :goto_3

    .line 261
    :cond_9
    const-string/jumbo v4, ""

    goto :goto_4
.end method
