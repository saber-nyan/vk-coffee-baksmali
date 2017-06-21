.class public final Lcom/vkcoffee/android/utils/OsUtil;
.super Ljava/lang/Object;
.source "OsUtil.java"


# static fields
.field private static final sIsAtLeastICS_MR1:Z

.field private static final sIsAtLeastJB:Z

.field private static final sIsAtLeastJB_MR1:Z

.field private static final sIsAtLeastJB_MR2:Z

.field private static final sIsAtLeastKLP:Z

.field private static final sIsAtLeastKLP_W:Z

.field private static final sIsAtLeastL:Z

.field private static final sIsAtLeastL_MR1:Z

.field private static final sIsAtLeastM:Z

.field private static final sIsAtLeastN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 20
    invoke-static {}, Lcom/vkcoffee/android/utils/OsUtil;->getApiVersion()I

    move-result v0

    .line 21
    .local v0, "v":I
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastICS_MR1:Z

    .line 22
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastJB:Z

    .line 23
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastJB_MR1:Z

    .line 24
    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastJB_MR2:Z

    .line 25
    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    move v1, v2

    :goto_4
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastKLP:Z

    .line 26
    const/16 v1, 0x14

    if-lt v0, v1, :cond_5

    move v1, v2

    :goto_5
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastKLP_W:Z

    .line 27
    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    move v1, v2

    :goto_6
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastL:Z

    .line 28
    const/16 v1, 0x16

    if-lt v0, v1, :cond_7

    move v1, v2

    :goto_7
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastL_MR1:Z

    .line 29
    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    move v1, v2

    :goto_8
    sput-boolean v1, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastM:Z

    .line 30
    const/16 v1, 0x18

    if-lt v0, v1, :cond_9

    :goto_9
    sput-boolean v2, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastN:Z

    .line 31
    return-void

    :cond_0
    move v1, v3

    .line 21
    goto :goto_0

    :cond_1
    move v1, v3

    .line 22
    goto :goto_1

    :cond_2
    move v1, v3

    .line 23
    goto :goto_2

    :cond_3
    move v1, v3

    .line 24
    goto :goto_3

    :cond_4
    move v1, v3

    .line 25
    goto :goto_4

    :cond_5
    move v1, v3

    .line 26
    goto :goto_5

    :cond_6
    move v1, v3

    .line 27
    goto :goto_6

    :cond_7
    move v1, v3

    .line 28
    goto :goto_7

    :cond_8
    move v1, v3

    .line 29
    goto :goto_8

    :cond_9
    move v2, v3

    .line 30
    goto :goto_9
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiVersion()I
    .locals 1

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static isAtLeastICS_MR1()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastICS_MR1:Z

    return v0
.end method

.method public static isAtLeastJB()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastJB:Z

    return v0
.end method

.method public static isAtLeastJB_MR1()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastJB_MR1:Z

    return v0
.end method

.method public static isAtLeastJB_MR2()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastJB_MR2:Z

    return v0
.end method

.method public static isAtLeastKLP()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastKLP:Z

    return v0
.end method

.method public static isAtLeastKLP_W()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastKLP_W:Z

    return v0
.end method

.method public static isAtLeastL()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastL:Z

    return v0
.end method

.method public static isAtLeastL_MR1()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastL_MR1:Z

    return v0
.end method

.method public static isAtLeastM()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastM:Z

    return v0
.end method

.method public static isAtLeastN()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/vkcoffee/android/utils/OsUtil;->sIsAtLeastN:Z

    return v0
.end method
