.class Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SuggestFriendsNearbyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedGradientMaskDrawable"
.end annotation


# static fields
.field private static final DURATION:J = 0x1388L


# instance fields
.field private animStartTime:J

.field private bitmap:Landroid/graphics/Bitmap;

.field private bmpPaint:Landroid/graphics/Paint;

.field private colorPaint:Landroid/graphics/Paint;

.field private maskPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->animStartTime:J

    .line 306
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->maskPaint:Landroid/graphics/Paint;

    .line 308
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bmpPaint:Landroid/graphics/Paint;

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bmpPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 310
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->colorPaint:Landroid/graphics/Paint;

    .line 311
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->colorPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->colorPaint:Landroid/graphics/Paint;

    const v1, -0xe68943

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 317
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->animStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x459c4000    # 5000.0f

    div-float v8, v0, v1

    .line 319
    .local v8, "time":F
    float-to-double v0, v8

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/16 v7, 0xff

    .line 320
    .local v7, "alpha":I
    :goto_0
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->maskPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v10

    float-to-double v10, v8

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v3, v4

    const v4, 0x3727c5ac    # 1.0E-5f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    shl-int/lit8 v6, v7, 0x18

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 321
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 322
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 323
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 325
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->invalidateSelf()V

    .line 326
    return-void

    .line 319
    .end local v7    # "alpha":I
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f333333    # 0.7f

    sub-float v1, v8, v1

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto/16 :goto_0

    .line 320
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$AnimatedGradientMaskDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 331
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 336
    return-void
.end method
