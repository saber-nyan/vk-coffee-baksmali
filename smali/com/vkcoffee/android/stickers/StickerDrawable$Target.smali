.class Lcom/vkcoffee/android/stickers/StickerDrawable$Target;
.super Ljava/lang/Object;
.source "StickerDrawable.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ViewImageLoader$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Target"
.end annotation


# instance fields
.field private final mImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;->mImageView:Landroid/widget/ImageView;

    .line 106
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/stickers/StickerDrawable;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/stickers/StickerDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable$Target;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void
.end method
