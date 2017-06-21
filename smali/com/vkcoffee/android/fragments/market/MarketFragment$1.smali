.class Lcom/vkcoffee/android/fragments/market/MarketFragment$1;
.super Ljava/lang/Object;
.source "MarketFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


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
.method constructor <init>(Lcom/vkcoffee/android/fragments/market/MarketFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/market/MarketFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 161
    .local v0, "ns":Z
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$100(Lcom/vkcoffee/android/fragments/market/MarketFragment;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$102(Lcom/vkcoffee/android/fragments/market/MarketFragment;Z)Z

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->access$202(Lcom/vkcoffee/android/fragments/market/MarketFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$1;->this$0:Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment;->reload()V

    .line 166
    return-void

    .line 160
    .end local v0    # "ns":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 152
    return-void
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method
