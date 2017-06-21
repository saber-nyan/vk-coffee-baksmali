.class public Lcom/vkcoffee/android/ui/LoadMoreFooterView;
.super Landroid/widget/FrameLayout;
.source "LoadMoreFooterView.java"


# instance fields
.field private progress:Landroid/widget/ProgressBar;

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->visible:Z

    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->visible:Z

    .line 23
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->visible:Z

    .line 28
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/high16 v4, 0x42000000    # 32.0f

    .line 32
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->progress:Landroid/widget/ProgressBar;

    .line 33
    iget-object v1, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->progress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v1, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->addView(Landroid/view/View;)V

    .line 36
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    .line 37
    .local v0, "pad":I
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->setPadding(IIII)V

    .line 38
    return-void
.end method


# virtual methods
.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->visible:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/4 v1, 0x1

    .line 41
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->visible:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->visible:Z

    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->requestLayout()V

    .line 51
    return-void
.end method
