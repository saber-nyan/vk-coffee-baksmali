.class public Lcom/vkcoffee/android/activities/RestoreActivity;
.super Lcom/vkcoffee/android/activities/TabletsDialogActivity;
.source "RestoreActivity.java"


# static fields
.field private static final titles:[I


# instance fields
.field private codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

.field private curStep:I

.field private number:Ljava/lang/String;

.field private passHash:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

.field private phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

.field private progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private restoreDone:Z

.field private sid:Ljava/lang/String;

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/activities/RestoreActivity;->titles:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08018b
        0x7f0804f1
        0x7f08044c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;-><init>()V

    .line 35
    iput v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->curStep:I

    .line 44
    iput-boolean v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->restoreDone:Z

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->sid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/RestoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/RestoreActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/activities/RestoreActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/RestoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/RestoreActivity;->setStep(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/activities/RestoreActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/RestoreActivity;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/RestoreActivity;->showError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    return-void
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/activities/RestoreActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/RestoreActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->restoreDone:Z

    return p1
.end method

.method static synthetic access$lambda$0(Lcom/vkcoffee/android/activities/RestoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->onPhoneDone()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/vkcoffee/android/activities/RestoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->onCodeDone()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/vkcoffee/android/activities/RestoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->onPassDone()V

    return-void
.end method

.method private completeRestore()V
    .locals 4

    .prologue
    .line 249
    new-instance v0, Lcom/vkcoffee/android/api/account/AccountChangePassword;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->sid:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->passHash:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/account/AccountChangePassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/activities/RestoreActivity$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/activities/RestoreActivity$3;-><init>(Lcom/vkcoffee/android/activities/RestoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/account/AccountChangePassword;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 289
    return-void
.end method

.method private onCodeDone()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->verifyCode(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private onPassDone()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->password:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 141
    const v0, 0x7f080502

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->showError(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->completeRestore()V

    goto :goto_0
.end method

.method private onPhoneDone()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->isFilled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->number:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "voice"    # Z
    .param p3, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 153
    new-instance v0, Lcom/vkcoffee/android/api/auth/AuthRestore;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->number:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/auth/AuthRestore;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/vkcoffee/android/activities/RestoreActivity$2;

    invoke-direct {v1, p0, p3}, Lcom/vkcoffee/android/activities/RestoreActivity$2;-><init>(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/auth/AuthRestore;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 196
    return-void
.end method

.method private setStep(I)V
    .locals 6
    .param p1, "step"    # I

    .prologue
    const v3, 0x7f10001b

    .line 110
    iput p1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->curStep:I

    .line 111
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    sget-object v1, Lcom/vkcoffee/android/activities/RestoreActivity;->titles:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/activities/RestoreActivity;->setTitle(I)V

    .line 113
    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 115
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 117
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    if-nez v1, :cond_1

    .line 119
    new-instance v1, Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    .line 120
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;)Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setOnResendListener(Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;)V

    .line 121
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setNumber(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 125
    .restart local v0    # "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 127
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    if-nez v1, :cond_3

    .line 129
    new-instance v1, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    .line 130
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 131
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    const v2, 0x7f08044b

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->setExplainText(Ljava/lang/String;)V

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 134
    .restart local v0    # "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 136
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_4
    return-void
.end method

.method private showError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 292
    iget-object v0, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->showError(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 296
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    .line 297
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 301
    return-void
.end method

.method private verifyCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->sid:Ljava/lang/String;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;)Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/vkcoffee/android/Auth;->authorizeRestoreAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$null$179(Ljava/util/HashMap;I)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 235
    const-string/jumbo v0, "change_password_hash"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->passHash:Ljava/lang/String;

    .line 236
    sget v0, Lcom/vkcoffee/android/Auth;->REAUTH_SUCCESS:I

    if-ne p2, v0, :cond_0

    .line 237
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->setStep(I)V

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const v0, 0x7f0804f0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->showError(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic lambda$onCreate$175()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onPhoneDone$176()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->setStep(I)V

    return-void
.end method

.method synthetic lambda$setStep$177()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    iget v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->curStep:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->setStepAnimated(I)V

    return-void
.end method

.method synthetic lambda$setStep$178(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "voice"    # Z
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->sid:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/vkcoffee/android/activities/RestoreActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$verifyCode$180(ILjava/util/HashMap;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "extras"    # Ljava/util/HashMap;

    .prologue
    .line 233
    invoke-static {p0, p2, p1}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;Ljava/util/HashMap;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->curStep:I

    if-nez v0, :cond_0

    .line 305
    invoke-super {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onBackPressed()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->curStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/RestoreActivity;->setStep(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f10001b

    const/4 v5, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v3, 0x7f0f001c

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->setDialogWindowBackgroundResource(I)V

    .line 50
    const v3, 0x7f030187

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->setContentView(I)V

    .line 51
    const v3, 0x7f100112

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/activities/RestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 53
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    new-instance v3, Lcom/vkcoffee/android/activities/RestoreActivity$1;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/vkcoffee/android/activities/RestoreActivity$1;-><init>(Lcom/vkcoffee/android/activities/RestoreActivity;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    .line 63
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/activities/RestoreActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 65
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 66
    iget-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f080293

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/activities/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 70
    iget-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->setStepCount(I)V

    .line 75
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/activities/RestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    .line 77
    new-instance v3, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {v3}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .line 78
    iget-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 79
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/RestoreActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/activities/RestoreActivity;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 84
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v1, v8, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 86
    iget-object v3, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->setShowForgitButton(Z)V

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 201
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onDestroy()V

    .line 99
    iget-boolean v0, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->restoreDone:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/vkcoffee/android/Global;->uid:I

    .line 104
    sput-object v1, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 105
    sput-object v1, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 107
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 224
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 208
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->onBackPressed()V

    goto :goto_0

    .line 211
    :sswitch_1
    iget v1, p0, Lcom/vkcoffee/android/activities/RestoreActivity;->curStep:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->onPhoneDone()V

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->onCodeDone()V

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/RestoreActivity;->onPassDone()V

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10017b -> :sswitch_1
    .end sparse-switch

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
