.class public Lcom/vk/attachpicker/stickers/StickersRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "StickersRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 36
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 37
    .local v0, "columnWidth":I
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 38
    .local v2, "spanCount":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 40
    .local v1, "lm":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 42
    .end local v1    # "lm":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method
