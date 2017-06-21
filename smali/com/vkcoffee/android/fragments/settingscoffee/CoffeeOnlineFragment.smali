.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeOnlineFragment.java"


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->updatePlatformLabel()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->updatePlatformLabelOnline()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->checkDepency()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->stopService()V

    return-void
.end method

.method private checkDepency()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 280
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stayOnlinePref"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "stayOnlinePref"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 282
    const-string v0, "offline"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v0, "stayOnlinePref"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 289
    const-string v0, "offline"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 274
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/OnlineSNL;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 277
    :cond_0
    return-void
.end method

.method private updatePlatformLabel()V
    .locals 5

    .prologue
    .line 55
    const-string v1, "\u0424\u0443\u043d\u043a\u0446\u0438\u044f \u043f\u0440\u0435\u0434\u043d\u0430\u0437\u043d\u0430\u0447\u0435\u043d\u0430 \u0434\u043b\u044f \u0441\u043c\u0435\u043d\u044b \u0438\u0434\u0435\u043d\u0442\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440\u0430 \u043f\u0443\u0431\u043b\u0438\u043a\u0430\u0446\u0438\u0438 \u043f\u043e\u0441\u0442\u043e\u0432, \u0440\u0435\u043f\u043e\u0441\u0442\u043e\u0432 (\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0432 APIdog) \u0438 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u0444\u043e\u0442\u043e \u043f\u0440\u043e\u0444\u0438\u043b\u044f"

    .line 56
    .local v1, "labelPlatform":Ljava/lang/String;
    const-string v0, "\u0421\u0435\u0439\u0447\u0430\u0441 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f"

    .line 57
    .local v0, "label":Ljava/lang/String;
    const-string v2, "selectPlatform"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const-string v3, "\u041f\u043e\u0441\u0442\u0438\u043d\u0433 \u0438 \u0434\u0440\u0443\u0433\u043e\u0435"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    const-string v2, "selectPlatform"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n\u0418\u0434\u0435\u043d\u0442\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v4

    invoke-static {v4}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method private updatePlatformLabelOnline()V
    .locals 5

    .prologue
    .line 62
    const-string v1, "\u0424\u0443\u043d\u043a\u0446\u0438\u044f \u043f\u0440\u0435\u0434\u043d\u0430\u0437\u043d\u0430\u0447\u0435\u043d\u0430 \u0434\u043b\u044f \u0441\u043c\u0435\u043d\u044b \u0438\u0434\u0435\u043d\u0442\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440\u0430 \u0440\u0435\u0436\u0438\u043c\u0430 Online"

    .line 63
    .local v1, "labelPlatform":Ljava/lang/String;
    const-string v0, "\u0421\u0435\u0439\u0447\u0430\u0441 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f"

    .line 64
    .local v0, "label":Ljava/lang/String;
    const-string v2, "plat"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const-string v3, "\u041e\u043d\u043b\u0430\u0439\u043d"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    const-string v2, "plat"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n\u0418\u0434\u0435\u043d\u0442\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v4

    invoke-static {v4}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->addPreferencesFromResource(I)V

    .line 72
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/vkcoffee/android/Platform;->CHANGE_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->updatePlatformLabel()V

    .line 77
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->updatePlatformLabelOnline()V

    .line 79
    const-string v1, "selectPlatform"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    const-string v1, "offline"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->checkDepency()V

    .line 134
    const-string v1, "plat"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    const-string v1, "stayOnlinePref"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    const-string v1, "phantomOnlinePref"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 188
    const-string v1, "phantomOnlinePref"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeOnlineFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string v2, "\u041a \u0441\u043e\u0436\u0430\u043b\u0435\u043d\u0438\u044e \u044d\u0442\u0430 \u0444\u0443\u043d\u043a\u0446\u0438\u044f \u0431\u043e\u043b\u044c\u0448\u0435 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u0432 \u0441\u0432\u044f\u0437\u0438 \u0441 \u0442\u0435\u043c, \u0447\u0442\u043e vk.com \u043f\u0440\u0438\u043a\u0440\u044b\u043b\u0430 \u0442\u0435\u0445\u043d\u0438\u0447\u0435\u0441\u043a\u0443\u044e \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u044c \u0434\u043b\u044f \u044d\u0442\u043e\u0433\u043e. Offline \u0432 vk.com \u0442\u043e\u0436\u0435 \u0431\u043e\u043b\u044c\u0448\u0435 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d :("

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    return-void

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method
