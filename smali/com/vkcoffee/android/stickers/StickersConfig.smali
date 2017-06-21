.class public Lcom/vkcoffee/android/stickers/StickersConfig;
.super Ljava/lang/Object;
.source "StickersConfig.java"


# static fields
.field public static final FORCE_INAPP:I = 0x0

.field public static final KEYBOARD_COLUMNS_COUNT:I = 0x4

.field public static final KEYBOARD_COLUMNS_COUNT_LANDSCAPE:I

.field public static final KEYBOARD_PADDING:I

.field public static final KEYBOARD_THUMB_SIZE:I

.field public static final PREVIEW_SIZE:I

.field public static final STICKER_AUTOSUGGEST_ITEM_SIZE:I

.field public static final STICKER_KEYBOARD_SIZE:I

.field public static final STICKER_SIZE:I

.field public static final THUMB_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x200

    .line 15
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    sput v2, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    .line 17
    sget-boolean v2, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    :goto_0
    sput v2, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_COLUMNS_COUNT_LANDSCAPE:I

    .line 18
    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    sput v2, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_THUMB_SIZE:I

    .line 19
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    sput v2, Lcom/vkcoffee/android/stickers/StickersConfig;->THUMB_SIZE:I

    .line 21
    const/high16 v2, 0x43300000    # 176.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_SIZE:I

    .line 22
    sget-boolean v2, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    :goto_1
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/vkcoffee/android/stickers/StickersConfig;->PREVIEW_SIZE:I

    .line 24
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0030

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_AUTOSUGGEST_ITEM_SIZE:I

    .line 28
    sget-boolean v2, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v2, :cond_2

    sget v1, Lcom/vkcoffee/android/stickers/KeyboardPopup;->TABLE_WIDTH:I

    .line 29
    .local v1, "keyboardWidth":I
    :goto_2
    sget-boolean v2, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v2, :cond_3

    sget v0, Lcom/vkcoffee/android/stickers/KeyboardPopup;->TABLET_HEIGHT:I

    .line 32
    .local v0, "keyboardHeight":I
    :goto_3
    sget-boolean v2, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/vkcoffee/android/stickers/KeyboardPopup;->TABLE_WIDTH:I

    div-int/lit8 v2, v2, 0x4

    :goto_4
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_KEYBOARD_SIZE:I

    .line 38
    return-void

    .line 17
    .end local v0    # "keyboardHeight":I
    .end local v1    # "keyboardWidth":I
    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    .line 22
    :cond_1
    sget v2, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_SIZE:I

    goto :goto_1

    .line 28
    :cond_2
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2

    .line 29
    .restart local v1    # "keyboardWidth":I
    :cond_3
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_3

    .line 32
    .restart local v0    # "keyboardHeight":I
    :cond_4
    sget v2, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x4

    sget v3, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_PADDING:I

    sub-int v3, v0, v3

    sget v4, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_COLUMNS_COUNT_LANDSCAPE:I

    div-int/2addr v3, v4

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method
