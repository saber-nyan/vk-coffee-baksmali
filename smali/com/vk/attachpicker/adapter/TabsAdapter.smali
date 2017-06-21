.class public Lcom/vk/attachpicker/adapter/TabsAdapter;
.super Lcom/vk/attachpicker/adapter/OnItemClickAdapter;
.source "TabsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;,
        Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/attachpicker/adapter/OnItemClickAdapter",
        "<",
        "Lcom/vk/attachpicker/holder/TabHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionProvider:Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;)V
    .locals 1
    .param p1, "selectionProvider"    # Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vk/attachpicker/adapter/OnItemClickAdapter;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/TabsAdapter;->items:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/adapter/TabsAdapter;->setHasStableIds(Z)V

    .line 17
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/TabsAdapter;->selectionProvider:Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;

    .line 18
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/TabsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/TabsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    iget v0, v0, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;->titleResId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/TabsAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/vk/attachpicker/holder/TabHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/adapter/TabsAdapter;->onBindViewHolder(Lcom/vk/attachpicker/holder/TabHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vk/attachpicker/holder/TabHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vk/attachpicker/holder/TabHolder;
    .param p2, "position"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/TabsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/holder/TabHolder;->update(Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;)V

    .line 29
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/adapter/TabsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/holder/TabHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/holder/TabHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 22
    new-instance v0, Lcom/vk/attachpicker/holder/TabHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/adapter/TabsAdapter;->selectionProvider:Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/holder/TabHolder;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;)V

    .line 23
    .local v0, "tabHolder":Lcom/vk/attachpicker/holder/TabHolder;
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/adapter/TabsAdapter;->wrapHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/holder/TabHolder;

    return-object v1
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;>;"
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/TabsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {p0}, Lcom/vk/attachpicker/adapter/TabsAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method
