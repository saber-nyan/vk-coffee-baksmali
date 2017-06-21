.class public Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "SettingsGeneralFragment.java"


# instance fields
.field private currentAudioCacheLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$591(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 97
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->reset()V

    .line 98
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->resetCache()V

    .line 99
    invoke-static {p0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 100
    return-void
.end method

.method static synthetic lambda$null$593(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 115
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->clear()V

    .line 116
    invoke-static {p0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 117
    return-void
.end method

.method static synthetic lambda$onCreate$588(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "preference"    # Landroid/support/v7/preference/Preference;
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-static {}, Lru/mail/android/mytracker/MRMyTracker;->getTrackerParams()Lru/mail/android/mytracker/MRMyTrackerParams;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/MRMyTrackerParams;->setTrackingLocationEnabled(Z)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method private moveAudioCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 203
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->stopSelf()V

    .line 205
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, "pdlg":Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 207
    const v2, 0x7f0802af

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 209
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 210
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$1;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;Landroid/app/ProgressDialog;)V

    .line 226
    .local v0, "pc":Lcom/vkcoffee/android/ProgressCallback;
    new-instance v2, Ljava/lang/Thread;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 244
    return-void
.end method


# virtual methods
.method protected getTitleRes()I
    .locals 1

    .prologue
    .line 198
    const v0, 0x7f08049e

    return v0
.end method

.method synthetic lambda$moveAudioCache$600(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;Landroid/app/ProgressDialog;)V
    .locals 4

    .prologue
    .line 228
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/vkcoffee/android/cache/AudioCache;->move(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;)V

    .line 229
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->currentAudioCacheLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error moving"

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "lmsg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p0, p4, v0, p1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method synthetic lambda$null$589(Landroid/app/ProgressDialog;)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ImageCache;->clear()V

    .line 86
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 87
    return-void
.end method

.method synthetic lambda$null$594(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 113
    new-instance v1, Ljava/lang/Thread;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$9;->lambdaFactory$(Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method

.method synthetic lambda$null$599(Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 234
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 235
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    .line 236
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080168

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 237
    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 240
    const-string/jumbo v0, "audioCacheLocation"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method synthetic lambda$onCreate$590(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 80
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 84
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$11;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 88
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreate$592(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 92
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 96
    new-instance v1, Ljava/lang/Thread;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$10;->lambdaFactory$(Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreate$595(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 105
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 106
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800da

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$596(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->currentAudioCacheLocation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->currentAudioCacheLocation:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->moveAudioCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super/range {p0 .. p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget-object v19, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 48
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const v19, 0x7f060007

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->addPreferencesFromResource(I)V

    .line 51
    const-string/jumbo v19, "useHTTPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 52
    .local v11, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string/jumbo v20, "forceHTTPS"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_c

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string/jumbo v20, "forceHTTPS"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 54
    const v19, 0x7f08026b

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 57
    :cond_0
    const-string/jumbo v19, "mytrackerLocationCrapEnabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/support/v14/preference/SwitchPreference;

    .line 58
    .local v17, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    invoke-static {}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;->lambdaFactory$()Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 64
    const-string/jumbo v19, "sendByEnter"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 65
    const-string/jumbo v19, "app"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 68
    :cond_1
    const-string/jumbo v19, "gif_autoplay_available"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_2

    .line 69
    const-string/jumbo v19, "gif_autoplay"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 70
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 73
    :cond_2
    sget-boolean v19, Lcom/vkcoffee/android/Global;->maybeTablet:Z

    if-nez v19, :cond_3

    .line 74
    const-string/jumbo v19, "forceTabletUI"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 75
    const-string/jumbo v19, "app"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 78
    :cond_3
    const-string/jumbo v19, "clearImageCache"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;)Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    const-string/jumbo v19, "clearMessagesCache"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 91
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;)Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const-string/jumbo v19, "clearAudioCache"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;)Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v15, "storagePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v16, "storageTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "extStorage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v19

    if-eqz v19, :cond_d

    const v19, 0x7f080180

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string/jumbo v19, "audioCacheLocation"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    .line 131
    invoke-virtual {v11, v4}, Landroid/support/v7/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 134
    :try_start_0
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    const-string/jumbo v20, "/proc/mounts"

    invoke-direct/range {v19 .. v20}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 136
    .local v13, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v2, "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 139
    .local v3, "extDevice":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_e

    .line 140
    const-string/jumbo v19, "/mnt"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    const-string/jumbo v19, "/storage"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    const-string/jumbo v19, "/sdcard"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_5
    const-string/jumbo v19, "asec"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "tmpfs"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "none"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 143
    const-string/jumbo v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "info":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 145
    const/16 v19, 0x0

    aget-object v19, v6, v19

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_6
    const/16 v19, 0x0

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    const/16 v20, 0x1

    aget-object v20, v6, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const/16 v19, 0x1

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 149
    const/16 v19, 0x0

    aget-object v3, v6, v19

    .line 151
    :cond_7
    const/16 v19, 0x1

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 173
    .end local v2    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "extDevice":Ljava/lang/String;
    .end local v6    # "info":[Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v18

    .line 174
    .local v18, "x":Ljava/lang/Exception;
    const-string/jumbo v19, "vk"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v18    # "x":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v19, v11

    .line 177
    check-cast v19, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/CharSequence;

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v19, v11

    .line 178
    check-cast v19, Landroid/support/v7/preference/ListPreference;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/CharSequence;

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v19, v11

    .line 179
    check-cast v19, Landroid/support/v7/preference/ListPreference;

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    move-object/from16 v19, v11

    check-cast v19, Landroid/support/v7/preference/ListPreference;

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_a

    :cond_9
    move-object/from16 v19, v11

    .line 180
    check-cast v19, Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v19, v11

    .line 183
    check-cast v19, Landroid/support/v7/preference/ListPreference;

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->currentAudioCacheLocation:Ljava/lang/String;

    .line 184
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 191
    const-string/jumbo v19, "cache"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceCategory;

    .line 192
    .local v9, "parent":Landroid/support/v7/preference/PreferenceCategory;
    invoke-virtual {v9, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 194
    .end local v9    # "parent":Landroid/support/v7/preference/PreferenceCategory;
    :cond_b
    return-void

    .line 52
    .end local v4    # "extStorage":Ljava/lang/String;
    .end local v15    # "storagePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "storageTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 127
    .restart local v4    # "extStorage":Ljava/lang/String;
    .restart local v15    # "storagePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "storageTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    :cond_d
    const v19, 0x7f08017d

    goto/16 :goto_1

    .line 154
    .restart local v2    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v3    # "extDevice":Ljava/lang/String;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 155
    if-eqz v3, :cond_8

    .line 157
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Collection;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_f
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 160
    .local v10, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-eqz v19, :cond_f

    .line 165
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v21, "sd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 166
    .local v7, "isSd":Z
    if-eqz v7, :cond_10

    const v19, 0x7f080180

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 168
    .end local v7    # "isSd":Z
    :catch_1
    move-exception v18

    .line 169
    .restart local v18    # "x":Ljava/lang/Exception;
    :try_start_3
    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 166
    .end local v18    # "x":Ljava/lang/Exception;
    .restart local v7    # "isSd":Z
    :cond_10
    const v19, 0x7f08017b

    goto :goto_4
.end method
