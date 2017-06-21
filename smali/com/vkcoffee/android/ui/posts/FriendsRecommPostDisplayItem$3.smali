.class Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;
.super Ljava/lang/Object;
.source "FriendsRecommPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->bindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

.field final synthetic val$adapter:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

.field final synthetic val$r:Lme/grishka/appkit/views/UsableRecyclerView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;Lme/grishka/appkit/views/UsableRecyclerView;Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$adapter:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$000(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$100(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$adapter:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->setListener(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    .line 107
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-static {v2, v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$002(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;I)I

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_0
    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->access$102(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;I)I

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;->val$r:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, p0}, Lme/grishka/appkit/views/UsableRecyclerView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 114
    return-void

    :cond_1
    move v0, v1

    .line 111
    goto :goto_0
.end method
