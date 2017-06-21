.class Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "StickerStoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$1;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 257
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->banners:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->banners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 246
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1000d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 247
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->banners:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;

    .line 248
    .local v1, "item":Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->getBannerImage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 240
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;

    .line 263
    .local v0, "banner":Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;
    sget-object v2, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$3;->$SwitchMap$com$vkontakte$android$api$store$StoreGetCatalog$Type:[I

    iget-object v3, v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->type:Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;

    invoke-virtual {v3}, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 266
    iget-object v3, v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->section:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$100(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Result;->sections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;

    iget-object v2, v2, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Section;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment$BannersAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->access$400(Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 265
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    .end local v1    # "i":I
    :pswitch_1
    iget-object v2, v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->stock_item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const-string/jumbo v3, "store"

    iput-object v3, v2, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 275
    iget-object v3, v0, Lcom/vkcoffee/android/api/store/StoreGetCatalog$Banner;->stock_item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
