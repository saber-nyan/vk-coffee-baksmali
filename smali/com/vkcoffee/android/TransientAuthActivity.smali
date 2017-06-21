.class public Lcom/vkcoffee/android/TransientAuthActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "TransientAuthActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/Auth$AuthResultReceiver;


# static fields
.field private static final KEY_X_ARGS_2_FA:Ljava/lang/String; = "xArgs2FA"

.field private static final PHONE_CODE_RESULT:I = 0xcc

.field private static final PHONE_VALIDATION_RESULT:I = 0xcb

.field private static final VALIDATION_RESULT:I = 0xca


# instance fields
.field private authcheckExtra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private destroyed:Z

.field private dismissed:Z

.field private lastCode:Ljava/lang/String;

.field private lastCodeReceived:Ljava/lang/Boolean;

.field private progress:Landroid/app/ProgressDialog;

.field private xArgs2FA:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->destroyed:Z

    .line 36
    iput-boolean v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->dismissed:Z

    .line 38
    iput-object v1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCodeReceived:Ljava/lang/Boolean;

    .line 41
    iput-object v1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->xArgs2FA:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/TransientAuthActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/TransientAuthActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->dismissed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/TransientAuthActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/TransientAuthActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->pollNext()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/TransientAuthActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/TransientAuthActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/TransientAuthActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/TransientAuthActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->authcheckExtra:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/TransientAuthActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/TransientAuthActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->authcheckExtra:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/TransientAuthActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/TransientAuthActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/TransientAuthActivity;->open2FA(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/TransientAuthActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/TransientAuthActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/TransientAuthActivity;->openBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/TransientAuthActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/TransientAuthActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCode:Ljava/lang/String;

    return-object v0
.end method

.method private doAuth()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "xargs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/TransientAuthActivity;->doAuth(Ljava/util/HashMap;)V

    .line 81
    return-void
.end method

.method private doAuth(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "xargs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 95
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v3, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "2fa"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/TransientAuthActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "trusted_hash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, "hash":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 101
    const-string/jumbo v0, "trusted_hash"

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string/jumbo v0, "vk_code"

    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "grant_type"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "grant_type"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "persist"

    const/4 v8, 0x1

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/Auth;->authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 113
    return-void

    .line 89
    .end local v3    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "hash":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 90
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 112
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "hash":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "password"

    goto :goto_1
.end method

.method private open2FA(Ljava/util/HashMap;)V
    .locals 4
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->isResumedImpl()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->xArgs2FA:Ljava/util/HashMap;

    .line 118
    new-instance v0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "type"

    .line 119
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "2fa_sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v2, "sid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 120
    .local v0, "builder":Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;
    const-string/jumbo v1, "code"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "code"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;->setCode(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;

    .line 123
    :cond_0
    const/16 v1, 0xcc

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;->forResult(Landroid/app/Activity;I)V

    .line 128
    .end local v0    # "builder":Lcom/vkcoffee/android/fragments/AuthCheckFragment$Builder;
    :goto_0
    return-void

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->xArgs2FA:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/ValidationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v1, "return_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const/16 v1, 0xca

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/TransientAuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method

.method private pollNext()V
    .locals 4

    .prologue
    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/TransientAuthActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method


# virtual methods
.method public authDone(ILjava/util/HashMap;)V
    .locals 1
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget v0, Lcom/vkcoffee/android/Auth;->REAUTH_SUCCESS:I

    if-ne p1, v0, :cond_0

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Lru/mail/android/mytracker/MRMyTracker;->trackLoginEvent(Ljava/util/Map;)V

    .line 166
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/TransientAuthActivity;->setResult(I)V

    .line 167
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->finish()V

    .line 251
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/TransientAuthActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/TransientAuthActivity$2;-><init>(Lcom/vkcoffee/android/TransientAuthActivity;ILjava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/TransientAuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method synthetic lambda$onActivityResult$700(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 286
    const-string/jumbo v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "secret"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 287
    sget v0, Lcom/vkcoffee/android/Auth;->REAUTH_SUCCESS:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/TransientAuthActivity;->authDone(ILjava/util/HashMap;)V

    .line 288
    return-void
.end method

.method synthetic lambda$onCreate$698(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->dismissed:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/TransientAuthActivity;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->dismissed:Z

    goto :goto_0
.end method

.method synthetic lambda$pollNext$699()V
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->destroyed:Z

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->doAuth()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0xcc

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 282
    const/16 v0, 0xca

    if-ne p1, v0, :cond_1

    .line 283
    if-ne p2, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 285
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p3}, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/TransientAuthActivity;Landroid/content/Intent;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 288
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 313
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/TransientAuthActivity;->setResult(I)V

    .line 294
    :cond_1
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_2

    .line 295
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/TransientAuthActivity;->setResult(I)V

    .line 297
    :cond_2
    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->isResumedImpl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 298
    if-ne p2, v1, :cond_4

    .line 299
    const-string/jumbo v0, "code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/TransientAuthActivity;->onCodeSubmit(Ljava/lang/String;)V

    .line 312
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->finish()V

    goto :goto_0

    .line 301
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->onCancel()V

    goto :goto_1

    .line 303
    :cond_5
    if-ne p1, v3, :cond_3

    .line 304
    if-ne p2, v1, :cond_6

    .line 305
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCodeReceived:Ljava/lang/Boolean;

    .line 306
    const-string/jumbo v0, "code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCode:Ljava/lang/String;

    goto :goto_0

    .line 308
    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCodeReceived:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/TransientAuthActivity;->setResult(I)V

    .line 277
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->finish()V

    .line 278
    return-void
.end method

.method public onCodeSubmit(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iput-object p1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCode:Ljava/lang/String;

    .line 272
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/TransientAuthActivity;->doAuth(Ljava/util/HashMap;)V

    .line 273
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/TransientAuthActivity;->restoreXArg2FA(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/vkcoffee/android/TransientAuthActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/TransientAuthActivity$1;-><init>(Lcom/vkcoffee/android/TransientAuthActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->progress:Landroid/app/ProgressDialog;

    .line 63
    iget-object v1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "progress_message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "progress_message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "cancelable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-static {p0}, Lcom/vkcoffee/android/TransientAuthActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/TransientAuthActivity;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    invoke-direct {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->doAuth()V

    .line 77
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080293

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onDestroy()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->destroyed:Z

    .line 257
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/TransientAuthActivity;->restoreXArg2FA(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->xArgs2FA:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/TransientAuthActivity;->open2FA(Ljava/util/HashMap;)V

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCodeReceived:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCodeReceived:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/TransientAuthActivity;->onCodeSubmit(Ljava/lang/String;)V

    .line 140
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->lastCodeReceived:Ljava/lang/Boolean;

    .line 142
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/TransientAuthActivity;->onCancel()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    const-string/jumbo v0, "xArgs2FA"

    iget-object v1, p0, Lcom/vkcoffee/android/TransientAuthActivity;->xArgs2FA:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 148
    return-void
.end method

.method protected restoreXArg2FA(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "sIS"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 316
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/vkcoffee/android/TransientAuthActivity;->xArgs2FA:Ljava/util/HashMap;

    .line 317
    return-void

    .line 316
    :cond_0
    const-string/jumbo v0, "xArgs2FA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0
.end method
