.class Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Presenter"
.end annotation


# static fields
.field static final AUDIO_RESULT:I = 0x4

.field static final DOCUMENT_RESULT:I = 0x6

.field static final LOCATION_RESULT:I = 0x3

.field static final MENTION_RESULT:I = 0x7

.field static final PHOTO_RESULT:I = 0x1

.field public static final POLL_RESULT:I = 0x8

.field static final VIDEO_EXISTING_RESULT:I = 0xb

.field static final VIDEO_NEW_RESULT:I = 0xa

.field static final VIDEO_RESULT:I = 0x5


# instance fields
.field changed:Z

.field exportToFacebook:Z

.field exportToTwitter:Z

.field friendsOnly:Z

.field fromGroup:Z

.field isComment:Z

.field isSuggest:Z

.field publishing:Z

.field sigAttach:Lcom/vkcoffee/android/attachments/Attachment;

.field signedFromGroup:Z

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->publishing:Z

    .line 313
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    .line 314
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->signedFromGroup:Z

    .line 315
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    .line 316
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->changed:Z

    .line 317
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->friendsOnly:Z

    .line 318
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToTwitter:Z

    .line 319
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToFacebook:Z

    .line 320
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 376
    return-void
.end method

.method attachLocation(Lcom/vkcoffee/android/attachments/GeoAttachment;)V
    .locals 2
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/GeoAttachment;

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iput-object p1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    .line 1226
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mLocation:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1227
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V

    .line 1228
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateSendButton()V

    .line 1229
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 339
    return-void
.end method

