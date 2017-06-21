.class public Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "StickerStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;,
        Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;
    }
.end annotation


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

.field private mBannersAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mContent:Landroid/support/v4/view/ViewPager;

.field private mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

.field private mNewPosition:I

.field private mTabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private mTabsWrap:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;)V

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/infiniteviewpager/InfinitePagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBannersAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mNewPosition:I

    .line 60
    const v0, 0x7f0301a0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->setLayout(I)V

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->fragments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mNewPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mContent:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static start(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    new-instance v3, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0056

    .line 45
    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v0

    const/high16 v3, 0x44230000    # 652.0f

    .line 46
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;)V

    .line 47
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    .line 48
    return-void

    .line 43
    :cond_0
    const v0, 0x106000b

    goto :goto_0
.end method


# virtual methods
.method public dataLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 171
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->dataLoaded()V

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    iget-object v3, v3, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->fragments:Ljava/util/List;

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 174
    new-instance v3, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    invoke-direct {v3}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;-><init>()V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->setData(Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;)Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;

    move-result-object v0

    .line 175
    .local v0, "fragment":Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;
    invoke-virtual {v0, p0, v5}, Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 176
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->fragments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "fragment":Lcom/vkcoffee/android/fragments/stickers/StoreTabFragment;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mContent:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->fragments:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$PagerAdapter;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 179
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mTabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mContent:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 180
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBannersAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 181
    iget v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mNewPosition:I

    if-lez v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mContent:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mNewPosition:I

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 183
    const/4 v2, -0x1

    iput v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mNewPosition:I

    .line 185
    :cond_1
    return-void
.end method

.method protected doLoadData()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/store/StoreGetCatalog;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$2;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;Landroid/app/Fragment;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetCatalog;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 167
    return-void
.end method

.method moveHeader(Landroid/app/Fragment;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "dx"    # I

    .prologue
    .line 200
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mContent:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mTabsWrap:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 202
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setTranslationY(F)V

    .line 204
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mData:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->loadData()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->dataLoaded()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->setHasOptionsMenu(Z)V

    .line 101
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 65
    const v1, 0x7f030178

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1003c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    .line 67
    const v1, 0x7f100110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mTabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 68
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mTabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v2, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)V

    invoke-virtual {v1, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 88
    const v1, 0x7f1003c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mTabsWrap:Landroid/view/View;

    .line 89
    const v1, 0x7f100117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mContent:Landroid/support/v4/view/ViewPager;

    .line 90
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mContent:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 91
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mTabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 92
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setOffscreenPageLimit(I)V

    .line 93
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBannersAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 94
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 135
    const v0, 0x7f110010

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 136
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100457

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->start(Landroid/app/Activity;)V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onPause()V

    .line 131
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->mBanners:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->onResume()V

    .line 125
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 107
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 109
    return-void
.end method
