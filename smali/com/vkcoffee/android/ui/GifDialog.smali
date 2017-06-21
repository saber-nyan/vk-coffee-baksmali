.class public Lcom/vkcoffee/android/ui/GifDialog;
.super Landroid/app/Dialog;
.source "GifDialog.java"


# instance fields
.field private gifView:Lcom/vkcoffee/android/ui/GifView;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/GifDialog;->requestWindowFeature(I)Z

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/GifDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/GifDialog;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkcoffee/android/ui/GifDialog;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x42200000    # 40.0f

    const/4 v6, 0x0

    .line 27
    iget-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->gifView:Lcom/vkcoffee/android/ui/GifView;

    if-eqz v2, :cond_0

    .line 28
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Already initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/ui/GifView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/GifDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/ui/GifView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->gifView:Lcom/vkcoffee/android/ui/GifView;

    .line 31
    iget-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->gifView:Lcom/vkcoffee/android/ui/GifView;

    new-instance v3, Lcom/vkcoffee/android/ui/GifDialog$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ui/GifDialog$1;-><init>(Lcom/vkcoffee/android/ui/GifDialog;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/GifView;->setProgressCallback(Lcom/vkcoffee/android/ui/GifView$ProgressCallback;)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/GifDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "content":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->gifView:Lcom/vkcoffee/android/ui/GifView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 57
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/GifDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x10300c5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->progress:Landroid/widget/ProgressBar;

    .line 58
    iget-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 59
    new-instance v1, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v1, v6}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    .line 60
    .local v1, "cpd":Lcom/vkcoffee/android/ui/CircularProgressDrawable;
    const/high16 v2, 0x50000000

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setColors(II)V

    .line 61
    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setDimBackground(Z)V

    .line 62
    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setPad(Z)V

    .line 63
    iget-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->progress:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/GifDialog;->setContentView(Landroid/view/View;)V

    .line 68
    iget-object v2, p0, Lcom/vkcoffee/android/ui/GifDialog;->gifView:Lcom/vkcoffee/android/ui/GifView;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/ui/GifView;->loadURL(Ljava/lang/String;)V

    .line 69
    return-void
.end method
