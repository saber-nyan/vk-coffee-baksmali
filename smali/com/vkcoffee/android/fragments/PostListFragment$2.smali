.class Lcom/vkcoffee/android/fragments/PostListFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 236
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    if-lez v6, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 242
    .local v1, "childCount":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 243
    .local v0, "centerY":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 244
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 245
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-gt v6, v0, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-lt v6, v0, :cond_1

    .line 246
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 247
    .local v4, "pos":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    if-ltz v4, :cond_0

    .line 248
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 249
    .local v3, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget v6, v6, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterOwnerId:I

    iget v7, v3, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget v6, v6, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterPostId:I

    iget v7, v3, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    if-eq v6, v7, :cond_0

    .line 250
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/PostListFragment;->pauseLookingCenterPost()V

    .line 251
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v6, v3}, Lcom/vkcoffee/android/fragments/PostListFragment;->resumeLookingCenterPost(Lcom/vkcoffee/android/ui/posts/PostDisplayItem;)V

    .line 258
    .end local v0    # "centerY":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    .end local v4    # "pos":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    return-void

    .line 243
    .restart local v0    # "centerY":I
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v5    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
