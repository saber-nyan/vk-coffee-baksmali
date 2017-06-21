.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameButtonShowAll.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private onClickListener:Landroid/view/View$OnClickListener;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    const v0, 0x7f030033

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 31
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;->textView:Landroid/widget/TextView;

    .line 32
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;

    .prologue
    .line 36
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;->onClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;->onClickListener:Landroid/view/View$OnClickListener;

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;->textView:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;->bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;->onClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 45
    :cond_0
    return-void
.end method
