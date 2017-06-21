.class public Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "NotificationsAdvancedSettingsFragment.java"


# instance fields
.field private prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

.field private sw:Landroid/widget/Switch;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    return-void
.end method

.method private updateRingtoneName(Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyRingtone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 104
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 105
    .local v3, "rt":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 106
    .local v2, "ringtone":Landroid/media/Ringtone;
    const-string/jumbo v0, "Unknown"

    .line 107
    .local v0, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 108
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    .line 104
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "ringtone":Landroid/media/Ringtone;
    .end local v3    # "rt":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyRingtone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "content://settings/system/notification_sound"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 108
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "ringtone":Landroid/media/Ringtone;
    .restart local v3    # "rt":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0804af

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected getTitleRes()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f0804b0

    return v0
.end method

.method synthetic lambda$onCreate$508(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/RingtonePreference;->startSelectRingtone(Landroid/app/Fragment;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$509(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->updateRingtoneName(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/ui/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 30
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    const v6, 0x7f060003

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->addPreferencesFromResource(I)V

    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    .line 38
    .local v5, "screen":Landroid/support/v7/preference/PreferenceScreen;
    new-instance v1, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getStyledContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, "prefEnable":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const v6, 0x7f0804b0

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setTitle(I)V

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifications"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 41
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v5, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 44
    new-instance v0, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getStyledContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "prefAdvanced":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const v6, 0x7f080480

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setTitle(I)V

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAdvanced"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 47
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v5, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifications"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 51
    new-instance v6, Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getStyledContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/ui/RingtonePreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    .line 52
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;)Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/RingtonePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 56
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    const v7, 0x7f0804b4

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/RingtonePreference;->setTitle(I)V

    .line 57
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyRingtone"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/RingtonePreference;->setKey(Ljava/lang/String;)V

    .line 58
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "notifyRingtone"

    const-string/jumbo v9, "content://settings/system/notification_sound"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/RingtonePreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 59
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-virtual {v6, v10}, Lcom/vkcoffee/android/ui/RingtonePreference;->setShowDefault(Z)V

    .line 60
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/RingtonePreference;->setRingtoneType(I)V

    .line 61
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 62
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyAdvanced"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/RingtonePreference;->setDependency(Ljava/lang/String;)V

    .line 63
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/RingtonePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    new-instance v4, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getStyledContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 69
    .local v4, "prefVibrate":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const v6, 0x7f0804b6

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setTitle(I)V

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyVibrate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "notifyVibrate"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAdvanced"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 75
    new-instance v3, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getStyledContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 76
    .local v3, "prefLed":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const v6, 0x7f0804b3

    invoke-virtual {v3, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setTitle(I)V

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyLED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "notifyLED"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAdvanced"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 82
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 83
    new-instance v2, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getStyledContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 84
    .local v2, "prefHeadsUp":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    const v6, 0x7f0804a2

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setTitle(I)V

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyHeadsUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "notifyHeadsUp"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAdvanced"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 91
    .end local v2    # "prefHeadsUp":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    :cond_0
    invoke-virtual {p0, v10}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->setHasOptionsMenu(Z)V

    .line 92
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/fragments/NotificationsAdvancedSettingsFragment;->updateRingtoneName(Ljava/lang/String;)V

    .line 93
    return-void
.end method
