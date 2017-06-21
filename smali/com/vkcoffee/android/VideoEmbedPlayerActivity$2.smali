.class Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "VideoEmbedPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field customView:Landroid/view/View;

.field final synthetic this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 115
    new-instance v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-direct {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "progr":Landroid/widget/ProgressBar;
    const v1, 0x7f0202f5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    .line 117
    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 118
    return-object v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "On hide custom view"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$300(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 99
    iput-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customView:Landroid/view/View;

    .line 100
    iput-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$200(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progr"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 105
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$100(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$100(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    invoke-static {v0, v2}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$402(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;Z)Z

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$100(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    int-to-double v2, p2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/ui/CircularProgressBar;->setProgress(D)V

    .line 112
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$100(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/CircularProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$400(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$100(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v3, -0x1

    .line 77
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "on show custom view"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customView:Landroid/view/View;

    .line 82
    iput-object p2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 83
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$200(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$300(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;->customView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
