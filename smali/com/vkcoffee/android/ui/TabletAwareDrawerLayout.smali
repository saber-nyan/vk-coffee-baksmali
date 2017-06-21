.class public Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "TabletAwareDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000


# instance fields
.field private actionBarBg:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

.field private rect:Landroid/graphics/Rect;

.field private showFixed:Z

.field private statusBarHeight:I

.field private statusBarPaint:Landroid/graphics/Paint;

.field private topInset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    .line 23
    iput v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->topInset:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->actionBarBg:Landroid/graphics/drawable/Drawable;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->rect:Landroid/graphics/Rect;

    .line 27
    iput v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarHeight:I

    .line 32
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    .line 23
    iput v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->topInset:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->actionBarBg:Landroid/graphics/drawable/Drawable;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->rect:Landroid/graphics/Rect;

    .line 27
    iput v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarHeight:I

    .line 37
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    .line 23
    iput v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->topInset:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->actionBarBg:Landroid/graphics/drawable/Drawable;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->rect:Landroid/graphics/Rect;

    .line 27
    iput v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarHeight:I

    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f0101a4

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "ta":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public closeDrawers()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 125
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 142
    iget v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarHeight:I

    if-lez v0, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 146
    return-void
.end method

.method public isShownFixed()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 12
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/4 v8, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 60
    .local v5, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 62
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v7, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 63
    .local v7, "ww":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v6, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 64
    .local v6, "wh":I
    if-le v7, v6, :cond_1

    sget-boolean v10, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v10, :cond_1

    move v4, v8

    .line 65
    .local v4, "newShowFixed":Z
    :goto_0
    iget-boolean v10, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eq v10, v4, :cond_0

    .line 66
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    .line 67
    iget-object v10, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->listener:Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

    if-eqz v10, :cond_0

    .line 68
    iget-object v10, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->listener:Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

    invoke-interface {v10, v4}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;->onFixedStateChanged(Z)V

    .line 71
    :cond_0
    iget-boolean v10, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eqz v10, :cond_2

    .line 72
    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "menu":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 75
    .local v3, "mlp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v8, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    or-int/2addr v8, v11

    or-int v10, v1, v11

    invoke-virtual {v2, v8, v10}, Landroid/view/View;->measure(II)V

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v5, v8

    or-int/2addr v8, v11

    or-int v10, v1, v11

    invoke-virtual {v0, v8, v10}, Landroid/view/View;->measure(II)V

    .line 77
    invoke-virtual {p0, v5, v1}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->setMeasuredDimension(II)V

    .line 78
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->setScrimColor(I)V

    .line 84
    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "menu":Landroid/view/View;
    .end local v3    # "mlp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_1
    return-void

    .end local v4    # "newShowFixed":Z
    :cond_1
    move v4, v9

    .line 64
    goto :goto_0

    .line 81
    .restart local v4    # "newShowFixed":Z
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->onMeasure(II)V

    .line 82
    const/high16 v8, -0x67000000

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->setScrimColor(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->showFixed:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnFixedStateChangedListener(Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->listener:Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;

    .line 133
    return-void
.end method

.method public setStatusBarHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->statusBarHeight:I

    .line 137
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/TabletAwareDrawerLayout;->invalidate()V

    .line 138
    return-void
.end method
