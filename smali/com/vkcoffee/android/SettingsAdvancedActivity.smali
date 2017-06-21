.class public Lcom/vkcoffee/android/SettingsAdvancedActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsAdvancedActivity.java"


# instance fields
.field private currentAudioCacheLocation:Ljava/lang/String;

.field private initialCacheLocation:Ljava/lang/String;

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method

.method static synthetic lambda$null$684(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 77
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->reset()V

    .line 78
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->resetCache()V

    .line 79
    invoke-static {p0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 80
    return-void
.end method

.method static synthetic lambda$null$686(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 96
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->clear()V

    .line 97
    invoke-static {p0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 98
    return-void
.end method

.method static synthetic lambda$onCreate$689(Landroid/preference/Preference;)Z
    .locals 2
    .param p0, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 109
    check-cast p0, Landroid/preference/DialogPreference;

    .end local p0    # "preference":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method private moveAudioCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 223
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 224
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->stopSelf()V

    .line 226
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 227
    .local v1, "pdlg":Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 228
    const v2, 0x7f0802af

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 231
    new-instance v0, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;-><init>(Lcom/vkcoffee/android/SettingsAdvancedActivity;Landroid/app/ProgressDialog;)V

    .line 247
    .local v0, "pc":Lcom/vkcoffee/android/ProgressCallback;
    new-instance v2, Ljava/lang/Thread;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 264
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 265
    return-void
.end method


# virtual methods
.method synthetic lambda$moveAudioCache$694(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;Landroid/app/ProgressDialog;)V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/vkcoffee/android/cache/AudioCache;->move(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/ProgressCallback;)V

    .line 250
    iput-object p2, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity;->currentAudioCacheLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "Error moving"

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "lmsg":Ljava/lang/String;
    invoke-static {p0, p4, v0, p1}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method synthetic lambda$null$682(Landroid/app/ProgressDialog;)V
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ImageCache;->clear()V

    .line 66
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 67
    return-void
.end method

.method synthetic lambda$null$687(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 90
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 94
    new-instance v1, Ljava/lang/Thread;

    invoke-static {v0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$9;->lambdaFactory$(Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method synthetic lambda$null$693(Landroid/app/ProgressDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 255
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 256
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    .line 257
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080168

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 258
    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 261
    const-string/jumbo v0, "audioCacheLocation"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method synthetic lambda$onCreate$683(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 60
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 64
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$11;->lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 68
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreate$685(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 72
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    new-instance v1, Ljava/lang/Thread;

    invoke-static {v0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$10;->lambdaFactory$(Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 81
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreate$688(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 85
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 86
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800da

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$690(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity;->currentAudioCacheLocation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity;->currentAudioCacheLocation:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->moveAudioCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 38
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v18, "imgCacheLocation"

    const-string/jumbo v19, "internal"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/SettingsAdvancedActivity;->initialCacheLocation:Ljava/lang/String;

    .line 40
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/SettingsAdvancedActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 43
    const v18, 0x7f060005

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 48
    const-string/jumbo v18, "sendByEnter"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 49
    .local v11, "pref":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 52
    .end local v11    # "pref":Landroid/preference/Preference;
    :cond_0
    sget-boolean v18, Lcom/vkcoffee/android/Global;->maybeTablet:Z

    if-nez v18, :cond_1

    .line 53
    const-string/jumbo v18, "forceTabletUI"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 54
    .restart local v11    # "pref":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 58
    .end local v11    # "pref":Landroid/preference/Preference;
    :cond_1
    const-string/jumbo v18, "clearImageCache"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 59
    .restart local v11    # "pref":Landroid/preference/Preference;
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    const-string/jumbo v18, "clearMessagesCache"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 71
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    const-string/jumbo v18, "clearAudioCache"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 106
    const-string/jumbo v18, "fontSize"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 107
    if-eqz v11, :cond_2

    .line 108
    invoke-static {}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;->lambdaFactory$()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v15, "storagePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v16, "storageTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "extStorage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-eqz v18, :cond_b

    const v18, 0x7f080180

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string/jumbo v18, "audioCacheLocation"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 122
    invoke-virtual {v11, v4}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 125
    :try_start_0
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    const-string/jumbo v19, "/proc/mounts"

    invoke-direct/range {v18 .. v19}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v13, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v2, "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 130
    .local v3, "extDevice":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 131
    const-string/jumbo v18, "/mnt"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string/jumbo v18, "/storage"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string/jumbo v18, "/sdcard"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_4
    const-string/jumbo v18, "asec"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, "tmpfs"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, "none"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 134
    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "info":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 136
    const/16 v18, 0x0

    aget-object v18, v6, v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_5
    const/16 v18, 0x0

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    const/16 v19, 0x1

    aget-object v19, v6, v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v18, 0x1

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 140
    const/16 v18, 0x0

    aget-object v3, v6, v18

    .line 142
    :cond_6
    const/16 v18, 0x1

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 163
    .end local v2    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "extDevice":Ljava/lang/String;
    .end local v6    # "info":[Ljava/lang/String;
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v17

    .line 164
    .local v17, "x":Ljava/lang/Exception;
    const-string/jumbo v18, "vk"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v17    # "x":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v18, v11

    .line 167
    check-cast v18, Landroid/preference/ListPreference;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v18, v11

    .line 168
    check-cast v18, Landroid/preference/ListPreference;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v18, v11

    .line 169
    check-cast v18, Landroid/preference/ListPreference;

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    move-object/from16 v18, v11

    check-cast v18, Landroid/preference/ListPreference;

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_9

    :cond_8
    move-object/from16 v18, v11

    .line 170
    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v18, v11

    .line 173
    check-cast v18, Landroid/preference/ListPreference;

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/SettingsAdvancedActivity;->currentAudioCacheLocation:Ljava/lang/String;

    .line 174
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 181
    const-string/jumbo v18, "audioCache"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 182
    .local v9, "parent":Landroid/preference/PreferenceCategory;
    invoke-virtual {v9, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    .end local v9    # "parent":Landroid/preference/PreferenceCategory;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getListView()Landroid/widget/ListView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 186
    return-void

    .line 118
    :cond_b
    const v18, 0x7f08017d

    goto/16 :goto_0

    .line 145
    .restart local v2    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v3    # "extDevice":Ljava/lang/String;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 146
    if-eqz v3, :cond_7

    .line 148
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Collection;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 150
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_d
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 151
    .local v10, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    if-eqz v18, :cond_d

    .line 156
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v20, "sd"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 157
    .local v7, "isSd":Z
    if-eqz v7, :cond_e

    const v18, 0x7f080180

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 159
    .end local v7    # "isSd":Z
    :catch_1
    move-exception v18

    goto :goto_2

    .line 157
    .restart local v7    # "isSd":Z
    :cond_e
    const v18, 0x7f08017b

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 191
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 192
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->onBackPressed()V

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
