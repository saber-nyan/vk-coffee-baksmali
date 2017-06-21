.class Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v14

    if-nez v14, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string/jumbo v14, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 71
    sget-object v14, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v14}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v4

    .line 72
    .local v4, "file":Lcom/vkcoffee/android/AudioFile;
    if-eqz v4, :cond_0

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$100(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$100(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v14

    iget v14, v14, Lcom/vkcoffee/android/AudioFile;->oid:I

    int-to-long v14, v14

    const/16 v16, 0x20

    shl-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$100(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    or-long v12, v14, v16

    .line 74
    .local v12, "nowPlayingId":J
    :goto_1
    iget v14, v4, Lcom/vkcoffee/android/AudioFile;->oid:I

    int-to-long v14, v14

    const/16 v16, 0x20

    shl-long v14, v14, v16

    iget v0, v4, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    or-long v6, v14, v16

    .line 75
    .local v6, "fileId":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$100(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/vkcoffee/android/AudioFile;->equals(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 73
    .end local v6    # "fileId":J
    .end local v12    # "nowPlayingId":J
    :cond_2
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 78
    .restart local v6    # "fileId":J
    .restart local v12    # "nowPlayingId":J
    :cond_3
    const/4 v3, -0x1

    .local v3, "animOut":I
    const/4 v2, -0x1

    .line 79
    .local v2, "animIn":I
    const/4 v8, 0x0

    .line 80
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->getItemCount()I

    move-result v14

    if-ge v9, v14, :cond_4

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 83
    .local v10, "id":J
    cmp-long v14, v12, v10

    if-nez v14, :cond_7

    .line 84
    move v3, v8

    .line 89
    .end local v10    # "id":J
    :cond_4
    const/4 v8, 0x0

    .line 90
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->getItemCount()I

    move-result v14

    if-ge v9, v14, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 93
    .restart local v10    # "id":J
    cmp-long v14, v6, v10

    if-nez v14, :cond_8

    .line 94
    move v2, v8

    .line 99
    .end local v10    # "id":J
    :cond_5
    const/4 v14, -0x1

    if-eq v2, v14, :cond_6

    const/4 v14, -0x1

    if-eq v3, v14, :cond_6

    if-ge v3, v2, :cond_9

    :cond_6
    const/4 v5, 0x1

    .line 100
    .local v5, "fwd":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14, v4}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$102(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Lcom/vkcoffee/android/AudioFile;)Lcom/vkcoffee/android/AudioFile;

    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    const/4 v15, 0x1

    invoke-static {v14, v2, v15}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$200(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;IZ)V

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    const/4 v15, 0x0

    invoke-static {v14, v3, v15}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$200(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;IZ)V

    goto/16 :goto_0

    .line 87
    .end local v5    # "fwd":Z
    .restart local v10    # "id":J
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 80
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 97
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 90
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 99
    .end local v10    # "id":J
    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    .line 105
    .end local v2    # "animIn":I
    .end local v3    # "animOut":I
    .end local v4    # "file":Lcom/vkcoffee/android/AudioFile;
    .end local v6    # "fileId":J
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v12    # "nowPlayingId":J
    :cond_a
    const-string/jumbo v14, "com.vkcoffee.android.AUDIO_FILE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string/jumbo v14, "com.vkcoffee.android.AUDIO_FILE_DELETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 106
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$300(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V

    goto/16 :goto_0
.end method
