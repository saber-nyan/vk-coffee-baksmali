.class public Lcom/vk/attachpicker/widget/ContentViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ContentViewPager.java"


# static fields
.field private static touchSlopField:Ljava/lang/reflect/Field;


# instance fields
.field private allowNestedViewHorizontalScroll:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final shadowHeight:I

.field private swipeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->shadowHeight:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->swipeEnabled:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->allowNestedViewHorizontalScroll:Z

    .line 34
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->shadowHeight:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->swipeEnabled:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->allowNestedViewHorizontalScroll:Z

    .line 39
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->init()V

    .line 40
    return-void
.end method

.method private static enablePagers(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 143
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/vkcoffee/android/ui/DisableableViewPager;

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    instance-of v2, v1, Lme/grishka/appkit/views/DisableableViewPager;

    if-eqz v2, :cond_2

    .line 148
    check-cast v1, Lme/grishka/appkit/views/DisableableViewPager;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1, p1}, Lme/grishka/appkit/views/DisableableViewPager;->setSwipeEnabled(Z)V

    goto :goto_1

    .line 150
    .restart local v1    # "v":Landroid/view/View;
    :cond_2
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 151
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "v":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/vk/attachpicker/widget/ContentViewPager;->enablePagers(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    .line 154
    :cond_3
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    const-class v1, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v2, "mTouchSlop"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/vk/attachpicker/widget/ContentViewPager;->touchSlopField:Ljava/lang/reflect/Field;

    .line 45
    sget-object v1, Lcom/vk/attachpicker/widget/ContentViewPager;->touchSlopField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    sget-object v1, Lcom/vk/attachpicker/widget/ContentViewPager;->touchSlopField:Ljava/lang/reflect/Field;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020274

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v1, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/widget/ContentViewPager;->setWillNotDraw(Z)V

    .line 53
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "mTouchSlop field not found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->allowNestedViewHorizontalScroll:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->draw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    .line 64
    .local v0, "res":Z
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getPaddingRight()I

    move-result v3

    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/vk/attachpicker/widget/ContentViewPager;->setPadding(IIII)V

    .line 65
    return v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->swipeEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    iget-boolean v1, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->swipeEnabled:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 121
    .local v0, "newHeight":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 122
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    .line 71
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ContentViewPager;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->shadowHeight:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    iget-boolean v1, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->swipeEnabled:Z

    if-eqz v1, :cond_0

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllowNestedViewHorizontalScroll(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->allowNestedViewHorizontalScroll:Z

    .line 135
    invoke-static {p0}, Lcom/vk/attachpicker/util/Utils;->getPagerActiveView(Landroid/support/v4/view/ViewPager;)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "activeView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 137
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "activeView":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/vk/attachpicker/widget/ContentViewPager;->enablePagers(Landroid/view/ViewGroup;Z)V

    .line 139
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-super {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 58
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/ContentViewPager;->swipeEnabled:Z

    .line 130
    return-void
.end method
