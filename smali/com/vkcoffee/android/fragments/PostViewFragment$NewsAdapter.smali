.class public Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 304
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

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
    .line 363
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

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
    .line 307
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 311
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

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
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->bindView(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;->bind(Lcom/vkcoffee/android/ui/posts/PostDisplayItem;)V

    .line 352
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 315
    packed-switch p2, :pswitch_data_0

    .line 345
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 317
    :pswitch_1
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto :goto_0

    .line 319
    :pswitch_2
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto :goto_0

    .line 321
    :pswitch_3
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->createView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto :goto_0

    .line 323
    :pswitch_4
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto :goto_0

    .line 325
    :pswitch_5
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto :goto_0

    .line 327
    :pswitch_6
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto :goto_0

    .line 329
    :pswitch_7
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto :goto_0

    .line 331
    :pswitch_8
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 333
    :pswitch_9
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/SignaturePostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 335
    :pswitch_a
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 337
    :pswitch_b
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 339
    :pswitch_c
    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/BigVideoViewPostDisplayItem;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/ui/posts/BigVideoViewPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 341
    :pswitch_d
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->createViewAd(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 343
    :pswitch_e
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
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
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
