.class public Lcom/vkcoffee/android/ui/widget/SpinnerNews;
.super Lme/grishka/appkit/views/NavigationSpinner;
.source "SpinnerNews.java"


# instance fields
.field lastX:F

.field lastY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/NavigationSpinner;-><init>(Landroid/content/Context;)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastY:F

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/views/NavigationSpinner;-><init>(Landroid/content/Context;I)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastY:F

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/views/NavigationSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastY:F

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lme/grishka/appkit/views/NavigationSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastY:F

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lme/grishka/appkit/views/NavigationSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastY:F

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p5}, Lme/grishka/appkit/views/NavigationSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 12
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    .line 13
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastY:F

    .line 29
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastY:F

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->getChildCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 56
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "child":Landroid/view/View;
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-super {p0, p1}, Lme/grishka/appkit/views/NavigationSpinner;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return v1

    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lme/grishka/appkit/views/NavigationSpinner;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastY:F

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->getChildCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 44
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "child":Landroid/view/View;
    iget v3, p0, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->lastX:F

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SpinnerNews;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-super {p0, p1}, Lme/grishka/appkit/views/NavigationSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return v1

    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lme/grishka/appkit/views/NavigationSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method
