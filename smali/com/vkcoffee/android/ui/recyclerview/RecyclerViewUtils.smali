.class Lcom/vkcoffee/android/ui/recyclerview/RecyclerViewUtils;
.super Ljava/lang/Object;
.source "RecyclerViewUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRealFirstPosition(Landroid/support/v7/widget/RecyclerView;)I
    .locals 5
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    const v0, 0x7fffffff

    .line 15
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 16
    .local v3, "visibleRange":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 17
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 18
    .local v1, "firstVisibleView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    .end local v1    # "firstVisibleView":Landroid/view/View;
    :cond_0
    return v0
.end method

.method static mapAdapterToChildPositions(Landroid/support/v7/widget/RecyclerView;Landroid/util/SparseIntArray;I)I
    .locals 5
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "outputMap"    # Landroid/util/SparseIntArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adapterStart"    # I

    .prologue
    .line 25
    const/4 v3, 0x0

    .line 26
    .local v3, "end":I
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 27
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 28
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 29
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 31
    .local v0, "adapterPosition":I
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 32
    invoke-virtual {p1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "adapterPosition":I
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    return v3
.end method
