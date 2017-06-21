.class public abstract Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "RecyclerSectionAdapter.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;
.implements Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;,
        Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder;",
        ">;",
        "Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;",
        "Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;",
        "Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;"
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field public final dataDelegate:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->dataDelegate:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;)V
    .locals 1
    .param p1, "dataDelegate"    # Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;

    .prologue
    .line 63
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->dataDelegate:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;

    .line 65
    return-void
.end method


# virtual methods
.method public add(ILcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "data"    # Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method

.method public add(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;)V
    .locals 1
    .param p1, "data"    # Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->notifyItemInserted(I)V

    .line 88
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->addAll(Ljava/util/Collection;Z)V

    .line 97
    return-void
.end method

.method public addAll(Ljava/util/Collection;Z)V
    .locals 2
    .param p2, "notifyChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 101
    .local v0, "lastSize":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    if-eqz p2, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->notifyItemRangeInserted(II)V

    .line 105
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->clear(Z)V

    .line 109
    return-void
.end method

.method public clear(Z)V
    .locals 1
    .param p1, "notifyChange"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->notifyDataSetChanged()V

    .line 116
    :cond_0
    return-void
.end method

.method public getBlockType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->decoratorType:I

    return v0
.end method

.method protected getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->dataDelegate:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->dataDelegate:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$DataDelegate;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .param p2, "position"    # I

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->bind(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public replace(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;)V
    .locals 2
    .param p1, "oldData"    # Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    .param p2, "newData"    # Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 79
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->notifyItemChanged(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    .line 74
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public setData(Ljava/util/List;II)V
    .locals 0
    .param p2, "startRange"    # I
    .param p3, "rangeSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->data:Ljava/util/List;

    .line 69
    invoke-virtual {p0, p2, p3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->notifyItemRangeInserted(II)V

    .line 70
    return-void
.end method
