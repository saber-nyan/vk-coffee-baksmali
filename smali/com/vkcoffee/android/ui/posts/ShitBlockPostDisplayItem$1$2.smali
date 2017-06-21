.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;Landroid/view/View;Landroid/webkit/WebView;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$wv:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$wv:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$1$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080162

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    :cond_0
    return-void
.end method
