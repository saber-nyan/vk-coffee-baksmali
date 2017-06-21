.class public Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "BackgroundHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 16
    return-void
.end method

.method private static createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 32
    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/Integer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 21
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;->bind(Ljava/lang/Integer;)V

    return-void
.end method

.method public setRes(I)Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;
    .locals 1
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    return-object p0
.end method
