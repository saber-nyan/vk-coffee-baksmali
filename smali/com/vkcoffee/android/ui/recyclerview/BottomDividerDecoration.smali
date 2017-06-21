.class public Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BottomDividerDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;
    }
.end annotation


# instance fields
.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLineWidth:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private final mProvider:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

.field private final mSpacing:I


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V
    .locals 1
    .param p1, "provider"    # Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "lineWidth"    # I
    .param p3, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p4, "spacing"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mLinePaint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iput p2, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mLineWidth:I

    .line 27
    iput p4, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mSpacing:I

    .line 28
    iput-object p1, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 75
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 76
    .local v0, "position":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

    invoke-interface {v1, v0}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;->drawAfter(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mSpacing:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    :cond_1
    return-void
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mPaddingRight:I

    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 47
    const/4 v7, 0x0

    .line 48
    .local v7, "drawPosition":I
    const/4 v8, 0x0

    .line 49
    .local v8, "foundStart":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 50
    invoke-virtual {p2, v9}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 52
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    .line 55
    .local v10, "position":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

    invoke-interface {v0, v10}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;->drawAfter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    if-nez v8, :cond_0

    .line 57
    const/4 v8, 0x1

    .line 58
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mSpacing:I

    add-int v7, v0, v1

    .line 49
    .end local v10    # "position":I
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 61
    .restart local v10    # "position":I
    :cond_1
    if-eqz v8, :cond_0

    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mPaddingLeft:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    int-to-float v2, v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    iget v3, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mPaddingRight:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mLineWidth:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 66
    .end local v10    # "position":I
    :cond_2
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mSpacing:I

    add-int v7, v0, v1

    .line 68
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mPaddingLeft:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    int-to-float v2, v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    iget v3, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mPaddingRight:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mLineWidth:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 71
    .end local v6    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setPadding(II)Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mPaddingLeft:I

    .line 33
    iput p2, p0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->mPaddingRight:I

    .line 34
    return-object p0
.end method
