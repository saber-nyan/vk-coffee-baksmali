.class public Lcom/vkcoffee/android/ConfirmationActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "ConfirmationActivity.java"


# static fields
.field public static ready:Z

.field public static result:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 18
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/vkcoffee/android/ConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "confirm_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080427

    new-instance v2, Lcom/vkcoffee/android/ConfirmationActivity$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ConfirmationActivity$3;-><init>(Lcom/vkcoffee/android/ConfirmationActivity;)V

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800b7

    new-instance v2, Lcom/vkcoffee/android/ConfirmationActivity$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ConfirmationActivity$2;-><init>(Lcom/vkcoffee/android/ConfirmationActivity;)V

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ConfirmationActivity$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ConfirmationActivity$1;-><init>(Lcom/vkcoffee/android/ConfirmationActivity;)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 45
    return-void
.end method
