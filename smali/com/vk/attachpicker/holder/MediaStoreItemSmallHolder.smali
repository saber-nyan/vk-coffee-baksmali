.class public Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MediaStoreItemSmallHolder.java"


# instance fields
.field private photo:Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vk/attachpicker/SelectionContext;Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectionContext"    # Lcom/vk/attachpicker/SelectionContext;
    .param p3, "adapter"    # Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;
    .param p4, "singleMode"    # Z

    .prologue
    .line 15
    new-instance v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/SelectionContext;Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;Z)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;

    iput-object v0, p0, Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;->photo:Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;

    .line 17
    return-void
.end method


# virtual methods
.method public update(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;->photo:Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Z)V

    .line 21
    return-void
.end method
