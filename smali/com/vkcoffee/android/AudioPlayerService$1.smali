.class Lcom/vkcoffee/android/AudioPlayerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 147
    const-string/jumbo v6, "com.vkcoffee.android.PLAYER_CONTROL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    const-string/jumbo v6, "action"

    const/4 v9, -0x1

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "act":I
    const-string/jumbo v6, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    packed-switch v0, :pswitch_data_0

    .line 199
    .end local v0    # "act":I
    :cond_0
    :goto_0
    const-string/jumbo v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    const-string/jumbo v6, "state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v3, v7

    .line 204
    .local v3, "newPlugState":Z
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6, v3}, Lcom/vkcoffee/android/AudioPlayerService;->access$700(Lcom/vkcoffee/android/AudioPlayerService;Z)V

    .line 206
    .end local v3    # "newPlugState":Z
    :cond_1
    const-string/jumbo v6, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6, v8}, Lcom/vkcoffee/android/AudioPlayerService;->access$700(Lcom/vkcoffee/android/AudioPlayerService;Z)V

    .line 214
    :cond_2
    const-string/jumbo v6, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 215
    const-string/jumbo v6, "aid"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "aid":I
    const-string/jumbo v6, "oid"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 216
    .local v4, "oid":I
    const-string/jumbo v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PS Cover available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v6, v2, :cond_3

    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne v6, v4, :cond_3

    .line 218
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerService;->access$900(Lcom/vkcoffee/android/AudioPlayerService;)V

    .line 219
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerService;->access$1000(Lcom/vkcoffee/android/AudioPlayerService;)V

    .line 222
    .end local v2    # "aid":I
    .end local v4    # "oid":I
    :cond_3
    return-void

    .line 152
    .restart local v0    # "act":I
    :pswitch_0
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v9, 0x0

    invoke-static {v6, v9}, Lcom/vkcoffee/android/AudioPlayerService;->access$102(Lcom/vkcoffee/android/AudioPlayerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 153
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const-string/jumbo v9, "act_uid"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v6, v9}, Lcom/vkcoffee/android/AudioPlayerService;->access$202(Lcom/vkcoffee/android/AudioPlayerService;I)I

    .line 154
    iget-object v9, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const-string/jumbo v6, "file"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/AudioFile;

    invoke-static {v9, v6}, Lcom/vkcoffee/android/AudioPlayerService;->access$300(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioFile;)V

    .line 155
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const-string/jumbo v9, "referer"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/vkcoffee/android/AudioPlayerService;->access$402(Lcom/vkcoffee/android/AudioPlayerService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 158
    :pswitch_1
    const-string/jumbo v6, "list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 159
    .local v5, "pa":[Landroid/os/Parcelable;
    array-length v6, v5

    new-array v1, v6, [Lcom/vkcoffee/android/AudioFile;

    .line 160
    .local v1, "af":[Lcom/vkcoffee/android/AudioFile;
    array-length v6, v5

    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const-string/jumbo v9, "act_uid"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v6, v9}, Lcom/vkcoffee/android/AudioPlayerService;->access$202(Lcom/vkcoffee/android/AudioPlayerService;I)I

    .line 162
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string/jumbo v10, "position"

    invoke-virtual {p2, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v6, v9, v10}, Lcom/vkcoffee/android/AudioPlayerService;->access$500(Lcom/vkcoffee/android/AudioPlayerService;Ljava/util/List;I)V

    .line 163
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const-string/jumbo v9, "referer"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/vkcoffee/android/AudioPlayerService;->access$402(Lcom/vkcoffee/android/AudioPlayerService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 166
    .end local v1    # "af":[Lcom/vkcoffee/android/AudioFile;
    .end local v5    # "pa":[Landroid/os/Parcelable;
    :pswitch_2
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 169
    :pswitch_3
    iget-object v9, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const-string/jumbo v6, "no_anim"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    :goto_2
    const-string/jumbo v10, "from_notify"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v6, v10}, Lcom/vkcoffee/android/AudioPlayerService;->showPlayer(ZZ)V

    goto/16 :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    .line 172
    :pswitch_4
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->nextTrack()V

    goto/16 :goto_0

    .line 175
    :pswitch_5
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->prevTrack()V

    goto/16 :goto_0

    .line 178
    :pswitch_6
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkcoffee/android/AudioPlayerService;->access$600(Lcom/vkcoffee/android/AudioPlayerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 183
    :pswitch_7
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v6, v7}, Lcom/vkcoffee/android/AudioPlayerService;->access$602(Lcom/vkcoffee/android/AudioPlayerService;Z)Z

    .line 185
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 189
    :pswitch_8
    iget-object v9, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->isLoop()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Lcom/vkcoffee/android/AudioPlayerService;->setLoop(Z)V

    goto/16 :goto_0

    :cond_5
    move v6, v8

    goto :goto_3

    .line 192
    :pswitch_9
    iget-object v9, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->isRandom()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Lcom/vkcoffee/android/AudioPlayerService;->setRandom(Z)V

    goto/16 :goto_0

    :cond_6
    move v6, v8

    goto :goto_4

    .line 195
    :pswitch_a
    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService$1;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->stopSelf()V

    goto/16 :goto_0

    .end local v0    # "act":I
    :cond_7
    move v3, v8

    .line 203
    goto/16 :goto_1

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
