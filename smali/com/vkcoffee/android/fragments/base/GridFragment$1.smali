.class Lcom/vkcoffee/android/fragments/base/GridFragment$1;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/base/GridFragment;->updateLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

.field final synthetic val$oldWidth:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/base/GridFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 70
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$1;, "Lcom/vkcoffee/android/fragments/base/GridFragment$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$1;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    iput p2, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$1;->val$oldWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 73
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$1;, "Lcom/vkcoffee/android/fragments/base/GridFragment$1;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$1;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$000(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$1;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$100(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$1;->val$oldWidth:I

    if-eq v1, v2, :cond_1

    .line 74
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$1;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$200(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 75
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$1;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->getColumnsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$1;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$300(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 81
    .end local v0    # "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_1
    return-void
.end method
