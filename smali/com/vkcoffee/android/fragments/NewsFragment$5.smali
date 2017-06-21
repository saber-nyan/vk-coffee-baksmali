.class Lcom/vkcoffee/android/fragments/NewsFragment$5;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/NewsFragment;->preloadNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

.field final synthetic val$listId:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    iput p2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->val$listId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$success$500(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 836
    invoke-static {p0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->addToTop(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1202(Lcom/vkcoffee/android/fragments/NewsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 863
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;)V
    .locals 29
    .param p1, "rnews"    # Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    .prologue
    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1202(Lcom/vkcoffee/android/fragments/NewsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->from()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1302(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 672
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkcoffee/android/cache/NewsfeedCache;->setLists(Ljava/util/List;Z)V

    .line 673
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->val$listId:I

    if-nez v2, :cond_0

    .line 674
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->isSmartNews:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/vkcoffee/android/cache/NewsfeedCache;->setNewsfeedTop(Ljava/lang/Boolean;)V

    .line 676
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v28

    move/from16 v0, v28

    invoke-static {v2, v3, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1500(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/util/List;Z)V

    .line 679
    const/4 v15, 0x0

    .line 680
    .local v15, "hasNewNotifications":Z
    const/16 v27, 0x0

    .line 682
    .local v27, "userNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsEntry;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->val$listId:I

    if-nez v2, :cond_6

    .line 683
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v22, "lastNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v25, "newNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1600(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1700(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1800(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 690
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    if-nez v2, :cond_9

    .line 691
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 700
    :cond_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 701
    const/16 v16, 0x0

    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 702
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkcoffee/android/NewsEntry;

    .line 703
    .local v18, "last":Lcom/vkcoffee/android/NewsEntry;
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/vkcoffee/android/NewsEntry;

    .line 704
    .local v24, "newN":Lcom/vkcoffee/android/NewsEntry;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-eq v2, v3, :cond_b

    .line 705
    :cond_4
    const/4 v15, 0x1

    .line 713
    .end local v18    # "last":Lcom/vkcoffee/android/NewsEntry;
    .end local v24    # "newN":Lcom/vkcoffee/android/NewsEntry;
    :cond_5
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    if-eqz v2, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    move-object/from16 v27, v0

    .line 715
    .end local v16    # "i":I
    .end local v22    # "lastNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    .end local v25    # "newNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_6
    :goto_3
    if-nez v27, :cond_e

    const/4 v4, 0x0

    .line 717
    .local v4, "notificationCount":I
    :goto_4
    const/16 v26, 0x0

    .line 718
    .local v26, "numNew":I
    const/4 v13, 0x0

    .line 719
    .local v13, "found":Z
    if-nez v15, :cond_16

    .line 720
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->isSmartNews:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 722
    const/16 v19, 0x0

    .line 723
    .local v19, "lastFirstItem":Lcom/vkcoffee/android/NewsEntry;
    const/16 v20, -0x1

    .line 724
    .local v20, "lastFirstItemIndex":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1900(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2000(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_f

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2100(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v20, v16

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "lastFirstItem":Lcom/vkcoffee/android/NewsEntry;
    check-cast v19, Lcom/vkcoffee/android/NewsEntry;

    .line 730
    .restart local v19    # "lastFirstItem":Lcom/vkcoffee/android/NewsEntry;
    :cond_7
    const/16 v21, -0x1

    .line 731
    .local v21, "lastFirstItemIndexInNew":I
    const/16 v16, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_10

    .line 732
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/NewsEntry;

    .line 733
    .local v9, "e":Lcom/vkcoffee/android/NewsEntry;
    if-eqz v19, :cond_8

    iget v2, v9, Lcom/vkcoffee/android/NewsEntry;->type:I

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v3, :cond_8

    iget v2, v9, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v2, v3, :cond_8

    iget v2, v9, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v2, v3, :cond_8

    .line 735
    move/from16 v21, v16

    .line 731
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 693
    .end local v4    # "notificationCount":I
    .end local v9    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v13    # "found":Z
    .end local v19    # "lastFirstItem":Lcom/vkcoffee/android/NewsEntry;
    .end local v20    # "lastFirstItemIndex":I
    .end local v21    # "lastFirstItemIndexInNew":I
    .end local v26    # "numNew":I
    .restart local v22    # "lastNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    .restart local v25    # "newNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_9
    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 694
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_a

    .line 695
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 701
    .restart local v18    # "last":Lcom/vkcoffee/android/NewsEntry;
    .restart local v24    # "newN":Lcom/vkcoffee/android/NewsEntry;
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 710
    .end local v18    # "last":Lcom/vkcoffee/android/NewsEntry;
    .end local v24    # "newN":Lcom/vkcoffee/android/NewsEntry;
    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_d
    move-object/from16 v27, v22

    .line 713
    goto/16 :goto_3

    .line 715
    .end local v16    # "i":I
    .end local v22    # "lastNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    .end local v25    # "newNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_e
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    goto/16 :goto_4

    .line 724
    .restart local v4    # "notificationCount":I
    .restart local v13    # "found":Z
    .restart local v16    # "i":I
    .restart local v19    # "lastFirstItem":Lcom/vkcoffee/android/NewsEntry;
    .restart local v20    # "lastFirstItemIndex":I
    .restart local v26    # "numNew":I
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 738
    .restart local v21    # "lastFirstItemIndexInNew":I
    :cond_10
    if-ltz v20, :cond_14

    if-ltz v21, :cond_14

    .line 739
    const/4 v13, 0x1

    .line 740
    :cond_11
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2200(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_14

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_14

    .line 741
    const/4 v10, 0x0

    .line 742
    .local v10, "entryInLast":Lcom/vkcoffee/android/NewsEntry;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2300(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    .line 743
    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "entryInLast":Lcom/vkcoffee/android/NewsEntry;
    check-cast v10, Lcom/vkcoffee/android/NewsEntry;

    .restart local v10    # "entryInLast":Lcom/vkcoffee/android/NewsEntry;
    if-eqz v10, :cond_12

    iget v2, v10, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 744
    invoke-static {v2}, Lcom/vkcoffee/android/NewsEntry;->isTypeAd(I)Z

    move-result v2

    if-nez v2, :cond_12

    iget v2, v10, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_13

    .line 745
    :cond_12
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 747
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2500(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_18

    .line 776
    .end local v10    # "entryInLast":Lcom/vkcoffee/android/NewsEntry;
    .end local v16    # "i":I
    .end local v19    # "lastFirstItem":Lcom/vkcoffee/android/NewsEntry;
    .end local v20    # "lastFirstItemIndex":I
    .end local v21    # "lastFirstItemIndexInNew":I
    :cond_14
    :goto_9
    const/4 v14, 0x0

    .line 777
    .local v14, "foundWhileMerge":Z
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_16

    .line 778
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/NewsEntry;

    .line 779
    .restart local v9    # "e":Lcom/vkcoffee/android/NewsEntry;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2600(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_15

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2700(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkcoffee/android/NewsEntry;

    .line 781
    .local v23, "ne":Lcom/vkcoffee/android/NewsEntry;
    if-eqz v13, :cond_1d

    iget v2, v9, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1d

    iget v2, v9, Lcom/vkcoffee/android/NewsEntry;->type:I

    move-object/from16 v0, v23

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v3, :cond_1d

    iget v2, v9, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, v23

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v2, v3, :cond_1d

    iget v2, v9, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, v23

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v2, v3, :cond_1d

    .line 783
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Found intersection, numNew="

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v14, 0x1

    .line 788
    .end local v23    # "ne":Lcom/vkcoffee/android/NewsEntry;
    :cond_15
    if-eqz v14, :cond_1e

    .line 796
    .end local v9    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v14    # "foundWhileMerge":Z
    .end local v16    # "i":I
    .end local v17    # "j":I
    :cond_16
    if-eqz v15, :cond_1f

    .line 797
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    if-eqz v2, :cond_17

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 800
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$802(Lcom/vkcoffee/android/fragments/NewsFragment;Z)Z

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$602(Lcom/vkcoffee/android/fragments/NewsFragment;I)I

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2800(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    .line 857
    :goto_c
    return-void

    .line 750
    .restart local v10    # "entryInLast":Lcom/vkcoffee/android/NewsEntry;
    .restart local v16    # "i":I
    .restart local v19    # "lastFirstItem":Lcom/vkcoffee/android/NewsEntry;
    .restart local v20    # "lastFirstItemIndex":I
    .restart local v21    # "lastFirstItemIndexInNew":I
    :cond_18
    const/4 v11, 0x0

    .line 751
    .local v11, "entryInNew":Lcom/vkcoffee/android/NewsEntry;
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_1a

    .line 752
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "entryInNew":Lcom/vkcoffee/android/NewsEntry;
    check-cast v11, Lcom/vkcoffee/android/NewsEntry;

    .restart local v11    # "entryInNew":Lcom/vkcoffee/android/NewsEntry;
    if-eqz v11, :cond_19

    iget v2, v11, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 753
    invoke-static {v2}, Lcom/vkcoffee/android/NewsEntry;->isTypeAd(I)Z

    move-result v2

    if-nez v2, :cond_19

    iget v2, v11, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1a

    .line 754
    :cond_19
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 756
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_14

    .line 762
    if-eqz v10, :cond_11

    if-eqz v11, :cond_11

    iget v2, v10, Lcom/vkcoffee/android/NewsEntry;->type:I

    iget v3, v11, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v3, :cond_1b

    iget v2, v10, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v3, v11, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v2, v3, :cond_1b

    iget v2, v10, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v3, v11, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-eq v2, v3, :cond_11

    .line 766
    :cond_1b
    const/4 v13, 0x0

    .line 767
    goto/16 :goto_9

    .line 773
    .end local v10    # "entryInLast":Lcom/vkcoffee/android/NewsEntry;
    .end local v11    # "entryInNew":Lcom/vkcoffee/android/NewsEntry;
    .end local v16    # "i":I
    .end local v19    # "lastFirstItem":Lcom/vkcoffee/android/NewsEntry;
    .end local v20    # "lastFirstItemIndex":I
    .end local v21    # "lastFirstItemIndexInNew":I
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 779
    .restart local v9    # "e":Lcom/vkcoffee/android/NewsEntry;
    .restart local v14    # "foundWhileMerge":Z
    .restart local v16    # "i":I
    .restart local v17    # "j":I
    .restart local v23    # "ne":Lcom/vkcoffee/android/NewsEntry;
    :cond_1d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_b

    .line 791
    .end local v23    # "ne":Lcom/vkcoffee/android/NewsEntry;
    :cond_1e
    add-int/lit8 v26, v26, 0x1

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a

    .line 805
    .end local v9    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v14    # "foundWhileMerge":Z
    .end local v16    # "i":I
    .end local v17    # "j":I
    :cond_1f
    if-lez v26, :cond_24

    if-nez v13, :cond_24

    .line 806
    if-eqz v27, :cond_20

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v2, v3, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 809
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$802(Lcom/vkcoffee/android/fragments/NewsFragment;Z)Z

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$2900(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_23

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3100(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3000(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v3

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    .line 813
    .local v5, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3200(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    .line 817
    .local v7, "offset":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    add-int/lit8 v3, v5, -0x1

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$602(Lcom/vkcoffee/android/fragments/NewsFragment;I)I

    .line 852
    .end local v5    # "position":I
    .end local v7    # "offset":I
    :cond_21
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->isSmartNews:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26

    const-wide/16 v2, -0x1

    :goto_10
    move-object/from16 v0, v28

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4002(Lcom/vkcoffee/android/fragments/NewsFragment;J)J

    .line 853
    if-lez v26, :cond_22

    .line 854
    const-string/jumbo v2, "user_action"

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    const-string/jumbo v3, "action_type"

    const-string/jumbo v28, "feed_load_new"

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    const-string/jumbo v3, "action_param"

    const-string/jumbo v28, "show"

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 856
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4100(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    goto/16 :goto_c

    .line 815
    :cond_23
    const/4 v7, 0x0

    .restart local v7    # "offset":I
    move v5, v7

    .restart local v5    # "position":I
    goto :goto_e

    .line 818
    .end local v5    # "position":I
    .end local v7    # "offset":I
    :cond_24
    if-lez v26, :cond_21

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3300(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_25

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3500(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3400(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v3

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    .line 822
    .restart local v5    # "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3600(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    .line 826
    .restart local v7    # "offset":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3700(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/NewsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 828
    .local v8, "cnt":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/NewsFragment;->onPrependItems(Ljava/util/List;I)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/NewsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v6, v2, v8

    .line 830
    .local v6, "addedCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    add-int v3, v5, v6

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$602(Lcom/vkcoffee/android/fragments/NewsFragment;I)I

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateList()V

    .line 832
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v12, "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$802(Lcom/vkcoffee/android/fragments/NewsFragment;Z)Z

    .line 836
    new-instance v2, Ljava/lang/Thread;

    invoke-static {v12}, Lcom/vkcoffee/android/fragments/NewsFragment$5$$Lambda$1;->lambdaFactory$(Ljava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3900(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v28

    new-instance v2, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment$5;IIII)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_f

    .line 824
    .end local v5    # "position":I
    .end local v6    # "addedCount":I
    .end local v7    # "offset":I
    .end local v8    # "cnt":I
    .end local v12    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_25
    const/4 v7, 0x0

    .restart local v7    # "offset":I
    move v5, v7

    .restart local v5    # "position":I
    goto/16 :goto_11

    .line 852
    .end local v5    # "position":I
    .end local v7    # "offset":I
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto/16 :goto_10
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 666
    check-cast p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/NewsFragment$5;->success(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;)V

    return-void
.end method
