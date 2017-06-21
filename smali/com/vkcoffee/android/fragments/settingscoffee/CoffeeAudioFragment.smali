.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeAudioFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v4, 0x7f060013

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->addPreferencesFromResource(I)V

    .line 35
    new-instance v3, Ljava/io/File;

    invoke-static {v7}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    const-string v4, "customDirCh"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 39
    const-string v4, "customDirCh"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    const-string v5, "\u041d\u0435\u0442 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u043a \u043d\u0430\u043a\u043e\u043f\u0438\u0442\u0435\u043b\u044e"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "useOficPathCache"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 42
    const-string v4, "customDirCoffee"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 43
    const-string v4, "customDirCh"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 49
    :goto_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "customDirCh"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 50
    const-string v4, "useOficPathCache"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 55
    :goto_1
    const-string v4, "viewDir"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-static {v7}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {}, Lcom/vkcoffee/android/DirSelect;->getParsedEXT()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/DirSelect;->getParsedEXT()Ljava/lang/String;

    move-result-object v4

    const-string v5, "usb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/DirSelect;->getParsedEXT()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Usb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    :cond_1
    const-string v4, "customDirCh"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 59
    const-string v4, "customDirCh"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    const-string v5, "\u041f\u0435\u0440\u0435\u043d\u043e\u0441 \u043a\u0435\u0448\u0430 \u043d\u0435 \u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    :cond_2
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "cacheDirCoffeeNew"

    const-string v6, "VKCoffee"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    const-string v4, "customDirCh"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    invoke-static {v7}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 98
    const-string v4, "customDirCh"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;

    .line 99
    .local v2, "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    invoke-virtual {v2, v7}, Lcom/vkcoffee/android/ui/MaterialSwitchPreference;->setChecked(Z)V

    .line 100
    invoke-static {v7}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    .line 102
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v4, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435!"

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 104
    const-string v5, "\u0412\u043e\u0437\u043d\u0438\u043a\u043b\u0430 \u043a\u0440\u0438\u0442\u0438\u0447\u0435\u0441\u043a\u0430\u044f \u043e\u0448\u0438\u0431\u043a\u0430.\n\u0421\u0438\u0441\u0442\u0435\u043c\u0430 \u043d\u0435 \u0432\u044b\u0434\u0430\u043b\u0430 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u044c \u0434\u0430\u043d\u043d\u044b\u0445 \u0432 \u043d\u0430\u043a\u043e\u043f\u0438\u0442\u0435\u043b\u044c.\n\u041f\u0435\u0440\u0435\u043d\u043e\u0441 \u043a\u044d\u0448\u0430 \u0431\u044b\u043b \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d.\n\n\u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0435 \u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043f\u0440\u043e\u0431\u043b\u0435\u043c\u044b:\n\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e\u0441\u0442\u044c \u043d\u0430\u043a\u043e\u043f\u0438\u0442\u0435\u043b\u044f \u0438 \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u043f\u0435\u0440\u0435\u043d\u043e\u0441 \u0441\u043d\u043e\u0432\u0430.\n\u0415\u0441\u043b\u0438 \u044d\u0442\u043e \u043d\u0435 \u043f\u043e\u043c\u043e\u0433\u043b\u043e, \u043a \u0441\u043e\u0436\u0430\u043b\u0435\u043d\u0438\u044e, \u0412\u0430\u0448\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442 \u043f\u0435\u0440\u0435\u043d\u043e\u0441 \u043a\u044d\u0448\u0430 \u043d\u0430 \u0438\u043d\u043e\u0439 \u043d\u0430\u043a\u043e\u043f\u0438\u0442\u0435\u043b\u044c."

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 110
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 111
    const-string v5, "\u0425\u043e\u0440\u043e\u0448\u043e"

    .line 112
    new-instance v6, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$2;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;)V

    .line 111
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 118
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 122
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .end local v2    # "chDir":Lcom/vkcoffee/android/ui/MaterialSwitchPreference;
    :cond_3
    const-string v4, "useOficPathCache"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$3;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    const-string v4, "customDirCoffee"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    return-void

    .line 45
    :cond_4
    const-string v4, "customDirCoffee"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 46
    const-string v4, "customDirCh"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 52
    :cond_5
    const-string v4, "useOficPathCache"

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1
.end method
