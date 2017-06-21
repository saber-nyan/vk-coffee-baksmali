.class Lcom/vkcoffee/android/fragments/PostponedPostListFragment$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PostponedPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostponedPostListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostponedPostListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostponedPostListFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostponedPostListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostponedPostListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->access$000(Lcom/vkcoffee/android/fragments/PostponedPostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 66
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostponedPostListFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 67
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostponedPostListFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostponedPostListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostponedPostListFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/PostponedPostListFragment;->items:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 71
    :cond_1
    return-void
.end method
