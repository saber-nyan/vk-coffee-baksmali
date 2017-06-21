.class public Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "SettingsNotificationsFragment.java"


# instance fields
.field private cancelDndPref:Landroid/support/v7/preference/Preference;

.field private dnd1Pref:Landroid/support/v7/preference/Preference;

.field private dnd8Pref:Landroid/support/v7/preference/Preference;

.field private initialSettings:Ljava/lang/String;

.field private prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->showDndDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->cancelDndPref:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->dnd1Pref:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->setDnd(J)V

    return-void
.end method

.method private setDnd(J)V
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 251
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "dnd_end"

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getOffset()I

    move-result v3

    int-to-long v4, v3

    mul-long/2addr v4, v6

    add-long/2addr v4, p1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    const-string/jumbo v1, "cat_notify"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 253
    .local v0, "cat":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v1, "dnd_cancel"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->cancelDndPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->cancelDndPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080494

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-long v6, p1, v6

    long-to-int v6, v6

    invoke-static {v6}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->dnd1Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 258
    return-void
.end method

.method private showDndDialog()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0036

    new-instance v2, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$6;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$6;-><init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800c4

    .line 220
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 221
    return-void
.end method

.method private updateExtendedSubtitles()V
    .locals 5

    .prologue
    const v4, 0x7f08012c

    const/4 v3, 0x1

    .line 194
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, "p":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "notifyPrivMessages"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const-string/jumbo v1, "notificationsPrivateMessages"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    const-string/jumbo v1, "notifyChatMessages"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const-string/jumbo v1, "notificationsChatMessages"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateRingtoneName(Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string/jumbo v4, "notifyRingtone"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 262
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 263
    .local v3, "rt":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 264
    .local v2, "ringtone":Landroid/media/Ringtone;
    const-string/jumbo v0, "Unknown"

    .line 265
    .local v0, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 266
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    return-void

    .line 262
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "ringtone":Landroid/media/Ringtone;
    .end local v3    # "rt":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "notifyRingtone"

    const-string/jumbo v6, "content://settings/system/notification_sound"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 266
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "ringtone":Landroid/media/Ringtone;
    .restart local v3    # "rt":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0804af

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected getTitleRes()I
    .locals 1

    .prologue
    .line 225
    const v0, 0x7f0804b0

    return v0
.end method

.method synthetic lambda$onCreate$606(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->updateRingtoneName(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$607(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/RingtonePreference;->startSelectRingtone(Landroid/app/Fragment;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/ui/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0x3e8

    .line 40
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/NotificationUtils;->getNotificationSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->initialSettings:Ljava/lang/String;

    .line 42
    const v4, 0x7f060008

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->addPreferencesFromResource(I)V

    .line 44
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 46
    const-string/jumbo v4, "notifyRingtone"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 47
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 48
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object v4, v1

    .line 52
    check-cast v4, Lcom/vkcoffee/android/ui/RingtonePreference;

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefSound:Lcom/vkcoffee/android/ui/RingtonePreference;

    .line 53
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    :cond_0
    const-string/jumbo v4, "dnd_cancel"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->cancelDndPref:Landroid/support/v7/preference/Preference;

    .line 61
    const-string/jumbo v4, "dnd_hour"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->dnd1Pref:Landroid/support/v7/preference/Preference;

    .line 62
    new-instance v4, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 71
    const-string/jumbo v4, "notifyHeadsUp"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 72
    const-string/jumbo v4, "cat_notify"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 73
    .local v0, "cat":Landroid/support/v7/preference/PreferenceCategory;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 76
    .end local v0    # "cat":Landroid/support/v7/preference/PreferenceCategory;
    :cond_1
    const-string/jumbo v4, "notifyPrivMessages"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 77
    new-instance v4, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string/jumbo v4, "notifyChatMessages"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 88
    new-instance v4, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$3;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    const-string/jumbo v4, "postSubscriptions"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 155
    new-instance v4, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$4;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->cancelDndPref:Landroid/support/v7/preference/Preference;

    new-instance v5, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$5;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$5;-><init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "dnd_end"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getOffset()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v10

    sub-long v2, v4, v6

    .line 175
    .local v2, "t":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 176
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->cancelDndPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080494

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    div-long v10, v2, v10

    long-to-int v9, v10

    invoke-static {v9}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    const-string/jumbo v4, "cat_notify"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->dnd1Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 182
    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->updateRingtoneName(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->updateExtendedSubtitles()V

    .line 184
    return-void

    .line 179
    :cond_2
    const-string/jumbo v4, "cat_notify"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->cancelDndPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, "view":Landroid/view/View;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 247
    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onPause()V

    .line 237
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/NotificationUtils;->getNotificationSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "newSettings":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->initialSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->initialSettings:Ljava/lang/String;

    .line 240
    new-instance v1, Lcom/vkcoffee/android/api/account/AccountSetPushSettings;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/account/AccountSetPushSettings;-><init>()V

    invoke-virtual {v1, v2, v2}, Lcom/vkcoffee/android/api/account/AccountSetPushSettings;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->setBackground(Z)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 242
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onResume()V

    .line 231
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->updateExtendedSubtitles()V

    .line 232
    return-void
.end method
