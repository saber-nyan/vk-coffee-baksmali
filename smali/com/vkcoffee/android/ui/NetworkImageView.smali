.class public Lcom/vkcoffee/android/ui/NetworkImageView;
.super Lcom/vkcoffee/android/ui/OverlayImageView;
.source "NetworkImageView.java"


# instance fields
.field private wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/OverlayImageView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/OverlayImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/OverlayImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/NetworkImageView;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/NetworkImageView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NetworkImageView;->wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/ui/NetworkImageView;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/NetworkImageView;
    .param p1, "x1"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NetworkImageView;->wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NetworkImageView;->wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/ui/NetworkImageView$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/NetworkImageView$2;-><init>(Lcom/vkcoffee/android/ui/NetworkImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/ui/NetworkImageView$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/ui/NetworkImageView$1;-><init>(Lcom/vkcoffee/android/ui/NetworkImageView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/vkcoffee/android/ui/OverlayImageView;->onDetachedFromWindow()V

    .line 63
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/NetworkImageView;->cancel()V

    .line 64
    return-void
.end method
