.class public Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GoodAlbumGridItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/GoodAlbum;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final image:Landroid/widget/ImageView;

.field lastItem:Lcom/vkcoffee/android/data/GoodAlbum;

.field final text1:Landroid/widget/TextView;

.field final text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    const v0, 0x7f0300cb

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 25
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->text1:Landroid/widget/TextView;

    .line 26
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->text2:Landroid/widget/TextView;

    .line 27
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->image:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/GoodAlbum;)V
    .locals 8
    .param p1, "item"    # Lcom/vkcoffee/android/data/GoodAlbum;

    .prologue
    const/4 v7, 0x0

    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/GoodAlbum;

    .line 34
    if-nez p1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v1, p1, Lcom/vkcoffee/android/data/GoodAlbum;->photo:Lcom/vkcoffee/android/Photo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/vkcoffee/android/data/GoodAlbum;->photo:Lcom/vkcoffee/android/Photo;

    const/high16 v2, 0x43300000    # 176.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImageByWidth(I)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 39
    .local v0, "url":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->image:Landroid/widget/ImageView;

    const v2, 0x7f0202f1

    invoke-virtual {p0, v1, v0, v2}, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 40
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->text1:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/data/GoodAlbum;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001a

    iget v4, p1, Lcom/vkcoffee/android/data/GoodAlbum;->count:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/vkcoffee/android/data/GoodAlbum;->count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 38
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/vkcoffee/android/data/GoodAlbum;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->bind(Lcom/vkcoffee/android/data/GoodAlbum;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/GoodAlbum;

    iget v1, v1, Lcom/vkcoffee/android/data/GoodAlbum;->owner_id:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/GoodAlbum;

    iget v1, v1, Lcom/vkcoffee/android/data/GoodAlbum;->id:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->setAlbum(I)Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodAlbumGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/GoodAlbum;

    iget-object v1, v1, Lcom/vkcoffee/android/data/GoodAlbum;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->go(Landroid/content/Context;)V

    .line 50
    return-void
.end method
