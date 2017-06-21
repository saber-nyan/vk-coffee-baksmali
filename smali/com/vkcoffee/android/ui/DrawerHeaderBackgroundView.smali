.class public Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;
.super Landroid/view/View;
.source "DrawerHeaderBackgroundView.java"


# instance fields
.field private gradientDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 46
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 47
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lez v0, :cond_0

    .end local v0    # "h":I
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/ui/DrawerHeaderBackgroundView;->setMeasuredDimension(II)V

    .line 48
    return-void

    .line 47
    .restart local v0    # "h":I
    :cond_0
    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    goto :goto_0
.end method
