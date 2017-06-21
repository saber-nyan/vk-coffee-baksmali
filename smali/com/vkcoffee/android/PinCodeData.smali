.class public Lcom/vkcoffee/android/PinCodeData;
.super Ljava/lang/Object;
.source "PinCodeData.java"


# static fields
.field private static ATTEMPS:Ljava/lang/String;

.field private static ENTERED:Ljava/lang/String;

.field private static FINGER:Ljava/lang/String;

.field public static FIVE_MINUTES:J

.field public static HALF_HOUR:J

.field public static MANUAL:J

.field public static ONE_HOUR:J

.field public static ONE_MINUTE:J

.field private static PIN:Ljava/lang/String;

.field public static SIX_HOURS:J

.field private static STATE_PIN:Ljava/lang/String;

.field private static STATE_STRONG_MODE:Ljava/lang/String;

.field public static STRONG:J

.field private static SUCCESSFULL_ENTER:Ljava/lang/String;

.field private static TIME_LOCK:Ljava/lang/String;

.field public static TWENTY_SECONDS:J

.field private static UNSUCCESSFULL_ENTER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string v0, "attemps"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->ATTEMPS:Ljava/lang/String;

    .line 9
    const-string v0, "succPin"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->SUCCESSFULL_ENTER:Ljava/lang/String;

    .line 10
    const-string v0, "unSuccPin"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->UNSUCCESSFULL_ENTER:Ljava/lang/String;

    .line 11
    const-string v0, "activate"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->STATE_PIN:Ljava/lang/String;

    .line 12
    const-string v0, "strong"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->STATE_STRONG_MODE:Ljava/lang/String;

    .line 13
    const-string v0, "ent"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->ENTERED:Ljava/lang/String;

    .line 14
    const-string v0, "enPinCode"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->PIN:Ljava/lang/String;

    .line 15
    const-string v0, "fing"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->FINGER:Ljava/lang/String;

    .line 16
    const-string v0, "tlc"

    sput-object v0, Lcom/vkcoffee/android/PinCodeData;->TIME_LOCK:Ljava/lang/String;

    .line 18
    const-wide/16 v0, -0x22b

    sput-wide v0, Lcom/vkcoffee/android/PinCodeData;->MANUAL:J

    .line 19
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/vkcoffee/android/PinCodeData;->STRONG:J

    .line 20
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/vkcoffee/android/PinCodeData;->TWENTY_SECONDS:J

    .line 21
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/vkcoffee/android/PinCodeData;->ONE_MINUTE:J

    .line 22
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/vkcoffee/android/PinCodeData;->FIVE_MINUTES:J

    .line 23
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/vkcoffee/android/PinCodeData;->HALF_HOUR:J

    .line 24
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/vkcoffee/android/PinCodeData;->ONE_HOUR:J

    .line 25
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/vkcoffee/android/PinCodeData;->SIX_HOURS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Data()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "P_Operations"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static allOK()V
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->ENTERED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->ATTEMPS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->SUCCESSFULL_ENTER:Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public static checkNormalPinCode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pass"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getSavedPinCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPinCode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pass"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getSavedPinCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disableEnteredState()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->ENTERED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method public static enableEnteredState()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->ENTERED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method public static entered()Z
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->ENTERED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static failed()V
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->ATTEMPS:Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getAttempsCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->UNSUCCESSFULL_ENTER:Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method

.method public static finger()Z
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->FINGER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static fuck()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 154
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getSuccEnter()J

    move-result-wide v0

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getUnsuccEnter()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getSuccEnter()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getUnsuccEnter()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApt()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    const-string v0, "<br><b>\u0412\u0432\u0435\u0434\u0438\u0442\u0435 pin-\u043a\u043e\u0434</b>"

    .line 159
    .local v0, "ok":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->fuck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<br><b>\u0412\u041d\u0418\u041c\u0410\u041d\u0418\u0415!</b><br><i>\u0411\u044b\u043b\u0430 \u043d\u0435\u0443\u0434\u0430\u0447\u043d\u0430\u044f \u043f\u043e\u043f\u044b\u0442\u043a\u0430 \u0432\u0445\u043e\u0434\u0430 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getUnsuccEnter()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</i>."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string v2, "<br><i>\u0421\u043e\u0432\u0435\u0440\u0448\u0435\u043d\u043e \u043f\u043e\u043f\u044b\u0442\u043e\u043a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->getAttempsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</i>."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_0
    return-object v0
.end method

.method public static getAttempsCount()I
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->ATTEMPS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getCurrentTime()J
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getSavedPinCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->PIN:Ljava/lang/String;

    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSuccEnter()J
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->SUCCESSFULL_ENTER:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTime()J
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->TIME_LOCK:Ljava/lang/String;

    sget-wide v2, Lcom/vkcoffee/android/PinCodeData;->HALF_HOUR:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUnsuccEnter()J
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->UNSUCCESSFULL_ENTER:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isEmptyPinCode()Z
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->PIN:Ljava/lang/String;

    const-string v2, "FCp2Y8AeP0HZIBdnys89lA=="

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static offFinger()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->FINGER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method public static offPinCode()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->STATE_PIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method public static offStrongMode()V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->STATE_STRONG_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public static onFinger()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->FINGER:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void
.end method

.method public static onPinCode()V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->STATE_PIN:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method public static onStrongMode()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->STATE_STRONG_MODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method

.method public static pinCode()Z
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->STATE_PIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setPinCode(Ljava/lang/String;)V
    .locals 3
    .param p0, "pass"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->PIN:Ljava/lang/String;

    invoke-static {p0}, Lcom/vkcoffee/android/Helper;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void
.end method

.method public static setTime(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 37
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->TIME_LOCK:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public static strongMode()Z
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/PinCodeData;->STATE_STRONG_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
