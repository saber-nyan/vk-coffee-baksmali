.class public Lcom/vkcoffee/android/ui/util/DividerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DividerDrawable.java"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field final color:I

.field final leftPadding:I

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "leftPadding"    # I
    .param p2, "color"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->bounds:Landroid/graphics/Rect;

    .line 16
    iput p1, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->leftPadding:I

    .line 17
    iput p2, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->color:I

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->paint:Landroid/graphics/Paint;

    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->bounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 30
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->bounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->leftPadding:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/DividerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 40
    return-void
.end method
