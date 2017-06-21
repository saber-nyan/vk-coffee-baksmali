.class public Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "BottomButtonHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;",
        ">;"
    }
.end annotation


# instance fields
.field lastData:Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;

.field final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    const v0, 0x7f030055

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 28
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;->text:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;->lastData:Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;->text:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;->text:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;->text:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;->bind(Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;)V

    return-void
.end method
