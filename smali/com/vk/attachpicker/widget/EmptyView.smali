.class public Lcom/vk/attachpicker/widget/EmptyView;
.super Landroid/view/View;
.source "EmptyView.java"


# instance fields
.field cellHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/widget/EmptyView;-><init>(Landroid/content/Context;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "height"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput p2, p0, Lcom/vk/attachpicker/widget/EmptyView;->cellHeight:I

    .line 19
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 28
    iget v0, p0, Lcom/vk/attachpicker/widget/EmptyView;->cellHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 29
    return-void
.end method

.method public setRealHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/vk/attachpicker/widget/EmptyView;->cellHeight:I

    .line 23
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/EmptyView;->requestLayout()V

    .line 24
    return-void
.end method
