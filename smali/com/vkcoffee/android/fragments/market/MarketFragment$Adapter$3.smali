.class Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$3;
.super Lcom/vkcoffee/android/ui/holder/commons/GridHolder;
.source "MarketFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/commons/GridHolder",
        "<",
        "Lcom/vkcoffee/android/data/Good;",
        "Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;Landroid/view/ViewGroup;ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "columns"    # I

    .prologue
    .line 536
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$3;->this$1:Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewHolder(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$3;->createViewHolder(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public createViewHolder(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
