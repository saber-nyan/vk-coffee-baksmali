.class Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
.source "FriendsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/UserProfile;",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)V

    return-void
.end method


# virtual methods
.method public bindHeaderHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "params"    # Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    .param p3, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 401
    move-object v0, p1

    check-cast v0, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$500(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$600(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    const v2, 0x7f08026f

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->bind(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->isHeader:Z

    .line 404
    const/16 v0, 0x11

    iput v0, p2, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->headerDisplay:I

    .line 406
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$700(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 407
    const/high16 v0, 0x43200000    # 160.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setColumnWidth(I)V

    .line 408
    invoke-virtual {p2, v3}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setNumColumns(I)V

    .line 410
    :cond_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {p0, p3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->getPopupText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public bindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V
    .locals 4
    .param p2, "params"    # Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Lcom/tonicartos/superslim/GridSLM$LayoutParams;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->bindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V

    .line 390
    instance-of v0, p1, Lcom/vkcoffee/android/ui/holder/UserHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 391
    check-cast v0, Lcom/vkcoffee/android/ui/holder/UserHolder;

    check-cast p1, Lcom/vkcoffee/android/ui/holder/UserHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v2, p1, Lcom/vkcoffee/android/ui/holder/UserHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const v3, 0x7f0202c5

    invoke-virtual {v0, v2, v1, v3}, Lcom/vkcoffee/android/ui/holder/UserHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$400(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    .line 394
    const/high16 v0, 0x43200000    # 160.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setColumnWidth(I)V

    .line 395
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setNumColumns(I)V

    .line 397
    :cond_1
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$300(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->simple(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$200(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$100(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1Bool;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onCheck(Lcom/vkcoffee/android/functions/VoidF1Bool;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->checkable(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageUrl(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getImagesCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method
