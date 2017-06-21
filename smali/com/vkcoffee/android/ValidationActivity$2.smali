.class Lcom/vkcoffee/android/ValidationActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "ValidationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ValidationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ValidationActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ValidationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ValidationActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 144
    sget v0, Lcom/vkcoffee/android/ValidationActivity;->result:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "return_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x1

    sput v0, Lcom/vkcoffee/android/ValidationActivity;->result:I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ValidationActivity;->finish()V

    .line 148
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 152
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 153
    .local v0, "t":Landroid/webkit/WebView$WebViewTransport;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "w":Landroid/webkit/WebView;
    new-instance v2, Lcom/vkcoffee/android/ValidationActivity$2$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ValidationActivity$2$1;-><init>(Lcom/vkcoffee/android/ValidationActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 162
    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 163
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 164
    const/4 v2, 0x1

    return v2
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progr"    # I

    .prologue
    .line 125
    const/16 v2, 0x64

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 127
    .local v0, "visible":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/ValidationActivity;->access$200(Lcom/vkcoffee/android/ValidationActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    iget-object v2, p0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/ValidationActivity;->access$200(Lcom/vkcoffee/android/ValidationActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/ValidationActivity;->access$200(Lcom/vkcoffee/android/ValidationActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 140
    :cond_0
    :goto_1
    return-void

    .line 125
    .end local v0    # "visible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    .restart local v0    # "visible":Z
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/ValidationActivity;->access$200(Lcom/vkcoffee/android/ValidationActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 134
    iget-object v2, p0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ValidationActivity;->access$202(Lcom/vkcoffee/android/ValidationActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method
