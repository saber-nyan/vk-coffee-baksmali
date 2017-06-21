.class Lcom/vkcoffee/android/fragments/NewsFragment$5$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/NewsFragment$5;->success(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/NewsFragment$5;

.field final synthetic val$addedCount:I

.field final synthetic val$notificationCount:I

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment$5;IIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/NewsFragment$5;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->this$1:Lcom/vkcoffee/android/fragments/NewsFragment$5;

    iput p2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$notificationCount:I

    iput p3, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$position:I

    iput p4, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$addedCount:I

    iput p5, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 840
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->this$1:Lcom/vkcoffee/android/fragments/NewsFragment$5;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/NewsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$3800(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    .line 841
    .local v1, "list":Lme/grishka/appkit/views/UsableRecyclerView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 842
    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 843
    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 844
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$notificationCount:I

    iget v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$position:I

    if-gt v2, v3, :cond_0

    .line 845
    iget v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$position:I

    iget v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$addedCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment$5$1;->val$offset:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 848
    .end local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
