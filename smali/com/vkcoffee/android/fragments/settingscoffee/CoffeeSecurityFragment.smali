.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeSecurityFragment.java"


# static fields
.field public static final UPDATE_LABEL:Ljava/lang/String; = "com.vkcoffee.android.PIN_UPDATE_LABEL"


# instance fields
.field final FIVE_MINUTES:Ljava/lang/String;

.field final HALF_HOUR:Ljava/lang/String;

.field final MANUAL:Ljava/lang/String;

.field final ONE_HOUR:Ljava/lang/String;

.field final ONE_MINUTE:Ljava/lang/String;

.field final SIX_HOURS:Ljava/lang/String;

.field final STRONG:Ljava/lang/String;

.field final TWENTY_SECONDS:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 58
    const-string v0, "2 \u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->STRONG:Ljava/lang/String;

    .line 59
    const-string v0, "20 \u0441\u0435\u043a\u0443\u043d\u0434"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->TWENTY_SECONDS:Ljava/lang/String;

    .line 60
    const-string v0, "1 \u043c\u0438\u043d\u0443\u0442\u0430"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->ONE_MINUTE:Ljava/lang/String;

    .line 61
    const-string v0, "5 \u043c\u0438\u043d\u0443\u0442"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->FIVE_MINUTES:Ljava/lang/String;

    .line 62
    const-string v0, "\u041f\u043e\u043b\u0447\u0430\u0441\u0430"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->HALF_HOUR:Ljava/lang/String;

    .line 63
    const-string v0, "1 \u0447\u0430\u0441"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->ONE_HOUR:Ljava/lang/String;

    .line 64
    const-string v0, "6 \u0447\u0430\u0441\u043e\u0432"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->SIX_HOURS:Ljava/lang/String;

    .line 65
    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0432\u0440\u0443\u0447\u043d\u0443\u044e \u0438 \u043f\u0440\u0438 \u043d\u043e\u0432\u043e\u043c \u0437\u0430\u043f\u0443\u0441\u043a\u0435"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->MANUAL:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->updatePinLabel()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->timeLock(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->checkDep()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkDep()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "Additional"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "bv"

    const-string v3, "bv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1yyF4slwKYe1J/2lOLNSjQ=="

    invoke-static {v2}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "OTA"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "internalAccess"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "VERIFICATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "helpers"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "VERIFICATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "donnated"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "VERIFICATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "donnatedVerifCoffee"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    :cond_0
    const-string v0, ""

    .line 298
    .local v0, "WarnDon":Ljava/lang/String;
    :goto_0
    const-string v1, "anonEncr"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u0418\u0437 \u0438\u0442\u043e\u0433\u043e\u0432\u043e\u0433\u043e \u0448\u0438\u0444\u0440\u0430 \u0443\u0431\u0438\u0440\u0430\u0435\u0442\u0441\u044f \u0447\u0430\u0441\u0442\u044c <i>VK CO FF EE</i>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    const-string v1, "anonEncr"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 304
    :cond_1
    return-void

    .line 297
    .end local v0    # "WarnDon":Ljava/lang/String;
    :cond_2
    const-string v0, "<b>\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435, \u0434\u043b\u044f \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435\u0439, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u043b\u0438 \u043f\u0440\u043e\u0435\u043a\u0442, \u043d\u0435 \u043c\u043e\u0433\u0443\u0442 \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0434\u0430\u043d\u043d\u0443\u044e \u043e\u043f\u0446\u0438\u044e. <br>\u041a\u0430\u043a \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u043f\u0440\u043e\u0435\u043a\u0442: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438-> \u041e \u043f\u0440\u043e\u0435\u043a\u0442\u0435 VK Coffee-> \u041f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u043f\u0440\u043e\u0435\u043a\u0442</b><br>"

    goto :goto_0
.end method

.method private getTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    const-string v0, ""

    .line 161
    .local v0, "time":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/PinCodeData;->STRONG:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 162
    const-string v0, "2 \u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 163
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/PinCodeData;->TWENTY_SECONDS:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 164
    const-string v0, "20 \u0441\u0435\u043a\u0443\u043d\u0434"

    .line 165
    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/PinCodeData;->ONE_MINUTE:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 166
    const-string v0, "1 \u043c\u0438\u043d\u0443\u0442\u0430"

    .line 167
    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/PinCodeData;->FIVE_MINUTES:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 168
    const-string v0, "5 \u043c\u0438\u043d\u0443\u0442"

    .line 169
    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/PinCodeData;->HALF_HOUR:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 170
    const-string v0, "\u041f\u043e\u043b\u0447\u0430\u0441\u0430"

    .line 171
    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/PinCodeData;->ONE_HOUR:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 172
    const-string v0, "1 \u0447\u0430\u0441"

    .line 173
    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/PinCodeData;->SIX_HOURS:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    .line 174
    const-string v0, "6 \u0447\u0430\u0441\u043e\u0432"

    .line 175
    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/vkcoffee/android/PinCodeData;->MANUAL:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 176
    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0432\u0440\u0443\u0447\u043d\u0443\u044e \u0438 \u043f\u0440\u0438 \u043d\u043e\u0432\u043e\u043c \u0437\u0430\u043f\u0443\u0441\u043a\u0435"

    goto :goto_0
.end method

