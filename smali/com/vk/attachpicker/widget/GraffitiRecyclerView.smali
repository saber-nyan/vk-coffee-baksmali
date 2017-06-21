.class public Lcom/vk/attachpicker/widget/GraffitiRecyclerView;
.super Lme/grishka/appkit/views/UsableRecyclerView;
.source "GraffitiRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView;->onMeasure(II)V

    .line 29
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/GraffitiRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 30
    .local v0, "columnWidth":I
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/GraffitiRecyclerView;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 31
    .local v2, "spanCount":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/GraffitiRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/GraffitiRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 33
    .local v1, "lm":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 34
    new-instance v3, Lcom/vk/attachpicker/widget/GraffitiRecyclerView$1;

    invoke-direct {v3, p0, v2}, Lcom/vk/attachpicker/widget/GraffitiRecyclerView$1;-><init>(Lcom/vk/attachpicker/widget/GraffitiRecyclerView;I)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 45
    .end local v1    # "lm":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method
