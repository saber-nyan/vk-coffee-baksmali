.class public Lcom/vkcoffee/android/GlobalMethodsCoffee;
.super Ljava/lang/Object;
.source "GlobalMethodsCoffee.java"


# static fields
.field static df:Ljava/text/DecimalFormat;

.field static hasMapFileLength:Ljava/util/HashMap;

.field static hashMapID:Ljava/util/HashMap;

.field static hashMapSize:Ljava/util/HashMap;

.field static hashMapSpeed:Ljava/util/HashMap;

.field static hashMapTotal:Ljava/util/HashMap;

.field public static markAsReadStr:Ljava/lang/String;

.field public static typingStr:Ljava/lang/String;


# instance fields
.field fileLength:I

.field total:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapSize:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapSpeed:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hasMapFileLength:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapTotal:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapID:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->df:Ljava/text/DecimalFormat;

    .line 440
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "localRead"

    const-string v2, ","

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    .line 473
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "localType"

    const-string v2, ","

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->fileLength:I

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->total:J

    .line 62
    return-void
.end method

.method public static ID(I)V
    .locals 3
    .param p0, "idDownload"    # I

    .prologue
    .line 73
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapID:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static addToCrazy(I)V
    .locals 6
    .param p0, "peer"    # I

    .prologue
    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "crazyTyping"

    const-string v4, ","

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%d,"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "crazyTyping":Ljava/lang/String;
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 401
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 402
    const-string v2, "crazyTyping"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 403
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    return-void
.end method

.method public static addToMarkedAsRead(I)V
    .locals 6
    .param p0, "peer"    # I

    .prologue
    .line 451
    sget-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%d,"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    .line 452
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 453
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "localRead"

    sget-object v2, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 455
    return-void
.end method

.method public static addToTypingStr(I)V
    .locals 5
    .param p0, "peer"    # I

    .prologue
    .line 484
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%d,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    .line 485
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 486
    const-string v1, "localType"

    sget-object v2, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    return-void
.end method

