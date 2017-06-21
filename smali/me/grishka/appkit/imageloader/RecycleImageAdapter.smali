.class public Lme/grishka/appkit/imageloader/RecycleImageAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "RecycleImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private recyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

.field public final wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
            "<",
            "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V
    .locals 1
    .param p1    # Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
            "<",
            "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "wrapped":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;, "Lme/grishka/appkit/views/UsableRecyclerView$Adapter<Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;>;"
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 17
    iput-object p1, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 18
    invoke-virtual {p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    invoke-super {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->setHasStableIds(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getImageCountForItem(I)I

    move-result v0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 44
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 45
    instance-of v0, p1, Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView;

    .end local p1    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    iput-object p1, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->recyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 48
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 28
    iget-object v1, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 29
    iget-object v1, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->recyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->recyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v0

    .line 30
    .local v0, "loaderWrapper":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;->bindingImages:Z

    .line 32
    invoke-virtual {v0, p0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->bindViewHolder(Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;I)V

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;->bindingImages:Z

    .line 35
    :cond_0
    return-void

    .line 29
    .end local v0    # "loaderWrapper":Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 52
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->recyclerView:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 54
    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->onFailedToRecycleView(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .prologue
    .line 68
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->onViewAttachedToWindow(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .prologue
    .line 73
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 74
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->onViewDetachedFromWindow(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .prologue
    .line 78
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 79
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->onViewRecycled(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .prologue
    .line 83
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 84
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 89
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 90
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->setHasStableIds(Z)V

    .line 95
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 100
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 101
    return-void
.end method
