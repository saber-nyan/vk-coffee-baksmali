.class public Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;
.source "SettingsAccountInnerFragment.java"


# static fields
.field private static final DOMAIN_RESULT:I = 0x67

.field private static final EMAIL_RESULT:I = 0x65

.field private static final NEWS_FILTER_RESULT:I = 0x69

.field private static final PHONE_RESULT:I = 0x66

.field private static final REQUEST_SYNC_SETTINGS:I = 0x68


# instance fields
.field private info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    return-object v0
.end method

.method private updateBannedLabel()V
    .locals 5

    .prologue
    .line 151
    const-string/jumbo v0, "newsBanned"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget v0, v0, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->newsBannedCount:I

    if-lez v0, :cond_0

    const v0, 0x7f0804ae

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget v4, v4, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->newsBannedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    return-void

    .line 151
    :cond_0
    const v0, 0x7f0804ad

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateSyncLabel(I)V
    .locals 4
    .param p1, "syncSetting"    # I

    .prologue
    .line 131
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update sync label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 133
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 136
    const v1, 0x7f080533

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 139
    :pswitch_1
    const v1, 0x7f08052f

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 142
    :pswitch_2
    const v1, 0x7f080531

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 145
    :pswitch_3
    const v1, 0x7f080534

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    const/16 v2, 0x68

    if-ne p1, v2, :cond_0

    if-ne p2, v4, :cond_0

    .line 157
    const-string/jumbo v2, "option"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->updateSyncLabel(I)V

    .line 159
    :cond_0
    const/16 v2, 0x66

    if-ne p1, v2, :cond_1

    if-ne p2, v4, :cond_1

    .line 160
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    const-string/jumbo v3, "phone"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->phone:Ljava/lang/String;

    .line 163
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 164
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_2

    if-ne p2, v4, :cond_2

    .line 168
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 169
    .restart local v1    # "uri":Landroid/net/Uri;
    const-string/jumbo v2, "email"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    const-string/jumbo v3, "email"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->email:Ljava/lang/String;

    .line 171
    const-string/jumbo v2, "email"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 172
    .restart local v0    # "pref":Landroid/support/v7/preference/Preference;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-object v2, v2, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const/16 v2, 0x69

    if-ne p1, v2, :cond_3

    if-ne p2, v4, :cond_3

    .line 176
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    const-string/jumbo v3, "new_count"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->newsBannedCount:I

    .line 177
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->updateBannedLabel()V

    .line 179
    :cond_3
    const/16 v2, 0x67

    if-ne p1, v2, :cond_4

    if-ne p2, v4, :cond_4

    .line 180
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    const-string/jumbo v3, "new_domain"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->domain:Ljava/lang/String;

    .line 181
    const-string/jumbo v2, "domain"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-object v4, v4, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "api_result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    .line 41
    const-string/jumbo v1, "email"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 42
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-object v1, v1, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-object v1, v1, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    const-string/jumbo v1, "domain"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-object v4, v4, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->domain:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$3;-><init>(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    const-string/jumbo v1, "changePassword"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$4;-><init>(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    const-string/jumbo v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->updateSyncLabel(I)V

    .line 92
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$5;-><init>(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 101
    const-string/jumbo v1, "onlyMyPosts"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 102
    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-boolean v1, v1, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->ownPostsDefault:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 103
    const-string/jumbo v1, "enableComments"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 104
    .restart local v0    # "pref":Landroid/support/v7/preference/Preference;
    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-boolean v1, v1, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->noWallReplies:Z

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 106
    const-string/jumbo v1, "newsBanned"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 107
    .restart local v0    # "pref":Landroid/support/v7/preference/Preference;
    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$6;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment$6;-><init>(Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->updateBannedLabel()V

    .line 114
    return-void

    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    move v1, v3

    .line 102
    goto :goto_0

    :cond_1
    move v2, v3

    .line 104
    goto :goto_1
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->onPause()V

    .line 119
    const-string/jumbo v3, "onlyMyPosts"

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 120
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    check-cast v2, Landroid/support/v7/preference/ListPreference;

    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 121
    .local v1, "newOnlyMy":Z
    const-string/jumbo v3, "enableComments"

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 122
    .restart local v2    # "pref":Landroid/support/v7/preference/Preference;
    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 123
    .local v0, "newNoComments":Z
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-boolean v3, v3, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->ownPostsDefault:Z

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SettingsAccountInnerFragment;->info:Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;

    iget-boolean v3, v3, Lcom/vkcoffee/android/api/execute/ExecuteGetAccountSettings$Result;->noWallReplies:Z

    if-eq v0, v3, :cond_1

    .line 124
    :cond_0
    new-instance v3, Lcom/vkcoffee/android/api/account/AccountSetInfo;

    invoke-direct {v3, v1, v0}, Lcom/vkcoffee/android/api/account/AccountSetInfo;-><init>(ZZ)V

    .line 125
    invoke-virtual {v3, v5, v5}, Lcom/vkcoffee/android/api/account/AccountSetInfo;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 128
    :cond_1
    return-void

    .line 122
    .end local v0    # "newNoComments":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