.method private static bitmap(ILandroid/app/Activity;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # I
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 353
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 354
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 356
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v4, v4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 357
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    return-object v0
.end method

.method public static buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p0, "backgroundImageId"    # I
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 256
    const/4 v9, 0x0

    .line 258
    .local v9, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "notifCount"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 259
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNotifications()I

    move-result v24

    add-int v9, v9, v24

    .line 261
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "messCount"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 262
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v24

    add-int v9, v9, v24

    .line 264
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "friendCount"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 265
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumFriendRequests()I

    move-result v24

    add-int v9, v9, v24

    .line 267
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "groupCount"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 268
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumGroupInvitations()I

    move-result v24

    add-int v9, v9, v24

    .line 270
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "photoCount"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 271
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumPhotosMarks()I

    move-result v24

    add-int v9, v9, v24

    .line 273
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "videoCount"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 274
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumVideosMarks()I

    move-result v24

    add-int v9, v9, v24

    .line 276
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "gamesCount"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 277
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumAppRequests()I

    move-result v24

    add-int v9, v9, v24

    .line 280
    :cond_6
    if-eqz v9, :cond_7

    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "showCount"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-nez v24, :cond_8

    .line 281
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 349
    :goto_0
    return-object v10

    .line 282
    :cond_8
    const v24, 0xf4240

    move/from16 v0, v24

    if-le v9, v0, :cond_9

    .line 283
    const-string v24, "%.2fM"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    int-to-float v0, v9

    move/from16 v27, v0

    const v28, 0x49742400    # 1000000.0f

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 290
    .local v18, "text":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    .line 292
    .local v17, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 294
    .local v14, "main":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Paint;

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 295
    .local v16, "paintText":Landroid/graphics/Paint;
    const/high16 v24, -0x1000000

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    sget-object v24, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 298
    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 299
    sget-object v24, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v25, "Count"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "font"

    const/16 v26, 0x8

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v17

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 301
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 302
    .local v6, "boundsText":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    const/high16 v25, 0x40800000    # 4.0f

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v20, v24, v25

    .line 303
    .local v20, "widthDraw":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    const/high16 v25, 0x40800000    # 4.0f

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v12, v24, v25

    .line 304
    .local v12, "heighthDraw":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    sub-int v24, v20, v24

    div-int/lit8 v22, v24, 0x2

    .line 305
    .local v22, "x":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v24, v24, v12

    div-int/lit8 v23, v24, 0x2

    .line 306
    .local v23, "y":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 307
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 308
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    const/high16 v25, 0x40800000    # 4.0f

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v20, v24, v25

    .line 309
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    const/high16 v25, 0x40800000    # 4.0f

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v12, v24, v25

    .line 310
    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 311
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    sub-int v24, v20, v24

    div-int/lit8 v22, v24, 0x2

    .line 312
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v24, v24, v12

    div-int/lit8 v23, v24, 0x2

    .line 326
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "Icon"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "w"

    const/high16 v26, 0x41000000    # 8.0f

    mul-float v26, v26, v17

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v26, v20, v26

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    if-lez v24, :cond_c

    const/high16 v24, 0x41000000    # 8.0f

    mul-float v24, v24, v17

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v20, v24

    :goto_3
    const/16 v25, 0x1

    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v24 .. v26}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 327
    .local v13, "leftSide":Landroid/graphics/Bitmap;
    const/16 v24, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "Icon"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    const-string v26, "h"

    const/high16 v27, 0x40800000    # 4.0f

    mul-float v27, v27, v17

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v24 .. v26}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 328
    .local v19, "topSide":Landroid/graphics/Bitmap;
    const-wide v24, 0x3ff553f7ced91687L    # 1.333

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v11, v0

    .line 329
    .local v11, "frameS":I
    const v24, 0x7f02031d

    add-int v25, v20, v11

    add-int v26, v12, v11

    move/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->bitmap(ILandroid/app/Activity;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 330
    .local v5, "bitmapFrame":Landroid/graphics/Bitmap;
    const v24, 0x7f02031d

    move/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v12}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->bitmap(ILandroid/app/Activity;II)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 332
    .local v21, "workBadge":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    .local v8, "canvasText":Landroid/graphics/Canvas;
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 335
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v24 .. v26}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 336
    .local v4, "big":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 338
    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v7, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 339
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v7, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 341
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 343
    .local v15, "paintBadge":Landroid/graphics/Paint;
    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 345
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v5, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 346
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v25, v11, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v11, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 349
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 284
    .end local v4    # "big":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapFrame":Landroid/graphics/Bitmap;
    .end local v6    # "boundsText":Landroid/graphics/Rect;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "canvasText":Landroid/graphics/Canvas;
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "frameS":I
    .end local v12    # "heighthDraw":I
    .end local v13    # "leftSide":Landroid/graphics/Bitmap;
    .end local v14    # "main":Landroid/graphics/Bitmap;
    .end local v15    # "paintBadge":Landroid/graphics/Paint;
    .end local v16    # "paintText":Landroid/graphics/Paint;
    .end local v17    # "scale":F
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "topSide":Landroid/graphics/Bitmap;
    .end local v20    # "widthDraw":I
    .end local v21    # "workBadge":Landroid/graphics/Bitmap;
    .end local v22    # "x":I
    .end local v23    # "y":I
    :cond_9
    const/16 v24, 0x3e8

    move/from16 v0, v24

    if-le v9, v0, :cond_a

    .line 285
    const-string v24, "%.2fK"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    int-to-float v0, v9

    move/from16 v27, v0

    const/high16 v28, 0x447a0000    # 1000.0f

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 286
    .restart local v18    # "text":Ljava/lang/String;
    goto/16 :goto_1

    .line 287
    .end local v18    # "text":Ljava/lang/String;
    :cond_a
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "text":Ljava/lang/String;
    goto/16 :goto_1

    .line 314
    .restart local v6    # "boundsText":Landroid/graphics/Rect;
    .restart local v12    # "heighthDraw":I
    .restart local v14    # "main":Landroid/graphics/Bitmap;
    .restart local v16    # "paintText":Landroid/graphics/Paint;
    .restart local v17    # "scale":F
    .restart local v20    # "widthDraw":I
    .restart local v22    # "x":I
    .restart local v23    # "y":I
    :cond_b
    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 315
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    const/high16 v25, 0x40800000    # 4.0f

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v20, v24, v25

    .line 316
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    const/high16 v25, 0x40800000    # 4.0f

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v12, v24, v25

    .line 317
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    sub-int v24, v20, v24

    div-int/lit8 v22, v24, 0x2

    .line 318
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v24, v24, v12

    div-int/lit8 v23, v24, 0x2

    goto/16 :goto_2

    .line 326
    :cond_c
    const/high16 v24, 0x41000000    # 8.0f

    mul-float v24, v24, v17

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    goto/16 :goto_3
.end method

