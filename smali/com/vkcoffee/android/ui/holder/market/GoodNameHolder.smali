.class public Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GoodNameHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/Good;",
        ">;"
    }
.end annotation


# instance fields
.field final text1:Landroid/widget/TextView;

.field final text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 16
    const v0, 0x7f0300a1

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 17
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;->text1:Landroid/widget/TextView;

    .line 18
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;->text2:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/Good;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/data/Good;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/vkcoffee/android/data/Good;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;->bind(Lcom/vkcoffee/android/data/Good;)V

    return-void
.end method
