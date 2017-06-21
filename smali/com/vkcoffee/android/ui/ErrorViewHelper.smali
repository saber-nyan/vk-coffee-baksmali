.class public Lcom/vkcoffee/android/ui/ErrorViewHelper;
.super Ljava/lang/Object;
.source "ErrorViewHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private button:Landroid/view/View;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private retryListener:Landroid/view/View$OnClickListener;

.field private text:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/vkcoffee/android/ui/ErrorViewHelper$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ErrorViewHelper$1;-><init>(Lcom/vkcoffee/android/ui/ErrorViewHelper;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 41
    const v0, 0x7f10010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->button:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->button:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->button:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->button:Landroid/view/View;

    .line 43
    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->text:Landroid/widget/TextView;

    .line 44
    return-void

    .line 42
    :cond_0
    const v0, 0x7f1001ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/ErrorViewHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ErrorViewHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/ErrorViewHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ErrorViewHelper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->retry()V

    return-void
.end method

.method private retry()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->retryListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->retryListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->button:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static setVisibility(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V
    .locals 1
    .param p0, "viewHelper"    # Lcom/vkcoffee/android/ui/ErrorViewHelper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "visibility"    # I

    .prologue
    .line 78
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 79
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public static setVisibilityAnimated(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V
    .locals 1
    .param p0, "viewHelper"    # Lcom/vkcoffee/android/ui/ErrorViewHelper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "visibility"    # I

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setErrorInfo(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->getLocalizedError(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setMessage(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setErrorInfo(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v0

    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setErrorInfo(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setOnRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onRetryListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->button:Landroid/view/View;

    iput-object p1, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->retryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorViewHelper;->view:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 75
    return-void
.end method
