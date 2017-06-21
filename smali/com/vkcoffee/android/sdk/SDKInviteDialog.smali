.class public Lcom/vkcoffee/android/sdk/SDKInviteDialog;
.super Landroid/app/DialogFragment;
.source "SDKInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;
    }
.end annotation


# instance fields
.field private mBannerView:Landroid/widget/ImageView;

.field private mCallback:Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

.field private mLink:Ljava/lang/CharSequence;

.field private mLinkView:Landroid/widget/TextView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/EditText;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoId:Ljava/lang/CharSequence;

.field private mPhotoLink:Ljava/lang/String;

.field private mProgress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mCallback:Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;
    .param p1, "x1"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->invokeNegativeCallback(Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;)V

    return-void
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessageView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mPhotoId:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mLink:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mPhotoLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mPhotoLink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mBannerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static getLinkDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "link"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string/jumbo v1, "://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, "start":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 275
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 277
    .end local p0    # "link":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private invokeNegativeCallback(Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;)V
    .locals 4
    .param p1, "listener"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    .prologue
    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/vkcoffee/android/sdk/SDKInviteDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$3;-><init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    return-void
.end method

.method private loadPhoto()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;-><init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 269
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    return-void
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/vkcoffee/android/sdk/SDKInviteDialog;
    .locals 3
    .param p0, "message"    # Ljava/lang/CharSequence;
    .param p1, "link"    # Ljava/lang/CharSequence;
    .param p2, "photo_id"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    new-instance v1, Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-direct {v1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;-><init>()V

    .line 34
    .local v1, "result":Lcom/vkcoffee/android/sdk/SDKInviteDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "com.vkcoffee.android.sdk.extra_message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 36
    const-string/jumbo v2, "com.vkcoffee.android.sdk.extra_link"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 37
    const-string/jumbo v2, "com.vkcoffee.android.sdk.extra_photo"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const v0, 0x7f030164

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 185
    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessageView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessageView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessageView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 189
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mLinkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mLink:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->getLinkDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mLinkView:Landroid/widget/TextView;

    new-instance v1, Lcom/vkcoffee/android/sdk/SDKInviteDialog$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$2;-><init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->loadPhoto()V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mBannerView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    check-cast p1, Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mCallback:Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->setCancelable(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessage:Ljava/lang/CharSequence;

    .line 67
    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_link"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mLink:Ljava/lang/CharSequence;

    .line 68
    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_photo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mPhotoId:Ljava/lang/CharSequence;

    .line 69
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    new-instance v0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$1;-><init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)V

    .line 92
    .local v0, "mListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->setupView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080454

    .line 98
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800b7

    .line 99
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08046c

    .line 100
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 217
    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessage:Ljava/lang/CharSequence;

    .line 218
    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mLink:Ljava/lang/CharSequence;

    .line 219
    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mPhotoId:Ljava/lang/CharSequence;

    .line 220
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 208
    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessageView:Landroid/widget/EditText;

    .line 209
    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mBannerView:Landroid/widget/ImageView;

    .line 210
    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mLinkView:Landroid/widget/TextView;

    .line 211
    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mProgress:Landroid/view/View;

    .line 212
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mCallback:Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    .line 226
    return-void
.end method

.method public setupView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    const v0, 0x7f100206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mMessageView:Landroid/widget/EditText;

    .line 177
    const v0, 0x7f10026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mLinkView:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f1003a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mBannerView:Landroid/widget/ImageView;

    .line 179
    const v0, 0x7f100144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->mProgress:Landroid/view/View;

    .line 180
    return-void
.end method
