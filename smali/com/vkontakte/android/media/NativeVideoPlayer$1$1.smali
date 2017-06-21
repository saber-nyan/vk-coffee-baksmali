.class Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/high16 v14, 0x447a0000    # 1000.0f

    .line 112
    const/4 v4, 0x0

    .line 113
    .local v4, "odd":Z
    :goto_0
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    if-nez v9, :cond_0

    .line 141
    return-void

    .line 115
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 116
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v10

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onUpdatePlaybackPosition(I)V

    .line 118
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v4, :cond_2

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$13(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v9

    if-lez v9, :cond_2

    .line 119
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v10

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$13(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$5(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 120
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$13(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v9

    if-nez v9, :cond_2

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    .local v2, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 124
    .local v6, "playbackTime":J
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v1

    .line 125
    .local v1, "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "duration="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v11

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v14

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "quality="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v10

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$6(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, ",host="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v11

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "str2":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type=heartbeat,seq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v10

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$704(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ts="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "tz="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    div-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "t="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v10

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v10

    sub-long v10, v6, v10

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    long-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, ",pos="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v11

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v14

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, ",buffer="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v11

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    .local v0, "append":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_7

    .line 128
    const-string v5, ",load_state=buffering"

    .line 132
    .local v5, "str":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$1$1;->this$1:Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer$1;)Lcom/vkontakte/android/media/NativeVideoPlayer;

    move-result-object v9

    const/16 v10, 0x1e

    invoke-static {v9, v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$5(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 136
    .end local v0    # "append":Ljava/lang/StringBuilder;
    .end local v1    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .end local v2    # "currentTime":J
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "playbackTime":J
    .end local v8    # "str2":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 137
    :goto_6
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 138
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 125
    .restart local v1    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .restart local v2    # "currentTime":J
    .restart local v6    # "playbackTime":J
    :cond_3
    const-string v9, ""

    goto/16 :goto_1

    :cond_4
    const-string v9, ""

    goto/16 :goto_2

    .line 126
    .restart local v8    # "str2":Ljava/lang/String;
    :cond_5
    const-string v9, ""

    goto :goto_3

    :cond_6
    const-string v9, ""

    goto :goto_4

    .line 130
    .restart local v0    # "append":Ljava/lang/StringBuilder;
    :cond_7
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5    # "str":Ljava/lang/String;
    goto :goto_5

    .line 136
    .end local v0    # "append":Ljava/lang/StringBuilder;
    .end local v1    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .end local v2    # "currentTime":J
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "playbackTime":J
    .end local v8    # "str2":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x1

    goto :goto_6
.end method
