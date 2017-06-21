.class Lcom/vkontakte/android/media/NativeVideoPlayer$4;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 18
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 205
    const-string v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "VPLAYER ERROR "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v12, 0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    const/16 v12, -0x3ef

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    const/16 v12, -0x3f2

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v7

    .line 208
    .local v7, "playerStateListener":Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;
    const/high16 v12, -0x80000000

    move/from16 v0, p3

    if-ne v0, v12, :cond_4

    const/4 v3, -0x1

    .line 209
    .local v3, "i":I
    :goto_0
    invoke-interface {v7, v3}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onError(I)V

    .line 211
    .end local v3    # "i":I
    .end local v7    # "playerStateListener":Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;
    :cond_1
    const/16 v12, -0x3ec

    move/from16 v0, p2

    if-eq v0, v12, :cond_2

    const/16 v12, 0x64

    move/from16 v0, p2

    if-eq v0, v12, :cond_2

    const/16 v12, -0x6e

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v12

    const/4 v13, -0x1

    invoke-interface {v12, v13}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onError(I)V

    .line 214
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 215
    .local v4, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 216
    .local v8, "playbackTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 217
    .local v6, "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "quality="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v13}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$6(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",host="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v14}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 218
    .local v11, "str2":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type=error,seq="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v13}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$704(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ts="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tz="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v13

    div-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "t="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v13}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v14

    sub-long v14, v8, v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    long-to-float v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ",buffer="

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v14}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    .local v2, "append":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/media/NativeVideoPlayer$4;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_8

    .line 220
    const-string v10, ",load_state=buffering"

    .line 224
    .local v10, "str":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "err="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v11, v12}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v12, 0x1

    return v12

    .line 208
    .end local v2    # "append":Ljava/lang/StringBuilder;
    .end local v4    # "currentTime":J
    .end local v6    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .end local v8    # "playbackTime":J
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "str2":Ljava/lang/String;
    .restart local v7    # "playerStateListener":Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;
    :cond_4
    const/16 v12, -0x3ec

    move/from16 v0, p3

    if-ne v0, v12, :cond_5

    const/4 v3, 0x4

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 217
    .end local v7    # "playerStateListener":Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;
    .restart local v4    # "currentTime":J
    .restart local v6    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .restart local v8    # "playbackTime":J
    :cond_6
    const-string v12, ""

    goto/16 :goto_1

    .line 218
    .restart local v11    # "str2":Ljava/lang/String;
    :cond_7
    const-string v12, ""

    goto :goto_2

    .line 222
    .restart local v2    # "append":Ljava/lang/StringBuilder;
    :cond_8
    const-string v10, ""

    .restart local v10    # "str":Ljava/lang/String;
    goto :goto_3
.end method
