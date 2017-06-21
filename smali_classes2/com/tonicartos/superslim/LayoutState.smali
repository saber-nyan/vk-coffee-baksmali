.class public Lcom/tonicartos/superslim/LayoutState;
.super Ljava/lang/Object;
.source "LayoutState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/superslim/LayoutState$View;
    }
.end annotation


# instance fields
.field public final isLTR:Z

.field public final recycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private final recyclerState:Landroid/support/v7/widget/RecyclerView$State;

.field public final viewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "recyclerState"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/tonicartos/superslim/LayoutState;->viewCache:Landroid/util/SparseArray;

    .line 23
    iput-object p3, p0, Lcom/tonicartos/superslim/LayoutState;->recyclerState:Landroid/support/v7/widget/RecyclerView$State;

    .line 24
    iput-object p2, p0, Lcom/tonicartos/superslim/LayoutState;->recycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 25
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tonicartos/superslim/LayoutState;->isLTR:Z

    .line 26
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cacheView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tonicartos/superslim/LayoutState;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    return-void
.end method

.method public decacheView(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tonicartos/superslim/LayoutState;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 34
    return-void
.end method

.method public getCachedView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tonicartos/superslim/LayoutState;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getRecyclerState()Landroid/support/v7/widget/RecyclerView$State;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tonicartos/superslim/LayoutState;->recyclerState:Landroid/support/v7/widget/RecyclerView$State;

    return-object v0
.end method

.method public getView(I)Lcom/tonicartos/superslim/LayoutState$View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/tonicartos/superslim/LayoutState;->getCachedView(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 47
    .local v1, "wasCached":Z
    :goto_0
    if-nez v0, :cond_0

    .line 48
    iget-object v2, p0, Lcom/tonicartos/superslim/LayoutState;->recycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 51
    :cond_0
    new-instance v2, Lcom/tonicartos/superslim/LayoutState$View;

    invoke-direct {v2, v0, v1}, Lcom/tonicartos/superslim/LayoutState$View;-><init>(Landroid/view/View;Z)V

    return-object v2

    .line 46
    .end local v1    # "wasCached":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recycleCache()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tonicartos/superslim/LayoutState;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/tonicartos/superslim/LayoutState;->recycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/tonicartos/superslim/LayoutState;->viewCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
