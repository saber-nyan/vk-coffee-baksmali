.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeServerFragment.java"


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private v:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getOTAInf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->v:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->got(Ljava/lang/Object;)V

    return-void
.end method

.method private getOTAInf()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u044f\u044f \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u0431\u044b\u043b\u0430 <b>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "OTA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "serverTime"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    const-string v1, "</b><br><i>\u0412\u0441\u0442\u0440\u044f\u0445\u043d\u0438\u0442\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u0438\u043b\u0438 \u043d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u043b\u044f \u043d\u043e\u0432\u043e\u0439 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u0438/\u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0439.</i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private got(Ljava/lang/Object;)V
    .locals 5
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_0

    .line 175
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v2, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 177
    const-string v3, "\u0422\u0435\u0441\u0442\u043e\u0432\u044b\u0435 \u0432\u0435\u0440\u0441\u0438\u0438 \u043c\u043e\u0433\u0443\u0442 \u0438\u043c\u0435\u0442\u044c \u043a\u0440\u0438\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0435 \u043e\u0448\u0438\u0431\u043a\u0438. \u0422\u0430\u043a \u0436\u0435 \u0431\u0430\u0433\u0440\u0435\u043f\u043e\u0440\u0442 \u043f\u043e \u043d\u0438\u043c \u0434\u043e\u043b\u0436\u0435\u043d \u0431\u044b\u0442\u044c \u0432 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u043e\u0439 \u0442\u0435\u043c\u0435. \u0412\u044b \u0442\u043e\u0447\u043d\u043e \u0445\u043e\u0442\u0438\u0442\u0435 \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u044c \u0442\u0435\u0441\u0442\u043e\u0432\u044b\u0435 \u0432\u0435\u0440\u0441\u0438\u0438?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 179
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 180
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$7;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$7;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 188
    const-string v3, "\u0425\u043e\u0447\u0443"

    .line 189
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V

    .line 188
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 229
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 237
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :goto_0
    return-void

    .line 231
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 232
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 233
    const-string v3, "publicTest"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 234
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private inf()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    const-string v0, ""

    .line 141
    .local v0, "mess":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<b>VK Coffee: </b> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/OTA;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<b>\u0421\u0442\u0430\u0434\u0438\u044f:</b> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Release"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<b>\u0412\u0435\u0442\u043a\u0430:</b> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/OTA;->TREE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    sget v1, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    if-lez v1, :cond_1

    sget v1, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v2, 0x63

    if-gt v1, v2, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    sget v1, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    sget v1, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v2, 0x3e7

    if-gt v1, v2, :cond_2

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<i>NOT FOR RELEASE. ONLY FOR TESTING</i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    goto :goto_0

    :cond_2
    sget v1, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    sget v1, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v2, 0x270f

    if-gt v1, v2, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<i>NOT FOR USERS. ONLY FOR TESTING</i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->addPreferencesFromResource(I)V

    .line 76
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/vkcoffee/android/LoadData;->UPDATED_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mSensorManager:Landroid/hardware/SensorManager;

    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->v:Landroid/os/Vibrator;

    .line 83
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mAccelerometer:Landroid/hardware/Sensor;

    .line 84
    new-instance v1, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    invoke-direct {v1}, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    .line 85
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;->setOnShakeListener(Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;)V

    .line 100
    const-string v1, "publicTest"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    const-string v1, "inf"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020320

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "#54000c1a"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 108
    const-string v1, "inf"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->inf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    const-string v1, "update"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getOTAInf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    const-string v1, "update"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    const-string v1, "viewChangeLog"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$5;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 126
    return-void

    .line 79
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 136
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onPause()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mShakeDetector:Lcom/vkcoffee/android/coffeeexternal/ShakeDetector;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 131
    return-void
.end method

.method public viewChangeLog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 159
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v1, "\u0421\u043f\u0438\u0441\u043e\u043a \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0439:"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "changeLog"

    const-string v4, "\u041d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d..."

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 164
    const-string v2, "OK"

    .line 165
    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$6;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$6;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V

    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 171
    return-void
.end method
