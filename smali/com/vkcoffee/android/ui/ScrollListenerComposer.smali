.class public Lcom/vkcoffee/android/ui/ScrollListenerComposer;
.super Ljava/lang/Object;
.source "ScrollListenerComposer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private mOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 26
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 28
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 31
    .end local v0    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 17
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 19
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 22
    .end local v0    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    return-void
.end method
