.class public Lcom/vkcoffee/android/ui/URLDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "URLDrawable.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected final mBitmapPaint:Landroid/graphics/Paint;

.field private final mDefaultPlaceholder:Landroid/graphics/drawable/Drawable;

.field protected final mHost:Landroid/view/View;

.field private mLocalPath:Ljava/lang/String;

.field private mPlaceholder:Landroid/graphics/drawable/Drawable;

.field protected final mTarget:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x14110e

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mDefaultPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 33
    new-instance v0, Lcom/vkcoffee/android/ui/URLDrawable$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/URLDrawable$1;-><init>(Lcom/vkcoffee/android/ui/URLDrawable;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mTarget:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

    .line 64
    iput-object p1, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mHost:Landroid/view/View;

    .line 65
    iput-object p2, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mUrl:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mLocalPath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/ui/URLDrawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/URLDrawable;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/URLDrawable;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/URLDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/URLDrawable;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/URLDrawable;->invalidateSelf()V

    .line 58
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/URLDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public load()Lcom/vkcoffee/android/ui/URLDrawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mDefaultPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/URLDrawable;->load(Landroid/graphics/drawable/Drawable;)Lcom/vkcoffee/android/ui/URLDrawable;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/vkcoffee/android/ui/URLDrawable;
    .locals 4
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/URLDrawable;->setImage(Landroid/graphics/Bitmap;)V

    .line 81
    :cond_0
    :goto_0
    return-object p0

    .line 76
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/URLDrawable;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mTarget:Lme/grishka/appkit/imageloader/ViewImageLoader$Target;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mLocalPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/URLDrawable;->invalidateSelf()V

    .line 100
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable;->mPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/URLDrawable;->invalidateSelf()V

    .line 109
    return-void
.end method
