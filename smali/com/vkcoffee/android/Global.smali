.class public Lcom/vkcoffee/android/Global;
.super Ljava/lang/Object;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/Global$ScreenSize;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_MULTIPLIER:F = 2.0f

.field private static final SUPPORTED_LANGS:[Ljava/lang/String;

.field public static accessToken:Ljava/lang/String;

.field public static authOK:Z

.field public static displayDensity:F

.field private static final emojiChars:[C

.field private static emojiSkinModifierChars:Ljava/util/regex/Pattern;

.field private static entitiesPtn:Ljava/util/regex/Pattern;

.field public static httpclient:Lcom/squareup/okhttp/OkHttpClient;

.field public static inited:Z

.field public static isTablet:Z

.field public static longPoll:Lcom/vkcoffee/android/LongPollService;

.field public static maybeTablet:Z

.field public static screenSize:Lcom/vkcoffee/android/Global$ScreenSize;

.field public static secret:Ljava/lang/String;

.field public static uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ru"

    aput-object v1, v0, v3

    const-string v1, "ua"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "kz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/Global;->SUPPORTED_LANGS:[Ljava/lang/String;

    .line 45
    sput-boolean v4, Lcom/vkcoffee/android/Global;->authOK:Z

    .line 47
    const/16 v0, 0x72

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/Global;->emojiChars:[C

    .line 48
    const-string v0, "(\ud83c\udffb|\ud83c\udffc|\ud83c\udffd|\ud83c\udffe|\ud83c\udfff)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Global;->emojiSkinModifierChars:Ljava/util/regex/Pattern;

    .line 49
    sput-object v5, Lcom/vkcoffee/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 51
    sput-boolean v3, Lcom/vkcoffee/android/Global;->inited:Z

    .line 53
    sput-object v5, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    .line 57
    return-void

    .line 47
    nop

    :array_0
    .array-data 2
        0x203cs
        0x2049s
        0x2139s
        0x2194s
        0x2195s
        0x2196s
        0x2197s
        0x2198s
        0x2199s
        0x21a9s
        0x21aas
        0x231as
        0x231bs
        0x23e9s
        0x23eas
        0x23ebs
        0x23ecs
        0x23f0s
        0x23f3s
        0x24c2s
        0x25aas
        0x25abs
        0x25b6s
        0x25c0s
        0x25fbs
        0x25fcs
        0x25fds
        0x25fes
        0x2600s
        0x2601s
        0x260es
        0x2611s
        0x2614s
        0x2615s
        0x261ds
        0x263as
        0x2648s
        0x2649s
        0x264as
        0x264bs
        0x264cs
        0x264ds
        0x264es
        0x264fs
        0x2650s
        0x2651s
        0x2652s
        0x2653s
        0x2660s
        0x2663s
        0x2665s
        0x2666s
        0x2668s
        0x267bs
        0x267fs
        0x2693s
        0x26a0s
        0x26a1s
        0x26aas
        0x26abs
        0x26bds
        0x26bes
        0x26c4s
        0x26c5s
        0x26ces
        0x26d4s
        0x26eas
        0x26f2s
        0x26f3s
        0x26f5s
        0x26fas
        0x26fds
        0x2702s
        0x2705s
        0x2708s
        0x2709s
        0x270as
        0x270bs
        0x270cs
        0x270fs
        0x2712s
        0x2714s
        0x2716s
        0x2728s
        0x2733s
        0x2734s
        0x2744s
        0x2747s
        0x274cs
        0x274es
        0x2753s
        0x2754s
        0x2755s
        0x2757s
        0x2764s
        0x2795s
        0x2796s
        0x2797s
        0x27a1s
        0x27b0s
        0x27bfs
        0x2934s
        0x2935s
        0x2b05s
        0x2b06s
        0x2b07s
        0x2b1bs
        0x2b1cs
        0x2b50s
        0x2b55s
        0x3030s
        0x303ds
        0x3297s
        0x3299s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractLinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v1, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9\\.-]+\\.[a-zA-Z\u0440\u0444\u0420\u0424]{2,4}[0-9a-zA-Z~/?\\.=#!%&_-]*(?<!\\.)(?<!!))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 235
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    return-object v1

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static formatBigNumber(I)Ljava/lang/String;
    .locals 5
    .param p0, "num"    # I

    .prologue
    .line 426
    const v0, 0x989680

    if-le p0, v0, :cond_0

    .line 427
    const-string v0, "%.02f M"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v3, p0

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    .line 428
    :cond_0
    const/16 v0, 0x2710

    if-le p0, v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit16 v1, p0, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatFloat(F)Ljava/lang/String;
    .locals 3
    .param p0, "f"    # F

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 164
    float-to-int v1, p0

    int-to-float p0, v1

    .line 166
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceLang()Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "langApp"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "ua"

    .line 287
    :goto_0
    return-object v0

    .line 284
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "langApp"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const-string v0, "en"

    goto :goto_0

    .line 287
    :cond_1
    const-string v0, "ru"

    goto :goto_0
.end method

.method public static getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    .line 244
    :cond_0
    const/4 v1, 0x0

    .line 246
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private static getScreenSize(Landroid/content/Context;)Lcom/vkcoffee/android/Global$ScreenSize;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    sget-object p0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "value":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/Global$ScreenSize;->values()[Lcom/vkcoffee/android/Global$ScreenSize;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_2

    .line 94
    .end local v2    # "value":Ljava/lang/String;
    :goto_1
    sget-object v1, Lcom/vkcoffee/android/Global$ScreenSize;->normal:Lcom/vkcoffee/android/Global$ScreenSize;

    :cond_1
    return-object v1

    .line 86
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    aget-object v1, v4, v3

    .line 87
    .local v1, "type":Lcom/vkcoffee/android/Global$ScreenSize;
    invoke-virtual {v1}, Lcom/vkcoffee/android/Global$ScreenSize;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "type":Lcom/vkcoffee/android/Global$ScreenSize;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static getStaticMapURL(DD)Ljava/lang/String;
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .prologue
    .line 306
    const/4 v0, 0x1

    .line 307
    .local v0, "i":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 308
    .local v1, "locale":Ljava/util/Locale;
    const-string v3, "http://maps.googleapis.com/maps/api/staticmap?center=%1$s,%2$s&zoom=16&size=300x130&sensor=false&scale=%3$d&language=%4$s"

    .line 309
    .local v3, "str":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    .line 310
    .local v2, "objArr":[Ljava/lang/Object;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 311
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 312
    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 313
    const/4 v0, 0x2

    .line 315
    :cond_0
    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 316
    const/4 v4, 0x3

    const-string v5, "user.language"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 317
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getStaticMapURL(DDII)Ljava/lang/String;
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 321
    const/4 v0, 0x1

    .line 322
    .local v0, "i":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 323
    .local v1, "locale":Ljava/util/Locale;
    const-string v3, "http://maps.googleapis.com/maps/api/staticmap?center=%1$s,%2$s&zoom=16&size=%5$dx%6$d&sensor=false&scale=%3$d&language=%4$s"

    .line 324
    .local v3, "str":Ljava/lang/String;
    const/4 v4, 0x6

    new-array v2, v4, [Ljava/lang/Object;

    .line 325
    .local v2, "objArr":[Ljava/lang/Object;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 326
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 327
    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 328
    const/4 v0, 0x2

    .line 330
    :cond_0
    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 331
    const/4 v4, 0x3

    const-string v5, "user.language"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 332
    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 333
    const/4 v4, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 334
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getStaticMapURL(DDIII)Ljava/lang/String;
    .locals 8
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "zoom"    # I

    .prologue
    .line 338
    const/4 v0, 0x1

    .line 339
    .local v0, "i":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 340
    .local v1, "locale":Ljava/util/Locale;
    const-string v3, "http://maps.googleapis.com/maps/api/staticmap?center=%1$s,%2$s&zoom=%7$d&size=%5$dx%6$d&sensor=false&scale=%3$d&language=%4$s"

    .line 341
    .local v3, "str":Ljava/lang/String;
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/Object;

    .line 342
    .local v2, "objArr":[Ljava/lang/Object;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 343
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 344
    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 345
    const/4 v0, 0x2

    .line 347
    :cond_0
    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 348
    const/4 v4, 0x3

    const-string v5, "user.language"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 349
    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 350
    const/4 v4, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 351
    const/4 v4, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 352
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getURL(Ljava/lang/String;)[B
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v2, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    const-string v3, "User-Agent"

    sget-object v4, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseBody;->bytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUserOnlineStatus(Lorg/json/JSONObject;)I
    .locals 3
    .param p0, "user"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 356
    const-string v2, "online"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 365
    :goto_0
    return v0

    .line 359
    :cond_0
    const-string v0, "online_mobile"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v0, v1

    .line 360
    goto :goto_0

    .line 362
    :cond_1
    const-string v0, "online_app"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 363
    const/4 v0, 0x3

    goto :goto_0

    .line 365
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static inArray(C[C)Z
    .locals 4
    .param p0, "c"    # C
    .param p1, "a"    # [C

    .prologue
    const/4 v1, 0x0

    .line 369
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 374
    :goto_1
    return v1

    .line 369
    :cond_0
    aget-char v0, p1, v2

    .line 370
    .local v0, "cc":C
    if-ne v0, p0, :cond_1

    .line 371
    const/4 v1, 0x1

    goto :goto_1

    .line 369
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x14

    .line 105
    invoke-static {p0}, Lcom/vkcoffee/android/Global;->initIsTablet(Landroid/content/Context;)V

    .line 106
    invoke-static {p0}, Lcom/vk/attachpicker/Picker;->init(Landroid/content/Context;)V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 110
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "sid"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    const-string v4, "uid"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/vkcoffee/android/Global;->uid:I

    .line 112
    const-string v4, "sid"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 113
    const-string v4, "secret"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 114
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v4

    const-string v5, "vk_uid"

    new-instance v6, Ljava/lang/StringBuilder;

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/vkcoffee/android/Global;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 120
    .local v2, "hc":Lcom/squareup/okhttp/OkHttpClient;
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v4}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 121
    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 122
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v4}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 123
    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 124
    new-instance v4, Ljava/net/CookieManager;

    new-instance v5, Lcom/vkcoffee/android/api/PersistentCookieStore;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/api/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    sget-object v6, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v4, v5, v6}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    invoke-virtual {v2, v4}, Lcom/squareup/okhttp/OkHttpClient;->setCookieHandler(Ljava/net/CookieHandler;)Lcom/squareup/okhttp/OkHttpClient;

    .line 126
    :try_start_1
    const-class v4, Lcom/squareup/okhttp/internal/Network;

    const-string v5, "DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 127
    .local v0, "defaultNetworkField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    const/4 v4, 0x0

    new-instance v5, Lcom/vkcoffee/android/Global$1;

    invoke-direct {v5}, Lcom/vkcoffee/android/Global$1;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .end local v0    # "defaultNetworkField":Ljava/lang/reflect/Field;
    :goto_1
    sput-object v2, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    .line 159
    return-void

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e2":Ljava/lang/Throwable;
    const-string v4, "vk"

    invoke-static {v4, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 117
    .end local v1    # "e2":Ljava/lang/Throwable;
    .end local v2    # "hc":Lcom/squareup/okhttp/OkHttpClient;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static initIsTablet(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/vkcoffee/android/Global;->getScreenSize(Landroid/content/Context;)Lcom/vkcoffee/android/Global$ScreenSize;

    move-result-object v0

    .line 100
    .local v0, "screenSize":Lcom/vkcoffee/android/Global$ScreenSize;
    invoke-static {v0}, Lcom/vkcoffee/android/Global;->isTablet(Lcom/vkcoffee/android/Global$ScreenSize;)Z

    move-result v1

    sput-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    .line 101
    const/4 v1, 0x0

    sput-boolean v1, Lcom/vkcoffee/android/Global;->maybeTablet:Z

    .line 102
    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 297
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBuggyMeizu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 400
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_0

    .line 407
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return v1

    .line 404
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_0
    const-string v2, "com.android.internal.widget.MzActionBarView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    const/4 v1, 0x1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method private static isTablet(Lcom/vkcoffee/android/Global$ScreenSize;)Z
    .locals 2
    .param p0, "screenSize"    # Lcom/vkcoffee/android/Global$ScreenSize;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/Global$ScreenSize;->ordinal()I

    move-result v0

    sget-object v1, Lcom/vkcoffee/android/Global$ScreenSize;->normal:Lcom/vkcoffee/android/Global$ScreenSize;

    invoke-virtual {v1}, Lcom/vkcoffee/android/Global$ScreenSize;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTouchwiz()Z
    .locals 2

    .prologue
    .line 396
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/SecLauncher2.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .param p0, "sz"    # J
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 170
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x4e800000

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0801b1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0801b3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0801b2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0801b0

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 392
    invoke-static {p0}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static replaceEmojiModifiers(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 379
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 382
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/Global;->emojiSkinModifierChars:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 383
    .local v1, "m":Ljava/util/regex/Matcher;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 384
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 385
    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1
.end method

.method public static replaceHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 183
    if-nez p0, :cond_0

    .line 184
    const-string v5, ""

    .line 222
    :goto_0
    return-object v5

    .line 186
    :cond_0
    const-string v5, "<br>"

    const-string v6, "\\n"

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-object v5, Lcom/vkcoffee/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    if-nez v5, :cond_1

    .line 189
    const-string v5, "&([a-zA-Z0-9#]+);"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/vkcoffee/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    .line 191
    :cond_1
    sget-object v5, Lcom/vkcoffee/android/Global;->entitiesPtn:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 192
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string v4, ""

    .line 193
    .local v4, "replacement":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_2

    .line 221
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "entity":Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 196
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v1, v5

    .line 197
    .local v1, "ch":C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_3

    .line 198
    const-string v4, "\\\\\\\\"

    .line 219
    .end local v1    # "ch":C
    :goto_2
    invoke-virtual {v3, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 199
    .restart local v1    # "ch":C
    :cond_3
    const/16 v5, 0x22

    if-ne v1, v5, :cond_4

    .line 200
    const-string v4, "\\\\\""

    .line 201
    goto :goto_2

    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 202
    const-string v4, ""

    .line 203
    goto :goto_2

    .line 204
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 206
    goto :goto_2

    .end local v1    # "ch":C
    :cond_6
    const-string v5, "gt"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 207
    const-string v4, ">"

    .line 208
    goto :goto_2

    :cond_7
    const-string v5, "lt"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 209
    const-string v4, "<"

    .line 210
    goto :goto_2

    :cond_8
    const-string v5, "amp"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 211
    const-string v4, "&"

    .line 212
    goto :goto_2

    :cond_9
    const-string v5, "quot"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 213
    const-string v4, "\\\\\""

    .line 214
    goto :goto_2

    :cond_a
    const-string v5, "ndash"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 215
    const-string v4, "-"

    .line 216
    goto :goto_2

    .line 217
    :cond_b
    const-string v4, "?"

    goto :goto_2
.end method

.method public static scale(F)I
    .locals 1
    .param p0, "dip"    # F

    .prologue
    .line 292
    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static stringToIntArray(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 422
    return-object v0

    .line 413
    :cond_0
    aget-object v1, v4, v3

    .line 414
    .local v1, "si":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 416
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static unwrapMentions(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    const-string v0, ""

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v1, "$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[club(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "$2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
