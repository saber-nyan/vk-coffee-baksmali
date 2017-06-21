.class Lcom/vkcoffee/android/AuthActivity$4;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AuthActivity;->doFacebookAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AuthActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AuthActivity$4;->this$0:Lcom/vkcoffee/android/AuthActivity;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$4;->this$0:Lcom/vkcoffee/android/AuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AuthActivity;->access$0(Lcom/vkcoffee/android/AuthActivity;Lcom/facebook/CallbackManager;)V

    .line 284
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$4;->this$0:Lcom/vkcoffee/android/AuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AuthActivity;->access$0(Lcom/vkcoffee/android/AuthActivity;Lcom/facebook/CallbackManager;)V

    .line 288
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$4;->this$0:Lcom/vkcoffee/android/AuthActivity;

    const v1, 0x7f080165

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$4;->this$0:Lcom/vkcoffee/android/AuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AuthActivity;->access$0(Lcom/vkcoffee/android/AuthActivity;Lcom/facebook/CallbackManager;)V

    .line 277
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/vkcoffee/android/AuthActivity$4;->this$0:Lcom/vkcoffee/android/AuthActivity;

    const-string v1, "facebook"

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/AuthActivity;->access$1(Lcom/vkcoffee/android/AuthActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AuthActivity$4;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
