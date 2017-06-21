.class public Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;
.super Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.source "AutoAssignMaxRecycledViewPool.java"


# instance fields
.field private final mMaxScrap:Landroid/util/SparseIntArray;

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    .line 12
    iput p1, p0, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;->mMaxSize:I

    .line 13
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 34
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 35
    return-void
.end method

.method public putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "scrap"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v3, -0x1

    .line 23
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 24
    .local v1, "viewType":I
    iget-object v2, p0, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 25
    .local v0, "max":I
    if-ne v0, v3, :cond_0

    .line 26
    iget v2, p0, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;->mMaxSize:I

    invoke-virtual {p0, v1, v2}, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;->setMaxRecycledViews(II)V

    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 29
    return-void
.end method

.method public setMaxRecycledViews(II)V
    .locals 1
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 19
    return-void
.end method
