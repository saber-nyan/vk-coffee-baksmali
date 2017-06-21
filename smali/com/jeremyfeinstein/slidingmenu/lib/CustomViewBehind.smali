.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static final MARGIN_THRESHOLD:I = 0x30

.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"


# instance fields
.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mMarginThreshold:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

.field private mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    .line 384
    iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    .line 41
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 40
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    .line 42
    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 430
    .local v0, "y":I
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 431
    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 121
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 9
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 363
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeEnabled:Z

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 364
    :cond_0
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeDegree:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 365
    .local v6, "alpha":I
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    const/4 v7, 0x0

    .line 367
    .local v7, "left":I
    const/4 v8, 0x0

    .line 368
    .local v8, "right":I
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_2

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 381
    :cond_1
    :goto_1
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 371
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    .line 374
    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 377
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_1
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 389
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    if-nez v4, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    sget v5, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->selected_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "CustomViewBehindSelectedView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 395
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v1, v4

    .line 396
    .local v1, "offset":I
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v4, :cond_3

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 398
    .local v2, "right":I
    sub-int v0, v2, v1

    .line 399
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 400
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 407
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 401
    :cond_3
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 403
    .restart local v0    # "left":I
    add-int v2, v0, v1

    .line 404
    .restart local v2    # "right":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 405
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    if-gtz v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x0

    .line 346
    .local v0, "left":I
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v1, :cond_3

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    .line 358
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 348
    :cond_3
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 350
    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 351
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 354
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 267
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 268
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_1
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 276
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 278
    :cond_0
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMarginThreshold()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    return v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 2
    .param p1, "content"    # Landroid/view/View;
    .param p2, "page"    # I

    .prologue
    .line 241
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_1

    .line 242
    packed-switch p2, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_1
    return v0

    .line 244
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 246
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 248
    :cond_1
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 249
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 251
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 253
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 255
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 256
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 258
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 260
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 249
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 256
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 205
    if-le p1, v3, :cond_1

    move p1, v0

    .line 206
    :cond_0
    :goto_0
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 211
    :goto_1
    return v1

    .line 205
    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 208
    :cond_2
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    .line 209
    goto :goto_1

    :cond_3
    move v1, p1

    .line 211
    goto :goto_1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 6
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 286
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 287
    .local v1, "right":I
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v4, :cond_2

    .line 288
    if-lt p2, v0, :cond_1

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 288
    goto :goto_0

    .line 289
    :cond_2
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v4, v2, :cond_4

    .line 290
    if-gt p2, v1, :cond_3

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 291
    :cond_4
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 292
    if-lt p2, v0, :cond_5

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-le p2, v4, :cond_0

    .line 293
    :cond_5
    if-gt p2, v1, :cond_6

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    .line 292
    if-ge p2, v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v3

    .line 295
    goto :goto_0
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 322
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 323
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 323
    goto :goto_0

    .line 324
    :cond_2
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 325
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 326
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 329
    goto :goto_0
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 333
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 334
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 334
    goto :goto_0

    .line 335
    :cond_2
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 336
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 337
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 340
    goto :goto_0
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .locals 1
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    .line 303
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 309
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 305
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .locals 4
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 313
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_2

    if-nez p2, :cond_2

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    move v0, v1

    .line 318
    :cond_1
    :goto_0
    return v0

    .line 315
    :cond_2
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 316
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 129
    sub-int v1, p4, p2

    .line 130
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 131
    .local v0, "height":I
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 132
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 134
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-static {v5, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 139
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 140
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMeasuredDimension(II)V

    .line 141
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 142
    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 143
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 144
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 146
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "vis":I
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v1, :cond_3

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    const/4 v0, 0x4

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    .line 235
    :cond_1
    :goto_0
    if-ne v0, v2, :cond_2

    .line 236
    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setVisibility(I)V

    .line 238
    return-void

    .line 220
    :cond_3
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_4

    const/4 v0, 0x4

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 223
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 222
    invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 224
    :cond_5
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    if-nez p2, :cond_8

    move v0, v2

    .line 228
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_9

    .line 229
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 225
    goto :goto_1

    :cond_7
    move v1, v3

    .line 226
    goto :goto_2

    :cond_8
    move v0, v3

    .line 227
    goto :goto_3

    .line 231
    :cond_9
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 232
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 231
    invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 102
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 104
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .param p1, "t"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .line 50
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    .line 97
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public setCustomViewAbove(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V
    .locals 0
    .param p1, "customViewAbove"    # Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .line 46
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 199
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeDegree:F

    .line 202
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeEnabled:Z

    .line 196
    return-void
.end method

.method public setMarginThreshold(I)V
    .locals 0
    .param p1, "marginThreshold"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    .line 59
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 158
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_2
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    .line 165
    return-void
.end method

.method public setScrollScale(F)V
    .locals 0
    .param p1, "scrollScale"    # F

    .prologue
    .line 172
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    .line 173
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 187
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    sget v1, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->selected_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 419
    iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 421
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    sget v1, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->selected_view:I

    const-string v2, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 424
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 426
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    .line 436
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->refreshDrawableState()V

    .line 437
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    .line 414
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 182
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    .line 191
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 192
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    .line 300
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    .line 54
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->requestLayout()V

    .line 55
    return-void
.end method
