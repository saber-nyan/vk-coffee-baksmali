.class public Lcom/vkcoffee/android/ui/AlbumScrollView;
.super Landroid/widget/ScrollView;
.source "AlbumScrollView.java"


# instance fields
.field public heightMSpec:I

.field public widthMSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/vkcoffee/android/ui/AlbumScrollView;->widthMSpec:I

    .line 31
    iput p2, p0, Lcom/vkcoffee/android/ui/AlbumScrollView;->heightMSpec:I

    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 40
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/AlbumScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 56
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/AlbumScrollView;->setFadingEdgeLength(I)V

    .line 57
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AlbumScrollView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
