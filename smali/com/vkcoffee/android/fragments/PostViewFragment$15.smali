.class Lcom/vkcoffee/android/fragments/PostViewFragment$15;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->loadComments(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/wall/WallGetComments$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$clear:Z

.field private final synthetic val$saveScroll:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/app/Fragment;ZZ)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->val$clear:Z

    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->val$saveScroll:Z

    .line 1595
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 1695
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$33(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V

    .line 1696
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1697
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$41(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/ErrorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$41(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/ErrorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$35(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1701
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 1705
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$32(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 1706
    return-void

    .line 1703
    :cond_1
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_0
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallGetComments$Result;)V
    .locals 22
    .param p1, "r"    # Lcom/vkcoffee/android/api/wall/WallGetComments$Result;

    .prologue
    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$32(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$33(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V

    .line 1602
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->canComment:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v17

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1607
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 1608
    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->totalLikes:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->val$clear:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$12(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$12(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->likes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$12(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "userphoto"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->totalLikes:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$34(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$6(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    .line 1616
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$26(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int v17, v17, v18

    add-int/lit8 v10, v17, 0x1

    .line 1618
    .local v10, "itemIndex":I
    const/4 v11, -0x1

    .line 1619
    .local v11, "itemOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v17

    move/from16 v0, v17

    if-lt v10, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v10, v0, :cond_2

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v17

    sub-int v17, v10, v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v11

    .line 1622
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$13(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getItemCount()I

    move-result v6

    .line 1623
    .local v6, "countBefore":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->val$clear:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 1624
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1625
    .local v12, "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsComment;>;"
    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_9

    .line 1636
    .end local v12    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsComment;>;"
    :cond_4
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 1637
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x42be0000    # 95.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x25c

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1638
    .local v16, "tSize":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1639
    .local v8, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_b

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$35(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$36(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setRefreshing(Z)V

    .line 1652
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->val$clear:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1655
    :cond_5
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_e

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$37(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/LoadMoreCommentsView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1662
    .local v13, "loadMoreIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$37(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/LoadMoreCommentsView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1663
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$37(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/LoadMoreCommentsView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$37(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/LoadMoreCommentsView;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$37(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/LoadMoreCommentsView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$38(Lcom/vkcoffee/android/fragments/PostViewFragment;)I

    move-result v17

    if-eqz v17, :cond_11

    .line 1670
    const/4 v15, -0x1

    .line 1671
    .local v15, "pos":I
    const/4 v7, 0x0

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1673
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_f

    .line 1680
    :goto_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int v17, v17, v18

    add-int v15, v15, v17

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/LinearLayoutManager;

    const/high16 v18, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$39(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V

    .line 1685
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$40(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V

    .line 1692
    .end local v6    # "countBefore":I
    .end local v7    # "i":I
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v10    # "itemIndex":I
    .end local v11    # "itemOffset":I
    .end local v13    # "loadMoreIndex":I
    .end local v14    # "metrics":Landroid/util/DisplayMetrics;
    .end local v15    # "pos":I
    .end local v16    # "tSize":I
    :cond_8
    :goto_5
    return-void

    .line 1626
    .restart local v6    # "countBefore":I
    .restart local v10    # "itemIndex":I
    .restart local v11    # "itemOffset":I
    .restart local v12    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsComment;>;"
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/NewsComment;

    .line 1627
    .local v5, "comment":Lcom/vkcoffee/android/NewsComment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1628
    .restart local v8    # "it":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1629
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/NewsComment;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/NewsComment;->cid:I

    move/from16 v17, v0

    iget v0, v5, Lcom/vkcoffee/android/NewsComment;->cid:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1630
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 1640
    .end local v5    # "comment":Lcom/vkcoffee/android/NewsComment;
    .end local v12    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsComment;>;"
    .restart local v14    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "tSize":I
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/NewsComment;

    .line 1641
    .local v3, "c":Lcom/vkcoffee/android/NewsComment;
    iget-object v0, v3, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1642
    .local v9, "it2":Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_d

    .line 1648
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f2a7efa    # 0.666f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget-object v0, v3, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/vkcoffee/android/ZhukovLayout;->processThumbs(IILjava/util/List;)V

    goto/16 :goto_1

    .line 1643
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1644
    .local v2, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v2, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 1645
    check-cast v2, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    .end local v2    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/vkcoffee/android/attachments/SnippetAttachment;->forceSmall:Z

    goto :goto_6

    .line 1656
    .end local v3    # "c":Lcom/vkcoffee/android/NewsComment;
    .end local v9    # "it2":Ljava/util/Iterator;
    .restart local v7    # "i":I
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/NewsComment;

    .line 1657
    .local v4, "comm":Lcom/vkcoffee/android/NewsComment;
    iget-object v0, v4, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;->comments:Lcom/vkcoffee/android/data/VKList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v4}, Lcom/vkcoffee/android/data/VKList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1655
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1674
    .end local v4    # "comm":Lcom/vkcoffee/android/NewsComment;
    .restart local v13    # "loadMoreIndex":I
    .restart local v15    # "pos":I
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/NewsComment;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/NewsComment;->cid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$38(Lcom/vkcoffee/android/fragments/PostViewFragment;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1675
    move v15, v7

    .line 1676
    goto/16 :goto_4

    .line 1678
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1686
    .end local v15    # "pos":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_12

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$13(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getItemCount()I

    move-result v18

    sub-int v18, v18, v6

    add-int v18, v18, v10

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_5

    .line 1688
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->val$saveScroll:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lme/grishka/appkit/views/UsableRecyclerView;->getCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_5
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallGetComments$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$15;->success(Lcom/vkcoffee/android/api/wall/WallGetComments$Result;)V

    return-void
.end method
