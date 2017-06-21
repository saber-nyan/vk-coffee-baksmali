.class Lcom/vkcoffee/android/media/NativeVideoPlayer$3;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 273
    iput-object p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 14
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/high16 v12, 0x447a0000    # 1000.0f

    .line 277
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1302(Lcom/vkcoffee/android/media/NativeVideoPlayer;Z)Z

    .line 279
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$402(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 282
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 284
    .local v2, "playbackTime":J
    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "duration="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "quality="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 285
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$500(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 286
    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",host="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type=pause,seq="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 289
    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$704(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "ts="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "tz="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 293
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "t="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 295
    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$800(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 296
    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ",pos="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 297
    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ",buffer="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 299
    invoke-static {v9}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "bytes="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 303
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 304
    invoke-static {v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$300(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_6

    const-string/jumbo v5, ",load_state=buffering"

    :goto_4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    invoke-static {v6, v7, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1100(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v4

    .line 311
    .local v4, "vigo":Lcom/vkcoffee/android/media/Vigo;
    invoke-virtual {v4}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesOFF()V

    .line 314
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    .end local v4    # "vigo":Lcom/vkcoffee/android/media/Vigo;
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v5, v5, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v5, :cond_1

    .line 315
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v5, v5, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v5}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlaybackCompleted()V

    .line 317
    :cond_1
    return-void

    .line 284
    .restart local v0    # "currentTime":J
    .restart local v2    # "playbackTime":J
    :cond_2
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 286
    :cond_3
    const-string/jumbo v5, ""

    goto/16 :goto_1

    .line 296
    :cond_4
    const-string/jumbo v5, ""

    goto :goto_2

    .line 299
    :cond_5
    const-string/jumbo v5, ""

    goto :goto_3

    .line 304
    :cond_6
    const-string/jumbo v5, ""

    goto :goto_4
.end method
