.class public Lcom/vkcoffee/android/ui/ClippingImageView;
.super Landroid/view/View;
.source "ClippingImageView.java"


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private clipBottom:I

.field private clipLeft:I

.field private clipRight:I

.field private clipTop:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->paint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public getClipBottom()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipBottom:I

    return v0
.end method

.method public getClipHorizontal()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipRight:I

    return v0
.end method

.method public getClipLeft()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipLeft:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipRight:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipTop:I

    return v0
.end method

.method public getClipVertical()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipTop:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipLeft:I

    iget v2, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipTop:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipRight:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipBottom:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 110
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    return-void
.end method

.method public setClipBottom(I)V
    .locals 0
    .param p1, "clipBottom"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipBottom:I

    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->invalidate()V

    .line 65
    return-void
.end method

.method public setClipHorizontal(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipRight:I

    iput p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipLeft:I

    .line 88
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->invalidate()V

    .line 89
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0
    .param p1, "clipLeft"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipLeft:I

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->invalidate()V

    .line 56
    return-void
.end method

.method public setClipRight(I)V
    .locals 0
    .param p1, "clipRight"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipRight:I

    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->invalidate()V

    .line 74
    return-void
.end method

.method public setClipTop(I)V
    .locals 0
    .param p1, "clipTop"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipTop:I

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->invalidate()V

    .line 47
    return-void
.end method

.method public setClipVertical(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipBottom:I

    iput p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->clipTop:I

    .line 79
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->invalidate()V

    .line 80
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    .line 97
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ClippingImageView;->invalidate()V

    .line 98
    return-void
.end method
