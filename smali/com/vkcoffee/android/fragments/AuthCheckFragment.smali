.class public Lcom/vkcoffee/android/fragments/AuthCheckFragment;
.super Lcom/vkcoffee/android/fragments/VKToolbarFragment;
.source "AuthCheckFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;,
        Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;
    }
.end annotation


# instance fields
.field private buttonRetry:Landroid/view/View;

.field private editText:Landroid/widget/EditText;

.field private initTime:J

.field private receiver:Landroid/content/BroadcastReceiver;

.field private textInfo1:Landroid/widget/TextView;

.field private textInfo2:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;-><init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->initTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->buttonRetry:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->resendCode()V

    return-void
.end method

.method private resendCode()V
    .locals 4

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->updateText(Z)V

    .line 237
    new-instance v0, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$2;-><init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment;Landroid/app/Fragment;)V

    .line 238
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 252
    return-void
.end method

.method private updateText(Z)V
    .locals 6
    .param p1, "sms"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo1:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo1:Landroid/widget/TextView;

    const v1, 0x7f080097

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo1:Landroid/widget/TextView;

    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->invalidateOptionsMenu()V

    .line 222
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 213
    return-void
.end method

.method synthetic lambda$onCreateContentView$313(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 183
    const/4 v1, 0x1

    .line 185
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    const v0, 0x7f080462

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->setTitle(I)V

    .line 152
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->resendCode()V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->setHasOptionsMenu(Z)V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    const-string/jumbo v0, "init_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->initTime:J

    .line 109
    :goto_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void

    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->initTime:J

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v8, "is_sms"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 168
    .local v4, "sms":Z
    const v6, 0x7f03018a

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    .line 170
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    const v8, 0x7f1003dc

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    .line 171
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    const v8, 0x7f1003dd

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo1:Landroid/widget/TextView;

    .line 172
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    const v8, 0x7f1003de

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo2:Landroid/widget/TextView;

    .line 173
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    const v8, 0x7f1003df

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->buttonRetry:Landroid/view/View;

    .line 175
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "code"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 178
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 188
    if-eqz v4, :cond_0

    .line 189
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    new-instance v8, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;-><init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment;Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v8, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :goto_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->buttonRetry:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    const v8, 0x7f10006b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 198
    .local v5, "topBlock":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .local v1, "pl":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .local v3, "pt":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .local v2, "pr":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 199
    .local v0, "pb":I
    new-instance v8, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    int-to-float v11, v6

    sget-boolean v6, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-direct {v8, v9, v10, v11, v6}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 202
    invoke-direct {p0, v4}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->updateText(Z)V

    .line 203
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    return-object v6

    .line 191
    .end local v0    # "pb":I
    .end local v1    # "pl":I
    .end local v2    # "pr":I
    .end local v3    # "pt":I
    .end local v5    # "topBlock":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo2:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->buttonRetry:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .restart local v0    # "pb":I
    .restart local v1    # "pl":I
    .restart local v2    # "pr":I
    .restart local v3    # "pt":I
    .restart local v5    # "topBlock":Landroid/view/View;
    :cond_1
    move v6, v7

    .line 199
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 128
    const v0, 0x7f110011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    const v0, 0x7f100019

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 130
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 131
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onDestroy()V

    .line 136
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onDestroyView()V

    .line 157
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->view:Landroid/view/View;

    .line 158
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    .line 159
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo1:Landroid/widget/TextView;

    .line 160
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->textInfo2:Landroid/widget/TextView;

    .line 161
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->buttonRetry:Landroid/view/View;

    .line 162
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100019

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 120
    :cond_0
    const/4 v1, 0x1

    .line 122
    .end local v0    # "code":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string/jumbo v0, "init_time"

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->initTime:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 217
    return-void
.end method
