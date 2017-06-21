.class public Lcom/vkcoffee/android/telegramutils/AndroidUtilities;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"


# static fields
.field public static final FLAG_TAG_ALL:I = 0x7

.field public static final FLAG_TAG_BOLD:I = 0x2

.field public static final FLAG_TAG_BR:I = 0x1

.field public static final FLAG_TAG_COLOR:I = 0x4

.field public static WEB_URL:Ljava/util/regex/Pattern;

.field private static adjustOwnerClassGuid:I

.field private static bitmapRect:Landroid/graphics/RectF;

.field private static final callLock:Ljava/lang/Object;

.field public static density:F

.field public static displayMetrics:Landroid/util/DisplayMetrics;

.field public static displaySize:Landroid/graphics/Point;

.field private static isTablet:Ljava/lang/Boolean;

.field public static leftBaseline:I

.field public static photoSize:Ljava/lang/Integer;

.field private static prevOrientation:I

.field private static roundPaint:Landroid/graphics/Paint;

.field private static final smsLock:Ljava/lang/Object;

.field public static statusBarHeight:I

.field private static final typefaceCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static usingHardwareInput:Z

.field private static waitingForCall:Z

.field private static waitingForSms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 88
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    sput-object v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->typefaceCache:Ljava/util/Hashtable;

    .line 89
    const/16 v7, -0xa

    sput v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->prevOrientation:I

    .line 90
    sput-boolean v8, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->waitingForSms:Z

    .line 91
    sput-boolean v8, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->waitingForCall:Z

    .line 92
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    sput-object v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->smsLock:Ljava/lang/Object;

    .line 93
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    sput-object v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->callLock:Ljava/lang/Object;

    .line 95
    sput v8, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->statusBarHeight:I

    .line 96
    const/high16 v7, 0x3f800000    # 1.0f

    sput v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->density:F

    .line 97
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    sput-object v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    .line 98
    sput-object v9, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 99
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 102
    sput-object v9, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->isTablet:Ljava/lang/Boolean;

    .line 103
    sput v8, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->adjustOwnerClassGuid:I

    .line 108
    sput-object v9, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    .line 111
    :try_start_0
    const-string v2, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    .line 113
    .local v2, "GOOD_IRI_CHAR":Ljava/lang/String;
    const-string v7, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    .line 112
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 117
    .local v5, "IP_ADDRESS":Ljava/util/regex/Pattern;
    const-string v6, "[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}"

    .line 118
    .local v6, "IRI":Ljava/lang/String;
    const-string v1, "a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    .line 119
    .local v1, "GOOD_GTLD_CHAR":Ljava/lang/String;
    const-string v3, "[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

    .line 120
    .local v3, "GTLD":Ljava/lang/String;
    const-string v4, "([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}"

    .line 121
    .local v4, "HOST_NAME":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]){0,1}\\.)+[a-zA-Z\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}|"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 123
    .local v0, "DOMAIN_NAME":Ljava/util/regex/Pattern;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "((?:(http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 127
    const-string v8, "(?:\\:\\d{1,5})?)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 128
    const-string v8, "(\\/(?:(?:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\;\\/\\?\\:\\@\\&\\=\\#\\~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 129
    const-string v8, "\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 130
    const-string v8, "(?:\\b|$)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 123
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    sput-object v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "DOMAIN_NAME":Ljava/util/regex/Pattern;
    .end local v1    # "GOOD_GTLD_CHAR":Ljava/lang/String;
    .end local v3    # "GTLD":Ljava/lang/String;
    .end local v4    # "HOST_NAME":Ljava/lang/String;
    .end local v5    # "IP_ADDRESS":Ljava/util/regex/Pattern;
    .end local v6    # "IRI":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    sput v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->density:F

    .line 139
    invoke-static {}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->checkDisplaySize()V

    .line 866
    return-void

    .line 131
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelRunOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 475
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    return-void
.end method

