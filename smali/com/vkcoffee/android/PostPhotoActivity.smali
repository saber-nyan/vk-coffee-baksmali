.class public Lcom/vkcoffee/android/PostPhotoActivity;
.super Landroid/app/Activity;
.source "PostPhotoActivity.java"


# static fields
.field private static final ALBUM_RESULT:I = 0x67

.field private static final MESSAGE_RESULT:I = 0x66

.field private static final PICKER_RESULT:I = 0x65


# instance fields
.field private aid:I

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field private msgReceiver:Lcom/vkcoffee/android/UserProfile;

.field private option:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/PostPhotoActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method

.method private processOption()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    iget v1, p0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/PostPhotoActivity;->startPicker()V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    iget v1, p0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    if-eq v1, v3, :cond_1

    .line 80
    iget v1, p0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string/jumbo v1, "select_album"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-class v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    const/16 v2, 0x67

    invoke-static {v1, v0, p0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->forResult(Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private startPicker()V
    .locals 5

    .prologue
    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkcoffee/android/PostPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "option"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0804d6

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0804d4

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0804d3

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    const-string/jumbo v2, "complete_options"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .restart local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x7f0804d5

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string/jumbo v2, "complete_options_single"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v2, "selection_limit"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 103
    const/16 v1, 0x65

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_9

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    .line 105
    const-string/jumbo v1, "result_attachments"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 106
    .local v14, "resultBundle":Landroid/os/Bundle;
    if-eqz v14, :cond_4

    .line 107
    const-string/jumbo v1, "result_files"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 108
    .local v15, "resultFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v15, :cond_1

    .line 163
    .end local v14    # "resultBundle":Landroid/os/Bundle;
    .end local v15    # "resultFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local v14    # "resultBundle":Landroid/os/Bundle;
    .restart local v15    # "resultFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 112
    .local v17, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "file"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "content"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    .end local v15    # "resultFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v1, "chosen_option"

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 119
    const-string/jumbo v1, "chosen_option"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    .line 121
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    if-nez v1, :cond_6

    .line 122
    new-instance v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachPhotos(Ljava/util/ArrayList;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PostPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "uid"

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->uid(I)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PostPhotoActivity;->finish()V

    .line 128
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 129
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;->setSelectMode()Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;

    move-result-object v1

    const/16 v2, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;->forResult(Landroid/app/Activity;I)V

    .line 131
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 132
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v12, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string/jumbo v1, "select_album"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-class v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-static {v1, v12, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->forResult(Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/Activity;I)V

    .line 137
    .end local v12    # "args":Landroid/os/Bundle;
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 138
    new-instance v2, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PostPhotoActivity;->finish()V

    goto/16 :goto_0

    .line 141
    .end local v14    # "resultBundle":Landroid/os/Bundle;
    :cond_9
    const/16 v1, 0x66

    move/from16 v0, p1

    if-ne v0, v1, :cond_b

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_b

    .line 142
    const-string/jumbo v1, "profile"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->msgReceiver:Lcom/vkcoffee/android/UserProfile;

    .line 144
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/PostPhotoActivity;->msgReceiver:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/PostPhotoActivity;->msgReceiver:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhotos(Ljava/util/ArrayList;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v13

    .line 145
    .local v13, "builder":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->msgReceiver:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v2, 0x77359400

    if-ge v1, v2, :cond_a

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->msgReceiver:Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    .line 148
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PostPhotoActivity;->finish()V

    goto/16 :goto_0

    .line 150
    .end local v13    # "builder":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    :cond_b
    const/16 v1, 0x67

    move/from16 v0, p1

    if-ne v0, v1, :cond_d

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_d

    .line 151
    const-string/jumbo v1, "album"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 152
    .local v11, "album":Lcom/vkcoffee/android/api/PhotoAlbum;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, "file":Ljava/lang/String;
    new-instance v1, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;

    iget v4, v11, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    iget v5, v11, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    .end local v3    # "file":Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vkontakte://vk.com/album"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 157
    .local v10, "pIntent":Landroid/app/PendingIntent;
    new-instance v4, Lcom/vkcoffee/android/upload/BatchUploadTask;

    const v1, 0x7f08056e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v1, 0x7f080352

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f080353

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    invoke-direct/range {v4 .. v10}, Lcom/vkcoffee/android/upload/BatchUploadTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 158
    iget v1, v11, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkcoffee/android/PostPhotoActivity;->aid:I

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PostPhotoActivity;->finish()V

    goto/16 :goto_0

    .line 161
    .end local v10    # "pIntent":Landroid/app/PendingIntent;
    .end local v11    # "album":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/upload/UploadTask;>;"
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PostPhotoActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/PostPhotoActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/PostPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "option"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/PostPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/PostPhotoActivity;->option:I

    .line 44
    invoke-direct {p0}, Lcom/vkcoffee/android/PostPhotoActivity;->processOption()V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/PostPhotoActivity;->startPicker()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/PostPhotoActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->onActivityPaused()V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    invoke-static {p0}, Lcom/vkcoffee/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 173
    return-void
.end method
