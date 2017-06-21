.class Lcom/vkcoffee/android/PhotoViewer$4;
.super Landroid/widget/FrameLayout;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->initView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;

.field final synthetic val$overlay:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iput-object p3, p0, Lcom/vkcoffee/android/PhotoViewer$4;->val$overlay:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 339
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 308
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$4$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/PhotoViewer$4$1;-><init>(Lcom/vkcoffee/android/PhotoViewer$4;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/PhotoViewer$4;->setWillNotDraw(Z)V

    .line 303
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1100(Lcom/vkcoffee/android/PhotoViewer;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v1}, Lcom/vkcoffee/android/PhotoViewer;->access$1100(Lcom/vkcoffee/android/PhotoViewer;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getHeight()I

    move-result v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v3

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1200(Lcom/vkcoffee/android/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lme/grishka/appkit/utils/V;->findClickableChild(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1300(Lcom/vkcoffee/android/PhotoViewer;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 321
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 322
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->val$overlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 323
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$900(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/ui/PhotoView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/PhotoView;->setPadding(IIII)V

    .line 324
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 325
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$900(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/vkcoffee/android/ui/PhotoView;->layout(IIII)V

    .line 326
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->val$overlay:Landroid/view/View;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 327
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 328
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 332
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 333
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->val$overlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getMeasuredWidth()I

    move-result v1

    or-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$4;->getMeasuredHeight()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 334
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1300(Lcom/vkcoffee/android/PhotoViewer;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
