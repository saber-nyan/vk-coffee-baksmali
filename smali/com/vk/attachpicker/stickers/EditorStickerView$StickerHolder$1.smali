.class Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$1;
.super Lcom/vk/attachpicker/widget/SquareImageView;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/SquareImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 222
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 223
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/vkcoffee/android/stickers/StickerDrawable;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/stickers/StickerDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-super {p0, v1}, Lcom/vk/attachpicker/widget/SquareImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 226
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1}, Lcom/vk/attachpicker/widget/SquareImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
