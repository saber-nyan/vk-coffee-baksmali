.class Lcom/vkontakte/android/media/NativeVideoPlayer$3;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 14
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 177
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 178
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$19(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V

    .line 179
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$5(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, "currentTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 182
    .local v4, "playbackTime":J
    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 183
    .local v1, "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    if-nez v9, :cond_4

    :cond_0
    const-string v6, ""

    .line 185
    .local v6, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "quality="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$6(Lcom/vkontakte/android/media/NativeVideoPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, ",host="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "stringBuilder2":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type=pause,seq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

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

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    long-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    .local v0, "append":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v9

    if-nez v9, :cond_6

    :cond_1
    const-string v6, ""

    .line 188
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, ",buffer="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v11}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
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

    .line 189
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_8

    .line 190
    const-string v6, ",load_state=buffering"

    .line 194
    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/vkcoffee/android/VKApplication;->getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vkcoffee/android/media/Vigo;->collectNetworkChangesOFF()V

    .line 197
    .end local v0    # "append":Ljava/lang/StringBuilder;
    .end local v1    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .end local v2    # "currentTime":J
    .end local v4    # "playbackTime":J
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "stringBuilder2":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 198
    iget-object v9, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v9}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v9

    invoke-interface {v9}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onPlaybackCompleted()V

    .line 200
    :cond_3
    return-void

    .line 184
    .restart local v1    # "nativeVideoPlayer":Lcom/vkontakte/android/media/NativeVideoPlayer;
    .restart local v2    # "currentTime":J
    .restart local v4    # "playbackTime":J
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "duration="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 185
    .restart local v6    # "str":Ljava/lang/String;
    :cond_5
    const-string v9, ""

    goto/16 :goto_1

    .line 187
    .restart local v0    # "append":Ljava/lang/StringBuilder;
    .restart local v8    # "stringBuilder2":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ",pos="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$3;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v10}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 188
    :cond_7
    const-string v9, ""

    goto/16 :goto_3

    .line 192
    :cond_8
    const-string v6, ""

    goto :goto_4
.end method
