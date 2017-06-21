.class Lcom/vkcoffee/android/fragments/PostViewFragment$14;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$list:Ljava/util/List;

.field private final synthetic val$str:Ljava/lang/String;

.field private final synthetic val$z:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$z:Z

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$str:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$list:Ljava/util/List;

    .line 1473
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 18
    .param p1, "cid"    # Ljava/lang/Integer;

    .prologue
    .line 1475
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$z:Z

    if-eqz v1, :cond_0

    .line 1476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->clearAttachments()V

    .line 1479
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1480
    .local v15, "prefs":Landroid/content/SharedPreferences;
    new-instance v10, Lcom/vkcoffee/android/NewsComment;

    invoke-direct {v10}, Lcom/vkcoffee/android/NewsComment;-><init>()V

    .line 1481
    .local v10, "comment":Lcom/vkcoffee/android/NewsComment;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v10, Lcom/vkcoffee/android/NewsComment;->cid:I

    .line 1482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$str:Ljava/lang/String;

    const-string v2, "\\[(id|club)([\\d]+)\\|([^\\]]+)\\]"

    const-string v3, "$3"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vkcoffee/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$27(Lcom/vkcoffee/android/fragments/PostViewFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v1, v10, Lcom/vkcoffee/android/NewsComment;->uid:I

    .line 1485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v1, v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->getById(I)Lcom/vkcoffee/android/api/Group;

    move-result-object v11

    .line 1486
    .local v11, "g":Lcom/vkcoffee/android/api/Group;
    if-eqz v11, :cond_6

    .line 1487
    iget-object v1, v11, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    iput-object v1, v10, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    .line 1488
    iget-object v1, v11, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    iput-object v1, v10, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 1498
    .end local v11    # "g":Lcom/vkcoffee/android/api/Group;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 1499
    iget-object v1, v10, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$list:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-nez v1, :cond_2

    .line 1501
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/vkcoffee/android/NewsComment;->canEdit:Z

    .line 1503
    :cond_2
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 1504
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x42be0000    # 95.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x25c

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1505
    .local v16, "tSize":I
    iget-object v1, v10, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1506
    .local v13, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1512
    move/from16 v0, v16

    int-to-float v1, v0

    const v2, 0x3f2a7efa    # 0.666f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v10, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ZhukovLayout;->processThumbs(IILjava/util/List;)V

    .line 1513
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v1

    iput v1, v10, Lcom/vkcoffee/android/NewsComment;->time:I

    .line 1514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$28(Lcom/vkcoffee/android/fragments/PostViewFragment;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$28(Lcom/vkcoffee/android/fragments/PostViewFragment;)I

    move-result v1

    iput v1, v10, Lcom/vkcoffee/android/NewsComment;->replyToCommentID:I

    .line 1516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$29(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkcoffee/android/NewsComment;->respToName:Ljava/lang/String;

    .line 1518
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$13(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyItemInserted(I)V

    .line 1520
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->val$z:Z

    if-eqz v1, :cond_5

    .line 1521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$30(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$18(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V

    .line 1524
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v8

    .line 1526
    .local v8, "access$000":Lcom/vkcoffee/android/NewsEntry;
    iget v1, v8, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 1527
    new-instance v12, Landroid/content/Intent;

    const-string v1, "com.vkcoffee.android.POST_UPDATED"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    .local v12, "intent":Landroid/content/Intent;
    const-string v1, "post_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1529
    const-string v1, "owner_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1530
    const-string v1, "comments"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    const-string v1, "likes"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    const-string v1, "liked"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v12, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v7

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-static/range {v1 .. v7}, Lcom/vkcoffee/android/cache/NewsfeedCache;->update(IIIIIZZ)V

    .line 1535
    return-void

    .line 1490
    .end local v8    # "access$000":Lcom/vkcoffee/android/NewsEntry;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "it":Ljava/util/Iterator;
    .end local v14    # "metrics":Landroid/util/DisplayMetrics;
    .end local v16    # "tSize":I
    .restart local v11    # "g":Lcom/vkcoffee/android/api/Group;
    :cond_6
    const-string v1, "DELETED"

    iput-object v1, v10, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    .line 1491
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    goto/16 :goto_0

    .line 1494
    .end local v11    # "g":Lcom/vkcoffee/android/api/Group;
    :cond_7
    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    iput v1, v10, Lcom/vkcoffee/android/NewsComment;->uid:I

    .line 1495
    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    .line 1496
    const-string v1, "userphoto"

    const-string v2, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    goto/16 :goto_0

    .line 1507
    .restart local v13    # "it":Ljava/util/Iterator;
    .restart local v14    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "tSize":I
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1508
    .local v9, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v1, v9, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v1, :cond_3

    .line 1509
    check-cast v9, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    .end local v9    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/vkcoffee/android/attachments/SnippetAttachment;->forceSmall:Z

    goto/16 :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$14;->success(Ljava/lang/Integer;)V

    return-void
.end method
