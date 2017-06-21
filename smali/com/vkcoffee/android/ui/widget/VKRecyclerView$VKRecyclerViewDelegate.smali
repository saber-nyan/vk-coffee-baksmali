.class public Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;
.super Lme/grishka/appkit/imageloader/RecyclerViewDelegate;
.source "VKRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/VKRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VKRecyclerViewDelegate"
.end annotation


# instance fields
.field private recyclerView:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/widget/VKRecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->recyclerView:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    .line 33
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->setSelectionFromTop(II)V

    .line 44
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 36
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->recyclerView:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 37
    .local v0, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 38
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 40
    :cond_0
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->recyclerView:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 48
    .local v0, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 51
    :cond_0
    return-void
.end method