.method public static callRestart(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 528
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435!"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 529
    const-string v1, "\u0421\u0435\u0439\u0447\u0430\u0441 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0431\u0443\u0434\u0435\u0442 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0449\u0435\u043d\u043e"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 530
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 531
    const v1, 0x7f08031e

    .line 532
    new-instance v2, Lcom/vkcoffee/android/GlobalMethodsCoffee$2;

    invoke-direct {v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee$2;-><init>()V

    .line 531
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 538
    const-string v1, "\u041f\u043e\u0437\u0436\u0435"

    .line 539
    new-instance v2, Lcom/vkcoffee/android/GlobalMethodsCoffee$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/GlobalMethodsCoffee$3;-><init>(Landroid/app/Activity;)V

    .line 538
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 547
    return-void
.end method

.method public static callRestartStrong(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 549
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041f\u0440\u0435\u0434\u0443\u043f\u0440\u0435\u0436\u0434\u0435\u043d\u0438\u0435!"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 550
    const-string v1, "\u0421\u0435\u0439\u0447\u0430\u0441 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0431\u0443\u0434\u0435\u0442 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0449\u0435\u043d\u043e"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 552
    const v1, 0x7f08031e

    .line 553
    new-instance v2, Lcom/vkcoffee/android/GlobalMethodsCoffee$4;

    invoke-direct {v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee$4;-><init>()V

    .line 552
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 562
    return-void
.end method

.method public static clearMessagesCache(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 368
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/GlobalMethodsCoffee$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/GlobalMethodsCoffee$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 385
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 386
    return-void
.end method

.method public static closeApp()V
    .locals 3

    .prologue
    .line 583
    invoke-static {}, Lcom/vkcoffee/android/ActUt;->finishAll()V

    .line 584
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 585
    .local v0, "am":Landroid/app/ActivityManager;
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->killNotifications()V

    .line 587
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 588
    return-void
.end method

.method public static containsCrazy(I)Z
    .locals 5
    .param p0, "peer"    # I

    .prologue
    .line 395
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "crazyTyping"

    const-string v2, ","

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ",%d,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static containsMarkedAsRead(I)Z
    .locals 5
    .param p0, "peer"    # I

    .prologue
    .line 443
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    const-string v1, ",%d,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static containsTyping(I)Z
    .locals 5
    .param p0, "peer"    # I

    .prologue
    .line 476
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    const-string v1, ",%d,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static countCrazy()Ljava/lang/String;
    .locals 4

    .prologue
    .line 415
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "crazyTyping"

    const-string v3, ","

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 416
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\u041d\u0435\u0442 \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432"

    goto :goto_0
.end method

.method public static countCrazyInt()I
    .locals 3

    .prologue
    .line 425
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "crazyTyping"

    const-string v2, ","

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static countMarkedAsRead()Ljava/lang/String;
    .locals 3

    .prologue
    .line 465
    sget-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 466
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\u041d\u0435\u0442 \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432"

    goto :goto_0
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # Ljava/lang/CharSequence;

    .prologue
    .line 506
    invoke-static {p0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    :cond_0
    const/4 v0, 0x0

    .line 515
    :cond_1
    return v0

    .line 509
    :cond_2
    const/4 v0, 0x0

    .line 510
    .local v0, "count":I
    const/4 v1, 0x0

    .line 511
    .local v1, "idx":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 512
    add-int/lit8 v0, v0, 0x1

    .line 513
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static countTypingStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    sget-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 520
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\u041d\u0435\u0442 \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432"

    goto :goto_0
.end method

.method public static deleteCrazy(I)V
    .locals 6
    .param p0, "peer"    # I

    .prologue
    .line 407
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "crazyTyping"

    const-string v3, ","

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%d,"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "crazyTyping":Ljava/lang/String;
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 409
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 410
    const-string v2, "crazyTyping"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 411
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    return-void
.end method

.method public static deleteFromTypingStr(I)V
    .locals 5
    .param p0, "peer"    # I

    .prologue
    .line 491
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    const-string v1, "%d,"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    .line 492
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    const-string v1, "localType"

    sget-object v2, Lcom/vkcoffee/android/GlobalMethodsCoffee;->typingStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    return-void
.end method

.method public static deleteMarkedAsRead(I)V
    .locals 6
    .param p0, "peer"    # I

    .prologue
    .line 458
    sget-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    const-string v2, "%d,"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    .line 459
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 460
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "localRead"

    sget-object v2, Lcom/vkcoffee/android/GlobalMethodsCoffee;->markAsReadStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 462
    return-void
.end method

.method public static doRestart()V
    .locals 10

    .prologue
    .line 596
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->killNotifications()V

    .line 597
    invoke-static {}, Lcom/vkcoffee/android/ActUt;->finishAll()V

    .line 599
    const v1, 0x36870

    .line 600
    .local v1, "mPendingIntentId":I
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 601
    .local v4, "pm":Landroid/content/pm/PackageManager;
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 602
    .local v2, "mStartActivity":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 603
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/high16 v6, 0x10000000

    invoke-static {v5, v1, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 604
    .local v0, "mPendingIntent":Landroid/app/PendingIntent;
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 605
    .local v3, "mgr":Landroid/app/AlarmManager;
    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 607
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 644
    return-void
.end method

.method public static getFileLength(I)I
    .locals 3
    .param p0, "idDownload"    # I

    .prologue
    .line 81
    sget-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hasMapFileLength:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    .local v0, "value":I
    return v0
.end method

.method public static getID(I)I
    .locals 3
    .param p0, "idDownload"    # I

    .prologue
    .line 95
    sget-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapID:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, "value":I
    return v0
.end method

.method public static getSize(I)Ljava/lang/String;
    .locals 2
    .param p0, "idDownload"    # I

    .prologue
    .line 118
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapSize:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapSize:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public static getSpeed(I)Ljava/lang/String;
    .locals 2
    .param p0, "idDownload"    # I

    .prologue
    .line 126
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapSize:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapSpeed:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public static getTotal(I)J
    .locals 4
    .param p0, "idDownload"    # I

    .prologue
    .line 90
    sget-object v2, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapTotal:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 91
    .local v0, "value":J
    return-wide v0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 502
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmptyCrazy()Z
    .locals 4

    .prologue
    .line 429
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "crazyTyping"

    const-string v3, ","

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 430
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 431
    const/4 v1, 0x0

    .line 433
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMarkedAsRead(I)Z
    .locals 3
    .param p0, "peer"    # I

    .prologue
    const/4 v0, 0x1

    .line 447
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "globalRead"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->containsMarkedAsRead(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 498
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 134
    if-nez p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v2

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 138
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 143
    const/4 v2, 0x1

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isOnline()Z
    .locals 4

    .prologue
    .line 647
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 648
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 649
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    const/4 v2, 0x1

    .line 652
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSetTyping(I)Z
    .locals 3
    .param p0, "peer"    # I

    .prologue
    const/4 v0, 0x1

    .line 480
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "globalType"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->containsTyping(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static killNotifications()V
    .locals 3

    .prologue
    .line 591
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 592
    .local v0, "nMgr":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 593
    return-void
.end method

.method public static pinLock(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 656
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->disableEnteredState()V

    .line 657
    new-instance v0, Lcom/vkcoffee/android/PasswordCoffee;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/PasswordCoffee;-><init>(Landroid/app/Activity;I)V

    .line 659
    return-void
.end method

.method public static setFileLength(II)V
    .locals 3
    .param p0, "idDownload"    # I
    .param p1, "fileLength"    # I

    .prologue
    .line 77
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hasMapFileLength:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public static setLocalization(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 574
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 575
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 577
    .local v0, "conf":Landroid/content/res/Configuration;
    new-instance v3, Ljava/util/Locale;

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "langApp"

    const-string v6, "ru"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 578
    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 579
    return-void
.end method

.method public static setTotal(II)V
    .locals 3
    .param p0, "idDownload"    # I
    .param p1, "total"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapTotal:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public static size(IJI)V
    .locals 9
    .param p0, "idDownload"    # I
    .param p1, "now"    # J
    .param p3, "total"    # I

    .prologue
    const-wide v6, 0x412f400000000000L    # 1024000.0

    .line 102
    long-to-double v4, p1

    div-double v0, v4, v6

    .line 103
    .local v0, "resNow":D
    int-to-double v4, p3

    div-double v2, v4, v6

    .line 104
    .local v2, "resTotal":D
    sget-object v4, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapSize:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/vkcoffee/android/GlobalMethodsCoffee;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " \u041c\u0431 / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/vkcoffee/android/GlobalMethodsCoffee;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v7, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u041c\u0431"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public static speed(IJJ)V
    .locals 11
    .param p0, "idDownload"    # I
    .param p1, "downloadTime"    # J
    .param p3, "bytesIn"    # J

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 108
    long-to-double v4, p3

    long-to-double v6, p1

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v2, v4, v6

    .line 109
    .local v2, "result":D
    const-string v0, " \u041a\u0411/\u0441"

    .line 110
    .local v0, "markSpeed":Ljava/lang/String;
    cmpl-double v1, v2, v8

    if-lez v1, :cond_0

    .line 111
    div-double/2addr v2, v8

    .line 112
    const-string v0, " \u041c\u0411/\u0441"

    .line 114
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/GlobalMethodsCoffee;->hashMapSpeed:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/vkcoffee/android/GlobalMethodsCoffee;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method
