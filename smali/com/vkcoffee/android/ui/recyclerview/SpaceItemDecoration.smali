.class public Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpaceItemDecoration.java"


# instance fields
.field private mBottom:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->set(IIII)V

    .line 22
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 33
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->mLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 35
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->mTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 36
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->mRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 37
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->mBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    :cond_0
    return-void
.end method

.method public set(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->mLeft:I

    .line 26
    iput p2, p0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->mTop:I

    .line 27
    iput p3, p0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->mRight:I

    .line 28
    iput p4, p0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;->mBottom:I

    .line 29
    return-void
.end method
