.class public Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;
.super Lcom/vkcoffee/android/ui/widget/VKRecyclerView;
.source "ChatRecyclerView.java"


# instance fields
.field dx:I

.field private gestureDetector:Landroid/view/GestureDetector;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private ret:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->ret:Z

    .line 21
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->dx:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->ret:Z

    .line 21
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->dx:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->ret:Z

    .line 21
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->dx:I

    .line 34
    return-void
.end method


# virtual methods
.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->dx:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->gestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 43
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->ret:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->gestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->ret:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "gestureDetector"    # Landroid/view/GestureDetector;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->gestureDetector:Landroid/view/GestureDetector;

    .line 38
    return-void
.end method
