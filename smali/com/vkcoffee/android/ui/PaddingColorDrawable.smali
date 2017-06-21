.class public Lcom/vkcoffee/android/ui/PaddingColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "PaddingColorDrawable.java"


# instance fields
.field private pad:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->paint:Landroid/graphics/Paint;

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "padding"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->paint:Landroid/graphics/Paint;

    .line 19
    iput p2, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->pad:I

    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 33
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->pad:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 34
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->pad:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 35
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->paint:Landroid/graphics/Paint;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PaddingColorDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    return-void
.end method
