.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(III)V
    .locals 3
    .param p1, "firstItem"    # I
    .param p2, "visibleCount"    # I
    .param p3, "total"    # I

    .prologue
    .line 397
    const/4 v1, 0x6

    if-ge p1, v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->loadTop(Landroid/content/Context;)V

    .line 402
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->getItemOffset(I)I

    move-result v0

    .line 404
    .local v0, "firstOffset":I
    if-ltz v0, :cond_1

    .line 405
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/ui/PaginationView;->setCurrentPage(I)V

    .line 408
    .end local v0    # "firstOffset":I
    :cond_1
    return-void

    .line 399
    :cond_2
    add-int v1, p1, p2

    add-int/lit8 v2, p3, -0x6

    if-le v1, v2, :cond_0

    .line 400
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->loadDown(Landroid/content/Context;)V

    goto :goto_0

    .line 405
    .restart local v0    # "firstOffset":I
    :cond_3
    div-int/lit8 v1, v0, 0x14

    goto :goto_1
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method
