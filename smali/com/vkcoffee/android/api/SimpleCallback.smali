.class public abstract Lcom/vkcoffee/android/api/SimpleCallback;
.super Ljava/lang/Object;
.source "SimpleCallback.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field protected fragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Lcom/vkcoffee/android/api/SimpleCallback;, "Lcom/vkcoffee/android/api/SimpleCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 18
    .local p0, "this":Lcom/vkcoffee/android/api/SimpleCallback;, "Lcom/vkcoffee/android/api/SimpleCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/vkcoffee/android/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    .local p0, "this":Lcom/vkcoffee/android/api/SimpleCallback;, "Lcom/vkcoffee/android/api/SimpleCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/vkcoffee/android/api/SimpleCallback;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 27
    .local p0, "this":Lcom/vkcoffee/android/api/SimpleCallback;, "Lcom/vkcoffee/android/api/SimpleCallback<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/vkcoffee/android/fragments/LoaderFragment;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    check-cast v0, Lcom/vkcoffee/android/fragments/LoaderFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/LoaderFragment;->onError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    instance-of v0, v0, Lme/grishka/appkit/fragments/LoaderFragment;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    check-cast v0, Lme/grishka/appkit/fragments/LoaderFragment;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->context:Landroid/content/Context;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/api/SimpleCallback;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