.method private timeLock(Landroid/app/Activity;)V
    .locals 12
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 183
    const/4 v3, 0x0

    .line 201
    .local v3, "item":I
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v8

    sget-wide v10, Lcom/vkcoffee/android/PinCodeData;->ONE_MINUTE:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 202
    const/4 v3, 0x0

    .line 217
    :cond_0
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v6, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "1 \u043c\u0438\u043d\u0443\u0442\u0430"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v7, "1 \u043c\u0438\u043d\u0443\u0442\u0430"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v7, "5 \u043c\u0438\u043d\u0443\u0442"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v7, "5 \u043c\u0438\u043d\u0443\u0442"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v7, "\u041f\u043e\u043b\u0447\u0430\u0441\u0430"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v7, "\u041f\u043e\u043b\u0447\u0430\u0441\u0430"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v7, "1 \u0447\u0430\u0441"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v7, "1 \u0447\u0430\u0441"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v7, "6 \u0447\u0430\u0441\u043e\u0432"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v7, "6 \u0447\u0430\u0441\u043e\u0432"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v7, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0432\u0440\u0443\u0447\u043d\u0443\u044e \u0438 \u043f\u0440\u0438 \u043d\u043e\u0432\u043e\u043c \u0437\u0430\u043f\u0443\u0441\u043a\u0435"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v7, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0432\u0440\u0443\u0447\u043d\u0443\u044e \u0438 \u043f\u0440\u0438 \u043d\u043e\u0432\u043e\u043c \u0437\u0430\u043f\u0443\u0441\u043a\u0435"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v7, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 \u0432\u0440\u0435\u043c\u044f \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0438"

    invoke-virtual {v1, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 246
    new-instance v5, Landroid/widget/NumberPicker;

    invoke-direct {v5, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 247
    .local v5, "numberPicker":Landroid/widget/NumberPicker;
    const/high16 v7, 0x60000

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 248
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 249
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 250
    invoke-virtual {v5, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 252
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 254
    .local v4, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_6

    .line 258
    invoke-virtual {v5, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 261
    const v7, 0x7f08031e

    new-instance v8, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;

    invoke-direct {v8, p0, v5, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$7;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;Landroid/widget/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7, v8}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void

    .line 203
    .end local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .end local v2    # "i":I
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "numberPicker":Landroid/widget/NumberPicker;
    .end local v6    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v8

    sget-wide v10, Lcom/vkcoffee/android/PinCodeData;->FIVE_MINUTES:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 204
    const/4 v3, 0x1

    .line 205
    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v8

    sget-wide v10, Lcom/vkcoffee/android/PinCodeData;->HALF_HOUR:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 206
    const/4 v3, 0x2

    .line 207
    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v8

    sget-wide v10, Lcom/vkcoffee/android/PinCodeData;->ONE_HOUR:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 208
    const/4 v3, 0x3

    .line 209
    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v8

    sget-wide v10, Lcom/vkcoffee/android/PinCodeData;->SIX_HOURS:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 210
    const/4 v3, 0x4

    .line 211
    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getTime()J

    move-result-wide v8

    sget-wide v10, Lcom/vkcoffee/android/PinCodeData;->MANUAL:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 212
    const/4 v3, 0x5

    goto/16 :goto_0

    .line 255
    .restart local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .restart local v2    # "i":I
    .restart local v4    # "items":[Ljava/lang/String;
    .restart local v5    # "numberPicker":Landroid/widget/NumberPicker;
    .restart local v6    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v2

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updatePinLabel()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 311
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    const-string v1, "finger"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 313
    const-string v1, "finger"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string v2, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442 \u0434\u0430\u043d\u043d\u0443\u044e \u0444\u0443\u043d\u043a\u0446\u0438\u044e"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->isEmptyPinCode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    const-string v1, "goSetPinN"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 326
    const-string v1, "timeLock"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 327
    const-string v1, "goSetPinN"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    const-string v1, "passAppEdit"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string v2, "\u041f\u043e\u043c\u0435\u043d\u044f\u0442\u044c pin-\u043a\u043e\u0434"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 335
    :goto_1
    return-void

    .line 314
    .restart local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    const-string v1, "finger"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 316
    const-string v1, "finger"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string v2, "\u0412 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0430 \u043d\u0435\u0442 \u043e\u0442\u043f\u0435\u0447\u0430\u0442\u043a\u043e\u0432 \u043f\u0430\u043b\u044c\u0446\u0435\u0432"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_1
    const-string v1, "finger"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 321
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_2
    const-string v1, "finger"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 322
    const-string v1, "finger"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string v2, "\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430 Android 6.0 \u0438 \u0432\u044b\u0448\u0435."

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :cond_3
    const-string v1, "goSetPinN"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 331
    const-string v1, "timeLock"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 332
    const-string v1, "goSetPinN"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string v2, "\u0414\u043b\u044f \u043d\u0430\u0447\u0430\u043b\u0430 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u0435 pin-\u043a\u043e\u0434"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    const-string v1, "passAppEdit"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string v2, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c pin-\u043a\u043e\u0434"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f060018

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->addPreferencesFromResource(I)V

    .line 71
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.vkcoffee.android.PIN_UPDATE_LABEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->checkDep()V

    .line 76
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->updatePinLabel()V

    .line 79
    const-string v1, "passAppEdit"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 86
    const-string v1, "timeLock"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    const-string v1, "timeLock"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    const-string v1, "goSetPinN"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$4;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v1, "finger"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$5;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    const-string v1, "anonEncr"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$6;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment$6;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeSecurityFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    return-void

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0
.end method
