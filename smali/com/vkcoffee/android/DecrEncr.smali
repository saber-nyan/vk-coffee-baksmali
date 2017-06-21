.class public Lcom/vkcoffee/android/DecrEncr;
.super Ljava/lang/Object;
.source "DecrEncr.java"


# static fields
.field private static final ANONYM_PIN_VALUE:Ljava/lang/String; = "PP"

.field private static final ANONYM_VALUE:Ljava/lang/String; = "II"

.field private static final APIDOG_PIN_VALUE:Ljava/lang/String; = "AP ID 0G"

.field private static final APIDOG_VALUE:Ljava/lang/String; = "AP ID OG"

.field public static final CHOICE_COFFEE:I = 0x0

.field public static final CHOICE_PIN:I = 0x2

.field public static final CHOICE_PRIVATE:I = 0x1

.field private static final COFFEE_PIN_VALUE:Ljava/lang/String; = "VK C0 FF EE"

.field private static final COFFEE_VALUE:Ljava/lang/String; = "VK CO FF EE"

.field private static final DEFORMATED:Ljava/lang/String; = ""

.field private static final FORMATED:Ljava/lang/String; = " "

.field private static final MAX_INPUT:I = 0x10

.field private static final MIN_INPUT:I = 0x4

.field private static final OLD_VALUE_END:Ljava/lang/String; = "=-"

.field private static final OLD_VALUE_START:Ljava/lang/String; = "-="

