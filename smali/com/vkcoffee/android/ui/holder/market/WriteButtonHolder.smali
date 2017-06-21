.class public Lcom/vkcoffee/android/ui/holder/market/WriteButtonHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "WriteButtonHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;",
        ">;"
    }
.end annotation


# instance fields
.field button:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 16
    const v0, 0x7f0300a5

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 17
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/WriteButtonHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/WriteButtonHolder;->button:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/WriteButtonHolder;->button:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->getGood()Lcom/vkcoffee/android/data/Good;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/WriteButtonHolder;->button:Landroid/view/View;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;->getGood()Lcom/vkcoffee/android/data/Good;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/data/Good;->availability:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 26
    :cond_0
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/WriteButtonHolder;->bind(Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;)V

    return-void
.end method