.method public static checkDisplaySize()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 422
    :try_start_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 423
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v3, :cond_1

    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v3, :cond_1

    :goto_0
    sput-boolean v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->usingHardwareInput:Z

    .line 424
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 425
    .local v2, "manager":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 426
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 427
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 428
    sget-object v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 429
    sget-object v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "manager":Landroid/view/WindowManager;
    :cond_0
    :goto_1
    return-void

    .line 423
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static clearCursorDrawable(Landroid/widget/EditText;)V
    .locals 3
    .param p0, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 610
    if-nez p0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 614
    :cond_0
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 615
    .local v0, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 616
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    .end local v0    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static clearDrawableAnimation(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 845
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    if-nez p0, :cond_1

    .line 861
    .end local p0    # "view":Landroid/view/View;
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 849
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 850
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 851
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 852
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 855
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 856
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 857
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 858
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    goto :goto_0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    .prologue
    .line 405
    if-ne p0, p1, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    .line 407
    :cond_0
    if-le p0, p1, :cond_1

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1240
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 1243
    :cond_0
    const/4 v9, 0x0

    .line 1244
    .local v9, "source":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1246
    .local v6, "destination":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    .end local v9    # "source":Ljava/io/FileInputStream;
    .local v10, "source":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1248
    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .local v7, "destination":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1253
    if-eqz v10, :cond_1

    .line 1254
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 1256
    :cond_1
    if-eqz v7, :cond_2

    .line 1257
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 1260
    :cond_2
    const/4 v0, 0x1

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    :goto_0
    return v0

    .line 1249
    :catch_0
    move-exception v8

    .line 1253
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v9, :cond_3

    .line 1254
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1256
    :cond_3
    if-eqz v6, :cond_4

    .line 1257
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1251
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1252
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1253
    :goto_2
    if-eqz v9, :cond_5

    .line 1254
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 1256
    :cond_5
    if-eqz v6, :cond_6

    .line 1257
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1259
    :cond_6
    throw v0

    .line 1252
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1249
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v6    # "destination":Ljava/io/FileOutputStream;
    .end local v9    # "source":Ljava/io/FileInputStream;
    .restart local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v10    # "source":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "destination":Ljava/io/FileOutputStream;
    .restart local v6    # "destination":Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10    # "source":Ljava/io/FileInputStream;
    .restart local v9    # "source":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 4
    .param p0, "sourceFile"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1228
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1229
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 1231
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-gtz v1, :cond_0

    .line 1235
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1236
    const/4 v3, 0x1

    return v3

    .line 1232
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1233
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static decodeQuotedPrintable([B)[B
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1199
    if-nez p0, :cond_0

    .line 1224
    :goto_0
    return-object v0

    .line 1202
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1203
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, p0

    if-lt v4, v7, :cond_1

    .line 1218
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1220
    .local v0, "array":[B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1221
    :catch_0
    move-exception v7

    goto :goto_0

    .line 1204
    .end local v0    # "array":[B
    :cond_1
    aget-byte v1, p0, v4

    .line 1205
    .local v1, "b":I
    const/16 v7, 0x3d

    if-ne v1, v7, :cond_2

    .line 1207
    add-int/lit8 v4, v4, 0x1

    :try_start_1
    aget-byte v7, p0, v4

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 1208
    .local v6, "u":I
    add-int/lit8 v4, v4, 0x1

    aget-byte v7, p0, v4

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1209
    .local v5, "l":I
    shl-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v5

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1203
    .end local v5    # "l":I
    .end local v6    # "u":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1210
    :catch_1
    move-exception v3

    .line 1212
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1215
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static dp(F)I
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 398
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static dpf2(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    const/4 v0, 0x0

    .line 414
    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    .line 417
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->density:F

    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x44800000    # 1024.0f

    .line 1187
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 1188
    const-string v0, "%d B"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    :goto_0
    return-object v0

    .line 1189
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 1190
    const-string v0, "%.1f KB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1191
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 1192
    const-string v0, "%.1f MB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1194
    :cond_2
    const-string v0, "%.1f GB"

    new-array v1, v2, [Ljava/lang/Object;

    long-to-float v2, p0

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 372
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 376
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    :cond_0
    :try_start_1
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 379
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 394
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v0

    .line 382
    :catch_0
    move-exception v2

    .line 387
    :cond_2
    :try_start_2
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 388
    .restart local v0    # "file":Ljava/io/File;
    if-nez v0, :cond_1

    .line 394
    .end local v0    # "file":Ljava/io/File;
    :goto_2
    new-instance v0, Ljava/io/File;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :catch_1
    move-exception v2

    goto :goto_0

    .line 391
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1102
    const/4 v8, 0x0

    .line 1103
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 1104
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1105
    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1109
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1110
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1111
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1112
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1113
    .local v9, "value":Ljava/lang/String;
    const-string v0, "content://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "file://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1121
    :cond_0
    if-eqz v8, :cond_1

    .line 1122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v10

    .line 1125
    .end local v7    # "column_index":I
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v9

    .line 1121
    .restart local v7    # "column_index":I
    .restart local v9    # "value":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_2

    .line 1122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1118
    .end local v7    # "column_index":I
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1121
    if-eqz v8, :cond_4

    .line 1122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v9, v10

    .line 1125
    goto :goto_0

    .line 1120
    :catchall_0
    move-exception v0

    .line 1121
    if-eqz v8, :cond_5

    .line 1122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1124
    :cond_5
    throw v0

    .line 1121
    :cond_6
    if-eqz v8, :cond_4

    .line 1122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getMinTabletSide()I
    .locals 6

    .prologue
    const/high16 v5, 0x43a00000    # 320.0f

    .line 491
    invoke-static {}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->isSmallTablet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    sget-object v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 493
    .local v2, "smallSide":I
    mul-int/lit8 v3, v2, 0x23

    div-int/lit8 v0, v3, 0x64

    .line 494
    .local v0, "leftSide":I
    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 495
    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v0

    .line 497
    :cond_0
    sub-int v3, v2, v0

    .line 505
    :goto_0
    return v3

    .line 499
    .end local v0    # "leftSide":I
    .end local v2    # "smallSide":I
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 500
    .restart local v2    # "smallSide":I
    sget-object v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 501
    .local v1, "maxSide":I
    mul-int/lit8 v3, v1, 0x23

    div-int/lit8 v0, v3, 0x64

    .line 502
    .restart local v0    # "leftSide":I
    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 503
    invoke-static {v5}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v0

    .line 505
    :cond_2
    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method public static getMyLayerVersion(I)I
    .locals 1
    .param p0, "layer"    # I

    .prologue
    .line 447
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getPeerLayerVersion(I)I
    .locals 2
    .param p0, "layer"    # I

    .prologue
    .line 451
    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static getPhotoSize()I
    .locals 2

    .prologue
    .line 510
    sget-object v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 512
    const/16 v0, 0x500

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    .line 517
    :cond_0
    :goto_0
    sget-object v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 514
    :cond_1
    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static getPixelsInCM(FZ)F
    .locals 2
    .param p0, "cm"    # F
    .param p1, "isX"    # Z

    .prologue
    .line 439
    const v0, 0x40228f5c    # 2.54f

    div-float v1, p0, v0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    :goto_0
    mul-float/2addr v0, v1

    return v0

    :cond_0
    sget-object v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_0
.end method

.method public static getRealScreenSize()Landroid/graphics/Point;
    .locals 8

    .prologue
    .line 787
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 789
    .local v3, "size":Landroid/graphics/Point;
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 790
    .local v4, "windowManager":Landroid/view/WindowManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 791
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 805
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return-object v3

    .line 794
    .restart local v4    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :try_start_1
    const-class v5, Landroid/view/Display;

    const-string v6, "getRawWidth"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 795
    .local v2, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v5, Landroid/view/Display;

    const-string v6, "getRawHeight"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 796
    .local v1, "mGetRawH":Ljava/lang/reflect/Method;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 797
    .end local v1    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v2    # "mGetRawW":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->set(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 802
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "windowManager":Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "src"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 809
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 818
    :cond_0
    return-object p0

    .line 813
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 812
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_1

    .line 815
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    .line 816
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method public static getViewInset(Landroid/view/View;)I
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 767
    if-eqz p0, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-eq v5, v6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sget v7, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_1

    .line 783
    :cond_0
    :goto_0
    return v4

    .line 771
    :cond_1
    :try_start_0
    const-class v5, Landroid/view/View;

    const-string v6, "mAttachInfo"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 772
    .local v2, "mAttachInfoField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 773
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 774
    .local v1, "mAttachInfo":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mStableInsets"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 776
    .local v3, "mStableInsetsField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 777
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 778
    .local v0, "insets":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "mAttachInfo":Ljava/lang/Object;
    .end local v2    # "mAttachInfoField":Ljava/lang/reflect/Field;
    .end local v3    # "mStableInsetsField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 355
    if-nez p0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 360
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static hsvToRgb(DDD)[I
    .locals 22
    .param p0, "h"    # D
    .param p2, "s"    # D
    .param p4, "v"    # D

    .prologue
    .line 169
    const-wide/16 v14, 0x0

    .local v14, "r":D
    const-wide/16 v6, 0x0

    .local v6, "g":D
    const-wide/16 v2, 0x0

    .line 170
    .local v2, "b":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, p0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v8, v0

    .line 171
    .local v8, "i":D
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v18, v18, p0

    sub-double v4, v18, v8

    .line 172
    .local v4, "f":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, p2

    mul-double v10, p4, v18

    .line 173
    .local v10, "p":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    mul-double v20, v4, p2

    sub-double v18, v18, v20

    mul-double v12, p4, v18

    .line 174
    .local v12, "q":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v4

    mul-double v20, v20, p2

    sub-double v18, v18, v20

    mul-double v16, p4, v18

    .line 175
    .local v16, "t":D
    double-to-int v0, v8

    move/from16 v18, v0

    rem-int/lit8 v18, v18, 0x6

    packed-switch v18, :pswitch_data_0

    .line 206
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 207
    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v14

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v6

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x2

    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v20, v20, v2

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    return-object v18

    .line 177
    :pswitch_0
    move-wide/from16 v14, p4

    .line 178
    move-wide/from16 v6, v16

    .line 179
    move-wide v2, v10

    .line 180
    goto :goto_0

    .line 182
    :pswitch_1
    move-wide v14, v12

    .line 183
    move-wide/from16 v6, p4

    .line 184
    move-wide v2, v10

    .line 185
    goto :goto_0

    .line 187
    :pswitch_2
    move-wide v14, v10

    .line 188
    move-wide/from16 v6, p4

    .line 189
    move-wide/from16 v2, v16

    .line 190
    goto :goto_0

    .line 192
    :pswitch_3
    move-wide v14, v10

    .line 193
    move-wide v6, v12

    .line 194
    move-wide/from16 v2, p4

    .line 195
    goto :goto_0

    .line 197
    :pswitch_4
    move-wide/from16 v14, v16

    .line 198
    move-wide v6, v10

    .line 199
    move-wide/from16 v2, p4

    .line 200
    goto :goto_0

    .line 202
    :pswitch_5
    move-wide/from16 v14, p4

    .line 203
    move-wide v6, v10

    .line 204
    move-wide v2, v12

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1133
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1129
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKeyboardShowed(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 342
    if-nez p0, :cond_0

    .line 351
    :goto_0
    return v1

    .line 346
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 347
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 348
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1137
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSmallTablet()Z
    .locals 3

    .prologue
    .line 486
    sget-object v1, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->density:F

    div-float v0, v1, v2

    .line 487
    .local v0, "minSide":F
    const/high16 v1, 0x442f0000    # 700.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWaitingForCall()Z
    .locals 3

    .prologue
    .line 317
    sget-object v2, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v2

    .line 318
    :try_start_0
    sget-boolean v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->waitingForCall:Z

    .line 317
    .local v0, "value":Z
    monitor-exit v2

    .line 320
    return v0

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isWaitingForSms()Z
    .locals 3

    .prologue
    .line 303
    sget-object v2, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    :try_start_0
    sget-boolean v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->waitingForSms:Z

    .line 303
    .local v0, "value":Z
    monitor-exit v2

    .line 306
    return v0

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static lockOrientation(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 231
    if-eqz p0, :cond_0

    sget v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->prevOrientation:I

    const/16 v4, -0xa

    if-eq v3, v4, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    sput v3, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->prevOrientation:I

    .line 236
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 237
    .local v0, "manager":Landroid/view/WindowManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 238
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 239
    .local v2, "rotation":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 241
    .local v1, "orientation":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 242
    if-ne v1, v5, :cond_2

    .line 243
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 267
    .end local v0    # "manager":Landroid/view/WindowManager;
    .end local v1    # "orientation":I
    .end local v2    # "rotation":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 245
    .restart local v0    # "manager":Landroid/view/WindowManager;
    .restart local v1    # "orientation":I
    .restart local v2    # "rotation":I
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 247
    :cond_3
    if-ne v2, v5, :cond_5

    .line 248
    if-ne v1, v5, :cond_4

    .line 249
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 251
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 253
    :cond_5
    if-nez v2, :cond_7

    .line 254
    if-ne v1, v6, :cond_6

    .line 255
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 257
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 260
    :cond_7
    if-ne v1, v6, :cond_8

    .line 261
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 263
    :cond_8
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static makeBroadcastId(I)J
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 443
    const-wide v0, 0x100000000L

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static rgbToHsv(III)[D
    .locals 22
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    .line 145
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v14, v18, v20

    .line 146
    .local v14, "rf":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v6, v18, v20

    .line 147
    .local v6, "gf":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v2, v18, v20

    .line 148
    .local v2, "bf":D
    cmpl-double v18, v14, v6

    if-lez v18, :cond_0

    cmpl-double v18, v14, v2

    if-lez v18, :cond_0

    move-wide v10, v14

    .line 149
    .local v10, "max":D
    :goto_0
    cmpg-double v18, v14, v6

    if-gez v18, :cond_2

    cmpg-double v18, v14, v2

    if-gez v18, :cond_2

    move-wide v12, v14

    .line 151
    .local v12, "min":D
    :goto_1
    sub-double v4, v10, v12

    .line 152
    .local v4, "d":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v10, v18

    if-nez v18, :cond_4

    const-wide/16 v16, 0x0

    .line 153
    .local v16, "s":D
    :goto_2
    cmpl-double v18, v10, v12

    if-nez v18, :cond_5

    .line 154
    const-wide/16 v8, 0x0

    .line 165
    .local v8, "h":D
    :goto_3
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v8, v18, v19

    const/16 v19, 0x1

    aput-wide v16, v18, v19

    const/16 v19, 0x2

    aput-wide v10, v18, v19

    return-object v18

    .line 148
    .end local v4    # "d":D
    .end local v8    # "h":D
    .end local v10    # "max":D
    .end local v12    # "min":D
    .end local v16    # "s":D
    :cond_0
    cmpl-double v18, v6, v2

    if-lez v18, :cond_1

    move-wide v10, v6

    goto :goto_0

    :cond_1
    move-wide v10, v2

    goto :goto_0

    .line 149
    .restart local v10    # "max":D
    :cond_2
    cmpg-double v18, v6, v2

    if-gez v18, :cond_3

    move-wide v12, v6

    goto :goto_1

    :cond_3
    move-wide v12, v2

    goto :goto_1

    .line 152
    .restart local v4    # "d":D
    .restart local v12    # "min":D
    :cond_4
    div-double v16, v4, v10

    goto :goto_2

    .line 156
    .restart local v16    # "s":D
    :cond_5
    cmpl-double v18, v14, v6

    if-lez v18, :cond_7

    cmpl-double v18, v14, v2

    if-lez v18, :cond_7

    .line 157
    sub-double v18, v6, v2

    div-double v20, v18, v4

    cmpg-double v18, v6, v2

    if-gez v18, :cond_6

    const/16 v18, 0x6

    :goto_4
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v8, v20, v18

    .line 163
    .restart local v8    # "h":D
    :goto_5
    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v8, v8, v18

    goto :goto_3

    .line 157
    .end local v8    # "h":D
    :cond_6
    const/16 v18, 0x0

    goto :goto_4

    .line 158
    :cond_7
    cmpl-double v18, v6, v2

    if-lez v18, :cond_8

    .line 159
    sub-double v18, v2, v14

    div-double v18, v18, v4

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    add-double v8, v18, v20

    .line 160
    .restart local v8    # "h":D
    goto :goto_5

    .line 161
    .end local v8    # "h":D
    :cond_8
    sub-double v18, v14, v6

    div-double v18, v18, v4

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    add-double v8, v18, v20

    .restart local v8    # "h":D
    goto :goto_5
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 463
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 464
    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 467
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 468
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "color"    # I

    .prologue
    .line 822
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 824
    :try_start_0
    const-class v3, Landroid/widget/AbsListView;

    const-string v4, "mEdgeGlowTop"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 825
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 826
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 827
    .local v2, "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    if-eqz v2, :cond_0

    .line 828
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 831
    :cond_0
    const-class v3, Landroid/widget/AbsListView;

    const-string v4, "mEdgeGlowBottom"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 832
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 833
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EdgeEffect;

    .line 834
    .local v1, "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    if-eqz v1, :cond_1

    .line 835
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "mEdgeGlowBottom":Landroid/widget/EdgeEffect;
    .end local v2    # "mEdgeGlowTop":Landroid/widget/EdgeEffect;
    :cond_1
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static setMyLayerVersion(II)I
    .locals 1
    .param p0, "layer"    # I
    .param p1, "version"    # I

    .prologue
    .line 455
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    or-int/2addr v0, p1

    return v0
.end method

.method public static setPeerLayerVersion(II)I
    .locals 2
    .param p0, "layer"    # I
    .param p1, "version"    # I

    .prologue
    .line 459
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static setProgressBarAnimationDuration(Landroid/widget/ProgressBar;I)V
    .locals 3
    .param p0, "progressBar"    # Landroid/widget/ProgressBar;
    .param p1, "duration"    # I

    .prologue
    .line 623
    if-nez p0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 627
    :cond_0
    :try_start_0
    const-class v1, Landroid/widget/ProgressBar;

    const-string v2, "mDuration"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 628
    .local v0, "mCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 629
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    .end local v0    # "mCursorDrawableRes":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setWaitingForCall(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 324
    sget-object v1, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->callLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    sput-boolean p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->waitingForCall:Z

    .line 324
    monitor-exit v1

    .line 327
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setWaitingForSms(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 310
    sget-object v1, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->smsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    sput-boolean p0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->waitingForSms:Z

    .line 310
    monitor-exit v1

    .line 313
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static shakeView(Landroid/view/View;FI)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "num"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 936
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 937
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 950
    :goto_0
    return-void

    .line 940
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 941
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v3, [Landroid/animation/Animator;

    const-string v2, "translationX"

    new-array v3, v3, [F

    invoke-static {p1}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 942
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 943
    new-instance v1, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkcoffee/android/telegramutils/AndroidUtilities$1;-><init>(Landroid/view/View;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 330
    if-nez p0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 335
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static unlockOrientation(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v1, -0xa

    .line 273
    if-nez p0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    :try_start_0
    sget v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->prevOrientation:I

    if-eq v0, v1, :cond_0

    .line 278
    sget v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->prevOrientation:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 279
    const/16 v0, -0xa

    sput v0, Lcom/vkcoffee/android/telegramutils/AndroidUtilities;->prevOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method
