.class public Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "PostListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;",
        ">;",
        "Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostListFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1011
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move v0, v1

    .line 1024
    :goto_0
    return v0

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->bgType:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1024
    goto :goto_0

    .line 1016
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1018
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1020
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1022
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 1014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->getImageCount()I

    move-result v0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->getImageURL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 945
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 996
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 937
    check-cast p1, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->bindView(Landroid/view/View;)V

    .line 991
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->bind(Lcom/vkcoffee/android/ui/posts/PostDisplayItem;)V

    .line 992
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 937
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 950
    packed-switch p2, :pswitch_data_0

    .line 982
    :pswitch_0
    invoke-static {p2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->isNotificationViewType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    .line 985
    :goto_0
    return-object v0

    .line 952
    :pswitch_1
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto :goto_0

    .line 954
    :pswitch_2
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->createViewAd(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto :goto_0

    .line 956
    :pswitch_3
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto :goto_0

    .line 958
    :pswitch_4
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->createView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto :goto_0

    .line 960
    :pswitch_5
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto :goto_0

    .line 962
    :pswitch_6
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto :goto_0

    .line 964
    :pswitch_7
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto :goto_0

    .line 966
    :pswitch_8
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 968
    :pswitch_9
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 970
    :pswitch_a
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/SignaturePostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 972
    :pswitch_b
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 974
    :pswitch_c
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 976
    :pswitch_d
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 978
    :pswitch_e
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 980
    :pswitch_f
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/PaddingPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 985
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method
