.class public Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "ArrowItemHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field lastInfo:Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

.field final text1:Landroid/widget/TextView;

.field final text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    const v0, 0x7f030034

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->lastInfo:Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

    .line 33
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->text1:Landroid/widget/TextView;

    .line 34
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->text2:Landroid/widget/TextView;

    .line 35
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    const v2, 0x7f020143

    .line 36
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x55514d

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->lastInfo:Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->bind(Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->lastInfo:Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->lastInfo:Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;->listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->lastInfo:Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;->listener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 51
    :cond_0
    return-void
.end method
