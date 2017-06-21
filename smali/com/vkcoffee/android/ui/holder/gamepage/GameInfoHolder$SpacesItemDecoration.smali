.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GameInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "space"    # I

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 149
    iput p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$SpacesItemDecoration;->space:I

    .line 150
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 154
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$SpacesItemDecoration;->space:I

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
