.class public Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GoodTabletHeaderHolder.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

.field final arrowBlock:Landroid/view/View;

.field final extText:Landroid/widget/TextView;

.field final goodGalleryContainer:Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;

.field final goodName:Landroid/widget/TextView;

.field final goodPrice:Landroid/widget/TextView;

.field final groupCategory:Landroid/widget/TextView;

.field final groupIcon:Landroid/widget/ImageView;

.field final groupName:Landroid/widget/TextView;

.field lastGroupId:I

.field final pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

.field final viewPager:Landroid/support/v4/view/ViewPager;

.field final wikiSubtitle:Landroid/widget/TextView;

.field final wikiTitle:Landroid/widget/TextView;

.field final writeButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    const v0, 0x7f0300a4

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 73
    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 74
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1, p0}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;-><init>(Landroid/support/v4/view/ViewPager;Lcom/vkcoffee/android/ui/holder/RecyclerHolder;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 77
    const v0, 0x7f100220

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/PageIndicator;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    .line 78
    const v0, 0x7f100222

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->groupIcon:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f100223

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->groupName:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f100224

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->groupCategory:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->goodName:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f100226

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->goodPrice:Landroid/widget/TextView;

    .line 83
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->wikiTitle:Landroid/widget/TextView;

    .line 84
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->wikiSubtitle:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f100227

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->arrowBlock:Landroid/view/View;

    .line 86
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->writeButton:Landroid/view/View;

    .line 87
    const v0, 0x7f100228

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->extText:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f10021f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->goodGalleryContainer:Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->goodGalleryContainer:Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/GoodGalleryContainer;->setIsTablet(Z)V

    .line 90
    const v0, 0x7f100221

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->$(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    const v2, 0x7f020143

    .line 92
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x55514d

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;)V
    .locals 6
    .param p1, "item"    # Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 110
    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v0, v1, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    .line 111
    .local v0, "photos":[Lcom/vkcoffee/android/Photo;
    if-nez v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    new-array v5, v2, [Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->setPhotos([Lcom/vkcoffee/android/Photo;)V

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->goodName:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v5, v5, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->goodPrice:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v5, v5, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->wikiSubtitle:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->arrowSubtitle:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->arrowOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->arrowBlock:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->groupName:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->groupCategory:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v3, v3, Lcom/vkcoffee/android/data/Good;->category_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->groupIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->groupPhoto:Ljava/lang/String;

    const v5, 0x7f020100

    invoke-virtual {p0, v1, v3, v5}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 134
    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->good:Lcom/vkcoffee/android/data/Good;

    iget v1, v1, Lcom/vkcoffee/android/data/Good;->owner_id:I

    iput v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->lastGroupId:I

    .line 136
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->writeButton:Landroid/view/View;

    iget-object v3, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->writeButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->writeButton:Landroid/view/View;

    iget-object v3, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->good:Lcom/vkcoffee/android/data/Good;

    iget v3, v3, Lcom/vkcoffee/android/data/Good;->availability:I

    if-nez v3, :cond_0

    move v2, v4

    :cond_0
    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 139
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->extText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->extText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    array-length v5, v0

    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setCountOfPages(I)V

    .line 116
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    array-length v1, v0

    if-le v1, v4, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->adapter:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->setPhotos([Lcom/vkcoffee/android/Photo;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 116
    goto :goto_2

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->arrowBlock:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->arrowBlock:Landroid/view/View;

    iget-object v3, p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->arrowOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->bind(Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->lastGroupId:I

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->lastGroupId:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f100221
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;->pageIndicator:Lcom/vkcoffee/android/ui/widget/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setIndexOfCurrentPage(IZ)V

    .line 102
    return-void
.end method
