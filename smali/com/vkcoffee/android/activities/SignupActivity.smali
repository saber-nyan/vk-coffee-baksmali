.class public Lcom/vkcoffee/android/activities/SignupActivity;
.super Lcom/vkcoffee/android/activities/TabletsDialogActivity;
.source "SignupActivity.java"


# static fields
.field private static final AUTH_RESULT:I = 0xcc

.field private static final RESTORE_RESULT:I = 0xcb

.field private static final VALIDATION_RESULT:I = 0xca

.field private static final titles:[I


# instance fields
.field private code:Ljava/lang/String;

.field private codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

.field private curStep:I

.field private firstName:Ljava/lang/String;

.field private gender:I

.field private lastName:Ljava/lang/String;

.field private mPhotoBottom:F

.field private mPhotoLeft:F

.field private mPhotoRight:F

.field private mPhotoTop:F

.field private number:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

.field private phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

.field private photo:Ljava/lang/String;

.field private profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

.field private progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sid:Ljava/lang/String;

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/activities/SignupActivity;->titles:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08042a
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

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->curStep:I

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/activities/SignupActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/SignupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/SignupActivity;->setStep(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/SignupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->sid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/SignupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/SignupActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/activities/SignupActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/SignupActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/activities/SignupActivity;Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/SignupActivity;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/activities/SignupActivity;->showError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    return-void
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/SignupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/activities/SignupActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/activities/SignupActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/vkcoffee/android/activities/SignupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onProfileFragmentDone()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/vkcoffee/android/activities/SignupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onPhoneDone()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/vkcoffee/android/activities/SignupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onCodeDone()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/vkcoffee/android/activities/SignupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onPassDone()V

    return-void
.end method

.method private completeSignup()V
    .locals 4

    .prologue
    .line 300
    new-instance v0, Lcom/vkcoffee/android/api/auth/AuthConfirm;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/auth/AuthConfirm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/activities/SignupActivity$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/activities/SignupActivity$5;-><init>(Lcom/vkcoffee/android/activities/SignupActivity;)V

    .line 301
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 329
    return-void
.end method

.method private onCodeDone()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/SignupActivity;->verifyCode(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private onPassDone()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->password:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 200
    const v0, 0x7f080502

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/SignupActivity;->showError(Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->completeSignup()V

    goto :goto_0
.end method

.method private onPhoneDone()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->isFilled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->number:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Lcom/vkcoffee/android/activities/SignupActivity$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/activities/SignupActivity$2;-><init>(Lcom/vkcoffee/android/activities/SignupActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onProfileFragmentDone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->isFilled()I

    move-result v0

    .line 129
    .local v0, "f":I
    if-ne v0, v2, :cond_1

    .line 130
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getFirstName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->firstName:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getLastName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->lastName:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getGender()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->gender:I

    .line 133
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getPhoto()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->photo:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getPhotoLeft()F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->mPhotoLeft:F

    .line 135
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getPhotoTop()F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->mPhotoTop:F

    .line 136
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getPhotoRight()F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->mPhotoRight:F

    .line 137
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getPhotoBottom()F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->mPhotoBottom:F

    .line 138
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->setStep(I)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-nez v0, :cond_0

    .line 140
    const v1, 0x7f0804fa

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/activities/SignupActivity;->showError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 7
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "voice"    # Z
    .param p3, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 213
    new-instance v0, Lcom/vkcoffee/android/api/auth/AuthSignup;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->firstName:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity;->lastName:Ljava/lang/String;

    iget v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->gender:I

    iget-object v4, p0, Lcom/vkcoffee/android/activities/SignupActivity;->number:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/api/auth/AuthSignup;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/vkcoffee/android/activities/SignupActivity$3;

    invoke-direct {v1, p0, p3}, Lcom/vkcoffee/android/activities/SignupActivity$3;-><init>(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/auth/AuthSignup;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 265
    return-void
.end method

.method private setStep(I)V
    .locals 6
    .param p1, "step"    # I

    .prologue
    const v3, 0x7f10001b

    .line 162
    iput p1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->curStep:I

    .line 163
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->wrap:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/SignupActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/activities/SignupActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    sget-object v1, Lcom/vkcoffee/android/activities/SignupActivity;->titles:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/activities/SignupActivity;->setTitle(I)V

    .line 165
    if-nez p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 167
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 169
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    if-nez v1, :cond_1

    .line 171
    new-instance v1, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .line 172
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/SignupActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/activities/SignupActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 175
    .restart local v0    # "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 177
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    if-nez v1, :cond_3

    .line 179
    new-instance v1, Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    .line 180
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/SignupActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/activities/SignupActivity;)Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setOnResendListener(Lcom/vkcoffee/android/fragments/SignupCodeFragment$OnResendListener;)V

    .line 181
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/SignupActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/activities/SignupActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity;->phoneFragment:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupCodeFragment;->setNumber(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 185
    .restart local v0    # "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->codeFragment:Lcom/vkcoffee/android/fragments/SignupCodeFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 187
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    if-nez v1, :cond_5

    .line 189
    new-instance v1, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    .line 190
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/SignupActivity$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/activities/SignupActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/SignupPasswordFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 193
    .restart local v0    # "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->passwordFragment:Lcom/vkcoffee/android/fragments/SignupPasswordFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 195
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_6
    return-void
.end method

.method private showError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 332
    iget-object v0, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/SignupActivity;->showError(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 336
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

    .line 337
    return-void
.end method

.method private verifyCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/auth/AuthConfirm;

    iget-object v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->number:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/vkcoffee/android/api/auth/AuthConfirm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/activities/SignupActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/activities/SignupActivity$4;-><init>(Lcom/vkcoffee/android/activities/SignupActivity;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$onActivityResult$186(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 353
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

    .line 354
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/activities/SignupActivity;->setResult(I)V

    .line 355
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->finish()V

    .line 356
    return-void
.end method

.method synthetic lambda$setStep$184()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    iget v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->curStep:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->setStepAnimated(I)V

    return-void
.end method

.method synthetic lambda$setStep$185(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "voice"    # Z
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->sid:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/vkcoffee/android/activities/SignupActivity;->requestCode(Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 349
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 350
    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 351
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 352
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p3}, Lcom/vkcoffee/android/activities/SignupActivity$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/activities/SignupActivity;Landroid/content/Intent;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 356
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 358
    :cond_0
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 359
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->setResult(I)V

    .line 360
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->finish()V

    .line 362
    :cond_1
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_2

    .line 363
    const/4 v0, 0x0

    invoke-static {v0}, Lru/mail/android/mytracker/MRMyTracker;->trackRegistrationEvent(Ljava/util/Map;)V

    .line 364
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->setResult(I)V

    .line 365
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->finish()V

    .line 366
    iget-object v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->photo:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 367
    new-instance v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    iget-object v2, p0, Lcom/vkcoffee/android/activities/SignupActivity;->photo:Ljava/lang/String;

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/vkcoffee/android/activities/SignupActivity;->mPhotoLeft:F

    iget v6, p0, Lcom/vkcoffee/android/activities/SignupActivity;->mPhotoTop:F

    iget v7, p0, Lcom/vkcoffee/android/activities/SignupActivity;->mPhotoRight:F

    iget v8, p0, Lcom/vkcoffee/android/activities/SignupActivity;->mPhotoBottom:F

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZFFFF)V

    invoke-static {p0, v0}, Lcom/vkcoffee/android/upload/Upload;->start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V

    .line 370
    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->curStep:I

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/activities/SignupActivity;->setResult(I)V

    .line 342
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->finish()V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/activities/SignupActivity;->curStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/activities/SignupActivity;->setStep(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f10001b

    .line 57
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v3, 0x7f0f001c

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->setDialogWindowBackgroundResource(I)V

    .line 60
    const v3, 0x7f030187

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->setContentView(I)V

    .line 61
    const v3, 0x7f100112

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/activities/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 63
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    new-instance v3, Lcom/vkcoffee/android/activities/SignupActivity$1;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/vkcoffee/android/activities/SignupActivity$1;-><init>(Lcom/vkcoffee/android/activities/SignupActivity;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    .line 73
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/activities/SignupActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 75
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 76
    iget-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f080293

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/activities/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    iget-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->progress:Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/ActionBarProgressDrawable;->setStepCount(I)V

    .line 86
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/activities/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->wrap:Landroid/widget/FrameLayout;

    .line 88
    new-instance v3, Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-direct {v3}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .line 89
    iget-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-static {p0}, Lcom/vkcoffee/android/activities/SignupActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/activities/SignupActivity;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V

    .line 90
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 91
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/vkcoffee/android/activities/SignupActivity;->profileFragment:Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    invoke-virtual {v1, v5, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 123
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 104
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onBackPressed()V

    goto :goto_0

    .line 107
    :sswitch_1
    iget v1, p0, Lcom/vkcoffee/android/activities/SignupActivity;->curStep:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onProfileFragmentDone()V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onPhoneDone()V

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onCodeDone()V

    goto :goto_0

    .line 118
    :pswitch_3
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/SignupActivity;->onPassDone()V

    goto :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10017b -> :sswitch_1
    .end sparse-switch

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
