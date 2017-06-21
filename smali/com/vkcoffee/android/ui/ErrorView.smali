.class public Lcom/vkcoffee/android/ui/ErrorView;
.super Landroid/widget/LinearLayout;
.source "ErrorView.java"


# instance fields
.field private lastClickTime:J

.field private receiver:Landroid/content/BroadcastReceiver;

.field private retryListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->lastClickTime:J

    .line 21
    new-instance v0, Lcom/vkcoffee/android/ui/ErrorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ErrorView$1;-><init>(Lcom/vkcoffee/android/ui/ErrorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 38
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ErrorView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->lastClickTime:J

    .line 21
    new-instance v0, Lcom/vkcoffee/android/ui/ErrorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ErrorView$1;-><init>(Lcom/vkcoffee/android/ui/ErrorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 43
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ErrorView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->lastClickTime:J

    .line 21
    new-instance v0, Lcom/vkcoffee/android/ui/ErrorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ErrorView$1;-><init>(Lcom/vkcoffee/android/ui/ErrorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 48
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ErrorView;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/ErrorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ErrorView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ErrorView;->retry()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/ErrorView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ErrorView;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->lastClickTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/ui/ErrorView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ErrorView;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/vkcoffee/android/ui/ErrorView;->lastClickTime:J

    return-wide p1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method private retry()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->retryListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ErrorView;->retryListener:Landroid/view/View$OnClickListener;

    const v1, 0x7f1001ea

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 79
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ErrorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ErrorView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ErrorView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkcoffee/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    :cond_0
    const v0, 0x7f1001ea

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/ErrorView$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/ErrorView$2;-><init>(Lcom/vkcoffee/android/ui/ErrorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public setErrorInfo(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->getLocalizedError(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ErrorView;->setMessage(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setErrorInfo(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v0

    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public setIsInline(Z)V
    .locals 2
    .param p1, "inl"    # Z

    .prologue
    .line 119
    const v0, 0x7f1001e9

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 115
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setOnRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ErrorView;->retryListener:Landroid/view/View$OnClickListener;

    .line 104
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "vis"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ErrorView;->getVisibility()I

    move-result v1

    .line 89
    .local v1, "prev":I
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ErrorView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/ErrorView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ErrorView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/ErrorView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    goto :goto_0
.end method
