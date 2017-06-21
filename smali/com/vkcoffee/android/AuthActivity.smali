.class public Lcom/vkcoffee/android/AuthActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "AuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$1;,
        Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$2;,
        Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$3;,
        Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$4;,
        Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;
    }
.end annotation


# static fields
.field private static final AUTH_RESULT:I = 0xcc

.field private static CLICKABLE_VIEWS:[I = null

.field private static final EXTERNAL_AUTH_RESULT:I = 0x1f8

.field private static final EXTERNAL_REGISTER_RESULT:I = 0x1f7

.field private static MEDIUM_VIEWS:[I = null

.field private static final REGISTER_RESULT:I = 0x1f4

.field private static final RESTORE_RESULT:I = 0xcb

.field private static final VALIDATION_RESULT:I = 0x1f5


# instance fields
.field private fbCallbackMgr:Lcom/facebook/CallbackManager;

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field private photo:Ljava/lang/String;

.field progress:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/AuthActivity;->CLICKABLE_VIEWS:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vkcoffee/android/AuthActivity;->MEDIUM_VIEWS:[I

    .line 49
    return-void

    .line 43
    :array_0
    .array-data 4
        0x7f10019f
        0x7f1001a1
        0x7f1001a2
        0x7f10019e
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x7f10019e
        0x7f10019f
        0x7f1001a1
        0x7f1001a3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/AuthActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/AuthActivity;Lcom/facebook/CallbackManager;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/AuthActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/AuthActivity;->doExternalSignup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doAuth()V
    .locals 2

    .prologue
    .line 302
    const v0, 0x7f10019c

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/vkcoffee/android/AuthActivity;->doAuth(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private doAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    :cond_0
    return-void
.end method

.method private doExternalSignup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v0, "xargs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "vk_external_token"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "vk_service"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "grant_type"

    const-string v3, "vk_external_auth"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "xargs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1f8

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    return-void
.end method

.method private doFacebookAuth()V
    .locals 4

    .prologue
    .line 269
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 272
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 273
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/AuthActivity;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    .line 274
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/AuthActivity;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/vkcoffee/android/AuthActivity$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/AuthActivity$4;-><init>(Lcom/vkcoffee/android/AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 291
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "email"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "user_birthday"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 292
    return-void
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/ValidationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "return_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 314
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
    .line 192
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget v0, Lcom/vkcoffee/android/Auth;->REAUTH_SUCCESS:I

    if-ne p1, v0, :cond_0

    .line 193
    invoke-static {p0}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    :cond_0
    return-void
.end method

.method lambda$authDone$243()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 198
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Will upload photo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkcoffee/android/AuthActivity;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AuthActivity;->setResult(I)V

    .line 204
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, "res":Landroid/os/Bundle;
    const-string v1, "authAccount"

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "username"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "accountType"

    const-string v2, "com.vkcoffee.account"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AuthActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .end local v0    # "res":Landroid/os/Bundle;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/AuthActivity;->photo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 214
    new-instance v1, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    iget-object v2, p0, Lcom/vkcoffee/android/AuthActivity;->photo:Ljava/lang/String;

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-static {p0, v1}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 216
    :cond_1
    iput-object v6, p0, Lcom/vkcoffee/android/AuthActivity;->photo:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->finish()V

    .line 218
    return-void

    .line 210
    :catch_0
    move-exception v1

    goto :goto_1

    .line 201
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method lambda$onActivityResult$244(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "secret"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 265
    sget v0, Lcom/vkcoffee/android/Auth;->REAUTH_SUCCESS:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/AuthActivity;->authDone(ILjava/util/HashMap;)V

    .line 266
    return-void
.end method

.method lambda$onCreate$240(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->finish()V

    .line 136
    return-void
.end method

.method lambda$onCreate$241(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->finish()V

    .line 140
    return-void
.end method

.method lambda$onCreate$242(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/vkcoffee/android/AuthActivity;->doAuth()V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0xcb

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 221
    if-ne p2, v2, :cond_0

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 240
    :cond_0
    :pswitch_0
    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 241
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AuthActivity;->setResult(I)V

    .line 242
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->finish()V

    .line 244
    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v3, :cond_2

    .line 245
    const-string v1, "https://oauth.vk.com/restore?scope=nohttps,all&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH"

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/AuthActivity;->openBrowser(Ljava/lang/String;)V

    .line 247
    :cond_2
    const/16 v1, 0xcc

    if-ne p1, v1, :cond_6

    .line 248
    if-ne p2, v2, :cond_5

    .line 249
    sget-boolean v1, Lcom/vkcoffee/android/MAC;->ACTIVE:Z

    if-eqz v1, :cond_4

    .line 261
    :cond_3
    :goto_0
    return-void

    .line 224
    :pswitch_1
    sget v1, Lcom/vkcoffee/android/Auth;->REAUTH_SUCCESS:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/AuthActivity;->authDone(ILjava/util/HashMap;)V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v1, p0, Lcom/vkcoffee/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 228
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0, p3}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;Landroid/content/Intent;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 231
    :pswitch_3
    const-string v1, "login"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/AuthActivity;->doAuth(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_4
    sget-boolean v1, Lcom/vkcoffee/android/MAC;->ACTIVE:Z

    if-nez v1, :cond_3

    .line 235
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AuthActivity;->setResult(I)V

    .line 236
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->finish()V

    goto :goto_0

    .line 250
    :cond_4
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AuthActivity;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->finish()V

    .line 253
    :cond_5
    const v1, 0x7f10019f

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 255
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    .end local v0    # "view":Landroid/view/View;
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/AuthActivity;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    if-eqz v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/vkcoffee/android/AuthActivity;->fbCallbackMgr:Lcom/facebook/CallbackManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    return-void

    .line 160
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/activities/RestoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xcb

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 163
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/AuthActivity;->doAuth()V

    goto :goto_0

    .line 166
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/activities/SignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 169
    :pswitch_4
    invoke-direct {p0}, Lcom/vkcoffee/android/AuthActivity;->doFacebookAuth()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f10019e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "i":I
    invoke-super/range {p0 .. p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v11

    iput-object v11, p0, Lcom/vkcoffee/android/AuthActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 60
    new-instance v11, Landroid/app/ProgressDialog;

    invoke-direct {v11, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/vkcoffee/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    .line 61
    iget-object v11, p0, Lcom/vkcoffee/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    const v12, 0x7f080293

    invoke-virtual {p0, v12}, Lcom/vkcoffee/android/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/vkcoffee/android/AuthActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 63
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v11, "uid"

    invoke-interface {v6, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "uid"

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_7

    .line 64
    :cond_0
    const v11, 0x7f030052

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->setContentView(I)V

    .line 65
    sget-object v12, Lcom/vkcoffee/android/AuthActivity;->MEDIUM_VIEWS:[I

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v13, :cond_3

    .line 71
    sget-object v3, Lcom/vkcoffee/android/AuthActivity;->CLICKABLE_VIEWS:[I

    .line 72
    .local v3, "iArr":[I
    array-length v5, v3

    .line 73
    .local v5, "length":I
    :goto_1
    if-lt v2, v5, :cond_5

    .line 82
    const v11, 0x7f10019e

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 83
    .local v8, "txt2":Landroid/widget/TextView;
    const-string v11, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c"

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v11, 0x7f10019e

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/vkcoffee/android/AuthActivity$1;

    invoke-direct {v12, p0, v8}, Lcom/vkcoffee/android/AuthActivity$1;-><init>(Lcom/vkcoffee/android/AuthActivity;Landroid/widget/TextView;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCount()I

    move-result v11

    if-lez v11, :cond_1

    .line 93
    const v11, 0x7f1001a1

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 94
    .local v9, "txt3":Landroid/widget/TextView;
    const-string v11, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043d\u044b\u0435 \u0430\u043a\u043a\u0430\u0443\u043d\u0442\u044b"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v11, 0x7f1001a1

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/vkcoffee/android/AuthActivity$2;

    invoke-direct {v12, p0}, Lcom/vkcoffee/android/AuthActivity$2;-><init>(Lcom/vkcoffee/android/AuthActivity;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .end local v9    # "txt3":Landroid/widget/TextView;
    :cond_1
    const v11, 0x7f10019d

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-static {p0}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 103
    const v11, 0x7f1001a2

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "facebookView":Landroid/view/View;
    const v11, 0x7f10012d

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "facebookDivider":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    .line 106
    const v11, 0x7f100197

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/ui/XLinearLayout;

    new-instance v12, Lcom/vkcoffee/android/AuthActivity$3;

    invoke-direct {v12, p0, v1, v0}, Lcom/vkcoffee/android/AuthActivity$3;-><init>(Lcom/vkcoffee/android/AuthActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/XLinearLayout;->setOnKeyboardStateListener(Lcom/vkcoffee/android/ui/XLinearLayout$OnKeyboardStateChangeListener;)V

    .line 132
    .end local v0    # "facebookDivider":Landroid/view/View;
    .end local v1    # "facebookView":Landroid/view/View;
    .end local v3    # "iArr":[I
    .end local v5    # "length":I
    .end local v8    # "txt2":Landroid/widget/TextView;
    :cond_2
    :goto_2
    return-void

    .line 65
    :cond_3
    aget v4, v12, v11

    .line 66
    .local v4, "id":I
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 67
    .local v7, "textView":Landroid/widget/TextView;
    if-eqz v7, :cond_4

    .line 68
    sget-object v14, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v14, v14, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 74
    .end local v4    # "id":I
    .end local v7    # "textView":Landroid/widget/TextView;
    .restart local v3    # "iArr":[I
    .restart local v5    # "length":I
    :cond_5
    aget v11, v3, v2

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 75
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_6

    .line 76
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 128
    .end local v3    # "iArr":[I
    .end local v5    # "length":I
    .end local v10    # "view":Landroid/view/View;
    :cond_7
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_8

    .line 129
    const v11, 0x103006b

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AuthActivity;->setTheme(I)V

    .line 131
    :cond_8
    new-instance v11, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v11, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f080165

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f080073

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f08031e

    invoke-static {p0}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-static {p0}, Lcom/vkcoffee/android/AuthActivity$AuthActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/AuthActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 178
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    .line 180
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "evt"    # Landroid/view/KeyEvent;

    .prologue
    .line 183
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 184
    invoke-super {p0, p1, p2}, Landroid/accounts/AccountAuthenticatorActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AuthActivity;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Lcom/vkcoffee/android/AuthActivity;->finish()V

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStart()V

    .line 149
    invoke-static {p0}, Lru/mail/android/mytracker/MRMyTracker;->onStartActivity(Landroid/app/Activity;)V

    .line 150
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStop()V

    .line 154
    invoke-static {p0}, Lru/mail/android/mytracker/MRMyTracker;->onStopActivity(Landroid/app/Activity;)V

    .line 155
    return-void
.end method
