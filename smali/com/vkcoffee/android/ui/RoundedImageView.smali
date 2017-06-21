.class public Lcom/vkcoffee/android/ui/RoundedImageView;
.super Lcom/vkcoffee/android/ui/widget/RatioImageView;
.source "RoundedImageView.java"


# instance fields
.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView;->mRadius:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView;->mRadius:I

    .line 23
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/RoundedImageView;->init(Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView;->mRadius:I

    .line 36
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/RoundedImageView;->init(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/RoundedImageView;->mRadius:I

    .line 41
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/RoundedImageView;->init(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/R$styleable;->RoundedImageView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/RoundedImageView;->mRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView;->mRadius:I

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    new-instance v0, Lcom/vkcoffee/android/ui/RoundedDrawable;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView;->mRadius:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RoundedDrawable;->setRadius(I)Lcom/vkcoffee/android/ui/RoundedDrawable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/vkcoffee/android/ui/RoundedDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/vkcoffee/android/ui/RoundedImageView;->mRadius:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/RoundedDrawable;->setRadius(I)Lcom/vkcoffee/android/ui/RoundedDrawable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :goto_0
    return-void

    .line 49
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method
