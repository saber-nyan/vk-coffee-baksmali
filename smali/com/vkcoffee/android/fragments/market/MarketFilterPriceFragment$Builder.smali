.class public Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "MarketFilterPriceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 3
    .param p1, "min"    # J
    .param p3, "max"    # J
    .param p5, "currency"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "min"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "max"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "currency"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public setCurrentValues(JJ)Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;
    .locals 3
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "current_min"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFilterPriceFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "current_max"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    return-object p0
.end method
