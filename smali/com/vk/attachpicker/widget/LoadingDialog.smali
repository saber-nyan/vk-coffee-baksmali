.class public Lcom/vk/attachpicker/widget/LoadingDialog;
.super Ljava/lang/Object;
.source "LoadingDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissLoadingDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p0, "loadingDialog"    # Landroid/app/Dialog;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/Integer;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vk/attachpicker/widget/LoadingDialog;->getInstance(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/app/ProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "titleId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    .line 27
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "dialog":Landroid/app/ProgressDialog;
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 31
    :cond_0
    if-eqz p2, :cond_1

    .line 32
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 35
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 36
    return-object v0
.end method
