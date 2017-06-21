.class Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ViewImageLoader$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 187
    new-instance v0, Lcom/vkcoffee/android/ui/ParallaxDrawable;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/ParallaxDrawable;-><init>()V

    .line 188
    .local v0, "pd":Lcom/vkcoffee/android/ui/ParallaxDrawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 189
    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/vkcoffee/android/ui/ParallaxDrawable;->setCornersRadius(IIII)V

    .line 191
    :cond_0
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/ParallaxDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getCurrentItem()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ParallaxDrawable;->setOffset(F)V

    .line 193
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->mPager:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void
.end method
