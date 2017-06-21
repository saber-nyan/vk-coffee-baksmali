.class public Lcom/vk/attachpicker/widget/EmojiAutofitRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "EmojiAutofitRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 15
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
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
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
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 28
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/EmojiAutofitRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 29
    .local v0, "columnWidth":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/EmojiAutofitRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/EmojiAutofitRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    .line 30
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/EmojiAutofitRecyclerView;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 31
    .local v1, "spanCount":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/EmojiAutofitRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 33
    .end local v1    # "spanCount":I
    :cond_0
    return-void
.end method