.field public static temp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/vkcoffee/android/Msgs;->in:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/DecrEncr;->temp:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoDecryptionView(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "checkText"    # Ljava/lang/CharSequence;
    .param p1, "peer"    # I

    .prologue
    const v3, 0x7f020316

    const v2, 0x7f020314

    .line 384
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/DecrEncr;->checkCoffeeEncryption(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/DecrEncr;->checkPinCodeEncryption(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-object p0

    .line 387
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/DecrEncr;->checkCoffeeEncryption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    const v1, 0x7f020313

    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/DecrEncr;->drawableWithCharset(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    const v1, 0x7f020315

    const-string v2, "\u041d\u0435\u043b\u044c\u0437\u044f \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0443. \u0412\u0435\u0440\u043e\u044f\u0442\u043d\u043e \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0430 \u0441\u0442\u0440\u0443\u043a\u0442\u0443\u0440\u0430 \u0437\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u043d\u043e\u0433\u043e \u0442\u0435\u043a\u0441\u0442\u0430."

    invoke-static {v1, v2}, Lcom/vkcoffee/android/DecrEncr;->drawableWithCharset(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 393
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/DecrEncr;->checkPinCodeEncryption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-static {p1}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    :try_start_1
    invoke-static {p1}, Lcom/vkcoffee/android/DecrEncr;->startUseCustomKey(I)V

    .line 397
    const v1, 0x7f020314

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/DecrEncr;->drawableWithCharset(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 399
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "16WaIP1O8bRuJ5yr3c6bWiQegBEUyQnzuLEAvy66D6OX2JbAVUFSw51Twpo0OY8pZ4R6eKBdRtfcAO/p+RdAKQ=="

    invoke-static {v2}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    const v1, 0x7f020316

    const-string v2, "\u041d\u0435\u043b\u044c\u0437\u044f \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0443. \u0412\u0435\u0440\u043e\u044f\u0442\u043d\u043e \u0432\u0432\u0435\u0434\u0435\u043d \u043d\u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0439 \u043a\u043b\u044e\u0447."

    invoke-static {v1, v2}, Lcom/vkcoffee/android/DecrEncr;->drawableWithCharset(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 402
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/DecrEncr;->endUseCustomKey()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 403
    :catch_1
    move-exception v0

    .line 404
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/vkcoffee/android/DecrEncr;->endUseCustomKey()V

    .line 405
    const-string v1, "\u041d\u0435\u043b\u044c\u0437\u044f \u0441\u0434\u0435\u043b\u0430\u0442\u044c \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0443. \u0412\u0435\u0440\u043e\u044f\u0442\u043d\u043e \u0432\u0432\u0435\u0434\u0435\u043d \u043d\u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u044b\u0439 \u043a\u043b\u044e\u0447."

    invoke-static {v3, v1}, Lcom/vkcoffee/android/DecrEncr;->drawableWithCharset(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 407
    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v1, "\u0414\u043b\u044f \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u043a\u0438 \u044d\u0442\u043e\u0433\u043e \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \u043d\u0443\u0436\u043d\u043e \u0432\u0432\u0435\u0441\u0442\u0438 \u043a\u043b\u044e\u0447"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/DecrEncr;->drawableWithCharset(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method public static canTransform(Ljava/lang/String;Landroid/app/Activity;Z)Z
    .locals 4
    .param p0, "trim"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bigText"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 427
    const-string v2, "\u0420\u0430\u0437\u0433\u043e\u0432\u0430\u0440\u0438\u0432\u0430\u0442\u044c \u0441 \u043f\u043e\u043b\u043d\u044b\u043c \u0440\u0442\u043e\u043c \u043d\u0435\u043a\u0440\u0430\u0441\u0438\u0432\u043e. \u0420\u0430\u0437\u0433\u043e\u0432\u0430\u0440\u0438\u0432\u0430\u0442\u044c \u0441 \u043f\u0443\u0441\u0442\u043e\u0439 \u0433\u043e\u043b\u043e\u0432\u043e\u0439 \u0435\u0449\u0451 \u0445\u0443\u0436\u0435. \u041d\u043e \u044d\u0442\u043e \u043d\u0435 \u0442\u0432\u043e\u0439 \u0441\u043b\u0443\u0447\u0430\u0439. \u041d\u0435\u043b\u044c\u0437\u044f \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u0443\u0441\u0442\u043e\u0439 \u0442\u0435\u043a\u0441\u0442."

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    invoke-static {p0}, Lcom/vkcoffee/android/Msgs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DecrEncr;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz p2, :cond_2

    const/16 v2, 0xfe6

    :goto_1
    if-le v3, v2, :cond_4

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u0421\u043b\u0438\u0448\u043a\u043e\u043c \u0431\u043e\u043b\u044c\u0448\u043e\u0439 \u0438\u0442\u043e\u0433\u043e\u0432\u044b\u0439 \u0442\u0435\u043a\u0441\u0442: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/Msgs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DecrEncr;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; \u0414\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    const/16 v0, 0x1000

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 431
    goto :goto_0

    .line 429
    :cond_2
    const/16 v2, 0x3e4

    goto :goto_1

    .line 430
    :cond_3
    const/16 v0, 0x3fe

    goto :goto_2

    .line 432
    :cond_4
    invoke-static {p0}, Lcom/vkcoffee/android/DecrEncr;->checkCoffeeEncryption(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/vkcoffee/android/DecrEncr;->checkPinCodeEncryption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    :cond_5
    const-string v0, "\u0428\u0438\u0444\u0440\u043e\u0432\u0430\u0442\u044c \u0448\u0438\u0444\u0440? \u0421\u043c\u0435\u0448\u043d\u043e-\u0441\u043c\u0435\u0448\u043d\u043e, \u043d\u043e \u043d\u0435 \u0441\u043f\u0430\u0441\u0435\u0442."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 434
    goto :goto_0
.end method

.method public static checkCachedKey(I)Z
    .locals 4
    .param p0, "peer"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encr"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "peer"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "empty"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "empty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkCoffeeEncryption(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "VK CO FF EE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VK CO FF EE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    :cond_0
    const-string v0, "AP ID OG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AP ID OG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    :cond_1
    const-string v0, "II"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "II"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_2
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 77
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPinCodeEncryption(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "VK C0 FF EE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VK C0 FF EE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :cond_0
    const-string v0, "AP ID 0G"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AP ID 0G"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    :cond_1
    const-string v0, "PP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    :cond_2
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 84
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cleanCachedKey(I)V
    .locals 3
    .param p0, "peer"    # I

    .prologue
    .line 107
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "peer"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "empty"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method

.method private static drawableWithCharset(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "idRes"    # I
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 368
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    const-string v4, "F"

    invoke-virtual {v3, v4}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 369
    .local v1, "spannable":Landroid/text/Spannable;
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 370
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 372
    .local v2, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v1, v3, v5, v6, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object v3, v2

    .line 373
    check-cast v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v3, v2

    .line 374
    check-cast v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 375
    check-cast v2, Ljava/lang/CharSequence;

    .end local v2    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    return-object v2
.end method

.method public static endUseCustomKey()V
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/vkcoffee/android/DecrEncr;->temp:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/Msgs;->in:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 322
    const-string v3, "VK C0 FF EE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    const-string v3, "VK C0 FF EE"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    :cond_0
    const-string v3, "PP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    const-string v3, "PP"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 328
    :cond_1
    const-string v3, "AP ID 0G"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    const-string v3, "AP ID 0G"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 332
    :cond_2
    const-string v3, "VK CO FF EE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    const-string v3, "VK CO FF EE"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 336
    :cond_3
    const-string v3, "AP ID OG"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    const-string v3, "AP ID OG"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 340
    :cond_4
    const-string v3, "II"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 341
    const-string v3, "II"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 344
    :cond_5
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 345
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 353
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v1, "output":Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 356
    .local v2, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_7

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 357
    :cond_7
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 358
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 362
    :goto_1
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 360
    :cond_8
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getCachedKey(I)Ljava/lang/String;
    .locals 3
    .param p0, "peer"    # I

    .prologue
    .line 103
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "peer"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "empty"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValueCheckBox(I)Z
    .locals 3
    .param p0, "peer"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkBox"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static pinCodeMessage(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 17
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "peer"    # I

    .prologue
    .line 171
    const-string v7, ""

    .line 172
    .local v7, "action":Ljava/lang/String;
    const-string v8, ""

    .line 173
    .local v8, "action2":Ljava/lang/String;
    const-string v12, ""

    .line 174
    .local v12, "mess":Ljava/lang/String;
    const-string v7, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435"

    .line 175
    const-string v8, "\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043b\u044e\u0447"

    .line 176
    const-string v12, "<i>\u0421\u043e\u0441\u0442\u043e\u0438\u0442 \u0438\u0437 \u043e\u0442 4-\u0445 \u0434\u043e 16-\u0442\u0438 \u0437\u043d\u0430\u043a\u043e\u0432</i>"

    .line 178
    new-instance v6, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 180
    .local v6, "dialog":Landroid/app/Dialog;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    .line 181
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030052

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 183
    .local v2, "dialoglayout":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 184
    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 186
    const v1, 0x7f1001a1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const v1, 0x7f1001a2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    const-string v1, "#5181B8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    const v1, 0x7f10019c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 192
    .local v15, "txt2":Landroid/widget/TextView;
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const-string v1, "#A8C0DC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    const v1, 0x7f10019c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 196
    .local v10, "edtText":Landroid/widget/EditText;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 199
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 201
    const v1, 0x7f10019f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 202
    .local v9, "butt":Landroid/widget/Button;
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const v1, 0x7f10019d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 209
    .local v13, "pass":Landroid/widget/EditText;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " \u043a\u043b\u044e\u0447"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v1, Lcom/vkcoffee/android/DecrEncr$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v13, v0}, Lcom/vkcoffee/android/DecrEncr$2;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v13, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 223
    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    .line 241
    const v1, 0x7f10019f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    new-instance v1, Lcom/vkcoffee/android/DecrEncr$3;

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/vkcoffee/android/DecrEncr$3;-><init>(Landroid/view/View;Landroid/app/Activity;ILjava/lang/String;Landroid/app/Dialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v1, 0x7f10019e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 278
    .local v14, "txt":Landroid/widget/TextView;
    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const v1, 0x7f10019e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/vkcoffee/android/DecrEncr$4;

    invoke-direct {v3, v6}, Lcom/vkcoffee/android/DecrEncr$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 285
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 286
    return-void
.end method

.method public static readMessage(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "peer"    # I
    .param p3, "pincode"    # Z

    .prologue
    const/4 v5, 0x1

    .line 129
    if-eqz p3, :cond_0

    .line 130
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/DecrEncr;->pinCodeMessage(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 160
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {p2}, Lcom/vkcoffee/android/DecrEncr;->startUseCustomKey(I)V

    .line 137
    :try_start_0
    invoke-static {p1}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    if-gt v2, v3, :cond_2

    .line 138
    invoke-static {p1}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "16WaIP1O8bRuJ5yr3c6bWiQegBEUyQnzuLEAvy66D6OX2JbAVUFSw51Twpo0OY8pZ4R6eKBdRtfcAO/p+RdAKQ=="

    invoke-static {v3}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u0412\u0435\u0440\u043e\u044f\u0442\u043d\u043e \u0432\u0432\u0435\u0434\u0435\u043d \u043e\u0448\u0438\u0431\u043e\u0447\u043d\u044b\u0439 \u043a\u043b\u044e\u0447"

    :goto_1
    invoke-static {v2}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 139
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 140
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-static {}, Lcom/vkcoffee/android/DecrEncr;->endUseCustomKey()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v1    # "toast":Landroid/widget/Toast;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/vkcoffee/android/DecrEncr;->endUseCustomKey()V

    .line 158
    const-string v2, "\u0428\u0438\u0444\u0440 \u043f\u043e\u0432\u0440\u0435\u0436\u0434\u0435\u043d"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 144
    :cond_2
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0435"

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 145
    invoke-static {p1}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 146
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 147
    const-string v3, "\u041f\u0440\u043e\u0447\u0438\u0442\u0430\u043d\u043e"

    .line 148
    new-instance v4, Lcom/vkcoffee/android/DecrEncr$1;

    invoke-direct {v4}, Lcom/vkcoffee/android/DecrEncr$1;-><init>()V

    .line 147
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static setKey(ILjava/lang/String;)V
    .locals 5
    .param p0, "peer"    # I
    .param p1, "pinCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 114
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "peer"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "b7y396GZfJEV9U43hHuVRg=="

    invoke-static {v3}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Msgs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/Msgs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public static setValueCheckBox(IZ)V
    .locals 3
    .param p0, "peer"    # I
    .param p1, "state"    # Z

    .prologue
    .line 88
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkBox"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method public static startUseCustomKey(I)V
    .locals 1
    .param p0, "peer"    # I

    .prologue
    .line 289
    sget-object v0, Lcom/vkcoffee/android/Msgs;->in:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/DecrEncr;->temp:Ljava/lang/String;

    .line 290
    invoke-static {p0}, Lcom/vkcoffee/android/DecrEncr;->getCachedKey(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Msgs;->in:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "ba"    # [B

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 165
    :cond_0
    const-string v2, "%x "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static transformText(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p0, "trim"    # Ljava/lang/String;
    .param p1, "choice"    # I
    .param p2, "peer"    # I

    .prologue
    const/4 v5, 0x0

    .line 441
    const-string v0, "VK CO FF EE"

    .line 443
    .local v0, "module":Ljava/lang/String;
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "anonEncr"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Additional"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "bn"

    const-string v4, "bn"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "7xXZMj0/m+FBgPEg6hXe9Q=="

    invoke-static {v3}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "internalAccess"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "VERIFICATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "helpers"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "VERIFICATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "donnated"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "VERIFICATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "donnatedVerifCoffee"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    :cond_0
    if-nez p1, :cond_1

    .line 449
    const-string v0, "II"

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/Msgs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/DecrEncr;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    :goto_0
    return-object v1

    .line 454
    :cond_1
    const-string v0, "PP"

    .line 455
    invoke-static {p2}, Lcom/vkcoffee/android/DecrEncr;->startUseCustomKey(I)V

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/Msgs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/DecrEncr;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "returnValue":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/DecrEncr;->endUseCustomKey()V

    goto :goto_0

    .line 461
    .end local v1    # "returnValue":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_3

    .line 462
    const-string v0, "VK CO FF EE"

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/Msgs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/DecrEncr;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 466
    :cond_3
    const-string v0, "VK C0 FF EE"

    .line 467
    invoke-static {p2}, Lcom/vkcoffee/android/DecrEncr;->startUseCustomKey(I)V

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/Msgs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/DecrEncr;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    .restart local v1    # "returnValue":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/DecrEncr;->endUseCustomKey()V

    goto/16 :goto_0
.end method
