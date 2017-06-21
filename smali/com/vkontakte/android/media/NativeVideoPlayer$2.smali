.class Lcom/vkontakte/android/media/NativeVideoPlayer$2;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 16
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v10

    move/from16 v0, p2

    invoke-interface {v10, v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onUpdateBuffered(I)V

    .line 155
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 156
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$17(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v10

    if-gtz v10, :cond_2

    :cond_1
    const/16 v10, 0x64

    move/from16 v0, p2

    if-lt v0, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_3

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/16 v11, 0x1e

    invoke-static {v10, v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$5(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 160
    .local v4, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 161
    .local v6, "playbackTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 162
    .local v3, "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "duration="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "quality="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$6(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, ",host="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "str2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type=heartbeat,seq="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$704(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ts="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tz="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v12

    sub-long v12, v6, v12

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    long-to-float v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, ",pos="

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "buffer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "bytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 164
    .local v2, "append":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    .line 165
    const-string v8, ",load_state=buffering"

    .line 169
    .local v8, "str":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v3    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .end local v4    # "currentTime":J
    .end local v6    # "playbackTime":J
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "str2":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$18(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/lang/Integer;)V

    .line 173
    :cond_4
    return-void

    .line 162
    .restart local v3    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .restart local v4    # "currentTime":J
    .restart local v6    # "playbackTime":J
    :cond_5
    const-string v10, ""

    goto/16 :goto_0

    :cond_6
    const-string v10, ""

    goto/16 :goto_1

    .line 163
    .restart local v9    # "str2":Ljava/lang/String;
    :cond_7
    const-string v10, ""

    goto :goto_2

    .line 167
    .restart local v2    # "append":Ljava/lang/StringBuilder;
    :cond_8
    const-string v8, ""

    .restart local v8    # "str":Ljava/lang/String;
    goto :goto_3
.end method
