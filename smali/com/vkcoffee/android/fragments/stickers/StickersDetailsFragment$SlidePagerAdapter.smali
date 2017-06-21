.class Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "StickersDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 346
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->demo_photos_560:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 339
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, "view":Landroid/widget/ImageView;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$SlidePagerAdapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v2, v2, Lcom/vkcoffee/android/data/orm/StickerStockItem;->demo_photos_560:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v0, v1, v2}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 335
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
