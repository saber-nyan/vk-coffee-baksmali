.class public Lcom/vkcoffee/android/sdk/SDKInviteActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "SDKInviteActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/sdk/SDKInviteActivity$Extra;
    }
.end annotation


# static fields
.field static final REQUEST_AUTH:I = 0x64

.field static final REQUEST_PICK_FRIEND:I = 0x2a


# instance fields
.field private mAppId:I

.field private mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInviteSent:Z

.field private mLink:Ljava/lang/CharSequence;

.field private mMessage:Ljava/lang/CharSequence;

.field private mPhoto:Ljava/lang/CharSequence;

.field private mSelectedProfile:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mInviteSent:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/sdk/SDKInviteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->showInviteDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/sdk/SDKInviteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mInviteSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/sdk/SDKInviteActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->showExitDialog(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/sdk/SDKInviteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->showResendDialog()V

    return-void
.end method

.method private sendInvite(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "photo"    # Ljava/lang/CharSequence;
    .param p3, "link"    # Ljava/lang/CharSequence;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mSelectedProfile:Lcom/vkcoffee/android/UserProfile;

    iget v0, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 241
    .local v0, "uid":I
    new-instance v1, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mAppId:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;-><init>(Lcom/vkcoffee/android/sdk/SDKInviteActivity;I)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 253
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 254
    return-void
.end method

.method private showExitDialog(II)V
    .locals 3
    .param p1, "mid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 216
    new-instance v0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/sdk/SDKInviteActivity$2;-><init>(Lcom/vkcoffee/android/sdk/SDKInviteActivity;II)V

    .line 231
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080459

    .line 232
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080456

    .line 233
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080457

    .line 234
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 236
    return-void
.end method

.method private showInviteDialog()V
    .locals 4

    .prologue
    .line 125
    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mMessage:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mLink:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mPhoto:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    move-result-object v0

    .line 126
    .local v0, "dialog":Lcom/vkcoffee/android/sdk/SDKInviteDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private showResendDialog()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity$1;-><init>(Lcom/vkcoffee/android/sdk/SDKInviteActivity;)V

    .line 207
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080165

    .line 208
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080455

    .line 209
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08031e

    .line 210
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800b7

    .line 211
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 213
    return-void
.end method

.method private startChatFragment(Lcom/vkcoffee/android/UserProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    iget v3, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v2, "title"

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 111
    iget v2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_0

    .line 112
    const-string/jumbo v2, "photo"

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;-><init>()V

    .line 116
    .local v1, "chatFragment":Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setArguments(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 119
    iget-boolean v2, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mInviteSent:Z

    if-nez v2, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->showInviteDialog()V

    .line 122
    :cond_1
    return-void
.end method

.method private startFriendPickFragment(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string/jumbo v2, "title"

    const v3, 0x7f080454

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "global_search"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    const-string/jumbo v2, "uid"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v2, "com.vkcoffee.android.sdk.extra_ids"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    const/16 v2, 0x2a

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/VKActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    .line 78
    if-ne p2, v1, :cond_1

    .line 79
    const-string/jumbo v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mSelectedProfile:Lcom/vkcoffee/android/UserProfile;

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mSelectedProfile:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->startChatFragment(Lcom/vkcoffee/android/UserProfile;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->finish()V

    goto :goto_0

    .line 84
    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 85
    if-ne p2, v1, :cond_3

    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->startFriendPickFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->setResult(I)V

    .line 89
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mIds:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mMessage:Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_photo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mPhoto:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mLink:Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_app_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mAppId:I

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->finish()V

    .line 72
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mSelectedProfile:Lcom/vkcoffee/android/UserProfile;

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->startFriendPickFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mSelectedProfile:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->startChatFragment(Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onInviteCanceled()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->mIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->startFriendPickFragment(Ljava/util/ArrayList;)V

    .line 265
    return-void
.end method

.method public onInviteSent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "photoAttachment"    # Ljava/lang/CharSequence;
    .param p3, "link"    # Ljava/lang/CharSequence;

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->sendInvite(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method
