.class public Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "MarketFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/market/MarketFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "ownerId"    # I

    .prologue
    .line 61
    const-class v0, Lcom/vkcoffee/android/fragments/market/MarketFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public setAlbum(I)Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;
    .locals 2
    .param p1, "album"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "album"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    return-object p0
.end method

.method public setAllAlbumsMode()Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "isAllAlbums"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    return-object p0
.end method

.method public setSearchMode()Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "isSearchMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object p0
.end method
