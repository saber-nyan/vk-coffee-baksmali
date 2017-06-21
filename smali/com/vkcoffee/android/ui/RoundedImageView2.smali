.class public Lcom/vkcoffee/android/ui/RoundedImageView2;
.super Landroid/widget/ImageView;
.source "RoundedImageView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;,
        Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;,
        Lcom/vkcoffee/android/ui/RoundedImageView2$OnBitmap;
    }
.end annotation


# instance fields
.field private corners:I

.field private factory:Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

.field private imageRatio:F

.field private isHeight:Z

.field private onBitmap:Lcom/vkcoffee/android/ui/RoundedImageView2$OnBitmap;

.field private roundDrawableEnable:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->isHeight:Z

    .line 41
    iput-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->factory:Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/vkcoffee/android/ui/RoundedImageView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->isHeight:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->factory:Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/RoundedImageView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->isHeight:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->factory:Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/RoundedImageView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->isHeight:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->factory:Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/RoundedImageView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/RoundedImageView2;Landroid/graphics/RectF;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/RoundedImageView2;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/RoundedImageView2;->getCorners(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method private createRoundedDrawable(Landroid/graphics/Bitmap;Lcom/vkcoffee/android/ui/RoundedImageView2;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageView"    # Lcom/vkcoffee/android/ui/RoundedImageView2;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->factory:Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/ui/RoundedImageView2$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/vkcoffee/android/ui/RoundedImageView2;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->factory:Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

    invoke-interface {v0, p1, p2}, Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;->create(Landroid/graphics/Bitmap;Lcom/vkcoffee/android/ui/RoundedImageView2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getCorners(Landroid/graphics/RectF;)F
    .locals 2
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->corners:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 86
    if-eqz p2, :cond_0

    .line 87
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->corners:I

    .line 89
    const/4 v1, 0x2

    iget v2, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 139
    iget v2, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 140
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->isHeight:Z

    if-eqz v2, :cond_1

    .line 141
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 142
    .local v0, "h":I
    int-to-float v2, v0

    iget v3, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 148
    .end local v0    # "h":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 149
    return-void

    .line 144
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 145
    .local v1, "w":I
    int-to-float v2, v1

    iget v3, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0
.end method

.method public setFactory(Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->factory:Lcom/vkcoffee/android/ui/RoundedImageView2$DrawableFactory;

    .line 74
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->onBitmap:Lcom/vkcoffee/android/ui/RoundedImageView2$OnBitmap;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->onBitmap:Lcom/vkcoffee/android/ui/RoundedImageView2$OnBitmap;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/RoundedImageView2$OnBitmap;->onBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    :cond_1
    invoke-direct {p0, p1, p0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->createRoundedDrawable(Landroid/graphics/Bitmap;Lcom/vkcoffee/android/ui/RoundedImageView2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 121
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    :goto_0
    return-void

    .line 123
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageRatio(F)V
    .locals 0
    .param p1, "imageRatio"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->imageRatio:F

    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->requestLayout()V

    .line 79
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 131
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/RoundedImageView2;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    :goto_0
    return-void

    .line 133
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setIsHeight(Z)V
    .locals 0
    .param p1, "isHeight"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->isHeight:Z

    .line 83
    return-void
.end method

.method public setOnBitmap(Lcom/vkcoffee/android/ui/RoundedImageView2$OnBitmap;)V
    .locals 0
    .param p1, "onBitmap"    # Lcom/vkcoffee/android/ui/RoundedImageView2$OnBitmap;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->onBitmap:Lcom/vkcoffee/android/ui/RoundedImageView2$OnBitmap;

    .line 96
    return-void
.end method

.method public setRoundDrawableEnable(Z)V
    .locals 1
    .param p1, "roundDrawableEnable"    # Z

    .prologue
    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView2;->roundDrawableEnable:Ljava/lang/Boolean;

    .line 70
    return-void
.end method
