.class public Lcom/vkcoffee/android/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private alertView:Landroid/view/View;

.field currentSyncOption:I

.field private hqPhotos:Z

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field syncAll:Z

.field syncEnabled:Z

.field syncSettingsMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncSettingsMode:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/WelcomeActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method

.method private saveSyncSettings()V
    .locals 8

    .prologue
    .line 123
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 124
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v5, "com.vkcoffee.account"

    invoke-virtual {v2, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 125
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v5, v1

    if-nez v5, :cond_0

    .line 126
    new-instance v0, Landroid/accounts/Account;

    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "username"

    const-string/jumbo v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.vkcoffee.account"

    invoke-direct {v0, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v0, "account":Landroid/accounts/Account;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 128
    const/4 v5, 0x1

    new-array v1, v5, [Landroid/accounts/Account;

    .end local v1    # "accounts":[Landroid/accounts/Account;
    const/4 v5, 0x0

    aput-object v0, v1, v5

    .line 130
    .end local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "com.android.contacts"

    iget-boolean v7, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    invoke-static {v5, v6, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {p0}, Lcom/vkcoffee/android/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 132
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "sync_all"

    iget-boolean v7, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncAll:Z

    .line 133
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "sync_hq_photos"

    iget-boolean v7, p0, Lcom/vkcoffee/android/WelcomeActivity;->hqPhotos:Z

    .line 134
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 135
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v4

    .line 137
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setSyncOption(I)V
    .locals 4
    .param p1, "o"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 142
    iput p1, p0, Lcom/vkcoffee/android/WelcomeActivity;->currentSyncOption:I

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v1, 0x7f100417

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v1, 0x7f10041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v1, 0x7f10041d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_3
    iget-object v0, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v1, 0x7f10041e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    return-void

    :cond_0
    move v1, v3

    .line 143
    goto :goto_0

    :cond_1
    move v1, v3

    .line 144
    goto :goto_1

    :cond_2
    move v1, v3

    .line 145
    goto :goto_2

    .line 148
    :pswitch_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncAll:Z

    .line 149
    iput-boolean v2, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    goto :goto_3

    .line 152
    :pswitch_1
    iput-boolean v3, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncAll:Z

    .line 153
    iput-boolean v2, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    goto :goto_3

    .line 156
    :pswitch_2
    iput-boolean v3, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    iput-boolean v3, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncAll:Z

    goto :goto_3

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTextColor(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 110
    check-cast v0, Landroid/view/ViewGroup;

    .line 111
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/WelcomeActivity;->setTextColor(Landroid/view/View;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 116
    check-cast v2, Landroid/widget/TextView;

    .line 117
    .local v2, "t":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    const v4, 0xffffff

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .end local v2    # "t":Landroid/widget/TextView;
    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$723(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b1"    # Z

    .prologue
    .line 66
    iput-boolean p2, p0, Lcom/vkcoffee/android/WelcomeActivity;->hqPhotos:Z

    return-void
.end method

.method synthetic lambda$onCreate$724(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkcoffee/android/WelcomeActivity;->saveSyncSettings()V

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "option"

    iget v2, p0, Lcom/vkcoffee/android/WelcomeActivity;->currentSyncOption:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/WelcomeActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/vkcoffee/android/WelcomeActivity;->finish()V

    .line 81
    return-void
.end method

.method synthetic lambda$onCreate$725(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/WelcomeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$726(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/vkcoffee/android/WelcomeActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 91
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/WelcomeActivity;->setSyncOption(I)V

    goto :goto_0

    .line 94
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/WelcomeActivity;->setSyncOption(I)V

    goto :goto_0

    .line 97
    :sswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/WelcomeActivity;->setSyncOption(I)V

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100416 -> :sswitch_0
        0x7f100419 -> :sswitch_1
        0x7f10041c -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f10041e

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 33
    invoke-virtual {p0, v7, v7}, Lcom/vkcoffee/android/WelcomeActivity;->overridePendingTransition(II)V

    .line 34
    invoke-virtual {p0}, Lcom/vkcoffee/android/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f0202f1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 35
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/WelcomeActivity;->setContentView(Landroid/view/View;)V

    .line 37
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0c00d3

    invoke-direct {v4, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f03019d

    invoke-static {v4, v5, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 40
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "sync_all"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncAll:Z

    .line 41
    const-string/jumbo v4, "sync_hq_photos"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->hqPhotos:Z

    .line 43
    iput-boolean v7, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    .line 44
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 45
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v4, "com.vkcoffee.account"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 46
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v4, v1

    if-nez v4, :cond_0

    .line 47
    new-instance v0, Landroid/accounts/Account;

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "username"

    const-string/jumbo v8, ""

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.vkcoffee.account"

    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v2, v0, v9, v9}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 49
    new-array v1, v6, [Landroid/accounts/Account;

    .end local v1    # "accounts":[Landroid/accounts/Account;
    aput-object v0, v1, v7

    .line 51
    .end local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_0
    aget-object v4, v1, v7

    const-string/jumbo v5, "com.android.contacts"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    .line 56
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f100417

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncAll:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 57
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f10041a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncAll:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 58
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f10041d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncAll:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/vkcoffee/android/WelcomeActivity;->syncEnabled:Z

    if-nez v5, :cond_4

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 59
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/vkcoffee/android/WelcomeActivity;->hqPhotos:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    invoke-static {p0}, Lcom/vkcoffee/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->currentSyncOption:I

    .line 63
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f100416

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f100419

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f10041c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-static {p0}, Lcom/vkcoffee/android/WelcomeActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/WelcomeActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 69
    iget-object v4, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/vkcoffee/android/WelcomeActivity;->setTextColor(Landroid/view/View;)V

    .line 72
    :cond_1
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0804c9

    .line 73
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/WelcomeActivity;->alertView:Landroid/view/View;

    .line 74
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080451

    invoke-static {p0}, Lcom/vkcoffee/android/WelcomeActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/WelcomeActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    .line 75
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800dd

    invoke-static {p0}, Lcom/vkcoffee/android/WelcomeActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/WelcomeActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    .line 82
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {p0}, Lcom/vkcoffee/android/WelcomeActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/WelcomeActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    return-void

    :cond_2
    move v5, v7

    .line 56
    goto/16 :goto_0

    :cond_3
    move v5, v7

    .line 57
    goto/16 :goto_1

    :cond_4
    move v6, v7

    .line 58
    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/WelcomeActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    return-void
.end method
