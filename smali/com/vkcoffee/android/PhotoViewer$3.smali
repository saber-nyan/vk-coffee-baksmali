.class Lcom/vkcoffee/android/PhotoViewer$3;
.super Landroid/view/View;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->initView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private btmBg:Landroid/graphics/drawable/Drawable;

.field private lastAlpha:I

.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;

.field private tmpRect:Landroid/graphics/Rect;

.field private topBg:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$3;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->topBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->btmBg:Landroid/graphics/drawable/Drawable;

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->bgPaint:Landroid/graphics/Paint;

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->tmpRect:Landroid/graphics/Rect;

    .line 255
    const/16 v0, 0x99

    iput v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->lastAlpha:I

    return-void
.end method


# virtual methods
.method public getGradientsAlpha()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->lastAlpha:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/16 v2, 0x99

    .line 259
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->bgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->topBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 262
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->btmBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 263
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer$3;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer$3;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer$3;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingRight()I

    move-result v0

    if-lez v0, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer$3;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->topBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingTop()I

    move-result v2

    const/high16 v3, 0x42d00000    # 104.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->topBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->btmBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x43880000    # 272.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer$3;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v3}, Lcom/vkcoffee/android/PhotoViewer;->access$800(Lcom/vkcoffee/android/PhotoViewer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x42e00000    # 112.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->btmBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    return-void
.end method

.method public setGradientsAlpha(I)V
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->topBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$3;->btmBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 292
    iput p1, p0, Lcom/vkcoffee/android/PhotoViewer$3;->lastAlpha:I

    .line 293
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$3;->postInvalidate()V

    .line 294
    return-void
.end method
