.class Lcom/vkcoffee/android/stickers/ThumbDrawable;
.super Lcom/vkcoffee/android/ui/URLDrawable;
.source "ThumbDrawable.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/URLDrawable;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/URLDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 22
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 24
    .local v0, "cY":I
    shr-int/lit8 v2, v1, 0x1

    sub-int v2, v0, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 25
    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 26
    return-void
.end method
