.class Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$1;
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
        "Lcom/vkcoffee/android/data/GoodAlbum;",
        "Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;",
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
    .line 522
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$1;->this$1:Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/holder/commons/GridHolder;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewHolder(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$1;->createViewHolder(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public createViewHolder(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 525
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Adapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
