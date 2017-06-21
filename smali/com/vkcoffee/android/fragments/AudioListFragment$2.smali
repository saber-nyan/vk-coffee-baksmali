.class Lcom/vkcoffee/android/fragments/AudioListFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 126
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$2;)Lcom/vkcoffee/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 129
    const-string v19, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 130
    sget-object v19, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v19, :cond_0

    .line 131
    sget-object v19, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v9

    .line 132
    .local v9, "file":Lcom/vkcoffee/android/AudioFile;
    if-eqz v9, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$3(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$3(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x20

    shl-long v20, v20, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$3(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    or-long v16, v20, v22

    .line 134
    .local v16, "nowPlayingId":J
    :goto_0
    iget v0, v9, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x20

    shl-long v20, v20, v19

    iget v0, v9, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    or-long v10, v20, v22

    .line 135
    .local v10, "fileId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$3(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/vkcoffee/android/AudioFile;->equals(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v19

    const v20, 0x7f10015f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ViewFlipper;

    .line 138
    .local v18, "vs":Landroid/widget/ViewFlipper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/widget/ProgressBar;

    move-result-object v19

    sget-object v20, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 174
    .end local v18    # "vs":Landroid/widget/ViewFlipper;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v19

    const v20, 0x7f100164

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    sget-object v20, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v20

    if-eqz v20, :cond_a

    const v20, 0x7f0201b7

    :goto_2
    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    .end local v9    # "file":Lcom/vkcoffee/android/AudioFile;
    .end local v10    # "fileId":J
    .end local v16    # "nowPlayingId":J
    :cond_0
    const-string v19, "reload_cached_list"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->updateList()V

    .line 231
    :cond_1
    :goto_3
    return-void

    .line 133
    .restart local v9    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_2
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 140
    .restart local v10    # "fileId":J
    .restart local v16    # "nowPlayingId":J
    :cond_3
    const/4 v7, -0x1

    .line 141
    .local v7, "animOut":I
    const/4 v6, -0x1

    .line 142
    .local v6, "animIn":I
    const/4 v13, 0x0

    .line 143
    .local v13, "i":I
    const/4 v14, 0x0

    .line 144
    .local v14, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getItemCount()I

    move-result v19

    move/from16 v0, v19

    if-lt v14, v0, :cond_4

    .line 153
    :goto_5
    const/4 v13, 0x0

    .line 154
    const/4 v14, 0x0

    .line 155
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getItemCount()I

    move-result v19

    move/from16 v0, v19

    if-lt v14, v0, :cond_6

    .line 164
    :goto_7
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_8

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_8

    if-lt v7, v6, :cond_8

    const/4 v12, 0x0

    .line 165
    .local v12, "fwd":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_9

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9, v12}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$5(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Z)V

    .line 170
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$7(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$8(Lcom/vkcoffee/android/fragments/AudioListFragment;IZ)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$8(Lcom/vkcoffee/android/fragments/AudioListFragment;IZ)V

    goto/16 :goto_1

    .line 145
    .end local v12    # "fwd":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getItemId(I)J

    move-result-wide v20

    cmp-long v19, v16, v20

    if-nez v19, :cond_5

    .line 146
    move v7, v13

    .line 147
    goto :goto_5

    .line 149
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 150
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 156
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getItemId(I)J

    move-result-wide v20

    cmp-long v19, v10, v20

    if-nez v19, :cond_7

    .line 157
    move v6, v13

    .line 158
    goto/16 :goto_7

    .line 160
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 161
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 164
    :cond_8
    const/4 v12, 0x1

    goto :goto_8

    .line 168
    .restart local v12    # "fwd":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$6(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V

    goto :goto_9

    .line 174
    .end local v6    # "animIn":I
    .end local v7    # "animOut":I
    .end local v12    # "fwd":Z
    .end local v13    # "i":I
    .end local v14    # "j":I
    :cond_a
    const v20, 0x7f0201c2

    goto/16 :goto_2

    .line 180
    .end local v9    # "file":Lcom/vkcoffee/android/AudioFile;
    .end local v10    # "fileId":J
    .end local v16    # "nowPlayingId":J
    :cond_b
    const-string v19, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 181
    const-string v19, "aid"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 182
    .local v5, "aid":I
    const-string v19, "oid"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 183
    .local v15, "oid":I
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Album art available "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v19, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v19, :cond_1

    sget-object v19, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 185
    sget-object v19, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v8

    .line 186
    .local v8, "cur":Lcom/vkcoffee/android/AudioFile;
    iget v0, v8, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v5, :cond_1

    iget v0, v8, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v15, :cond_1

    .line 187
    const/16 v19, 0x1

    new-instance v20, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment$2;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v5, v15, v0, v1}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    goto/16 :goto_3

    .line 206
    .end local v5    # "aid":I
    .end local v8    # "cur":Lcom/vkcoffee/android/AudioFile;
    .end local v15    # "oid":I
    :cond_c
    const-string v19, "com.vkcoffee.android.AUDIO_FILE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$9(Lcom/vkcoffee/android/fragments/AudioListFragment;)I

    move-result v19

    sget v20, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 208
    const-string v19, "file"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/AudioFile;

    .line 209
    .local v4, "af":Lcom/vkcoffee/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$10(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_d

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$10(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 212
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$11(Lcom/vkcoffee/android/fragments/AudioListFragment;)I

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 217
    .end local v4    # "af":Lcom/vkcoffee/android/AudioFile;
    :cond_e
    const-string v19, "com.vkcoffee.android.AUDIO_FILE_DELETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$9(Lcom/vkcoffee/android/fragments/AudioListFragment;)I

    move-result v19

    sget v20, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    const-string v20, "aid"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$13(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    goto/16 :goto_3

    .line 221
    :cond_f
    const-string v19, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$14(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$15(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$15(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$15(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$15(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v22

    const/high16 v23, 0x41000000    # 8.0f

    invoke-static/range {v23 .. v23}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v19

    if-eqz v19, :cond_10

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v22

    const/high16 v23, 0x41000000    # 8.0f

    invoke-static/range {v23 .. v23}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 227
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$7(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V

    goto/16 :goto_3
.end method
