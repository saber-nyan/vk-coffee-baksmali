.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeBotFragment.java"


# static fields
.field static act:Landroid/app/Activity;

.field static frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->setStatus()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->stopServiceStatus()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->stopServiceCrazy()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->checkDep()V

    return-void
.end method

.method private checkDep()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "StatusSNL"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "status"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "StatusSNL"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "prevStatus"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "status":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "Additional"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "bv"

    const-string v5, "bv"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1yyF4slwKYe1J/2lOLNSjQ=="

    invoke-static {v4}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "OTA"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "internalAccess"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "VERIFICATION"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "helpers"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "VERIFICATION"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "donnated"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "VERIFICATION"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "donnatedVerifCoffee"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    :cond_0
    const-string v0, ""

    .line 194
    .local v0, "WarnDon":Ljava/lang/String;
    :goto_1
    const-string v3, "statusPref"

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u041f\u0440\u0438 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0438 \u0432 \u0441\u0442\u0430\u0442\u0443\u0441 \u0442\u0440\u0430\u043d\u0441\u043b\u0438\u0440\u0443\u0435\u0442\u0441\u044f \u0442\u0435\u043a\u0443\u0449\u0435\u0435 \u0432\u0440\u0435\u043c\u044f \u0432\u043c\u0435\u0441\u0442\u0435 \u0441 \u0432\u0430\u0448\u0438\u043c  \u0441\u0442\u0430\u0442\u0443\u0441\u043e\u043c.<br>\u041d\u0430\u043f\u0440\u0438\u043c\u0435\u0440: \'\u0412\u0440\u0435\u043c\u044f: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v5

    invoke-static {v5}, Lcom/vkcoffee/android/TimeUtils;->time(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    const-string v2, "\u0417\u0434\u0435\u0441\u044c \u0443\u0441\u0442\u0430\u043d\u0430\u0432\u043b\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0439 \u0441\u0442\u0430\u0442\u0443\u0441 \u0434\u043b\u044f \u0430\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441\u0430, \u043e\u0441\u043d\u043e\u0432\u043d\u043e\u0439 \u043f\u0440\u0438 \u044d\u0442\u043e\u043c \u043d\u0435 \u0442\u0440\u043e\u0433\u0430\u0435\u0442\u0441\u044f \u043f\u043e\u0441\u043b\u0435 \u0435\u0433\u043e \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f.\n"

    .line 196
    .local v2, "summ":Ljava/lang/String;
    const-string v3, "setStatus"

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u0421\u0435\u0439\u0447\u0430\u0441 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d \u0441\u0442\u0430\u0442\u0443\u0441: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "summ":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    sget-object v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v4, "dialogsCrazy"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countCrazy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isEmptyCrazy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 200
    sget-object v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v4, "dialogsCrazy"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    const-string v4, "\u0414\u043e\u0431\u0430\u0432\u044c\u0442\u0435 \u043d\u0443\u0436\u043d\u044b\u0435 \u0434\u0438\u0430\u043b\u043e\u0433\u0438 \u0434\u043b\u044f Crazy Typing. \u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u0430\u0431\u044b \u043f\u0435\u0440\u0435\u0439\u0442\u0438 \u043a \u0434\u0438\u0430\u043b\u043e\u0433\u0430\u043c."

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    sget-object v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v4, "crazyPref"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 203
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->prefCrazy()V

    .line 212
    :goto_2
    return-void

    .line 186
    .end local v0    # "WarnDon":Ljava/lang/String;
    .end local v1    # "status":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "StatusSNL"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "status"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 193
    .restart local v1    # "status":Ljava/lang/String;
    :cond_3
    const-string v0, "<b>\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435, \u0434\u043b\u044f \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435\u0439, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u043b\u0438 \u043f\u0440\u043e\u0435\u043a\u0442, \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f: \u0432\u043c\u0435\u0441\u0442\u043e \u043e\u0434\u043d\u043e\u0439 \u043c\u0438\u043d\u0443\u0442\u044b - \u043f\u043e\u043b\u0442\u043e\u0440\u044b \u043c\u0438\u043d\u0443\u0442\u044b. <br>\u041a\u0430\u043a \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u043f\u0440\u043e\u0435\u043a\u0442: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438-> \u041e \u043f\u0440\u043e\u0435\u043a\u0442\u0435 VK Coffee-> \u041f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u043f\u0440\u043e\u0435\u043a\u0442</b><br>"

    goto/16 :goto_1

    .line 204
    .restart local v0    # "WarnDon":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countCrazyInt()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    sget-object v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v4, "dialogsCrazy"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0414\u043b\u044f \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435\u0439 \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u043b\u0438 \u043f\u0440\u043e\u0435\u043a\u0442, \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e 5 \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432. \u0421\u0435\u0439\u0447\u0430\u0441 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countCrazyInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\u041a\u0430\u043a \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u043f\u0440\u043e\u0435\u043a\u0442: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438-> \u041e \u043f\u0440\u043e\u0435\u043a\u0442\u0435 VK Coffee-> \u041f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u043f\u0440\u043e\u0435\u043a\u0442."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    sget-object v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v4, "crazyPref"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 209
    :cond_5
    sget-object v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v4, "crazyPref"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 210
    sget-object v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    const-string v4, "dialogsCrazy"

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    const-string v4, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u0430\u0431\u044b \u0443\u0434\u0430\u043b\u0438\u0442\u044c \u0441\u043e \u0441\u043f\u0438\u0441\u043a\u0430 \u043d\u0443\u0436\u043d\u044b\u0435 \u0434\u0438\u0430\u043b\u043e\u0433\u0438"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private prefCrazy()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "crazyPref"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    return-void
.end method

.method private setStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 215
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 217
    .local v2, "statusSet":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 218
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "StatusSNL"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "prevStatus"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "userstatus"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "ll":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 222
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    const-string v3, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u0441\u0442\u0430\u0442\u0443\u0441"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v1, "statusAlertSet":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0441\u0442\u0430\u0442\u0443\u0441"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 227
    const-string v3, "\u041e\u041a"

    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;

    invoke-direct {v4, p0, v2}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 245
    return-void

    .line 218
    .end local v0    # "ll":Landroid/widget/LinearLayout;
    .end local v1    # "statusAlertSet":Landroid/app/AlertDialog$Builder;
    :cond_0
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "StatusSNL"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "prevStatus"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private stopServiceCrazy()V
    .locals 4

    .prologue
    .line 253
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/CrazyTypingSNL;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 256
    :cond_0
    return-void
.end method

.method private stopServiceStatus()V
    .locals 4

    .prologue
    .line 248
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/StatusSNL;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->addPreferencesFromResource(I)V

    .line 56
    sput-object p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->act:Landroid/app/Activity;

    .line 59
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->checkDep()V

    .line 61
    const-string v1, "setStatus"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    const-string v0, "<b>\u0411\u044b\u043b\u0438 \u0444\u0430\u043a\u0442\u044b \u0437\u0430\u043c\u043e\u0440\u043e\u0437\u043a\u0438 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b \u0437\u0430 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043d\u0438\u0435 \u0430\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441\u0430, \u043a\u043e\u0442\u043e\u0440\u044b\u0439 \u043f\u0440\u0435\u0434\u043e\u0441\u0442\u0430\u0432\u043b\u044f\u043b\u0438 \u0434\u0440\u0443\u0433\u0438\u0435 \u0441\u0435\u0440\u0432\u0438\u0441\u044b.<br>\u0412 \u0441\u0432\u043e\u044e \u043e\u0447\u0435\u0440\u0435\u0434\u044c \u0430\u0432\u0442\u043e\u0440 VK Coffee \u0441\u0434\u0435\u043b\u0430\u043b \u0442\u0430\u043a\u0443\u044e \u0440\u0435\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044e, \u0434\u0430\u0431\u044b \u0443 \u0430\u0434\u043c\u0438\u043d\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u0438 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 \u043d\u0435 \u0432\u043e\u0437\u043d\u0438\u043a\u043b\u043e \u043a \u0412\u0430\u043c \u0432\u043e\u043f\u0440\u043e\u0441\u043e\u0432:</b><br><br> <br>-\u0414\u0435\u043b\u0430\u0435\u0442\u0441\u044f \u043e\u0434\u0438\u043d \u0437\u0430\u043f\u0440\u043e\u0441 \u0437\u0430 \u043e\u0434\u043d\u0443 \u043c\u0438\u043d\u0443\u0442\u0443. \u0414\u0430\u0431\u044b \u043d\u0435 \u043d\u0430\u0433\u0440\u0443\u0436\u0430\u0442\u044c \u0441\u0435\u0440\u0432\u0435\u0440\u0430 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435;<br> <br>-\u0417\u0430\u043f\u0440\u043e\u0441 \u0434\u0435\u043b\u0430\u0435\u0442\u0441\u044f \u043d\u0435 \u0432 \u043d\u0430\u0447\u0430\u043b\u0435 \u043d\u043e\u0432\u043e\u0439 \u043c\u0438\u043d\u0443\u0442\u044b;<br> <br>-\u0417\u0430\u043f\u0440\u043e\u0441 \u043d\u0438\u0447\u0435\u043c \u043d\u0435 \u043f\u043e\u0434\u043e\u0437\u0440\u0438\u0442\u0435\u043b\u044c\u043d\u044b\u0439, \u0442\u0430\u043a \u043a\u0430\u043a \u0441\u043e\u0432\u0435\u0440\u0448\u0430\u0435\u0442\u0441\u044f \u043d\u0430\u0442\u0438\u0432\u043d\u043e \u0438 \u043b\u043e\u043a\u0430\u043b\u044c\u043d\u043e, \u0442\u0430\u043a \u0436\u0435 \u043a\u0430\u043a \u0438 \u043e\u0441\u0442\u0430\u043b\u044c\u043d\u044b\u0435 \u0437\u0430\u043f\u0440\u043e\u0441\u044b \u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u0433\u043e \u043a\u043b\u0438\u0435\u043d\u0442\u0430.<br><br> <br> <b>\u041e\u0434\u043d\u0430\u043a\u043e \u0432 \u043b\u044e\u0431\u043e\u043c \u0441\u043b\u0443\u0447\u0430\u0435, \u0431\u0443\u0434\u044c\u0442\u0435 \u043e\u0441\u0442\u043e\u0440\u043e\u0436\u043d\u044b. \u0412\u044b \u043f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u044b.</b>"

    .line 78
    .local v0, "warn":Ljava/lang/String;
    const-string v1, "statusPref"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->prefCrazy()V

    .line 132
    const-string v1, "dialogsCrazy"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeBotFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    return-void
.end method
