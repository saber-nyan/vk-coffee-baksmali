.class Lcom/vkcoffee/android/stickers/StickersView$StickersPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "StickersView.java"

# interfaces
.implements Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickersPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickersView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/stickers/StickersView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickersView$StickersPagerAdapter;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/stickers/StickersView;Lcom/vkcoffee/android/stickers/StickersView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/stickers/StickersView;
    .param p2, "x1"    # Lcom/vkcoffee/android/stickers/StickersView$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/StickersView$StickersPagerAdapter;-><init>(Lcom/vkcoffee/android/stickers/StickersView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 384
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 385
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersView$StickersPagerAdapter;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickersView;->access$100(Lcom/vkcoffee/android/stickers/StickersView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitleDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersView$StickersPagerAdapter;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/StickersView;->access$100(Lcom/vkcoffee/android/stickers/StickersView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/StickersViewPage;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersViewPage;->getTitleDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersView$StickersPagerAdapter;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-static {v1}, Lcom/vkcoffee/android/stickers/StickersView;->access$100(Lcom/vkcoffee/android/stickers/StickersView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/stickers/StickersViewPage;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/StickersViewPage;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, "view":Landroid/view/View;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 379
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    instance-of v2, p2, Lcom/vkcoffee/android/stickers/StickersViewPage;

    if-eqz v2, :cond_2

    .line 370
    check-cast p2, Lcom/vkcoffee/android/stickers/StickersViewPage;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/vkcoffee/android/stickers/StickersViewPage;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 370
    goto :goto_0

    .line 372
    .restart local p2    # "o":Ljava/lang/Object;
    :cond_2
    if-eq p1, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method
