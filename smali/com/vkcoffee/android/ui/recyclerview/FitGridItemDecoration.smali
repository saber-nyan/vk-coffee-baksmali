.class public Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FitGridItemDecoration.java"


# instance fields
.field private mSpacing:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 26
    iget v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpanCount:I

    if-nez v2, :cond_0

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 30
    .local v1, "position":I
    iget v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpanCount:I

    rem-int v0, v1, v2

    .line 31
    .local v0, "column":I
    iget v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpacing:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpanCount:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 32
    iget v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpacing:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpacing:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpanCount:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public set(II)Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;
    .locals 0
    .param p1, "spanCount"    # I
    .param p2, "spacing"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpanCount:I

    .line 20
    iput p2, p0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->mSpacing:I

    .line 21
    return-object p0
.end method
