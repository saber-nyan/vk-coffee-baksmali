.class public Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;
.super Lcom/vkcoffee/android/fragments/VKFragment;
.source "InstalledGameSettingsFragment.java"


# static fields
.field private static final KEY_APP:Ljava/lang/String; = "app"


# instance fields
.field private app:Lcom/vkcoffee/android/data/ApiApplication;

.field private handler:Landroid/os/Handler;

.field private pendingRequest:Ljava/lang/Runnable;

.field private switchState:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->switchState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->switchState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->updateNotificationsStateDelayed()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->removeApp()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Lcom/vkcoffee/android/data/ApiApplication;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->doRemoveApp()V

    return-void
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->pendingRequest:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static createArgs(Lcom/vkcoffee/android/data/ApiApplication;)Landroid/os/Bundle;
    .locals 2
    .param p0, "app"    # Lcom/vkcoffee/android/data/ApiApplication;

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "app"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    return-object v0
.end method

.method private doRemoveApp()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/vkcoffee/android/api/apps/AppsRemove;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/apps/AppsRemove;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$5;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$5;-><init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;Landroid/app/Fragment;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/apps/AppsRemove;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 135
    return-void
.end method

.method private removeApp()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 112
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080075

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    new-instance v2, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 122
    return-void
.end method

.method private updateNotificationsStateDelayed()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->pendingRequest:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->pendingRequest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;-><init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->pendingRequest:Ljava/lang/Runnable;

    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->pendingRequest:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "app"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v0, v0, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->handler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v2, 0x7f0300b5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "v":Landroid/view/View;
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->view:Landroid/view/View;

    .line 63
    const v2, 0x7f100009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v3, v3, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v2, 0x7f100008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v3, v3, Lcom/vkcoffee/android/data/ApiApplication;->genre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v2, 0x7f10025b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0010

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget v5, v5, Lcom/vkcoffee/android/data/ApiApplication;->friends:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget v8, v8, Lcom/vkcoffee/android/data/ApiApplication;->friends:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v2, 0x7f10025e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 67
    .local v0, "notifySwitch":Landroid/widget/Switch;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-boolean v2, v2, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 68
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->app:Lcom/vkcoffee/android/data/ApiApplication;

    iget-boolean v2, v2, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->switchState:Z

    .line 69
    new-instance v2, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    const v2, 0x7f08031c

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 77
    const v2, 0x7f080321

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 78
    const v2, 0x7f10025f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 101
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->onDestroyView()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->view:Landroid/view/View;

    .line 108
    return-void
.end method
