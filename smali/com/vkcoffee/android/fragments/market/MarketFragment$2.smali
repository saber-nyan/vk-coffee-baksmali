.class Lcom/vkcoffee/android/fragments/market/MarketFragment$2;
.super Lcom/vkcoffee/android/ui/SearchViewWrapper;
.source "MarketFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/market/MarketFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;
    .param p2, "act"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$2;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V

    return-void
.end method


# virtual methods
.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 171
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$2;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$2;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 174
    :cond_0
    return-void
.end method
