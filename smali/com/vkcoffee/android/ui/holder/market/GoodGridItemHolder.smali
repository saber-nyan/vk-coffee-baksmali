.class public Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GoodGridItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/Good;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final image:Landroid/widget/ImageView;

.field lastItem:Lcom/vkcoffee/android/data/Good;

.field final text1:Landroid/widget/TextView;

.field final text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    const v0, 0x7f0300cc

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/Good;

    .line 25
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->text1:Landroid/widget/TextView;

    .line 26
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->text2:Landroid/widget/TextView;

    .line 27
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->image:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/Good;)V
    .locals 3
    .param p1, "item"    # Lcom/vkcoffee/android/data/Good;

    .prologue
    const/4 v2, 0x0

    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/Good;

    .line 34
    if-nez p1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    aget-object v1, v1, v2

    const/high16 v2, 0x43300000    # 176.0f

    .line 39
    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImageByWidth(I)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 40
    .local v0, "url":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->image:Landroid/widget/ImageView;

    const v2, 0x7f020244

    invoke-virtual {p0, v1, v0, v2}, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 41
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->text1:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->text2:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 39
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/vkcoffee/android/data/Good;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->bind(Lcom/vkcoffee/android/data/Good;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/Good;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;

    sget-object v1, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->market:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/Good;

    iget v2, v2, Lcom/vkcoffee/android/data/Good;->owner_id:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGridItemHolder;->lastItem:Lcom/vkcoffee/android/data/Good;

    iget v3, v3, Lcom/vkcoffee/android/data/Good;->id:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->go(Landroid/content/Context;)V

    .line 53
    :cond_0
    return-void
.end method
