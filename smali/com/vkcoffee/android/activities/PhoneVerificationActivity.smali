.class public Lcom/vkcoffee/android/activities/PhoneVerificationActivity;
.super Lcom/vkcoffee/android/activities/TabletsDialogActivity;
.source "PhoneVerificationActivity.java"


# static fields
.field private static final VERIFY_RESULT:I = 0xed0

.field private static final titles:[I


# instance fields
.field private code:Ljava/lang/String;

.field private codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

.field private curStep:I

.field private email:Ljava/lang/String;

.field private gender:I

.field private header:Landroid/view/View;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

.field private photo:Ljava/lang/String;

.field private progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sid:Ljava/lang/String;

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->titles:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080506
        0x7f0804f1
        0x7f080501
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->curStep:I

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/PhoneVerificationActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/PhoneVerificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->setStep(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/PhoneVerificationActivity;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->showError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->onPhoneDone()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->requestCode(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->onCodeDone()V

    return-void
.end method

.method private onCodeDone()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->verifyCode(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private onPhoneDone()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->isFilled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->number:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->requestCode(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requestCode(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "voice"    # Z
    .param p2, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 181
    new-instance v1, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;

    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->sid:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->number:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1}, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, p0, v0, p2}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$2;-><init>(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/auth/AuthValidatePhone;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 229
    return-void
.end method

.method private setStep(I)V
    .locals 9
    .param p1, "step"    # I

    .prologue
    const v8, 0x7f10001b

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    iget v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->curStep:I

    if-le p1, v4, :cond_3

    move v0, v2

    .line 156
    .local v0, "animateForward":Z
    :goto_0
    iput p1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->curStep:I

    .line 157
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    sget-object v4, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->titles:[I

    aget v4, v4, p1

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->setTitle(I)V

    .line 159
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->header:Landroid/view/View;

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    if-nez p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 162
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v1, v8, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 164
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    if-ne p1, v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    if-nez v2, :cond_1

    .line 166
    new-instance v2, Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    .line 167
    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;)Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setOnResendListener(Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;)V

    .line 168
    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setNumber(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 172
    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-virtual {v1, v8, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 174
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    return-void

    .end local v0    # "animateForward":Z
    :cond_3
    move v0, v3

    .line 155
    goto :goto_0

    .line 159
    .restart local v0    # "animateForward":Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_1
.end method

.method private showError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 241
    iget-object v0, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->showError(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    return-void
.end method

.method private verifyCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "result_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 236
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/16 v1, 0xed0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$null$163(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->header:Landroid/view/View;

    const v1, 0x7f1001ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method synthetic lambda$onCreate$164()V
    .locals 3

    .prologue
    .line 109
    invoke-static {p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, "img":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method synthetic lambda$onPhoneDone$165()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->setStep(I)V

    return-void
.end method

.method synthetic lambda$setStep$166()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    iget v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->curStep:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->setStepAnimated(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 258
    const/16 v0, 0xed0

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 259
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->setResult(I)V

    .line 260
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->finish()V

    .line 262
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->curStep:I

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onBackPressed()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->curStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->setStep(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f10001b

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v4, 0x7f0f001c

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->setDialogWindowBackgroundResource(I)V

    .line 58
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 59
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f080293

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030186

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 67
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 70
    new-instance v4, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$1;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$1;-><init>(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    .line 79
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->setStepCount(I)V

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_0
    const v4, 0x7f030085

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->header:Landroid/view/View;

    .line 88
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->header:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->wrap:Landroid/widget/FrameLayout;

    .line 91
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setId(I)V

    .line 92
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->wrap:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->setContentView(Landroid/view/View;)V

    .line 95
    new-instance v4, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {v4}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .line 96
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 99
    .local v2, "ft":Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v2, v10, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 101
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "sid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->sid:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->name:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "photo"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->photo:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "email"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->email:Ljava/lang/String;

    .line 107
    iget-object v4, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->header:Landroid/view/View;

    const v5, 0x7f1001f0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v4, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/activities/PhoneVerificationActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 117
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 150
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->onBackPressed()V

    goto :goto_0

    .line 140
    :sswitch_1
    iget v1, p0, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->curStep:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->onPhoneDone()V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/PhoneVerificationActivity;->onCodeDone()V

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10017b -> :sswitch_1
    .end sparse-switch

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
