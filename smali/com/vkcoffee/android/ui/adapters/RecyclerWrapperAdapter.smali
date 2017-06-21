.class public Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    .local p1, "wrappedAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 12
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 77
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 78
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TT;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 22
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 82
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 83
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TT;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TT;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 58
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TT;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 63
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TT;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 48
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 67
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 68
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 36
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 38
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 72
    .local p0, "this":Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;, "Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 73
    return-void
.end method
