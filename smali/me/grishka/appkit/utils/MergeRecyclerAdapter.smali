.class public Lme/grishka/appkit/utils/MergeRecyclerAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "MergeRecyclerAdapter.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;",
        "Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;"
    }
.end annotation


# instance fields
.field private adapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/grishka/appkit/views/UsableRecyclerView$Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lme/grishka/appkit/views/UsableRecyclerView$Adapter;",
            "Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private viewTypeMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lme/grishka/appkit/views/UsableRecyclerView$Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->viewTypeMapping:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->observers:Ljava/util/HashMap;

    .line 151
    return-void
.end method


# virtual methods
.method public addAdapter(ILme/grishka/appkit/views/UsableRecyclerView$Adapter;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "adapter"    # Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .prologue
    .line 30
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is already added!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_0
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 33
    new-instance v0, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;

    invoke-direct {v0, p0, p2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;-><init>(Lme/grishka/appkit/utils/MergeRecyclerAdapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 34
    .local v0, "observer":Lme/grishka/appkit/utils/MergeRecyclerAdapter$InternalDataObserver;
    invoke-virtual {p2, v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 35
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->observers:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .prologue
    .line 26
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(ILme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 27
    return-void
.end method

.method public getAdapterAt(I)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getAdapterCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "count":I
    iget-object v3, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 92
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 93
    .local v1, "c":I
    if-lt p1, v2, :cond_0

    add-int v4, v2, v1

    if-ge p1, v4, :cond_0

    .line 98
    .end local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .end local v1    # "c":I
    :goto_1
    return-object v0

    .line 96
    .restart local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .restart local v1    # "c":I
    :cond_0
    add-int/2addr v2, v1

    .line 97
    goto :goto_0

    .line 98
    .end local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .end local v1    # "c":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAdapterPosition(I)I
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "count":I
    iget-object v3, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 70
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 71
    .local v1, "c":I
    if-lt p1, v2, :cond_1

    add-int v4, v2, v1

    if-ge p1, v4, :cond_1

    .line 72
    sub-int/2addr p1, v2

    .line 76
    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    .end local v1    # "c":I
    .end local p1    # "pos":I
    :cond_0
    return p1

    .line 74
    .restart local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    .restart local v1    # "c":I
    .restart local p1    # "pos":I
    :cond_1
    add-int/2addr v2, v1

    .line 75
    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 131
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v1, v0, Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {p0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;->getImageCountForItem(I)I

    move-result v1

    .line 134
    :goto_0
    return v1

    .restart local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 140
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v1, v0, Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {p0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterPosition(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .restart local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "count":I
    iget-object v2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 123
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 124
    goto :goto_0

    .line 125
    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_0
    return v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 114
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    invoke-virtual {p0, p1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterPosition(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    .line 115
    .local v1, "viewType":I
    iget-object v2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->viewTypeMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    return v1
.end method

.method public getPositionForAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)I
    .locals 4
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "pos":I
    iget-object v2, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 82
    .local v0, "a":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-ne v0, p1, :cond_1

    .line 86
    .end local v0    # "a":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_0
    return v1

    .line 84
    .restart local v0    # "a":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 85
    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterForPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p0, p2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterPosition(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 109
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->viewTypeMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    return-object v0
.end method

.method public removeAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 40
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->observers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 42
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->observers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public removeAdapterAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->removeAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 48
    return-void
.end method

.method public removeAllAdapters()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 52
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->observers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 53
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->observers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    .end local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    :cond_0
    iget-object v1, p0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 56
    invoke-virtual {p0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method
