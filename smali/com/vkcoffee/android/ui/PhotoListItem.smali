.class public Lcom/vkcoffee/android/ui/PhotoListItem;
.super Landroid/widget/FrameLayout;
.source "PhotoListItem.java"


# instance fields
.field private animStartTime:J

.field private blackPaint:Landroid/graphics/Paint;

.field private image:I

.field private img:Landroid/widget/ImageView;

.field private item:I

.field private reset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->animStartTime:J

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->reset:Z

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->blackPaint:Landroid/graphics/Paint;

    .line 25
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PhotoListItem;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->animStartTime:J

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->reset:Z

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->blackPaint:Landroid/graphics/Paint;

    .line 30
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PhotoListItem;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->animStartTime:J

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->reset:Z

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->blackPaint:Landroid/graphics/Paint;

    .line 35
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PhotoListItem;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/PhotoListItem;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/PhotoListItem;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    .line 39
    const v0, -0xddddde

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/PhotoListItem;->setBackgroundColor(I)V

    .line 40
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/PhotoListItem;->addView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->blackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/PhotoListItem;->setWillNotDraw(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoListItem;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoListItem;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoListItem;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->blackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->reset:Z

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->reset:Z

    .line 75
    return-void
.end method

.method public setBitmapAnimated(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v4, 0x0

    .line 53
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 56
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->reset:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoListItem;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->animStartTime:J

    .line 58
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 59
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 60
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    new-instance v1, Lcom/vkcoffee/android/ui/PhotoListItem$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/PhotoListItem$1;-><init>(Lcom/vkcoffee/android/ui/PhotoListItem;)V

    invoke-virtual {p0, v1, v6, v7}, Lcom/vkcoffee/android/ui/PhotoListItem;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/PhotoListItem;->reset:Z

    .line 68
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method
