.class public Lcom/vkcoffee/android/fragments/SignupCodeFragment;
.super Lcom/vkcoffee/android/fragments/VKFragment;
.source "SignupCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;,
        Lcom/vkcoffee/android/fragments/SignupCodeFragment$TimeUpdater;
    }
.end annotation


# instance fields
.field private doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

.field private initTime:J

.field private listener:Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

.field private phoneNumber:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->initTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Lcom/vkcoffee/android/functions/VoidF0;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->listener:Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v1, 0x7f1003b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$170()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v1, 0x7f1003b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0804ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v1, 0x7f1003b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateView$169(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$onCreateView$171(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->listener:Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->listener:Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;->resendCode(ZLjava/lang/Runnable;)V

    .line 121
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateView$172()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 124
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 125
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 126
    return-void
.end method

.method synthetic lambda$onCreateView$173(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    invoke-interface {v0}, Lcom/vkcoffee/android/functions/VoidF0;->f()V

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string/jumbo v0, "init_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->initTime:J

    .line 70
    :goto_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void

    .line 68
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->initTime:J

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const v7, 0x7f03016c

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    .line 93
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v8, 0x7f10006b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 94
    .local v5, "topBlock":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .local v2, "pl":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .local v4, "pt":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .local v3, "pr":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 95
    .local v1, "pb":I
    new-instance v8, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    int-to-float v11, v7

    sget-boolean v7, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-direct {v8, v9, v10, v11, v7}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 98
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_0

    .line 99
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    .line 100
    .local v6, "trans":Landroid/animation/LayoutTransition;
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 101
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 104
    .end local v6    # "trans":Landroid/animation/LayoutTransition;
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    new-instance v8, Lcom/vkcoffee/android/fragments/SignupCodeFragment$TimeUpdater;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$TimeUpdater;-><init>(Lcom/vkcoffee/android/fragments/SignupCodeFragment;Lcom/vkcoffee/android/fragments/SignupCodeFragment$1;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v8, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v8, 0x7f1003af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :try_start_0
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v8, 0x7f1003af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->phoneNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v8, 0x7f1003b3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 128
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v8, 0x7f1003b0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupCodeFragment;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    return-object v7

    .line 95
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    const v8, 0x7f1003af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->onDestroy()V

    .line 76
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->onDestroyView()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->view:Landroid/view/View;

    .line 145
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->phoneNumber:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V
    .locals 0
    .param p1, "doneFunc"    # Lcom/vkcoffee/android/functions/VoidF0;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    .line 88
    return-void
.end method

.method public setOnResendListener(Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->listener:Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

    .line 149
    return-void
.end method
