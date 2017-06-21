.class Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyboardPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/KeyboardPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupArrowDrawable"
.end annotation


# static fields
.field private static final ARROW_SIZE:I

.field private static final PADDING:I


# instance fields
.field private arrowX:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private final boundRect:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    .line 303
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 307
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 301
    const/16 v0, 0xc8

    iput v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->arrowX:I

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    .line 308
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x55000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 311
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 316
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 317
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 319
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 320
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 321
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v2, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 322
    sget v3, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sget v4, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 323
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 324
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 325
    .local v1, "path":Landroid/graphics/Path;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 326
    iget v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->arrowX:I

    sget v4, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 327
    iget v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->arrowX:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 328
    iget v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->arrowX:I

    sget v4, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 329
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 330
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sget v6, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    invoke-direct {v4, v11, v11, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sget v10, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 336
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget v6, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sub-int/2addr v5, v6

    sget v6, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v4, v11, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sget v8, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sub-int/2addr v7, v8

    sget v8, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 338
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Rect;

    sget v5, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sget v6, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sget v8, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sub-int/2addr v7, v8

    sget v8, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    sub-int/2addr v7, v8

    invoke-direct {v4, v11, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sget v8, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sget v9, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sget v10, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sub-int/2addr v9, v10

    sget v10, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    sub-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 340
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sget v6, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sub-int/2addr v5, v6

    sget v6, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sget v9, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sub-int/2addr v8, v9

    sget v9, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    sub-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sget v7, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sget v8, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->boundRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sget v10, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sub-int/2addr v9, v10

    sget v10, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    sub-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 341
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 366
    sget v0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sget v1, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sget v2, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sget v3, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->PADDING:I

    sget v4, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->ARROW_SIZE:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 357
    return-void
.end method

.method public setArrowX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 344
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->arrowX:I

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/KeyboardPopup$PopupArrowDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 346
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 363
    return-void
.end method
