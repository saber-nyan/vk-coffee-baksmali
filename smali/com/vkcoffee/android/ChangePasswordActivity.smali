.class public Lcom/vkcoffee/android/ChangePasswordActivity;
.super Landroid/app/Activity;
.source "ChangePasswordActivity.java"


# instance fields
.field private dlg:Landroid/app/AlertDialog;

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field private textListener:Landroid/text/TextWatcher;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 25
    new-instance v0, Lcom/vkcoffee/android/ChangePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ChangePasswordActivity$1;-><init>(Lcom/vkcoffee/android/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->textListener:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ChangePasswordActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ChangePasswordActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ChangePasswordActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ChangePasswordActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private changePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "old"    # Ljava/lang/String;
    .param p2, "nw"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lcom/vkcoffee/android/api/account/AccountChangePassword;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/account/AccountChangePassword;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/ChangePasswordActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/ChangePasswordActivity$2;-><init>(Lcom/vkcoffee/android/ChangePasswordActivity;Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/account/AccountChangePassword;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 128
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$254(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/ChangePasswordActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$255(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-object v3, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    const v4, 0x7f1001b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "old":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    const v4, 0x7f1001b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "new1":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    const v4, 0x7f1001b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "new2":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 96
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    const v3, 0x7f080338

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    .line 92
    const v3, 0x7f080502

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/vkcoffee/android/ChangePasswordActivity;->changePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f1001b9

    const v5, 0x7f1001b8

    const v4, 0x7f1001b7

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 59
    const v0, 0x7f030059

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->textListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->textListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->textListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800bd

    .line 68
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->view:Landroid/view/View;

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800b7

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    invoke-static {p0}, Lcom/vkcoffee/android/ChangePasswordActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ChangePasswordActivity;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p0}, Lcom/vkcoffee/android/ChangePasswordActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ChangePasswordActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/ChangePasswordActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method
