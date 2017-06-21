.class public Lcom/vkcoffee/android/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/Emoji$ParserLookupNode;,
        Lcom/vkcoffee/android/Emoji$EmojiSpan;,
        Lcom/vkcoffee/android/Emoji$EmojiDrawable;,
        Lcom/vkcoffee/android/Emoji$KeyboardKey;
    }
.end annotation


# static fields
.field public static final SIZE:I

.field private static bitmapPaint:Landroid/graphics/Paint;

.field private static final emojiPages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static keyboard:[[[[I

.field public static keyboardKeys:[[Lcom/vkcoffee/android/Emoji$KeyboardKey;

.field private static lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

.field private static final pagesLoading:[Z

.field private static placeholderPaint:Landroid/graphics/Paint;

.field private static tmpRect:Landroid/graphics/Rect;

.field private static tmpRect2:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/Emoji;->emojiPages:Landroid/util/SparseArray;

    .line 32
    new-array v0, v1, [Z

    sput-object v0, Lcom/vkcoffee/android/Emoji;->pagesLoading:[Z

    .line 33
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/Emoji;->SIZE:I

    .line 37
    new-instance v0, Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/Emoji$ParserLookupNode;-><init>(Lcom/vkcoffee/android/Emoji$1;)V

    sput-object v0, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/Emoji;->bitmapPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/Emoji;->tmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/Emoji;->tmpRect2:Landroid/graphics/Rect;

    .line 42
    invoke-static {}, Lcom/vkcoffee/android/Emoji;->load()V

    .line 43
    sget-object v0, Lcom/vkcoffee/android/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    const v1, 0x14000c1a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    return-void
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkcoffee/android/Emoji;->emojiPages:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkcoffee/android/Emoji;->tmpRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkcoffee/android/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lcom/vkcoffee/android/Emoji;->loadPage(I)V

    return-void
.end method

.method static synthetic access$500()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkcoffee/android/Emoji;->tmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkcoffee/android/Emoji;->bitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/vkcoffee/android/Emoji;->invalidateTextViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, "offset":I
    sget-object v1, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 240
    .local v1, "currentNode":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 241
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 242
    .local v0, "codepoint":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 243
    iget-object v3, v1, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentNode":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    check-cast v1, Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 244
    .restart local v1    # "currentNode":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    goto :goto_0

    .line 245
    .end local v0    # "codepoint":I
    :cond_0
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 246
    new-instance v3, Lcom/vkcoffee/android/Emoji$EmojiDrawable;

    iget v4, v1, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    iget v5, v1, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/Emoji$EmojiDrawable;-><init>(II)V

    .line 248
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static invalidateTextViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 165
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "c":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 167
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "c":Landroid/view/View;
    invoke-static {v0}, Lcom/vkcoffee/android/Emoji;->invalidateTextViews(Landroid/view/ViewGroup;)V

    .line 164
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .restart local v0    # "c":Landroid/view/View;
    :cond_1
    instance-of v2, v0, Landroid/widget/TextView;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/vkcoffee/android/ui/DialogEntryView;

    if-nez v2, :cond_2

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 169
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 172
    .end local v0    # "c":Landroid/view/View;
    :cond_3
    return-void
.end method

.method static synthetic lambda$loadPage$219(I)V
    .locals 10

    .prologue
    .line 113
    sget-object v7, Lcom/vkcoffee/android/Emoji;->emojiPages:Landroid/util/SparseArray;

    monitor-enter v7

    .line 114
    :try_start_0
    sget-object v6, Lcom/vkcoffee/android/Emoji;->emojiPages:Landroid/util/SparseArray;

    invoke-virtual {v6, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 115
    monitor-exit v7

    .line 160
    .local v0, "asset":Ljava/io/InputStream;
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    .local v4, "scale":I
    :goto_0
    return-void

    .line 117
    .end local v0    # "asset":Ljava/io/InputStream;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "scale":I
    :cond_0
    const/4 v4, 0x1

    .line 118
    .restart local v4    # "scale":I
    sget v6, Lcom/vkcoffee/android/Emoji;->SIZE:I

    const/16 v8, 0x30

    if-gt v6, v8, :cond_1

    .line 119
    const/4 v4, 0x2

    .line 121
    :cond_1
    sget v6, Lcom/vkcoffee/android/Emoji;->SIZE:I

    const/16 v8, 0x20

    if-gt v6, v8, :cond_2

    .line 122
    const/4 v4, 0x3

    .line 124
    :cond_2
    sget v6, Lcom/vkcoffee/android/Emoji;->SIZE:I

    const/16 v8, 0x18

    if-gt v6, v8, :cond_3

    .line 125
    const/4 v4, 0x4

    .line 128
    :cond_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 129
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 v0, 0x0

    .line 133
    .restart local v0    # "asset":Ljava/io/InputStream;
    :try_start_1
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "emoji"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 134
    const/4 v6, 0x0

    invoke-static {v0, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 135
    .local v3, "page":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/vkcoffee/android/Emoji;->emojiPages:Landroid/util/SparseArray;

    invoke-virtual {v6, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    if-eqz v0, :cond_4

    .line 141
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v3    # "page":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    :try_start_3
    sget-object v6, Lcom/vkcoffee/android/Emoji;->pagesLoading:[Z

    const/4 v8, 0x0

    aput-boolean v8, v6, p0

    .line 148
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 149
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v8, Lcom/vkcoffee/android/Emoji$1;

    invoke-direct {v8}, Lcom/vkcoffee/android/Emoji$1;-><init>()V

    invoke-virtual {v6, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    :cond_5
    monitor-exit v7

    goto :goto_0

    .end local v0    # "asset":Ljava/io/InputStream;
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 142
    .restart local v0    # "asset":Ljava/io/InputStream;
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "page":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "dontCare":Ljava/io/IOException;
    :try_start_4
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 136
    .end local v1    # "dontCare":Ljava/io/IOException;
    .end local v3    # "page":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v5

    .line 137
    .local v5, "x":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v6, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error loading emoji page "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    if-eqz v0, :cond_4

    .line 141
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 142
    :catch_2
    move-exception v1

    .line 143
    .restart local v1    # "dontCare":Ljava/io/IOException;
    :try_start_7
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 139
    .end local v1    # "dontCare":Ljava/io/IOException;
    .end local v5    # "x":Ljava/lang/Throwable;
    :catchall_1
    move-exception v6

    if-eqz v0, :cond_6

    .line 141
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 144
    :cond_6
    :goto_2
    :try_start_9
    throw v6

    .line 142
    :catch_3
    move-exception v1

    .line 143
    .restart local v1    # "dontCare":Ljava/io/IOException;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public static load()V
    .locals 23

    .prologue
    .line 48
    :try_start_0
    new-instance v13, Ljava/io/DataInputStream;

    sget-object v21, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string/jumbo v22, "emoji.map"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v13, "in":Ljava/io/DataInputStream;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 50
    .local v17, "pageCount":I
    add-int/lit8 v21, v17, 0x1

    move/from16 v0, v21

    new-array v0, v0, [[[[I

    move-object/from16 v21, v0

    sput-object v21, Lcom/vkcoffee/android/Emoji;->keyboard:[[[[I

    .line 51
    move/from16 v0, v17

    new-array v0, v0, [[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    move-object/from16 v21, v0

    sput-object v21, Lcom/vkcoffee/android/Emoji;->keyboardKeys:[[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    .line 52
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_9

    .line 53
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 54
    .local v11, "emojiCount":I
    new-array v8, v11, [[[I

    .line 55
    .local v8, "currentPage":[[[I
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 56
    sget-object v21, Lcom/vkcoffee/android/Emoji;->keyboardKeys:[[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    new-array v0, v11, [Lcom/vkcoffee/android/Emoji$KeyboardKey;

    move-object/from16 v22, v0

    aput-object v22, v21, v16

    .line 58
    :cond_0
    const/4 v12, 0x0

    .line 59
    .local v12, "ev":I
    const/4 v10, 0x0

    .local v10, "e":I
    :goto_1
    if-ge v10, v11, :cond_8

    .line 60
    invoke-virtual {v13}, Ljava/io/DataInputStream;->read()I

    move-result v19

    .line 61
    .local v19, "variantCount":I
    move/from16 v0, v19

    new-array v6, v0, [[I

    .line 62
    .local v6, "currentEmoji":[[I
    const/16 v18, 0x0

    .local v18, "v":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 63
    invoke-virtual {v13}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 64
    .local v5, "codepointCount":I
    new-array v9, v5, [I

    .line 65
    .local v9, "currentVariant":[I
    sget-object v7, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 66
    .local v7, "currentNode":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_3
    if-ge v3, v5, :cond_4

    .line 67
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 68
    .local v4, "codepoint":I
    aput v4, v9, v3

    .line 69
    iget-object v0, v7, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 70
    new-instance v21, Landroid/util/SparseArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    .line 72
    :cond_1
    iget-object v0, v7, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 73
    .local v15, "n":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    if-nez v15, :cond_2

    .line 74
    new-instance v15, Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .end local v15    # "n":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lcom/vkcoffee/android/Emoji$ParserLookupNode;-><init>(Lcom/vkcoffee/android/Emoji$1;)V

    .line 76
    .restart local v15    # "n":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    :cond_2
    add-int/lit8 v21, v5, -0x1

    move/from16 v0, v21

    if-ne v3, v0, :cond_3

    .line 77
    iput v12, v15, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    .line 78
    move/from16 v0, v16

    iput v0, v15, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    .line 79
    iget-object v0, v7, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 81
    :cond_3
    iget-object v0, v7, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object v7, v15

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 102
    .end local v3    # "c":I
    .end local v4    # "codepoint":I
    .end local v5    # "codepointCount":I
    .end local v6    # "currentEmoji":[[I
    .end local v7    # "currentNode":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    .end local v8    # "currentPage":[[[I
    .end local v9    # "currentVariant":[I
    .end local v10    # "e":I
    .end local v11    # "emojiCount":I
    .end local v12    # "ev":I
    .end local v15    # "n":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    .end local v16    # "p":I
    .end local v17    # "pageCount":I
    .end local v18    # "v":I
    .end local v19    # "variantCount":I
    :catch_0
    move-exception v20

    .line 103
    .local v20, "x":Ljava/io/IOException;
    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 105
    .end local v20    # "x":Ljava/io/IOException;
    :goto_5
    return-void

    .line 84
    .restart local v3    # "c":I
    .restart local v5    # "codepointCount":I
    .restart local v6    # "currentEmoji":[[I
    .restart local v7    # "currentNode":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    .restart local v8    # "currentPage":[[[I
    .restart local v9    # "currentVariant":[I
    .restart local v10    # "e":I
    .restart local v11    # "emojiCount":I
    .restart local v12    # "ev":I
    .restart local v16    # "p":I
    .restart local v17    # "pageCount":I
    .restart local v18    # "v":I
    .restart local v19    # "variantCount":I
    :cond_4
    if-nez v18, :cond_6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 85
    :try_start_1
    new-instance v14, Lcom/vkcoffee/android/Emoji$KeyboardKey;

    invoke-direct {v14}, Lcom/vkcoffee/android/Emoji$KeyboardKey;-><init>()V

    .line 86
    .local v14, "key":Lcom/vkcoffee/android/Emoji$KeyboardKey;
    new-instance v21, Lcom/vkcoffee/android/Emoji$EmojiDrawable;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-direct {v0, v1, v12}, Lcom/vkcoffee/android/Emoji$EmojiDrawable;-><init>(II)V

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/vkcoffee/android/Emoji$KeyboardKey;->drawable:Lcom/vkcoffee/android/Emoji$EmojiDrawable;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v2, "buf":Ljava/lang/StringBuilder;
    array-length v0, v9

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget v4, v9, v21

    .line 89
    .restart local v4    # "codepoint":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 91
    .end local v4    # "codepoint":I
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/vkcoffee/android/Emoji$KeyboardKey;->input:Ljava/lang/String;

    .line 92
    sget-object v21, Lcom/vkcoffee/android/Emoji;->keyboardKeys:[[Lcom/vkcoffee/android/Emoji$KeyboardKey;

    aget-object v21, v21, v16

    aput-object v14, v21, v10

    .line 94
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v14    # "key":Lcom/vkcoffee/android/Emoji$KeyboardKey;
    :cond_6
    aput-object v9, v6, v18

    .line 95
    add-int/lit8 v12, v12, 0x1

    .line 62
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 97
    .end local v3    # "c":I
    .end local v5    # "codepointCount":I
    .end local v7    # "currentNode":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    .end local v9    # "currentVariant":[I
    :cond_7
    aput-object v6, v8, v10

    .line 59
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 99
    .end local v6    # "currentEmoji":[[I
    .end local v18    # "v":I
    .end local v19    # "variantCount":I
    :cond_8
    sget-object v21, Lcom/vkcoffee/android/Emoji;->keyboard:[[[[I

    aput-object v8, v21, v16

    .line 52
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 101
    .end local v8    # "currentPage":[[[I
    .end local v10    # "e":I
    .end local v11    # "emojiCount":I
    .end local v12    # "ev":I
    :cond_9
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private static loadPage(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 108
    sget-object v0, Lcom/vkcoffee/android/Emoji;->pagesLoading:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/Emoji;->pagesLoading:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    .line 112
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/Emoji$$Lambda$1;->lambdaFactory$(I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 14
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 179
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "s":Ljava/lang/String;
    const/4 v3, -0x1

    .line 182
    .local v3, "emojiStartOffset":I
    instance-of v11, p0, Landroid/text/Spannable;

    if-eqz v11, :cond_0

    move-object v9, p0

    .line 183
    check-cast v9, Landroid/text/Spannable;

    .line 184
    .local v9, "spannable":Landroid/text/Spannable;
    add-int v11, p1, p2

    const-class v12, Lcom/vkcoffee/android/Emoji$EmojiSpan;

    invoke-interface {v9, p1, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/vkcoffee/android/Emoji$EmojiSpan;

    .line 185
    .local v10, "spans":[Lcom/vkcoffee/android/Emoji$EmojiSpan;
    array-length v12, v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v4, v10, v11

    .line 186
    .local v4, "es":Lcom/vkcoffee/android/Emoji$EmojiSpan;
    invoke-interface {v9, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 185
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 189
    .end local v4    # "es":Lcom/vkcoffee/android/Emoji$EmojiSpan;
    .end local v9    # "spannable":Landroid/text/Spannable;
    .end local v10    # "spans":[Lcom/vkcoffee/android/Emoji$EmojiSpan;
    :cond_0
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v9

    .line 191
    .restart local v9    # "spannable":Landroid/text/Spannable;
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 192
    .local v2, "currentNode":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    const/4 v6, 0x0

    .line 193
    .local v6, "noFollow":Z
    move v7, p1

    .local v7, "offset":I
    :goto_1
    add-int v11, p1, p2

    if-ge v7, v11, :cond_b

    .line 194
    invoke-virtual {v8, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 195
    .local v0, "codepoint":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 196
    .local v1, "count":I
    iget-object v11, v2, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    if-eqz v11, :cond_a

    .line 197
    iget-object v11, v2, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 198
    .local v5, "n":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    if-nez v5, :cond_4

    .line 199
    iget v11, v2, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 200
    new-instance v11, Lcom/vkcoffee/android/Emoji$EmojiSpan;

    iget v12, v2, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    iget v13, v2, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    invoke-direct {v11, v12, v13}, Lcom/vkcoffee/android/Emoji$EmojiSpan;-><init>(II)V

    add-int v12, v7, v1

    const/4 v13, 0x0

    invoke-interface {v9, v11, v3, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 207
    :cond_2
    sget-object v2, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 229
    :goto_2
    add-int/2addr v7, v1

    .line 230
    goto :goto_1

    .line 201
    :cond_3
    sget-object v11, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    if-eq v2, v11, :cond_2

    .line 202
    const/4 v6, 0x1

    .line 203
    sget-object v2, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    .line 204
    move v7, v3

    .line 205
    goto :goto_1

    .line 209
    :cond_4
    sget-object v11, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    if-ne v2, v11, :cond_6

    .line 210
    iget-object v11, v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    if-eqz v11, :cond_5

    if-eqz v6, :cond_8

    .line 211
    :cond_5
    iget v11, v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 212
    new-instance v11, Lcom/vkcoffee/android/Emoji$EmojiSpan;

    iget v12, v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    iget v13, v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    invoke-direct {v11, v12, v13}, Lcom/vkcoffee/android/Emoji$EmojiSpan;-><init>(II)V

    add-int v12, v7, v1

    const/4 v13, 0x0

    invoke-interface {v9, v11, v7, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 218
    :cond_6
    :goto_3
    iget-object v11, v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->expectedFollowing:Landroid/util/SparseArray;

    if-eqz v11, :cond_9

    if-nez v6, :cond_9

    .line 219
    move-object v2, v5

    .line 224
    :cond_7
    :goto_4
    const/4 v6, 0x0

    goto :goto_2

    .line 215
    :cond_8
    move v3, v7

    goto :goto_3

    .line 220
    :cond_9
    sget-object v11, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    if-eq v2, v11, :cond_7

    iget v11, v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 221
    new-instance v11, Lcom/vkcoffee/android/Emoji$EmojiSpan;

    iget v12, v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    iget v13, v5, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    invoke-direct {v11, v12, v13}, Lcom/vkcoffee/android/Emoji$EmojiSpan;-><init>(II)V

    add-int v12, v7, v1

    const/4 v13, 0x0

    invoke-interface {v9, v11, v3, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 222
    sget-object v2, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    goto :goto_4

    .line 227
    .end local v5    # "n":Lcom/vkcoffee/android/Emoji$ParserLookupNode;
    :cond_a
    new-instance v11, Ljava/lang/RuntimeException;

    const-string/jumbo v12, "This shouldn\'t happen"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 231
    .end local v0    # "codepoint":I
    .end local v1    # "count":I
    :cond_b
    sget-object v11, Lcom/vkcoffee/android/Emoji;->lookupRoot:Lcom/vkcoffee/android/Emoji$ParserLookupNode;

    if-eq v2, v11, :cond_c

    iget v11, v2, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 232
    new-instance v11, Lcom/vkcoffee/android/Emoji$EmojiSpan;

    iget v12, v2, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    iget v13, v2, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    invoke-direct {v11, v12, v13}, Lcom/vkcoffee/android/Emoji$EmojiSpan;-><init>(II)V

    add-int v12, p1, p2

    const/4 v13, 0x0

    invoke-interface {v9, v11, v3, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 234
    :cond_c
    return-object v9
.end method
