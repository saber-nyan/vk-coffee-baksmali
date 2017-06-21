.class public Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "PostListFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostDisplayItemViewHolder"
.end annotation


# instance fields
.field protected item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostListFragment;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    .line 1033
    invoke-direct {p0, p2}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1034
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/posts/PostDisplayItem;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 1039
    return-void
.end method

.method public clearImage(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 1049
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->clickable:Z

    return v0
.end method

.method public onClick()V
    .locals 11

    .prologue
    .line 1054
    const/4 v2, 0x0

    .line 1055
    .local v2, "e":Lcom/vkcoffee/android/NewsEntry;
    :try_start_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$1800(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/NewsEntry;

    .line 1056
    .local v3, "post":Lcom/vkcoffee/android/NewsEntry;
    iget v6, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v7, v7, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v6, v7, :cond_0

    iget v6, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v7, v7, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v6, v7, :cond_0

    .line 1057
    move-object v2, v3

    .line 1061
    .end local v3    # "post":Lcom/vkcoffee/android/NewsEntry;
    :cond_1
    if-nez v2, :cond_3

    .line 1094
    :cond_2
    :goto_0
    return-void

    .line 1064
    :cond_3
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    .line 1067
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_5

    .line 1068
    iget-object v5, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1069
    .local v1, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v1, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v6, :cond_4

    goto :goto_1

    .line 1073
    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_5
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 1074
    new-instance v5, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    iget v6, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v7, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v7, v7

    iget-object v8, v2, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;-><init>(IILjava/lang/String;)V

    iget v6, v2, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    iget v7, v2, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    rem-int/lit8 v7, v7, 0x14

    sub-int/2addr v6, v7

    .line 1075
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setOffset(I)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->go(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v4

    .line 1092
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1076
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    .line 1077
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "vkontakte://vk.com/wall"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v10, "parent_post"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?reply="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/fragments/PostListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1078
    :cond_7
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_9

    .line 1079
    iget-object v5, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1080
    .restart local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v1, Lcom/vkcoffee/android/attachments/MarketAttachment;

    if-eqz v6, :cond_8

    .line 1081
    new-instance v5, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;

    sget-object v6, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->feed:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    check-cast v1, Lcom/vkcoffee/android/attachments/MarketAttachment;

    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v7, v1, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;Lcom/vkcoffee/android/data/Good;)V

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->go(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1086
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1087
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "entry"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1088
    const-string/jumbo v5, "referer"

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-class v5, Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->itemView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->bindingImages:Z

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 1044
    return-void
.end method
