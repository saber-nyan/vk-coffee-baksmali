.class public Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;
.super Lcom/vk/attachpicker/adapter/OnItemClickAdapter;
.source "PhotoSmallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/attachpicker/adapter/OnItemClickAdapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_HEADER:I = 0x0

.field public static final TYPE_ITEM:I = 0x1


# instance fields
.field private cameraEnabled:Z

.field private final context:Landroid/content/Context;

.field private emptyEnabled:Z

.field private final images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;"
        }
    .end annotation
.end field

.field private photoClickListener:Landroid/view/View$OnClickListener;

.field private final selectionContext:Lcom/vk/attachpicker/SelectionContext;

.field private singleMode:Z

.field private videoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vk/attachpicker/SelectionContext;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectionContext"    # Lcom/vk/attachpicker/SelectionContext;
    .param p3, "singleMode"    # Z

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Lcom/vk/attachpicker/adapter/OnItemClickAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    .line 27
    iput-boolean v1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->cameraEnabled:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->emptyEnabled:Z

    .line 33
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    .line 35
    iput-boolean p3, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->singleMode:Z

    .line 36
    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setHasStableIds(Z)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->videoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public delta()I
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->cameraEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->emptyEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImagesCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->delta()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->cameraEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->emptyEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 99
    const-wide/16 v0, 0x1

    .line 101
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->delta()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    iget v0, v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->cameraEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->emptyEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemsCopy()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPhotoClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getVideoClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->videoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->cameraEnabled:Z

    return v0
.end method

.method public isEmptyEnabled()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->emptyEnabled:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;

    if-ne v0, v1, :cond_1

    .line 85
    check-cast p1, Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->delta()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;->update(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;

    if-ne v0, v1, :cond_0

    .line 87
    check-cast p1, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-boolean v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->cameraEnabled:Z

    iget-boolean v1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->emptyEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;->update(ZZ)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;

    iget-object v1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter$CameraHeaderHolder;-><init>(Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;Landroid/content/Context;)V

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;

    iget-object v1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    iget-boolean v3, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->singleMode:Z

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/vk/attachpicker/holder/MediaStoreItemSmallHolder;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/SelectionContext;Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;Z)V

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->wrapHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public setCameraEnabled(Z)V
    .locals 0
    .param p1, "cameraEnabled"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->cameraEnabled:Z

    .line 45
    invoke-virtual {p0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method

.method public setEmptyEnabled(Z)V
    .locals 0
    .param p1, "emptyEnabled"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->emptyEnabled:Z

    .line 54
    invoke-virtual {p0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->notifyDataSetChanged()V

    .line 55
    return-void
.end method

.method public setImages(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/MediaStoreEntry;>;"
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-virtual {p0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->notifyDataSetChanged()V

    .line 124
    :cond_0
    return-void
.end method

.method public setPhotoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "photoClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method

.method public setVideoClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "videoClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->videoClickListener:Landroid/view/View$OnClickListener;

    .line 71
    return-void
.end method
