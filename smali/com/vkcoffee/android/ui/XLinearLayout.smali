.class public Lcom/vkcoffee/android/ui/XLinearLayout;
.super Landroid/widget/LinearLayout;
.source "XLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;

.field private prevh:I

.field private prevw:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    iput v0, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevw:I

    iput v0, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevh:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->listener:Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput v0, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevw:I

    iput v0, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevh:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->listener:Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 8
    .param p1, "wm"    # I
    .param p2, "hm"    # I

    .prologue
    const/4 v7, -0x1

    .line 22
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/XLinearLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .local v5, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 27
    .local v1, "h":I
    iget v6, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevh:I

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevw:I

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevw:I

    if-ne v6, v5, :cond_1

    .line 28
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/XLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 30
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 31
    .local v4, "statusBarHeight":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/XLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 32
    .local v3, "screenHeight":I
    sub-int v6, v3, v4

    sub-int v0, v6, v1

    .line 34
    .local v0, "diff":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->listener:Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;

    if-eqz v6, :cond_1

    .line 35
    iget-object v7, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->listener:Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;

    const/16 v6, 0x80

    if-lt v0, v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v7, v6}, Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;->onKeyboardStateChanged(Z)V

    .line 38
    .end local v0    # "diff":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "screenHeight":I
    .end local v4    # "statusBarHeight":I
    :cond_1
    iput v5, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevw:I

    .line 39
    iput v1, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->prevh:I

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 35
    .restart local v0    # "diff":I
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "screenHeight":I
    .restart local v4    # "statusBarHeight":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setOnKeyboardStateListener(Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkcoffee/android/ui/XLinearLayout;->listener:Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;

    .line 49
    return-void
.end method
