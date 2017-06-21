.class Lcom/vkcoffee/android/stickers/StickersBackground$Background;
.super Landroid/graphics/drawable/Drawable;
.source "StickersBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickersBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Background"
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x14110e

.field private static final mUiHandler:Landroid/os/Handler;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmpty:Z

.field private mLoading:Z

.field private final mLocalPath:Ljava/lang/String;

.field private final mPlaceholder:Landroid/graphics/Paint;

.field private final mSrcBound:Landroid/graphics/Rect;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mPlaceholder:Landroid/graphics/Paint;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mSrcBound:Landroid/graphics/Rect;

    .line 130
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mUrl:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLocalPath:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mEmpty:Z

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mPlaceholder:Landroid/graphics/Paint;

    const v1, -0x14110e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/stickers/StickersBackground$Background;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/stickers/StickersBackground$Background;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/stickers/StickersBackground$Background;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickersBackground$Background;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLoading:Z

    return p1
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    iput-boolean v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLoading:Z

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    iput-boolean v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLoading:Z

    goto :goto_0

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLoading:Z

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mLoading:Z

    .line 160
    new-instance v0, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;-><init>(Lcom/vkcoffee/android/stickers/StickersBackground$Background;)V

    .line 172
    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background$1;->start()V

    goto :goto_0
.end method

.method private updateBounds(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 219
    .local v0, "bitmapRatio":F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 220
    .local v1, "viewRatio":F
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mSrcBound:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 221
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mSrcBound:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 223
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mSrcBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 226
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mSrcBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mSrcBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 230
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mSrcBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-lez v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmap:Landroid/graphics/Bitmap;

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mSrcBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 149
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mPlaceholder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 144
    iget-boolean v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mEmpty:Z

    if-nez v1, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->loadImage()V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 208
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->updateBounds(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 211
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->invalidateSelf()V

    .line 212
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mPlaceholder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    if-nez p1, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmap:Landroid/graphics/Bitmap;

    .line 183
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapRef:Ljava/lang/ref/SoftReference;

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->updateBounds(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->invalidateSelf()V

    .line 202
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->mPlaceholder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 189
    return-void
.end method
