.class Lcom/vkcoffee/android/media/NativeVideoPlayer$5;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 375
    iput-object p1, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 12
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 378
    const/16 v4, 0x2bd

    if-ne p2, v4, :cond_1

    .line 379
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v4, v4, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v4, v4, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v4}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onEndOfBuffer()V

    .line 383
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$402(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 387
    .local v0, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 388
    .local v2, "playbackTime":J
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4, v0, v1}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$302(Lcom/vkcoffee/android/media/NativeVideoPlayer;J)J

    .line 390
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "duration="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "quality="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 391
    invoke-static {v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$500(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 392
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",host="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type=buf_start,seq="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 395
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

    .line 399
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

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 401
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

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 402
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",pos="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 403
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",buffer="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 405
    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "bytes="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 409
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

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 411
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1004(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1100(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    :cond_1
    const/16 v4, 0x2be

    if-ne p2, v4, :cond_3

    .line 417
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v4, v4, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    if-eqz v4, :cond_2

    .line 418
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    iget-object v4, v4, Lcom/vkcoffee/android/media/NativeVideoPlayer;->listener:Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    invoke-interface {v4}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlaybackResumed()V

    .line 421
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$200(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 424
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$300(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 426
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$402(Lcom/vkcoffee/android/media/NativeVideoPlayer;I)I

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 429
    .restart local v0    # "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 431
    .restart local v2    # "playbackTime":J
    iget-object v5, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "duration="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "quality="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 432
    invoke-static {v6}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$500(Lcom/vkcoffee/android/media/NativeVideoPlayer;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 433
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ",host="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$600(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type=buf_stop,seq="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 436
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

    .line 440
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

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 442
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

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 443
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$100(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",pos="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$000(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 444
    invoke-static {v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ",buffer="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 446
    invoke-static {v8}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$900(Lcom/vkcoffee/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "bytes="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 450
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

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 452
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

    iget-object v7, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    .line 454
    invoke-static {v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$300(Lcom/vkcoffee/android/media/NativeVideoPlayer;)J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$1100(Lcom/vkcoffee/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v4, p0, Lcom/vkcoffee/android/media/NativeVideoPlayer$5;->this$0:Lcom/vkcoffee/android/media/NativeVideoPlayer;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/vkcoffee/android/media/NativeVideoPlayer;->access$302(Lcom/vkcoffee/android/media/NativeVideoPlayer;J)J

    .line 463
    .end local v0    # "currentTime":J
    .end local v2    # "playbackTime":J
    :cond_3
    const/4 v4, 0x1

    return v4

    .line 390
    .restart local v0    # "currentTime":J
    .restart local v2    # "playbackTime":J
    :cond_4
    const-string/jumbo v4, ""

    goto/16 :goto_0

    .line 392
    :cond_5
    const-string/jumbo v4, ""

    goto/16 :goto_1

    .line 402
    :cond_6
    const-string/jumbo v4, ""

    goto/16 :goto_2

    .line 405
    :cond_7
    const-string/jumbo v4, ""

    goto/16 :goto_3

    .line 431
    :cond_8
    const-string/jumbo v4, ""

    goto/16 :goto_4

    .line 433
    :cond_9
    const-string/jumbo v4, ""

    goto/16 :goto_5

    .line 443
    :cond_a
    const-string/jumbo v4, ""

    goto/16 :goto_6

    .line 446
    :cond_b
    const-string/jumbo v4, ""

    goto/16 :goto_7
.end method