.method checkAttachLimit()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 787
    const/4 v3, 0x2

    .line 788
    .local v3, "i2":I
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v1

    .line 789
    .local v1, "count":I
    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-eqz v8, :cond_0

    .line 790
    const/4 v2, 0x2

    .line 794
    .local v2, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 805
    :goto_1
    return v6

    .line 792
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0xa

    .restart local v2    # "i":I
    goto :goto_0

    .line 797
    :cond_1
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 798
    .local v0, "activity":Landroid/content/Context;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 799
    .local v5, "resources":Landroid/content/res/Resources;
    new-array v4, v6, [Ljava/lang/Object;

    .line 800
    .local v4, "objArr":[Ljava/lang/Object;
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-nez v6, :cond_2

    .line 801
    const/16 v3, 0xa

    .line 803
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    .line 804
    const v6, 0x7f080084

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v7

    .line 805
    goto :goto_1
.end method

.method chooseVideo()V
    .locals 4

    .prologue
    .line 948
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 949
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 950
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 951
    return-void
.end method

.method lambda$null$474(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "userProfile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    new-instance v0, Lcom/vkcoffee/android/attachments/SignatureLinkAttachment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://vkontakte.ru/id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/attachments/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sigAttach:Lcom/vkcoffee/android/attachments/Attachment;

    .line 626
    return-void
.end method

.method lambda$null$477(Lcom/vkcoffee/android/attachments/PendingVideoAttachment;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "pendingVideoAttachment"    # Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 753
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 754
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 755
    return-void
.end method

.method lambda$onActivityResult$478(ILandroid/content/Intent;)V
    .locals 25
    .param p1, "i"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 645
    const/16 v20, 0xa

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0xb

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 646
    :cond_0
    const/4 v4, 0x0

    .line 647
    .local v4, "duration":I
    const/16 v16, 0x0

    .line 649
    .local v16, "vertical":Z
    :try_start_0
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 650
    .local v7, "mdr":Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 651
    const/16 v20, 0x9

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    div-int/lit16 v4, v0, 0x3e8

    .line 652
    const/16 v20, 0x12

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    .line 653
    .local v14, "sWidth":Ljava/lang/String;
    const/16 v20, 0x13

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 654
    .local v12, "sHeight":Ljava/lang/String;
    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    .line 655
    .local v13, "sOrient":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 656
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 657
    .local v18, "width":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 658
    .local v5, "height":I
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 659
    .local v8, "orient":I
    move/from16 v0, v18

    if-ge v0, v5, :cond_2

    const/16 v16, 0x1

    .line 660
    :goto_0
    rem-int/lit16 v0, v8, 0xb4

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v21, 0x5a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 661
    if-eqz v16, :cond_3

    const/16 v16, 0x0

    .line 666
    .end local v5    # "height":I
    .end local v7    # "mdr":Landroid/media/MediaMetadataRetriever;
    .end local v8    # "orient":I
    .end local v12    # "sHeight":Ljava/lang/String;
    .end local v13    # "sOrient":Ljava/lang/String;
    .end local v14    # "sWidth":Ljava/lang/String;
    .end local v18    # "width":I
    :cond_1
    :goto_1
    new-instance v17, Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct/range {v17 .. v17}, Lcom/vkcoffee/android/api/VideoFile;-><init>()V

    .line 667
    .local v17, "vf":Lcom/vkcoffee/android/api/VideoFile;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 668
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    const-string v21, "content"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 669
    invoke-static {v15}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 673
    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f080165

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 750
    .end local v4    # "duration":I
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "vertical":Z
    .end local v17    # "vf":Lcom/vkcoffee/android/api/VideoFile;
    :goto_3
    return-void

    .line 659
    .restart local v4    # "duration":I
    .restart local v5    # "height":I
    .restart local v7    # "mdr":Landroid/media/MediaMetadataRetriever;
    .restart local v8    # "orient":I
    .restart local v12    # "sHeight":Ljava/lang/String;
    .restart local v13    # "sOrient":Ljava/lang/String;
    .restart local v14    # "sWidth":Ljava/lang/String;
    .restart local v16    # "vertical":Z
    .restart local v18    # "width":I
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 661
    :cond_3
    const/16 v16, 0x1

    goto :goto_1

    .line 663
    .end local v5    # "height":I
    .end local v7    # "mdr":Landroid/media/MediaMetadataRetriever;
    .end local v8    # "orient":I
    .end local v12    # "sHeight":Ljava/lang/String;
    .end local v13    # "sOrient":Ljava/lang/String;
    .end local v14    # "sWidth":Ljava/lang/String;
    .end local v18    # "width":I
    :catch_0
    move-exception v19

    .line 664
    .local v19, "x":Ljava/lang/Throwable;
    const-string v20, "vk"

    const-string v21, "Error getting video duration!"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 671
    .end local v19    # "x":Ljava/lang/Throwable;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v17    # "vf":Lcom/vkcoffee/android/api/VideoFile;
    :cond_4
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    goto :goto_2

    .line 677
    :cond_5
    move-object/from16 v0, v17

    iput v4, v0, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    .line 678
    const-string v20, "file"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    .line 679
    new-instance v11, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 680
    .local v11, "pva":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    .line 681
    if-eqz v16, :cond_12

    .line 682
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 683
    new-instance v20, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f0800f4

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f080581

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0805c0

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$17;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0802d7

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 689
    .end local v4    # "duration":I
    .end local v11    # "pva":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "vertical":Z
    .end local v17    # "vf":Lcom/vkcoffee/android/api/VideoFile;
    :cond_6
    :goto_5
    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 690
    const-string v20, "attachment"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v21, v0

    const-string v20, "attachment"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 700
    :cond_7
    :goto_6
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 702
    :cond_8
    const/16 v20, 0x4

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/vkcoffee/android/attachments/AudioAttachment;

    const-string v20, "audio"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/AudioAttachment;-><init>(Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual/range {v21 .. v22}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 704
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 706
    :cond_9
    const/16 v20, 0x5

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/vkcoffee/android/attachments/VideoAttachment;

    const-string v20, "video"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    invoke-virtual/range {v21 .. v22}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 708
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 710
    :cond_a
    const/16 v20, 0x6

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 711
    const-string v20, "documents"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 712
    .local v6, "it":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_15

    .line 715
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 717
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_b
    const/16 v20, 0x7

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 718
    const-string v20, "user"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/UserProfile;

    .line 719
    .local v9, "p":Lcom/vkcoffee/android/UserProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    move/from16 v20, v0

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    move/from16 v20, v0

    const/16 v21, 0x11

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_18

    .line 720
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v22

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "*id"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 733
    .end local v9    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_d
    :goto_8
    const/16 v20, 0x8

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v21, v0

    const-string v20, "poll"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/attachments/PollAttachment;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 735
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 737
    :cond_e
    const/16 v20, 0x9

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 738
    const-string v20, "poll"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/attachments/PollAttachment;

    .line 739
    .local v10, "poll":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 741
    .restart local v6    # "it":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1b

    .line 749
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v10    # "poll":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateSendButton()V

    goto/16 :goto_3

    .line 678
    .restart local v4    # "duration":I
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "vertical":Z
    .restart local v17    # "vf":Lcom/vkcoffee/android/api/VideoFile;
    :cond_11
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "file://"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    .line 685
    .restart local v11    # "pva":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 686
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    goto/16 :goto_5

    .line 692
    .end local v4    # "duration":I
    .end local v11    # "pva":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "vertical":Z
    .end local v17    # "vf":Lcom/vkcoffee/android/api/VideoFile;
    :cond_13
    const-string v20, "files"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 693
    const-string v20, "files"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 694
    .restart local v6    # "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto :goto_a

    .line 698
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    const-string v22, "file"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto/16 :goto_6

    .line 713
    .restart local v6    # "it":Ljava/util/Iterator;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v21, v0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Parcelable;

    check-cast v20, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto/16 :goto_7

    .line 723
    .end local v6    # "it":Ljava/util/Iterator;
    .restart local v9    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v22

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v20

    if-nez v20, :cond_17

    const-string v20, ""

    :goto_b
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "*id"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v23, " ("

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v23, ") "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_8

    :cond_17
    const-string v20, " "

    goto :goto_b

    .line 726
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v22

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "[id"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v20 .. v23}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_8

    .line 729
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v22

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v20

    if-nez v20, :cond_1a

    const-string v20, ""

    :goto_c
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "[id"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v23, "|"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v23, "] "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_8

    :cond_1a
    const-string v20, " "

    goto :goto_c

    .line 742
    .end local v9    # "p":Lcom/vkcoffee/android/UserProfile;
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v10    # "poll":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/Attachment;

    .line 743
    .local v3, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v3, Lcom/vkcoffee/android/attachments/PollAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    if-eq v3, v10, :cond_f

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->remove(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto/16 :goto_9
.end method

.method lambda$onBackPressed$479(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 767
    return-void
.end method

.method lambda$onClick$473(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 408
    packed-switch p2, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 410
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startLocationChooser()V

    goto :goto_0

    .line 413
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->removeLocation()V

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method lambda$setupInitialData$475(Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 618
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$18;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/UserProfile;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_0
    return-void
.end method

.method lambda$setupInitialData$476()V
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->changed:Z

    .line 630
    return-void
.end method

.method lambda$showExtendedAttachMenu$480(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 854
    packed-switch p2, :pswitch_data_0

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 856
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->checkAttachLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startAudioSelector()V

    goto :goto_0

    .line 862
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->checkAttachLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startVideoSelector()V

    goto :goto_0

    .line 868
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->checkAttachLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startDocumentSelector()V

    goto :goto_0

    .line 874
    :pswitch_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->checkAttachLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startPollSelector()V

    goto :goto_0

    .line 854
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method lambda$showOptions$484(Ljava/util/ArrayList;[Z[ZLandroid/content/DialogInterface;IZ)V
    .locals 9
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "zArr"    # [Z
    .param p3, "zArr2"    # [Z
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I
    .param p6, "isChecked"    # Z

    .prologue
    .line 1089
    const/4 v6, 0x1

    .line 1090
    .local v6, "z":Z
    const/4 v5, -0x1

    .line 1091
    .local v5, "w":I
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1094
    .local v4, "s":Ljava/lang/String;
    const-string v8, "friendsonly"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1096
    const/4 v5, 0x0

    .line 1097
    const-string v8, "twitter"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1098
    const-string v8, "twitter"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1099
    .local v0, "indexOf":I
    if-eqz p6, :cond_5

    .line 1100
    const/4 v7, 0x0

    .line 1104
    .local v7, "z2":Z
    :goto_0
    aput-boolean v7, p2, v0

    .line 1105
    const-string v8, "twitter"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1106
    if-eqz p6, :cond_6

    .line 1107
    const/4 v7, 0x0

    .line 1111
    :goto_1
    aput-boolean v7, p3, v0

    move-object v8, p4

    .line 1112
    check-cast v8, Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1113
    .local v2, "listView":Landroid/widget/ListView;
    const-string v8, "twitter"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1114
    .local v1, "indexOf2":I
    if-eqz p6, :cond_7

    .line 1115
    const/4 v7, 0x0

    .line 1119
    :goto_2
    invoke-virtual {v2, v1, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1121
    .end local v0    # "indexOf":I
    .end local v1    # "indexOf2":I
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v7    # "z2":Z
    :cond_0
    const-string v8, "fb"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1122
    const-string v8, "fb"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1123
    .restart local v0    # "indexOf":I
    if-eqz p6, :cond_8

    .line 1124
    const/4 v7, 0x0

    .line 1128
    .restart local v7    # "z2":Z
    :goto_3
    aput-boolean v7, p2, v0

    .line 1129
    const-string v8, "fb"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1130
    if-eqz p6, :cond_9

    .line 1131
    const/4 v7, 0x0

    .line 1135
    :goto_4
    aput-boolean v7, p3, v0

    move-object v8, p4

    .line 1136
    check-cast v8, Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1137
    .local v3, "listView2":Landroid/widget/ListView;
    const-string v8, "fb"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1138
    if-eqz p6, :cond_1

    .line 1139
    const/4 v6, 0x0

    .line 1141
    :cond_1
    invoke-virtual {v3, v0, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1143
    .end local v0    # "indexOf":I
    .end local v3    # "listView2":Landroid/widget/ListView;
    .end local v7    # "z2":Z
    :cond_2
    check-cast p4, Landroid/app/AlertDialog;

    .end local p4    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Landroid/widget/BaseAdapter;

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1162
    :cond_3
    :goto_5
    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    .line 1163
    aput-boolean p6, p3, v5

    .line 1165
    :cond_4
    return-void

    .line 1102
    .restart local v0    # "indexOf":I
    .restart local p4    # "dialog":Landroid/content/DialogInterface;
    :cond_5
    const/4 v7, 0x1

    .restart local v7    # "z2":Z
    goto :goto_0

    .line 1109
    :cond_6
    const/4 v7, 0x1

    goto :goto_1

    .line 1117
    .restart local v1    # "indexOf2":I
    .restart local v2    # "listView":Landroid/widget/ListView;
    :cond_7
    const/4 v7, 0x1

    goto :goto_2

    .line 1126
    .end local v1    # "indexOf2":I
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v7    # "z2":Z
    :cond_8
    const/4 v7, 0x1

    .restart local v7    # "z2":Z
    goto :goto_3

    .line 1133
    :cond_9
    const/4 v7, 0x1

    goto :goto_4

    .line 1144
    .end local v0    # "indexOf":I
    .end local v7    # "z2":Z
    :cond_a
    const-string v8, "twitter"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1145
    const/4 v5, 0x1

    .line 1146
    goto :goto_5

    :cond_b
    const-string v8, "fb"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1147
    const/4 v5, 0x2

    .line 1148
    goto :goto_5

    :cond_c
    const-string v8, "timer"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1149
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showTimerDlg()V

    .line 1150
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v2, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    .line 1151
    .restart local v2    # "listView":Landroid/widget/ListView;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v8, :cond_e

    .line 1152
    const/4 v7, 0x1

    .line 1156
    .restart local v7    # "z2":Z
    :goto_6
    invoke-virtual {v2, p5, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1157
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-nez v8, :cond_d

    .line 1158
    const/4 v6, 0x0

    .line 1160
    :cond_d
    aput-boolean v6, p3, p5

    goto :goto_5

    .line 1154
    .end local v7    # "z2":Z
    :cond_e
    const/4 v7, 0x0

    .restart local v7    # "z2":Z
    goto :goto_6
.end method

.method lambda$showOptions$485([ZLandroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "zArr"    # [Z
    .param p2, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1168
    const/4 v0, 0x0

    aget-boolean v0, p1, v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->friendsOnly:Z

    .line 1169
    aget-boolean v0, p1, v2

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToTwitter:Z

    .line 1170
    aget-boolean v0, p1, v3

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToFacebook:Z

    .line 1171
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "export_twitter"

    aget-boolean v2, p1, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "export_facebook"

    aget-boolean v2, p1, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateExportIcons()V

    .line 1173
    return-void
.end method

.method lambda$showOptions$486(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    .line 1177
    return-void
.end method

.method lambda$showOptions$487([Z[ZLandroid/content/DialogInterface;IZ)V
    .locals 6
    .param p1, "zArr"    # [Z
    .param p2, "zArr2"    # [Z
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I
    .param p5, "isChecked"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1180
    const/4 v0, 0x1

    .line 1181
    .local v0, "z":Z
    if-nez p4, :cond_0

    .line 1182
    aput-boolean p5, p1, v5

    .line 1183
    aput-boolean p5, p1, v2

    move-object v1, p3

    .line 1184
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1185
    if-nez p5, :cond_0

    .line 1186
    aput-boolean v3, p2, v2

    move-object v1, p3

    .line 1187
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1188
    check-cast p3, Landroid/app/AlertDialog;

    .end local p3    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1189
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    .line 1190
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateTimer()V

    .line 1193
    :cond_0
    if-ne p4, v5, :cond_3

    .line 1194
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showTimerDlg()V

    .line 1195
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v4, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, p4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1196
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 1197
    const/4 v0, 0x0

    .line 1199
    :cond_1
    aput-boolean v0, p2, p4

    .line 1203
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 1195
    goto :goto_0

    .line 1202
    :cond_3
    aput-boolean p5, p2, p4

    goto :goto_1
.end method

.method lambda$showOptions$488([ZLandroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "zArr"    # [Z
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, "i":I
    const/4 v2, 0x0

    aget-boolean v2, p1, v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    .line 1208
    const/4 v2, 0x1

    aget-boolean v2, p1, v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->signedFromGroup:Z

    .line 1209
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateExportIcons()V

    .line 1210
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v2, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    .line 1211
    .local v1, "textView":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->signedFromGroup:Z

    if-nez v2, :cond_0

    .line 1212
    const/16 v0, 0x8

    .line 1214
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1215
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateFieldSize()V

    .line 1216
    return-void
.end method

.method lambda$showOptions$490(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    .line 1222
    return-void
.end method

.method lambda$showTimerDlg$481(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 896
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iput-object p1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    .line 897
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateTimer()V

    .line 898
    return-void
.end method

.method lambda$startLocationChooser$483(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 973
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->startActivity(Landroid/content/Intent;)V

    .line 974
    return-void
.end method

.method lambda$startVideoSelector$482(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 927
    packed-switch p2, :pswitch_data_0

    .line 943
    :goto_0
    return-void

    .line 929
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.sizeLimit"

    const-wide v2, 0x80000000L

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 931
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 934
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 935
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "media_type"

    const/16 v2, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    const-string v1, "single_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 937
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 940
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->chooseVideo()V

    goto :goto_0

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 633
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->changed:Z

    .line 635
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 636
    const-string v0, "point"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->attachLocation(Lcom/vkcoffee/android/attachments/GeoAttachment;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {p0, p1, p3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;ILandroid/content/Intent;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onAllUploadsDone()V
    .locals 0

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateSendButton()V

    .line 336
    return-void
.end method

.method public onAttachmentRemoved(Lcom/vkcoffee/android/attachments/Attachment;)V
    .locals 1
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateSendButton()V

    .line 328
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 331
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->changed:Z

    .line 332
    return-void
.end method

.method onBackPressed()Z
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->changed:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-nez v0, :cond_2

    .line 759
    :cond_1
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0

    .line 761
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v0, :cond_3

    const v0, 0x7f0800f8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v0, :cond_4

    const v0, 0x7f080427

    :goto_2
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 762
    const/4 v0, 0x1

    goto :goto_0

    .line 761
    :cond_3
    const v0, 0x7f0800f7

    goto :goto_1

    :cond_4
    const v0, 0x7f080119

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-nez v0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startLocationChooser()V

    goto :goto_0

    .line 385
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080395

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v4, 0x7f08013d

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v4, 0x7f080119

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 388
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startMentionChooser()V

    goto :goto_0

    .line 391
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->checkAttachLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startPhotoChooser()V

    goto :goto_0

    .line 397
    :pswitch_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showExtendedAttachMenu()V

    goto :goto_0

    .line 400
    :pswitch_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showOptions()V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x7f1003e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v7, 0x1

    .line 342
    if-le p4, v7, :cond_1

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, "hasLinkAttachment":Z
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 345
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 350
    if-nez v2, :cond_1

    .line 351
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v6}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 352
    .local v1, "data":Landroid/content/ClipData;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 353
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 354
    .local v4, "item":Landroid/content/ClipData$Item;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 355
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "clipLink":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 357
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/LinkParser;->tryExtractLink(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "link":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 359
    const-string v6, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LINK "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    new-instance v8, Lcom/vkcoffee/android/attachments/LinkAttachment;

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v8, v5, v9, v10}, Lcom/vkcoffee/android/attachments/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 361
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 370
    .end local v0    # "clipLink":Ljava/lang/String;
    .end local v1    # "data":Landroid/content/ClipData;
    .end local v2    # "hasLinkAttachment":Z
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "item":Landroid/content/ClipData$Item;
    .end local v5    # "link":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateSendButton()V

    .line 371
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 372
    iput-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->changed:Z

    .line 373
    :cond_2
    return-void

    .line 346
    .restart local v2    # "hasLinkAttachment":Z
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v6, v6, Lcom/vkcoffee/android/attachments/LinkAttachment;

    if-eqz v6, :cond_0

    .line 347
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 371
    .end local v2    # "hasLinkAttachment":Z
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onUploadFailed()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateSendButton()V

    .line 324
    return-void
.end method

.method post()V
    .locals 13

    .prologue
    const/16 v10, 0x69

    const/4 v12, 0x1

    .line 1316
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1317
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 1318
    .local v0, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v3, 0x0

    .line 1319
    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_8

    .line 1326
    const/4 v2, 0x0

    .line 1327
    .local v2, "exportParam":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToFacebook:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToTwitter:Z

    if-eqz v7, :cond_9

    .line 1328
    const-string v2, "twitter,facebook"

    .line 1334
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1337
    .local v4, "ptext":Ljava/lang/String;
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Platform"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "Platform"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_d

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-nez v7, :cond_d

    .line 1338
    invoke-static {}, Lcom/vkcoffee/android/Platform;->START_USE_CUSTOM()V

    .line 1339
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isSuggest:Z

    if-eqz v7, :cond_b

    :cond_1
    const-string v7, "ZrEayToZpALdOTKdgX/Dtw=="

    invoke-static {v7}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1345
    .local v6, "str":Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v5, "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    const-string v7, "owner_id"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v8, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1348
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v7, :cond_11

    .line 1349
    const-string v7, "publish_date"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1361
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    .line 1362
    .local v1, "edit":Lcom/vkcoffee/android/NewsEntry;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v7, :cond_3

    .line 1363
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-eqz v7, :cond_13

    const-string v7, "comment_id"

    :goto_4
    iget v8, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1364
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-eqz v7, :cond_3

    .line 1365
    const-string v7, "method"

    const-string v8, "execute.editComment"

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1366
    const-string v7, "type"

    iget-object v8, v1, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1367
    const-string v7, "parent_object_id"

    iget v8, v1, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1370
    :cond_3
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v7, :cond_4

    .line 1371
    const-string v7, "from_group"

    invoke-virtual {v5, v7, v12}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1373
    :cond_4
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->signedFromGroup:Z

    if-eqz v7, :cond_14

    .line 1374
    const-string v7, "signed"

    invoke-virtual {v5, v7, v12}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1378
    :cond_5
    :goto_5
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v7, :cond_6

    .line 1379
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget v7, v7, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    if-gtz v7, :cond_15

    .line 1380
    const-string v7, "lat"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v10, v9, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    const-string v8, "long"

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v10, v10, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v10, v10, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1385
    :cond_6
    :goto_6
    invoke-static {v0}, Lcom/vkcoffee/android/attachments/Attachment;->sort(Ljava/util/List;)V

    .line 1386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 1387
    const-string v7, "attachments"

    const-string v8, ","

    invoke-static {v8, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1391
    :goto_7
    const-string v7, "message"

    invoke-virtual {v5, v7, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1392
    const-string v8, "friends_only"

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->friendsOnly:Z

    if-eqz v7, :cond_17

    const-string v7, "1"

    :goto_8
    invoke-virtual {v5, v8, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1393
    const-string v7, "services"

    invoke-virtual {v5, v7, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    new-instance v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;

    invoke-direct {v8, p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/NewsEntry;)V

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    .line 1516
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1518
    .end local v0    # "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v1    # "edit":Lcom/vkcoffee/android/NewsEntry;
    .end local v2    # "exportParam":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "ptext":Ljava/lang/String;
    .end local v5    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    .end local v6    # "str":Ljava/lang/String;
    :cond_7
    return-void

    .line 1320
    .restart local v0    # "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .restart local v3    # "i":I
    :cond_8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v7, v7, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-nez v7, :cond_7

    .line 1321
    add-int/lit8 v3, v3, 0x1

    .line 1322
    goto/16 :goto_0

    .line 1329
    .restart local v2    # "exportParam":Ljava/lang/String;
    :cond_9
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToTwitter:Z

    if-eqz v7, :cond_a

    .line 1330
    const-string v2, "twitter"

    .line 1331
    goto/16 :goto_1

    :cond_a
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToFacebook:Z

    if-eqz v7, :cond_0

    .line 1332
    const-string v2, "facebook"

    goto/16 :goto_1

    .line 1339
    .restart local v4    # "ptext":Ljava/lang/String;
    :cond_b
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-eqz v7, :cond_c

    const-string v6, ""

    goto/16 :goto_2

    :cond_c
    const-string v7, "9rUomStTs9Zs1CDUEjqNXQ=="

    invoke-static {v7}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1341
    :cond_d
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isSuggest:Z

    if-eqz v7, :cond_f

    :cond_e
    const-string v6, "execute.wallPost"

    .restart local v6    # "str":Ljava/lang/String;
    :goto_9
    goto/16 :goto_2

    .end local v6    # "str":Ljava/lang/String;
    :cond_f
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-eqz v7, :cond_10

    const-string v6, ""

    goto :goto_9

    :cond_10
    const-string v6, "execute.wallEdit"

    goto :goto_9

    .line 1350
    .restart local v5    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    .restart local v6    # "str":Ljava/lang/String;
    :cond_11
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "HxiNzNPWACQbim4qrpzGgA=="

    invoke-static {v8}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v7, v8, :cond_2

    .line 1351
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v7, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->trying:I

    if-le v7, v12, :cond_12

    .line 1352
    const-string v7, "7hvqaQiTzI5GsSVGyLqddQ=="

    invoke-static {v7}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v8, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_3

    .line 1354
    :cond_12
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v8

    iput v8, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    .line 1355
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v8, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    rem-int/lit16 v9, v9, 0x12c

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    .line 1356
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v8, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    add-int/lit16 v8, v8, 0x12c

    iput v8, v7, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    .line 1357
    const-string v7, "7hvqaQiTzI5GsSVGyLqddQ=="

    invoke-static {v7}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v8, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_3

    .line 1363
    .restart local v1    # "edit":Lcom/vkcoffee/android/NewsEntry;
    :cond_13
    const-string v7, "post_id"

    goto/16 :goto_4

    .line 1375
    :cond_14
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v7, :cond_5

    .line 1376
    const-string v7, "signed"

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_5

    .line 1382
    :cond_15
    const-string v7, "place_id"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget v8, v8, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_6

    .line 1389
    :cond_16
    const-string v7, "attachments"

    const-string v8, " "

    invoke-virtual {v5, v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_7

    .line 1392
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_8
.end method

.method removeLocation()V
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    .line 1233
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mLocation:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V

    .line 1235
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateSendButton()V

    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->changed:Z

    .line 1237
    return-void
.end method

.method saveComment(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/16 v6, 0x11

    .line 1261
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1263
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 1264
    .local v0, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v2, 0x0

    .line 1265
    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 1272
    if-ne p1, v6, :cond_2

    .line 1273
    new-instance v3, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string v4, "market.editComment"

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v3, "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    :goto_1
    invoke-static {v0}, Lcom/vkcoffee/android/attachments/Attachment;->sort(Ljava/util/List;)V

    .line 1278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1279
    const-string v4, "attachments"

    const-string v5, ","

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1283
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-class v5, Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1284
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v5, "comment"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/board/BoardComment;

    .line 1285
    .local v1, "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    iget-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1286
    iget-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1287
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    .line 1288
    if-ne p1, v6, :cond_4

    .line 1289
    const-string v4, "message"

    iget-object v5, v1, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1290
    const-string v4, "comment_id"

    iget v5, v1, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1291
    const-string v4, "owner_id"

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    iget-object v5, v5, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v6, "group_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1298
    :goto_3
    new-instance v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$2;

    invoke-direct {v4, p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$2;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/api/board/BoardComment;)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 1311
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1313
    .end local v0    # "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v1    # "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    .end local v2    # "i":I
    .end local v3    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    :cond_0
    return-void

    .line 1266
    .restart local v0    # "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .restart local v2    # "i":I
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v4, v4, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-nez v4, :cond_0

    .line 1267
    add-int/lit8 v2, v2, 0x1

    .line 1268
    goto/16 :goto_0

    .line 1275
    :cond_2
    new-instance v3, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string v4, "board.editComment"

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .restart local v3    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    goto/16 :goto_1

    .line 1281
    :cond_3
    const-string v4, "attachments"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_2

    .line 1293
    .restart local v1    # "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    :cond_4
    const-string v4, "text"

    iget-object v5, v1, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1294
    const-string v4, "comment_id"

    iget v5, v1, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1295
    const-string v4, "topic_id"

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    iget-object v5, v5, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v6, "topic_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1296
    const-string v4, "group_id"

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    iget-object v5, v5, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v6, "group_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_3
.end method

.method send()V
    .locals 2

    .prologue
    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->publishing:Z

    .line 422
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->post()V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->saveComment(I)V

    goto :goto_0
.end method

.method sendEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendEnabled:Z

    if-eq p1, v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iput-boolean p1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendEnabled:Z

    .line 432
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->invalidateOptionsMenu()V

    .line 433
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 440
    :cond_1
    return-void

    .line 437
    :cond_2
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method sendText(I)V
    .locals 2
    .param p1, "text"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 443
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iput p1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendText:I

    .line 444
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->invalidateOptionsMenu()V

    .line 445
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendText:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 448
    :cond_0
    return-void
.end method

.method setupInitialData()V
    .locals 26

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSendAction:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 467
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 468
    .local v17, "txt":Ljava/lang/String;
    const/4 v12, 0x0

    .line 469
    .local v12, "link":Ljava/lang/String;
    if-eqz v17, :cond_17

    .line 470
    sget-object v20, Lcom/vkcoffee/android/LinkParser;->URL_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 471
    .local v13, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 472
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 473
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 478
    .end local v13    # "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "LINK "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mAttachments:[Landroid/os/Parcelable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mAttachments:[Landroid/os/Parcelable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_18

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mAttachments:[Landroid/os/Parcelable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_1

    .line 484
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 487
    :cond_1
    const/4 v9, 0x0

    .line 488
    .local v9, "hasLinkAttachment":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 489
    .local v11, "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_19

    .line 494
    if-nez v9, :cond_3

    if-eqz v12, :cond_3

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/attachments/LinkAttachment;

    const-string v22, ""

    const-string v23, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v12, v1, v2}, Lcom/vkcoffee/android/attachments/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 496
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 498
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setSelection(I)V

    .line 500
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sendEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v9    # "hasLinkAttachment":Z
    .end local v11    # "it":Ljava/util/Iterator;
    .end local v12    # "link":Ljava/lang/String;
    .end local v17    # "txt":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->photoURI:Landroid/net/Uri;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->photoURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 507
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sendEnabled(Z)V

    .line 508
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 510
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPhotos:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 511
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPhotos:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v10, v0, :cond_1a

    .line 514
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sendEnabled(Z)V

    .line 515
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 517
    .end local v10    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 518
    .local v14, "pres":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    move/from16 v20, v0

    sget v21, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    if-nez v20, :cond_1b

    .line 519
    const-string v20, "export_twitter_avail"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 520
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToTwitter:Z

    .line 522
    :cond_7
    const-string v20, "export_facebook_avail"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 523
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToFacebook:Z

    .line 525
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateExportIcons()V

    .line 531
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPublic:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 532
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    .line 534
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "<a href=\'vkontakte://profile/([0-9]+)\'>([^<]+)</a>"

    const-string v22, "*id$1 ($2)"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "<a href=\'vkontakte://profile/-([0-9]+)\'>([^<]+)</a>"

    const-string v22, "*club$1 ($2)"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "<a href=\'vklink://view/[^\']+\'>([^<]+)</a>"

    const-string v22, "$1"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "<a href=\'vkontakte://search/[^\']+\'>([^<]+)</a>"

    const-string v22, "$1"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 537
    .local v16, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setSelection(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    .line 540
    const/4 v15, 0x0

    .line 541
    .local v15, "showAttachView":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 542
    .restart local v11    # "it":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1c

    .line 553
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 554
    .local v7, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v10, v0, :cond_1d

    .line 563
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move/from16 v20, v0

    if-gez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    move/from16 v20, v0

    sget v21, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 565
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    .line 567
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSettings:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mLocation:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    const v21, 0x7f08013d

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->access$0(Lcom/vkcoffee/android/fragments/news/NewPostFragment;I)V

    .line 571
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    .line 573
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    const/16 v21, 0x1000

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v20

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1f

    const/16 v19, 0x1

    .line 574
    .local v19, "z":Z
    :goto_8
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isSuggest:Z

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    const/16 v21, 0x800

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateTimer()V

    .line 579
    const v20, 0x7f080542

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sendText(I)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    const/16 v21, 0x200

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->friendsOnly:Z

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    const/16 v21, 0x2000

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToTwitter:Z

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    const/16 v21, 0x4000

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToFacebook:Z

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateExportIcons()V

    .line 585
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isSuggest:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->signedFromGroup:Z

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateFieldSize()V

    .line 591
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->createdBy:I

    move/from16 v20, v0

    if-lez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sigAttach:Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "..."

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v18, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->createdBy:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 598
    .end local v7    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v10    # "i":I
    .end local v11    # "it":Ljava/util/Iterator;
    .end local v15    # "showAttachView":Z
    .end local v16    # "text":Ljava/lang/String;
    .end local v18    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "z":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    move/from16 v20, v0

    if-gez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isSuggest:Z

    move/from16 v20, v0

    if-nez v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    const/16 v21, 0x800

    invoke-virtual/range {v20 .. v21}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v20

    if-eqz v20, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    move/from16 v20, v0

    if-lez v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    move/from16 v20, v0

    sget v21, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSettings:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_13

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSettings:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setEnabled(Z)V

    .line 600
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const v20, 0x3ecccccd    # 0.4f

    const v21, 0x3ecccccd    # 0.4f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 601
    .local v4, "aa":Landroid/view/animation/AlphaAnimation;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSettings:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 604
    .end local v4    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateSendButton()V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v20

    if-nez v20, :cond_14

    .line 606
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->showAttachView(Z)V

    .line 608
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Ljava/lang/Runnable;

    move-result-object v21

    const-wide/16 v22, 0x64

    invoke-virtual/range {v20 .. v23}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isSuggest:Z

    move/from16 v20, v0

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sigAttach:Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v20, v0

    if-nez v20, :cond_15

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "username"

    const-string v22, "DELETED"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mCamera:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->startCamera()V

    .line 615
    :cond_16
    return-void

    .line 476
    .end local v14    # "pres":Landroid/content/SharedPreferences;
    .restart local v12    # "link":Ljava/lang/String;
    .restart local v17    # "txt":Ljava/lang/String;
    :cond_17
    :try_start_1
    const-string v17, ""

    goto/16 :goto_0

    .line 480
    :cond_18
    aget-object v5, v21, v20

    .line 481
    .local v5, "att":Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v23, v0

    check-cast v5, Lcom/vkcoffee/android/attachments/Attachment;

    .end local v5    # "att":Landroid/os/Parcelable;
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 480
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 490
    .restart local v9    # "hasLinkAttachment":Z
    .restart local v11    # "it":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/LinkAttachment;

    move/from16 v20, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v20, :cond_2

    .line 491
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 501
    .end local v9    # "hasLinkAttachment":Z
    .end local v11    # "it":Ljava/util/Iterator;
    .end local v12    # "link":Ljava/lang/String;
    .end local v17    # "txt":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 502
    .local v8, "e":Ljava/lang/Exception;
    const-string v20, "vk"

    const-string v21, "WTF you just did?!"

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 512
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPhotos:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 511
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 527
    .end local v10    # "i":I
    .restart local v14    # "pres":Landroid/content/SharedPreferences;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mFbIcon:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mTwitterIcon:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mFriendsOnlyIcon:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 543
    .restart local v11    # "it":Ljava/util/Iterator;
    .restart local v15    # "showAttachView":Z
    .restart local v16    # "text":Ljava/lang/String;
    :cond_1c
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    .line 544
    .local v6, "att2":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/SignatureLinkAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 545
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->signedFromGroup:Z

    .line 546
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sigAttach:Lcom/vkcoffee/android/attachments/Attachment;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sigAttach:Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v20, v0

    check-cast v20, Lcom/vkcoffee/android/attachments/LinkAttachment;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/LinkAttachment;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSignatureText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 555
    .end local v6    # "att2":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v7    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .restart local v10    # "i":I
    :cond_1d
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    .line 556
    .restart local v6    # "att2":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/GeoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    .line 557
    check-cast v6, Lcom/vkcoffee/android/attachments/GeoAttachment;

    .end local v6    # "att2":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->attachLocation(Lcom/vkcoffee/android/attachments/GeoAttachment;)V

    .line 554
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    .line 559
    .restart local v6    # "att2":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 560
    const/4 v15, 0x1

    goto :goto_9

    .line 573
    .end local v6    # "att2":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method showAttachView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 770
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->setVisibility(I)V

    .line 771
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->updateFieldSize()V

    .line 772
    return-void

    .line 770
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method showExtendedAttachMenu()V
    .locals 6

    .prologue
    .line 833
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v2, "opts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v4, 0x7f080583

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v4, 0x7f08012e

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    if-gez v3, :cond_2

    .line 838
    :cond_0
    const/4 v0, 0x0

    .line 839
    .local v0, "hasPoll":Z
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 840
    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 846
    :goto_0
    if-nez v0, :cond_2

    .line 847
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v4, 0x7f08007f

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    .end local v0    # "hasPoll":Z
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08007a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 851
    return-void

    .line 841
    .restart local v0    # "hasPoll":Z
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/Attachment;

    instance-of v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v3, :cond_1

    .line 842
    const/4 v0, 0x1

    .line 843
    goto :goto_0
.end method

.method showOptions()V
    .locals 12

    .prologue
    .line 984
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 987
    .local v6, "prefs":Landroid/content/SharedPreferences;
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    if-lez v9, :cond_9

    .line 988
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x4

    new-array v5, v9, [Z

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->friendsOnly:Z

    aput-boolean v10, v5, v9

    .line 991
    .local v5, "opts":[Z
    const/4 v9, 0x4

    new-array v2, v9, [Z

    fill-array-data v2, :array_0

    .line 992
    .local v2, "enabled":[Z
    const/4 v4, 0x1

    .line 993
    .local v4, "o":I
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0802cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    const-string v9, "friendsonly"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    const-string v9, "export_twitter_avail"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 996
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0802ce

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    const-string v9, "twitter"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToTwitter:Z

    aput-boolean v10, v5, v9

    .line 999
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->friendsOnly:Z

    if-eqz v9, :cond_0

    .line 1000
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v2, v9

    .line 1002
    :cond_0
    const/4 v4, 0x2

    .line 1004
    :cond_1
    const-string v9, "export_facebook_avail"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1005
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0802cd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    const-string v9, "fb"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToFacebook:Z

    aput-boolean v9, v5, v4

    .line 1008
    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->friendsOnly:Z

    if-eqz v9, :cond_2

    .line 1009
    const/4 v9, 0x0

    aput-boolean v9, v2, v4

    .line 1011
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1013
    :cond_3
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    const/16 v10, 0x800

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_4
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    sget v10, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    if-gez v9, :cond_6

    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v9, :cond_6

    .line 1014
    :cond_5
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v10, 0x7f080540

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    const-string v9, "timer"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_0
    aput-boolean v9, v5, v4

    .line 1017
    add-int/lit8 v4, v4, 0x1

    .line 1019
    :cond_6
    new-instance v10, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-static {p0, v0, v2, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$10;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Ljava/util/ArrayList;[Z[Z)Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-result-object v11

    invoke-virtual {v10, v9, v5, v11}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f08031e

    invoke-static {p0, v5, v6}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$11;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[ZLandroid/content/SharedPreferences;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0803ab

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1020
    .local v1, "dlg":Landroid/app/AlertDialog;
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iput-object v10, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    .line 1021
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v9, v5}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 1022
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$12;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1058
    .end local v4    # "o":I
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$15;->lambdaFactory$(Landroid/app/AlertDialog;[Z)Landroid/view/View$OnTouchListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1059
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iput-object v10, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    .line 1060
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v9, v5}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 1061
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$16;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1062
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/ArrayAdapter;

    .line 1063
    .local v7, "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    new-instance v10, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$1;

    invoke-direct {v10, p0, v7, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$1;-><init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Landroid/widget/ArrayAdapter;[Z)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1086
    .end local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    .end local v2    # "enabled":[Z
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "opts":[Z
    .end local v7    # "wrapped":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_7
    return-void

    .line 1016
    .restart local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "enabled":[Z
    .restart local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "o":I
    .restart local v5    # "opts":[Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1023
    .end local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "enabled":[Z
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "o":I
    .end local v5    # "opts":[Z
    :cond_9
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    neg-int v9, v9

    invoke-static {v9}, Lcom/vkcoffee/android/data/Groups;->isGroupAdmin(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1025
    const/4 v9, 0x3

    new-array v5, v9, [Z

    .line 1026
    .restart local v5    # "opts":[Z
    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    aput-boolean v10, v5, v9

    .line 1027
    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->signedFromGroup:Z

    aput-boolean v10, v5, v9

    .line 1028
    const/4 v10, 0x2

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    :goto_2
    aput-boolean v9, v5, v10

    .line 1029
    const/4 v9, 0x3

    new-array v2, v9, [Z

    .line 1030
    .restart local v2    # "enabled":[Z
    const/4 v10, 0x0

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-boolean v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPublic:Z

    if-eqz v9, :cond_10

    const/4 v9, 0x0

    :goto_3
    aput-boolean v9, v2, v10

    .line 1031
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-boolean v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPublic:Z

    if-nez v9, :cond_a

    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v9, :cond_11

    .line 1032
    :cond_a
    const/4 v8, 0x1

    .line 1036
    .local v8, "z":Z
    :goto_4
    const/4 v9, 0x1

    aput-boolean v8, v2, v9

    .line 1037
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-boolean v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mPublic:Z

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v9, :cond_12

    .line 1038
    :cond_b
    const/4 v8, 0x1

    .line 1042
    :goto_5
    const/4 v9, 0x2

    aput-boolean v8, v2, v9

    .line 1043
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .restart local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    .restart local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v10, 0x7f0803a8

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v10, 0x7f0803a9

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    const-string v9, "from_group"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    const-string v9, "signed"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    const/16 v10, 0x800

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v9

    if-nez v9, :cond_c

    iget-boolean v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isSuggest:Z

    if-eqz v9, :cond_e

    :cond_c
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    sget v10, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v9, v10, :cond_d

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    if-gtz v9, :cond_e

    .line 1050
    :cond_d
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const v10, 0x7f080540

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    const-string v9, "timer"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    const/4 v10, 0x2

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    :goto_6
    aput-boolean v9, v5, v10

    .line 1054
    :cond_e
    new-instance v10, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-static {p0, v2, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$13;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[Z[Z)Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-result-object v11

    invoke-virtual {v10, v9, v5, v11}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f08031e

    invoke-static {p0, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$14;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;[Z)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0803ab

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1055
    .restart local v1    # "dlg":Landroid/app/AlertDialog;
    goto/16 :goto_1

    .line 1028
    .end local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    .end local v2    # "enabled":[Z
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "z":Z
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1030
    .restart local v2    # "enabled":[Z
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1034
    :cond_11
    const/4 v8, 0x0

    .restart local v8    # "z":Z
    goto/16 :goto_4

    .line 1040
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1052
    .restart local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    const/4 v9, 0x0

    goto :goto_6

    .line 991
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method showTimerDlg()V
    .locals 6

    .prologue
    .line 885
    new-instance v1, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;-><init>()V

    .line 886
    .local v1, "p":Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 887
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 888
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "date"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 889
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 891
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->setOnSelectedListener(Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment$OnSelectedListener;)V

    .line 892
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "picker"

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/fragments/DateTimePickerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method startAudioSelector()V
    .locals 4

    .prologue
    .line 916
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 917
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 918
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 919
    return-void
.end method

.method startCamera()V
    .locals 3

    .prologue
    .line 457
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 460
    return-void
.end method

.method startDocumentSelector()V
    .locals 3

    .prologue
    .line 954
    new-instance v1, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;-><init>(Z)V

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->setLimit(I)Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->forResult(Landroid/app/Fragment;I)V

    .line 955
    return-void

    .line 954
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method startLocationChooser()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 962
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "locationProviders":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 964
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080295

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080294

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08032a

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 970
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_2

    .line 966
    invoke-static {}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->start()Lcom/vkcoffee/android/navigation/Navigator;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 968
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;-><init>()V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method startMentionChooser()V
    .locals 3

    .prologue
    .line 977
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->setSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 978
    return-void
.end method

.method startPhotoChooser()V
    .locals 4

    .prologue
    .line 451
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "limit"

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 454
    return-void

    .line 452
    :cond_0
    const/16 v1, 0xa

    goto :goto_0
.end method

.method startPollSelector()V
    .locals 3

    .prologue
    .line 958
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget v0, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->create(I)Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 959
    return-void
.end method

.method startVideoSelector()V
    .locals 5

    .prologue
    .line 922
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$NewPostFragment$Presenter$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080583

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 923
    return-void
.end method

.method updateExportIcons()V
    .locals 5

    .prologue
    .line 810
    const/4 v1, 0x0

    .line 811
    .local v1, "i2":I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v2, v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mFbIcon:Landroid/view/View;

    .line 812
    .local v2, "view":Landroid/view/View;
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToFacebook:Z

    if-eqz v4, :cond_1

    .line 813
    const/4 v0, 0x0

    .line 817
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 818
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v2, v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mTwitterIcon:Landroid/view/View;

    .line 819
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->exportToTwitter:Z

    if-eqz v4, :cond_2

    .line 820
    const/4 v0, 0x0

    .line 824
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v4, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mFriendsOnlyIcon:Landroid/view/View;

    .line 826
    .local v3, "view2":Landroid/view/View;
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->friendsOnly:Z

    if-nez v4, :cond_0

    .line 827
    const/16 v1, 0x8

    .line 829
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 830
    return-void

    .line 815
    .end local v0    # "i":I
    .end local v3    # "view2":Landroid/view/View;
    :cond_1
    const/16 v0, 0x8

    .restart local v0    # "i":I
    goto :goto_0

    .line 822
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method updateFieldSize()V
    .locals 4

    .prologue
    .line 776
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v0, v2, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    .line 777
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->signedFromGroup:Z

    if-eqz v2, :cond_1

    .line 778
    :cond_0
    const/4 v1, -0x2

    .line 782
    .local v1, "i":I
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    return-void

    .line 780
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "i":I
    goto :goto_0
.end method

.method updateSendButton()V
    .locals 2

    .prologue
    .line 1256
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mStatusEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->geoAttach:Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1257
    .local v0, "enable":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sendEnabled(Z)V

    .line 1258
    return-void

    .line 1256
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateTimer()V
    .locals 6

    .prologue
    .line 901
    const/4 v2, 0x1

    .line 902
    .local v2, "z":Z
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 903
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v4, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 904
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 905
    .local v1, "opts":[Z
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->optionsAlertView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 906
    .local v0, "count":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-nez v3, :cond_0

    .line 907
    const/4 v2, 0x0

    .line 909
    :cond_0
    aput-boolean v2, v1, v0

    .line 911
    .end local v0    # "count":I
    .end local v1    # "opts":[Z
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-nez v3, :cond_3

    const v3, 0x7f08046c

    :goto_1
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->sendText(I)V

    .line 912
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->this$0:Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment;)V

    .line 913
    return-void

    .line 903
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 911
    :cond_3
    const v3, 0x7f080542

    goto :goto_1
.end method
