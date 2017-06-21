.class Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;
.super Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;
.source "FilePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

.field viewType:I


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Landroid/content/Context;I)V
    .locals 2
    .param p1    # Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "viewType"    # I

    .prologue
    .line 322
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    .line 323
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;-><init>(Landroid/content/Context;)V

    .line 324
    iput p3, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->viewType:I

    packed-switch p3, :pswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RoundedImageView2;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 327
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RoundedImageView2;->setRoundDrawableEnable(Z)V

    goto :goto_0

    .line 330
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RoundedImageView2;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick()V
    .locals 18

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    check-cast v3, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    iget-object v12, v3, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->file:Ljava/io/File;

    .line 350
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    new-instance v13, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;-><init>(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$1;)V

    .line 352
    .local v13, "he":Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$500(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    iput v3, v13, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;->scrollItem:I

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$600(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v13, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;->scrollOffset:I

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$100(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v13, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;->dir:Ljava/io/File;

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$700(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Landroid/support/v7/widget/Toolbar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;->title:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v3, v12}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$300(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 385
    .end local v13    # "he":Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;
    :goto_0
    return-void

    .line 359
    .restart local v13    # "he":Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$800(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    check-cast v3, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->title:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$900(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Ljava/lang/CharSequence;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$500(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 363
    .end local v13    # "he":Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$HistoryEntry;
    :cond_1
    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_2

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    const v4, 0x7f080045

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$1000(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "size_limit"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "size_limit"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 369
    .local v14, "lim":J
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v3, v4, v14

    if-lez v3, :cond_3

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    const v4, 0x7f080182

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v14, v15, v7}, Lcom/vkcoffee/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->access$1000(Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    .end local v14    # "lim":J
    :cond_3
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "file"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 375
    .local v16, "path":Ljava/lang/String;
    const-string/jumbo v3, "\\."

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 376
    .local v11, "ext":[Ljava/lang/String;
    new-instance v2, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->lastDoc:Lcom/vkcoffee/android/api/BaseDocument;

    check-cast v6, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->thumb:Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object/from16 v6, v16

    :goto_1
    const/4 v7, 0x0

    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v8

    array-length v9, v11

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v11, v9

    invoke-direct/range {v2 .. v9}, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .line 378
    .local v2, "att":Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v10, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v17, "result":Landroid/content/Intent;
    const-string/jumbo v3, "files"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->this$0:Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 377
    .end local v2    # "att":Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;
    .end local v10    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v17    # "result":Landroid/content/Intent;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/api/BaseDocument;)V
    .locals 0

    .prologue
    .line 318
    check-cast p2, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;)V

    return-void
.end method

.method protected setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;)V
    .locals 2
    .param p1, "info"    # Landroid/widget/TextView;
    .param p2, "doc"    # Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->setInfo(Landroid/widget/TextView;Lcom/vkcoffee/android/api/BaseDocument;)V

    .line 338
    iget-object v0, p2, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->subtitle:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 340
    iget-object v0, p2, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->thumb:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p2, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->icon:I

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    iget v1, p2, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ListItem;->icon:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RoundedImageView2;->setImageResource(I)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/utils/FilePickerFragment$ViewHolder;->thumb:Lcom/vkcoffee/android/ui/RoundedImageView2;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->clearImage()V

    goto :goto_0
.end method
