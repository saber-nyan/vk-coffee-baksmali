.class Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;
.super Landroid/webkit/WebChromeClient;
.source "WikiViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/WikiViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebChrome"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 131
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALERT -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$1(Lcom/vkcoffee/android/fragments/WikiViewFragment;)Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setProgress(I)V

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$1(Lcom/vkcoffee/android/fragments/WikiViewFragment;)Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    move-result-object v1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-static {v1, v0}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 121
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->dataLoaded()V

    .line 124
    :cond_0
    const/16 v0, 0x32

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$2(Lcom/vkcoffee/android/fragments/WikiViewFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$3(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V

    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;->this$0:Lcom/vkcoffee/android/fragments/WikiViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->access$4(Lcom/vkcoffee/android/fragments/WikiViewFragment;Z)V

    .line 128
    :cond_1
    return-void

    .line 120
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
